# dotfiles

## Quick start

Run that on the Terminal:
```
git clone https://github.com/ad/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
chmod +x bootstrap.sh
./bootstrap.sh
```

Then edit .gitconfig file.

### A bootstrap.sh script will:
- Install homebrew package manager and with his help all software that defined in a Brewfile
- Make symlinks to Git configuration files and Zsh profile

### if you see error 'zsh compinit: insecure directories, run compaudit for list.'

```
compaudit | xargs chmod g-w
```

## Adds commands

| Command | Action |
| ------- | ------ |
| myip | dig +short myip.opendns.com @resolver1.opendns.com |
| ll | ls -lah --color |
| nano | nano --autoindent --mouse --linenumbers --nowrap --minibar |
| take |  mkdir+cd, git clone+cd, download+untar+cd |


## Result
<img width="849" alt="Screenshot 2022-03-14 at 17 26 41" src="https://user-images.githubusercontent.com/35623/158192768-7b44db03-675f-463c-bc55-1a7d1c90bd5d.png">


