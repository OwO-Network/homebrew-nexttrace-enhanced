class NexttraceDev < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。\nDev通道"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "4127cd33"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/heads/main.zip"
    sha256 "a4127cd33d446942da74daf2d6a7c8ad3fa858cbcd8bf2ce27e37b6a7930011c"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=4127cd33' -s -w")
    end
  
    test do
      assert_match "NextTrace Enhanced", shell_output("#{bin}/nexttrace-dev -V")
    end
  end
