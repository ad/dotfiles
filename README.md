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

## Adds commands

| Command | Action |
| ------- | ------ |
| myip | dig +short myip.opendns.com @resolver1.opendns.com |
| ips | list of ip |
| ll | ls -lah --color |
| nano | nano --autoindent --mouse --linenumbers --nowrap --minibar |
| take |  mkdir+cd, git clone+cd, download+untar+cd |
| urlencode | urlencode string |


## Result
<img width="849" alt="Screenshot 2022-03-14 at 17 26 41" src="https://user-images.githubusercontent.com/35623/158192768-7b44db03-675f-463c-bc55-1a7d1c90bd5d.png">


<img width="802" alt="Screenshot 2022-03-14 at 17 29 22" src="https://user-images.githubusercontent.com/35623/158193272-511bf583-429d-4067-88e3-535bb4b52f94.png">
