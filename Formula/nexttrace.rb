class Nexttrace < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "v0.2.1-beta.9"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/tags/v0.2.1-beta.9.tar.gz"
    sha256 "78836b8f6c995d293b1f4d190589af3718633e67878e733568e59a2bc9bed6ed"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.1-beta.9' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
