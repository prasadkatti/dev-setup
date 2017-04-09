apt-get update

apt-get install -q -y python-dev python-pip
pip install --upgrade pip

apt-get install -q -y virtualenvwrapper
echo 'source /usr/share/virtualenvwrapper/virtualenvwrapper.sh' >> /home/ubuntu/.bashrc

apt-get install -q -y libssl-dev libffi-dev
pip install ansible

echo 'alias cl=clear' >> /home/ubuntu/.bashrc
