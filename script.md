



#Upgrade to Python3 and install Venv:
sudo apt install python3
sudo apt install python3-venv

#instanciate Venv:
mkdir py_venvs
cd py_venvs
python3 -m venv venv3
source venv3/bin/activate
pip install hashcrack   #can the following be done on the same line? 
pip install lxml 
pip install impacket

#Install Vis. Studio Code
#   go to site & dl latest version. Code's not in the repo anymore
sudo apt install ./code_1.68.0-1654690107_amd64.deb


