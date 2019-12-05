#!/bin/bash
user='rick'

git clone https://gitee.com/linkangsun/vim.git /usr/local/src/vim
yum install -y ncurses-devel 
#another way to configure vim 
if false;then
cd /usr/local/src/vim
./configure --prefix=/usr/local/vim
make
make install

echo "export PATH=\$PATH:/usr/local/vim/bin" >> /etc/profile.d/path.sh
source /etc/profile.d/path.sh
fi
#sudo vim:command not found
#env | grep PATH
#sudo env | grep PATH
#diff
#visudo secure_path=$secure_path:$VIM/bin
#prefered way to configure vim
cd /usr/local/src/vim/src
./configure --prefix=/usr/local
make
make install


#vimrc Vundle, vim-go
cd /home/$user
mkdir -p .vim/bundle

git clone https://gitee.com/linkangsun/Vundle.vim.git /home/$user/.vim/bundle/Vundle.vim
chown -R $user /home/$user/.vim/
chgrp -R $user /home/$user/.vim/
cp /home/$user/Config/.vimrc /home/$user/
chown $user /home/$user/.vimrc
chgrp $user /home/$user/.vimrc

#PluginInstall finished, run below 
#cp /home/$user/.vimrc /root
#cp -r /home/$user/.vim /root











