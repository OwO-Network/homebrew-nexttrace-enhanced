class NexttraceEnhanced < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "v0.3.0-beta.4"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/tags/v0.3.0-beta.4.tar.gz"
    sha256 "5a8e35af62283e4d34aa7a19e09b1477e4fe0a0f432c569ce353cf105d9c9626"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/OwO-Network/nexttrace-enhanced/printer.version=v0.3.0-beta.4' -s -w")
    end
  end
