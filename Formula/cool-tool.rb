class CoolTool < Formula
  desc "Just a thing for a demo, don't worry about it!"
  homepage "https://github.com/joenash/cool-tool"
  url "https://github.com/joenash/cool-tool/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f923d6acfce087917ee92ea03ff8f0fd3ebdfeed0494379552c30c9351c88dff"
  license ""

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Hello, World!", shell_output(bin/"cool-tool")
  end
end
