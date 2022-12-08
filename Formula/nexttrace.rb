class Nexttrace < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "v0.2.1-beta.8"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/tags/v0.2.1-beta.8.tar.gz"
    sha256 "a7b62fb8c8a585d8feeef1f71ff35fc685c7ed16821497e1fa8ef37f0e6a211f"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.1-beta.8' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
