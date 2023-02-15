class NexttraceDev < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。\nDev通道"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "1676464792"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/heads/main.zip"
    sha256 "8859bdea85fd414208bf5ae9b605586f246a0f5c6f0cae6dff2c88e3eef8e65d"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/OwO-Network/nexttrace-enhanced/printer.version=1676464792' -s -w")
    end
  end
