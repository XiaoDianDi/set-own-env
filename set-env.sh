#!/bin/bash
##install application
if [ 1 == 0 ]; then
echo "add openjdk key"
sudo add-apt-repository ppa:openjdk-r/ppa 
echo "add toolchain test"
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
echo "update && upgrade"
sudo apt update && sudo apt upgrade
echo "install application"
sudo apt install openjdk-7-jdk openjdk-8-jdk openjdk-9-jdk vim git gitk cscope ctags cscope android-sdk-platform-tools ccache automake lzop bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 g++-multilib python-networkx libxml2-utils bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush schedtool dpkg-dev liblz4-tool make optipng maven bc pngquant imagemagick yasm libssl-dev  gcc-4.8-multilib g++-4.8-multilib gawk wget git-core diffstat unzip texinfo build-essential chrpath libsdl1.2-dev xterm subversion cvs dos2unix lzop gcc-multilib g++-multilib libglib2.0-dev lib32gcc1 libc6-i386 lib32z1 lib32stdc++6 lib32ncurses5 lib32gomp1 lib32z1-dev xutils-dev libtool texinfo chrpath libsdl1.2-dev automake flex libssl-dev texinfo chrpath python-dev

fi
##copy config file
echo "copy config"
cp .vim .vimrc .gitconfig ~/ -rf

##
echo "set some other"
sudo rm /bin/sh
sudo ln -s /bin/bash /bin/sh

echo "PS1='\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n[\A] \$ '" >> ~/.bashrc
echo "alias sl='ls'" >> ~/.bashrc
echo "alias vi='vim'" >> ~/.bashrc
echo "export USE_CCACHE=1" >> ~/.bashrc
echo "export REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo/'" >> ~/.bashrc
echo "export ANDROID_JACK_VM_ARGS='-Xmx4096m -Xms512m -Dfile.encoding=UTF-8 -XX:+TieredCompilation'" >> ~/.bashrc
