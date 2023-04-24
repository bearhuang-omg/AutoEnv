#!/usr/bin/env base

envFile=~/.zshrc

jdk() {
    #安装jdk1.8
    brew install --cask homebrew/cask-versions/adoptopenjdk8 
    #配置环境变量
    write '# --配置java环境变量--'
    write 'JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home'
    write 'CLASS_PATH="$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar"'
    write 'export PATH="$PATH:$JAVA_HOME/bin:."'
    write 'export JAVA_HOME'
    write 'export CLASS_PATH'
}

#第一个参数为文件名，第二个参数为需要写入的内容
#功能：往文件里面写入字符串，如果文件里面已经存在，则不写入
write() {
    content=$1
    if cat $envFile | grep "$content" >/dev/null; then
        echo "已经存在配置${content},不写入"
    else
        echo "写入配置${content}"
        echo "${content}" >>$envFile
    fi
}

#先写入一个换行符，避免在后面追加内容被注释了
echo "\n" >>$envFile

jdk

