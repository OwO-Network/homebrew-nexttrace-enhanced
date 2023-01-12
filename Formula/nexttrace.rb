class Nexttrace < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "v0.2.1-beta.8-2"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/tags/v0.2.1-beta.8-2.tar.gz"
    sha256 "bea5ddee76c4ab8d9ea5502169ed8ac33bb56a02c7481787785f71688cdde1e1"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.1-beta.8-2' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
