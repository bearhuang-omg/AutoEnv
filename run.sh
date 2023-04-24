#!/usr/bin/env base

#一些基础的软件
init() {
    # /bin/bash -c "$(curl -fsSL https://gitee.com/ineo6/homebrew-install/raw/master/install.sh)"
    # brew install git
    brew install git-lfs
}

echo "开始配置"

init
source base.sh

echo "结束配置"
