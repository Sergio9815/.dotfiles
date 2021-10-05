# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ~/zshrc

#WELCOME
#pfetch

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/sagb/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# ZSH_THEME="robbyrussell"
# ZSH_THEME="arrow"
# ZSH_THEME="muse"
# ZSH_THEME="sorin"
# ZSH_THEME="af-magic"
# ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  extract
  zsh-syntax-highlighting
  zsh-autosuggestions
  colorize
  )

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-plugins/sudo.plugin.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# Aliases

# Update System
  alias update='sudo apt update && sudo apt full-upgrade'
  alias install='sudo apt install'
  alias purge='sudo apt purge'
  alias autoremove='sudo apt autoremove'
  alias show='apt show'
  alias search='apt search'
  alias listIn='apt list --installed'
  alias listUp='apt list --upgradeable'
  alias isInstalled='apt list | grep'

  
# Basics
  alias zshconfig="code .dotfiles/zsh/.zshrc"
  alias hyperconfig="code .dotfiles/hyper/.hyper.js"
  alias wifi='nmcli dev wifi rescan && nmcli dev wifi'
  alias ll='lsd -lh --group-dirs=first'
  alias la='lsd -a --group-dirs=first'
  alias l='lsd --group-dirs=first'
  alias lla='lsd -lha --group-dirs=first'
  alias ls='lsd --group-dirs=first'
  alias access='sudo chown -R $USER:$USER $HOME && startx'
  alias resetPlasma='kquitapp5 plasmashell && kstart5 plasmashell'

# Info
  alias neofetch='neofetch --ascii_distro Linux_Lite'
  alias pikafetch='neofetch --ascii ~/.ascii-art/pika.txt'
  alias trifetch='neofetch --ascii ~/.ascii-art/tri.txt'
  alias spiderfetch='neofetch --ascii ~/.ascii-art/spider.txt'
  
# Git aliases
  alias push='git push origin'
  alias pull='git pull origin'
  alias commit='git commit -am'
  alias save='git add . && gitmoji -c'
  alias gt='cd /home/sagb/Documents/Githb && ls '

# Misc aliases
  alias cows='fortune | cowsay | lolcat'
  alias macchina='~/.cargo/bin/macchina'
  alias clock='tty-clock -c'
  alias full-clock='tty-clock -s -b -c -C 4'
  alias box-clock='tty-clock -s -x -b -c'
  alias bonsai='bonsai -T'

# WSL aliases
  alias myUser='/mnt/c/Users/gserg/'
  alias github='cd /mnt/c/Users/gserg/Documents/Github && ls '

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# source /home/sagb/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Change cursor shape for different vi modes.
#function zle-keymap-select {
#  if [[ $KEYMAP == vicmd ]] || [[ $1 = 'block' ]]; then
#    echo -ne '\e[1 q'
#  elif [[ $KEYMAP == main ]] || [[ $KEYMAP == viins ]] || [[ $KEYMAP = '' ]] || [[ $1 = 'beam' ]]; then
#    echo -ne '\e[5 q'
#  fi
#}
#zle -N zle-keymap-select

# Start with beam shape cursor on zsh startup and after every command.
#zle-line-init() { zle-keymap-select 'beam'}

#source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
