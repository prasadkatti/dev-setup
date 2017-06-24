apt-get update

apt-get install -q -y python-dev python-pip
pip install --upgrade pip

apt-get install -q -y virtualenvwrapper
echo 'source /usr/share/virtualenvwrapper/virtualenvwrapper.sh' >> /home/ubuntu/.bashrc

apt-get install -q -y libssl-dev libffi-dev
pip install ansible

apt-get install -q -y jq

cat <<EOT >> /home/ubuntu/.bashrc
alias cl=clear

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

EOT
