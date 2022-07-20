class NexttraceDev < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。\nDev通道"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "1658307259"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/heads/main.zip"
    sha256 "98da54b99dd0eec9b91028eed2d98194cf5248d2196429b89d4fa605b85e6b5c"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=1658307259' -s -w")
    end
  
    test do
      assert_match "NextTrace Enhanced", shell_output("#{bin}/nexttrace-dev -V")
    end
  end
