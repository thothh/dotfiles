# My Awesome Dotfiles

My dotfiles collection for a flawless workflow. Starring `zsh`, `vim` and `tmux`.

![Screenshot](screenshot.png)

## How to setup

Install as root:
1. python 3
2. pip3
3. pip3 install virtualenv virtualenvwrapper ansible

Ubuntu notes:
```shell
COLOANE% export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
COLOANE% source /usr/local/bin/virtualenvwrapper.sh

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```



```shell
git clone --recurse-submodules git@github.com:thothh/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
mkvirtualenv .dotfiles
pip install ansible
ansible-playbook ansidot/ansidot.yml --inventory localhost, --connection local --extra-vars @apps.yml
```
