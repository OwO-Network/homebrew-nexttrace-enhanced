class NexttraceEnhanced < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "v0.3.1-beta.2"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/tags/v0.3.1-beta.2.tar.gz"
    sha256 "157d17c3101dbd61eef14633b4169e1e4712750c09d5a80268a78f73b1b47835"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/OwO-Network/nexttrace-enhanced/printer.version=v0.3.1-beta.2' -s -w")
    end
  end
