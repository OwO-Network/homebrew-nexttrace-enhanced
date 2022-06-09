# !/bin/bash
export version=$(curl -s https://api.github.com/repos/owo-network/nexttrace-enhanced/releases/latest | jq ".name")
sha256=\"$(curl -sL https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/tags/${version:1:$((${#version} - 1 - 1))}.tar.gz | sha256sum | cut -f1 -d' ')\"
url=\"https://github.com/OwO-Network/nexttrace-enhanced/archive/refs/tags/${version:1:$((${#version} - 1 - 1))}.tar.gz\"
cat >Formula/nexttrace.rb <<EOF
class Nexttrace < Formula
    desc "一款开源的可视化路由跟踪工具，使用 Golang 开发。\n这是NextTrace加强版，旨在提供高度可定制化的可视化 Traceroute 工具。"
    homepage "https://github.com/OwO-Network/nexttrace-enhanced/"
    version ${version}
    url ${url}
    sha256 ${sha256}
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=${version:1:$((${#version} - 1 - 1))}' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
EOF
