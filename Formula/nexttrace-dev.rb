class NexttraceDev < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。\nDev通道"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "1675964337"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/heads/main.zip"
    sha256 "c903d53a787e735c61d2059ddc91a12e8f38635c16f31b91e7fa2ff7cc03cb68"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/OwO-Network/nexttrace-enhanced/printer.version=1675964337' -s -w")
    end
  end
