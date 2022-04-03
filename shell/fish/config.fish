if status is-interactive
    # Commands to run in interactive sessions can go here
end

# HOMEBREW CONFIG
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export PATH="/opt/homebrew/bin:$PATH"

# OPTIONS
export LANG=en_US.UTF-8

# SET DEFAULT EDITOR
if test $SSH_CONNECTION then
  export EDITOR='vim'
else
  export EDITOR='vim'
end

# GPG CONFIG
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

# Go configuration
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"

# M1 Specific configuration
export DOCKER_DEFAULT_PLATFORM=linux/amd64

# Secrets
if test -e "$HOME/.secrets"
  source "$HOME/.secrets/secrets"
end

# STARSHIP
starship init fish | source
