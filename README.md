# My Awesome Dotfiles

My dotfiles collection for a flawless workflow. Starring `zsh`, `vim` and `tmux`.

![Screenshot](screenshot.png)

## How to setup

Install as root:
1. python 3
2. pip3
3. pip3 install virtualenv virtualenvwrapper ansible

Ubuntu notes:
COLOANE% export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6
COLOANE% source /usr/local/bin/virtualenvwrapper.sh


```shell
git clone --recurse-submodules git@github.com:thothh/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
mkvirtualenv .dotfiles
pip install ansible
ansible-playbook ansidot/ansidot.yml --inventory localhost, --connection local --extra-vars @apps.yml
```
