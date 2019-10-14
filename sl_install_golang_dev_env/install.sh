yum install epel-release -y
yum install git -y
yum install gitflow -y
yum install wget -y
yum install lsof -y
yum install rpm-build -y
yum install iftop -y 
yum install tcpdump -y
yum install samba -y
yum install gcc -y
yum install openssl-devel glibc-static libstdc++-static lm_sensors-devel -y
tar -zxf go1.11.4.linux-amd64.tar.gz -C /usr/local/

user='slk'

mkdir -p /home/$user/workspace/go/src
mkdir  /home/$user/workspace/go/bin
mkdir  /home/$user/workspace/go/pkg

echo "export GOROOT=/usr/local/go" | tee -a  /root/.bash_profile /home/$user/.bash_profile
echo "export GOBIN=\$GOROOT/bin" | tee -a  /root/.bash_profile /home/$user/.bash_profile
echo "export GOPATH=/home/$user/workspace/go" | tee -a  /root/.bash_profile /home/$user/.bash_profile
echo "export PATH=\$PATH:\$GOBIN:\$GOPATH/bin" | tee -a  /root/.bash_profile /home/$user/.bash_profile
source /root/.bash_profile
source /home/$user/.bash_profile

