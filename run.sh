#!/usr/bin/env base

#一些基础的软件
base() {
    /bin/bash -c "$(curl -fsSL https://gitee.com/ineo6/homebrew-install/raw/master/install.sh)"
    brew install git
}

echo "开始配置"
base
echo "结束配置"
