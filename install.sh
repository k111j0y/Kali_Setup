#!/bin/bash


# make sure we're root
if [ "$HOME" != "/root" ]
then
    printf "Please run while logged in as root\n"
    exit 1
fi



printf '\n============================================================\n'
printf '[+] Installing VS Code\n'
printf '============================================================\n\n'
#can the following be done on the same line? 
pip install lxml 
pip install impacket 
pip install droopescan
deactivate

#Install Vis. Studio Code
#go to site & dl latest version. Code's not in the repo anymore
sudo apt install software-properties-common apt-transport-https wget -y
wget -O- https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code
sudo apt install snapd
#sudo apt install ./code_1.68.0-1654690107_amd64.deb

#install other standard apps
printf '\n============================================================\n'
printf '[+] Installing:\n'
printf '     - iftop\n'
printf '     - htop\n'
printf '     - locate\n'
printf '     - yersinia\n'
printf '     - rlwrap\n'
printf '     - socat\n'
printf '     - linenum\n'
printf '     - html2text\n'
printf '     - chisel\n'
printf '     - terminator\n'
printf '     - jq\n'
printf '     - squid\n'
printf '     - powershell-empire\n'
printf '     - vim\n'
printf '============================================================\n\n'
sudo apt install ntop\
    iftop\
    htop\
    iotop\
    locate\
    yersinia\
    rlwrap\
    socat\
    linenum\ 
    html2text\
    chisel\
    terminator\
    jq\
    squid\
    powershell-empire\
    vim -y\

printf '\n============================================================\n'
printf '[+] Installing:\n'
printf '     - golang & environment\n'
printf '     - powershell\n'
printf '     - patator\n'
printf '     - net-tools\n'
printf '     - tmux\n'
printf '============================================================\n\n'
apt-get install \
    golang \
    powershell \
    patator \
    net-tools \
    tmux 
    
    
    
printf '\n============================================================\n'
printf '[+] Intaslling py3 venv\n'
printf '============================================================\n\n'
#Upgrade to Python3 and install Venv: 
apt install python3 
apt install python3-venv

#instanciate Venv:
mkdir py_venvs 
cd py_venvs python3 -m venv py3 
source py3/bin/activate 
pip install hashcrack 

#can the following be done on the same line? 
pip install lxml 
pip install impacket 
pip install droopescan
deactivate

printf '\n============================================================\n'
printf '[+] Installing py2 venv\n'
printf '============================================================\n\n'
#Upgrade to Python2 and install Venv: 
apt install python2 
apt install python2-venv

#instanciate Venv:
mkdir py2_venvs 
cd py2_venvs python2 -m venv py2


 
##########################################################################################
##        Git Repos:
##########################################################################################
printf '\n============================================================\n'
printf '[+] Installing JavaCC\n'
printf '============================================================\n\n'
cd /opt
#JavaCC 
git clone https://javacc.github.io/javacc/ 

printf '\n============================================================\n'
printf '[+] Installing LinEnum\n'
printf '============================================================\n\n' 
git clone https://github.com/rebootuser/LinEnum.git 

printf '\n============================================================\n'
printf '[+] Installing Autorecon\n'
printf '============================================================\n\n' 
git clone https://github.com/Tib3rius/AutoRecon.git 

printf '\n============================================================\n'
printf '[+] Installing SShuttle\n'
printf '============================================================\n\n' 
#SShuttle 
git clone https://github.com/sshuttle/sshuttle.git 

printf '\n============================================================\n'
printf '[+] Installing Kerberoast\n'
printf '============================================================\n\n' 
#Kerberoast tools by Tim Medin 
git clone https://github.com/nidem/kerberoast.git


printf '\n============================================================\n'
printf '[+] Installing PLink\n'
printf '============================================================\n\n' 
#Independent Tools: 
#PLink 
git clone https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html 

printf '\n============================================================\n'
printf '[+] Installing Joomla\n'
printf '============================================================\n\n' 
#Joomla 
git clone https://downloads.joomla.org/us/



printf '\n============================================================\n'
printf '[+] copying config files\n'
printf '============================================================\n\n'
# tmux:
sudo mv /opt/Kali_Setup/.tmux.conf ~/.tmux.conf
# get the file ownership correct:
# -rw-r--r--  1 kali kali  1089 Dec  2 21:50  .tmux.conf
chown kali:kali .tmux.conf
chmod 644 .tmux.conf

# z shell:
sudo mv /opt/Kali_Setup/.zshrc ~/.zshrc
# get the file ownership correct:
# -rw-r--r--  1 kali kali  1089 Dec  2 21:50  .zshrc
chown kali:kali .zshrc
chmod 644 .zshrc


# z shell:
sudo mv /opt/Kali_Setup/.vimrc ~/.vimrc
# get the file ownership correct:
# -rw-r--r--  1 kali kali  1089 Dec  2 21:50  .zshrc
chown kali:kali .vimrc
chmod 644 .vimrc



printf '\n============================================================\n'
printf '[+] Installing bloodhound.py\n'
printf '============================================================\n\n'
pip install bloodhound


printf '\n============================================================\n'
printf '[+] Installing Bettercap\n'
printf '============================================================\n\n'
apt-get install libnetfilter-queue-dev libpcap-dev libusb-1.0-0-dev
go get -v github.com/bettercap/bettercap


printf '\n============================================================\n'
printf '[+] Initializing Metasploit Database\n'
printf '============================================================\n\n'
systemctl start postgresql
systemctl enable postgresql
msfdb init


printf '\n============================================================\n'
printf '[+] Unzipping RockYou\n'
printf '============================================================\n\n'
gunzip /usr/share/wordlists/rockyou.txt.gz 2>/dev/null
ln -s /usr/share/wordlists ~/Downloads/wordlists 2>/dev/null
