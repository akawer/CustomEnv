# set local password
sudo passwd $(whoami)
# add repo key, pre-installed key is outdated and prevents from updating/installing repos 
wget -q -O - https://archive.kali.org/archive-key.asc | sudo apt-key add
# update sources before installing
sudo apt-get update -y
# fixes broken dependency: https://unix.stackexchange.com/questions/592657/full-upgrade-to-debian-testing-fails-due-to-libc6-dev-breaks-libgcc-8-dev
sudo apt-get install gcc-8-base -y
# install rdp and gui
sudo apt-get install kali-desktop-xfce xrdp -y
# enable and start rdp
sudo systemctl enable xrdp; sudo systemctl restart xrdp
# upgrade and clean
sudo apt-get dist-upgrade -y; sudo apt-get autoremove -y
sudo apt-get upgrade -y; sudo apt-get dist-upgrade -y; sudo apt-get autoremove -y
# install ono-sendai terminal env
git clone https://github.com/DiegoBoy/ono-sendai.git; cd ono-sendai; ./install.sh; popd;
#Customize terminator
