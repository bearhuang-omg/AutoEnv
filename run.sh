#!/usr/bin/env base

#一些基础的软件
init() {
    /bin/bash -c "$(curl -fsSL https://gitee.com/ineo6/homebrew-install/raw/master/install.sh)"
    brew install git
    brew install git-lfs
    brew install --cask visual-studio-code
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

android() {
    brew install --cask android-studio
    brew install --cask homebrew/cask-versions/adoptopenjdk8
    # brew install --cask android-sdk
    # brew install --cask android-ndk
    brew install gradle
    brew install android-platform-tools
    brew install --cask flutter
}

other() {
    brew install nodejs
    brew install npm
    brew install python3
    # 博客工具
    npm install hexo-cli -g
    brew install --cask intellij-idea-ce
}

tools() {
    brew install --cask snipaste
    brew install --cask utools
    brew install --cask google-chrome
    brew install --cask wpsoffice-cn
    brew install --cask betterzip
    brew install --cask safeincloud-password-manager
    brew install --cask wechat
    brew install --cask qq
    brew install --cask wechatwork
    brew install --cask notion
}

finish() {
    brew cleanup
}

#功能：往环境变量文件里面写入内容，如果文件里面已经存在，则不写入
write() {
    content=$1
    # 环境变量文件
    envFile=~/.zshrc
    if cat $envFile | grep "$content" >/dev/null; then
        echo "已经存在配置${content},不写入"
    else
        echo "写入配置${content}"
        echo "${content}" >>$envFile
    fi
}

echo "开始配置"
# init
# android
# other
# tools
# finish
echo "结束配置"
