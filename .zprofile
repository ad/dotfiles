eval "$(/opt/homebrew/bin/brew shellenv)"

export GPG_TTY=$(tty)
gpgconf --launch gpg-agent
