#!/usr/bin/env base

ohmyzsh() {
    sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"
    #安装插件
    git clone https://gitee.com/bright_007_admin/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    
}

ohmyzsh
