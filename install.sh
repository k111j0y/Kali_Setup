#Upgrade to Python3 and install Venv: 
sudo apt install python3 
sudo apt install python3-venv

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
sudo apt install rlwrap socat linenum html2text chisel terminator jq squid powershell-empire -y


##########################################################################################
##Git Repos:
##########################################################################################
cd /opt
#JavaCC 
git clone https://javacc.github.io/javacc/ 

#LinEnum 
git clone https://github.com/rebootuser/LinEnum.git 

#Autorecon 
git clone https://github.com/Tib3rius/AutoRecon.git 

#SShuttle 
git clone https://github.com/sshuttle/sshuttle.git 

#Kerberoast tools by Tim Medin 
git clone https://github.com/nidem/kerberoast.git

#Independent Tools: 
#PLink 
git clone https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html 

#Joomla 
git clone https://downloads.joomla.org/us/



##########################################################################################
##  copy config files:
##########################################################################################

# tmux:
mv /opt/Kali_Setup/.tmux.conf ~/.tmux.conf
