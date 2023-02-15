class Nexttrace < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version "v0.3.2-beta.1"
    url "https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/tags/v0.3.2-beta.1.tar.gz"
    sha256 "b41580dc057913d263c87d10e16a20e9d9ddafd97ded1a9b51627e2bfb358f25"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.3.2-beta.1' -s -w")
    end

    def post_install
      puts "---------------------------\n⚠️  请注意nexttrace-enhanced在HomeBrew已由nexttrace重命名为nexttrace-enhanced，\n请使用来更新至最新版本，\n并在安装后通过命令来使用。\n---------------------------\n⚠️  Please be informed that nexttrace-enhanced has been renamed to nexttrace-enhanced in HomeBrew.\nPlease update to the latest version using ,\nand use the  command after installation."
    end
  end
