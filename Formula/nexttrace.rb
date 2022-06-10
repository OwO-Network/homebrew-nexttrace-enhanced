class Nexttrace < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "v0.1.7-beta.8"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/tags/v0.1.7-beta.8.tar.gz"
    sha256 "dcfad4ec90cc7d6ce9e7ba28e79f7608aac505899e17c3f9515b11efd74a6585"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.1.7-beta.8' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
