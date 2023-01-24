class NexttraceDev < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。\nDev通道"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "1674550764"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/heads/main.zip"
    sha256 "4a83238125f26857d1ff6a4df780b1c97b3b5e7d21590d9b792c4daf393864c6"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=1674550764' -s -w")
    end
  
    test do
      assert_match "NextTrace Enhanced", shell_output("#{bin}/nexttrace-dev -V")
    end
  end
