class CoolTool < Formula
  desc "Just a thing for a demo, don't worry about it!!"
  homepage "https://github.com/joenash/cool-tool"
  url "https://github.com/joenash/cool-tool/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f923d6acfce087917ee92ea03ff8f0fd3ebdfeed0494379552c30c9351c88dff"
  license ""

  bottle do
    root_url "https://github.com/joenash/homebrew-tools/releases/download/cool-tool-0.1.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "abad11ac0bc79e518dc38e1087bb6cb1f9c11181b16b1775a7b99351ee95281c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "75e628b0e1c79553507ab903a26d2093d74c2a80f061f1e7419782ca0014c604"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Hello, World!", shell_output(bin/"cool-tool")
  end
end
