#!/bin/bash
#### ubuntu 14.04.5 설치 ####

## 우분투 apt-get Repository 변경
# sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
# sudo sed -i 's/kr.archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
# sudo sed -i 's/security.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list

# 처음 갱신
sudo apt-get update
# sudo apt-get upgrade

## 크롬 다운로드
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb /tmp

# 터미널 우클릭
sudo apt-get install nautilus-open-terminal

# ssh 설치
sudo apt-get install openssh-server

# sublime-text 설치
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get install -y sublime-text-installer >> /dev/null

# [언어 설정] fcitx-hanul 설치, 세팅만 하면 됨.
sudo apt-get install fcitx fcitx-hangul build-essential libgtk2.0-dev

# git 설치
sudo apt-get install git

# sublime text 설치
mkdir /opt/sublime_text/lib
git clone https://github.com/lyfeyaj/sublime-text-imfix.git /tmp/sublime-text-imfix/
gcc -shared -o /opt/sublime_text/lib/libsublime-imfix.so /tmp/sublime-text-imfix/src/sublime-imfix.c  `pkg-config --libs --cflags gtk+-2.0` -fPIC
sudo mv /opt/sublime_text/sublime_text /opt/sublime_text/sublime_text_executor
python -c 'print "#!/bin/bash\nexport LD_PRELOAD=/opt/sublime_text/lib/libsublime-imfix.so\n/opt/sublime_text/sublime_text_execute \"$@\" "' >> /opt/sublime_text/sublime_text
sudo chmod 755 /opt/sublime_text/sublime_text
