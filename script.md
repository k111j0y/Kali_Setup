



#Upgrade to Python3 and install Venv:
#sudo apt install python3
#sudo apt install python3-venv

#instanciate Venv:
mkdir py_venvs
cd py_venvs
python3 -m venv venv3
source venv3/bin/activate
pip install hashcrack   #can the following be done on the same line? 
pip install lxml 
pip install impacket
pip install droopescan

#Install Vis. Studio Code
#   go to site & dl latest version. Code's not in the repo anymore
sudo apt install ./code_1.68.0-1654690107_amd64.deb

sudo apt install rlwrap socat linenum html2text chisel terminator jq squid  powershell-empire -y



#Git Repos:
#JavaCC
https://javacc.github.io/javacc/
#LinEnum
https://github.com/rebootuser/LinEnum.git
#Autorecon
https://github.com/Tib3rius/AutoRecon.git
#SShuttle
https://github.com/sshuttle/sshuttle.git
#Kerberoast tools by Tim Medin
https://github.com/nidem/kerberoast.git

#Independent Tools:
#PLink
https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html
#Joomla
https://downloads.joomla.org/us/
