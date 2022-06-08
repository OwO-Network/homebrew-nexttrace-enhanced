class Nexttrace < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。"
    homepage ""
    version "beta"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/heads/main.zip"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build","-o nexttrace-enhanced", *std_go_args(ldflags: "-s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace-enhanced -V")
    end
  end
