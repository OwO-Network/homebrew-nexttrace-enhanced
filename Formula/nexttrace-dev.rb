class NexttraceDev < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。\nDev通道"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "1658294777"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/heads/main.zip"
    sha256 "d1e4c868fcdb25e0124eb5472b939ca4f6a547f30e481488cdcb3e43c21b7ae2"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=1658294777' -s -w")
    end
  
    test do
      assert_match "NextTrace Enhanced", shell_output("#{bin}/nexttrace-dev -V")
    end
  end
