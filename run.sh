#!/usr/bin/env base

#一些基础的软件
init() {
    /bin/bash -c "$(curl -fsSL https://gitee.com/ineo6/homebrew-install/raw/master/install.sh)"
    brew install git
    brew install git-lfs
    ohmyzsh
}

ohmyzsh() {
    # 安装
    sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"
    #安装插件
    git clone https://gitee.com/bright_007_admin/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    #配置插件
    tobeReplaced='plugins=(git)'
    replaced='plugins=(git zsh-autosuggestions)'
    file=~/.zshrc
    sed -i '.bak' "s/$tobeReplaced/$replaced/" "${file}"
    #提升速度
    git config --add oh-my-zsh.hide-dirty 1
    git config --add oh-my-zsh.hide-status 1
}



echo "开始配置"
init
echo "结束配置"
