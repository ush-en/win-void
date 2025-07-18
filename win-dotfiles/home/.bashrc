# =============================================================================== #
# EXPORTS:                                                                        #
# =============================================================================== #
export PROMPT_COMMAND='history -a'
export HISTFILESIZE=5000
export HISTCONTROL=ignoreboth:erasedups
export TERMINAL="wt"
export BROWSER="chromium"
export PAGER="less"
export EDITOR="nvim"
export VISUAL="nvim"
export MYVIMRC="$HOME/.config/nvim/init.lua"
export KOMOREBI_CONFIG_HOME="$HOME/.config/komorebi"
export BUN_INSTALL_CACHE_DIR="$HOME/.cache/bun/install/cache"
export NI_CONFIG_FILE="$HOME/.config/ni/nirc"
export NI_DEFAULT_AGENT="npm"
export NI_GLOBAL_AGENT="npm"
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense'

# =============================================================================== #
# SHELL OPTIONS:                                                                  #
# =============================================================================== #
set -o vi
shopt -s cdable_vars
shopt -s autocd
shopt -s cdspell
shopt -s dirspell
shopt -s dotglob
shopt -s extglob
shopt -s no_empty_cmd_completion
shopt -s nocaseglob
shopt -s histappend

# =============================================================================== #
# Autocomplete:                                                                   #
# =============================================================================== #
source <(carapace _carapace)

# =============================================================================== #
# PROMPT:                                                                         #
# =============================================================================== #
eval "$(starship init bash)"

# =============================================================================== #
# ZOXIDE:                                                                         #
# =============================================================================== #
eval "$(zoxide init bash)"

# =============================================================================== #
# ALIASES:                                                                        #
# =============================================================================== #
# Changing "ls" to "eza":                                                         #
# =============================================================================== #
alias ls="eza --long --group --icons=auto --git --sort=name --group-directories-first"
alias ll="eza --long --group --icons=auto --git --sort=name --group-directories-first"
alias lt="eza --long --group --icons=auto --git --only-dirs --tree --level=3 --sort=modified"
# Cd To Zoxide:                                                                   #
# =============================================================================== #
alias cd="z"
alias cdf="zi"
# Fetch (System Info):                                                            #
# =============================================================================== #
alias fetch="fastfetch"
alias neofetch="fastfetch"
## NeoVim To Vim:                                                                 #
# =============================================================================== #
alias v="nvim"
alias vi="nvim"
alias nv="nvim"
alias vn="nvim"
alias vim="nvim"
alias vid="nohup neovide 2>/dev/null 1>&2 &"
alias nvd="nohup neovide 2>/dev/null 1>&2 &"
# Git Command:                                                                    #
# =============================================================================== #
alias g="git"
alias gi="git init"
alias gs="g status -s"
alias ga="g add --all"
alias gcl="g clone --depth=1"
alias gc="g commit -m"
alias gd="g diff"
alias gl="g log --oneline --graph --all -10"
alias gp="g push -uf origin main"
alias lg="lazygit"
# Scoop Pkg Manager:                                                             #
# =============================================================================== #
alias pu="scoop update --all"
alias pi="scoop install"
alias pr="scoop uninstall"
alias pq="scoop search"
alias pl="scoop list"
alias pc="scoop cleanup --cache --all"
# For Configs Files:                                                             #
# =============================================================================== #
alias recompile="powershell  ~/win-void/win-configs/win-configs.ps1"
alias dots="cd ~/win-void/"
alias ahk="cd ~/win-void/win-dotfiles/cfg/ahk/"
alias bashc="nvim ~/win-void/win-dotfiles/home/.bashrc"
alias wmc="nvim ~/win-void/win-dotfiles/cfg/komorebi/komorebi.json"
alias barc="nvim ~/win-void/win-dotfiles/cfg/yasb/config.yaml"
alias nuc="nvim ~/win-void/win-dotfiles/app/roming/nushell/config.nu"
# Others Usfeual Alias:                                                           #
# =============================================================================== #
alias yt-concats='yt-dlp --ignore-config --downloader aria2c --output "~/Videos/programming/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" --format "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio" --concat-playlist always -S "codec:h264"'
alias yt-music='yt-dlp --ignore-config --config-locations ~/.config/yt-dlp/music'
alias man="tldr"
alias cat="bat"
alias cls="clear"

# =============================================================================== #
# Source fzf keybindingd:                                                         #
# =============================================================================== #
eval "$(fzf --bash)"
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_ALT_C_COMMAND="fd --type=d --no-hidden --strip-cwd-prefix --exclude .git"
export FZF_DEFAULT_OPTS='
       --style=full --height=30% --border --layout reverse --preview-window right,40%
       --color fg:#b3b9b8,bg:#141b1e
       --color bg+:#1e2527,fg+:#dadada
       --color hl:#8ccf7e,hl+:#8ccf7e,gutter:#141b1e
       --color pointer:#373d49,info:#606672
       --color border:#141b1e
       --color border:#8ccf7e'

# =============================================================================== #
# Tab Completions:                                                                #
# =============================================================================== #
bind 'TAB:menu-complete'
bind '"\e[Z": menu-complete-backward'
bind "set show-all-if-ambiguous off"
bind "set menu-complete-display-prefix on"
bind 'set match-hidden-files off'
bind "set completion-ignore-case on"

# =============================================================================== #
# System Path:                                                                    #
# =============================================================================== #
NPM_PACKAGES="${HOME}/.local/share/npm-packages"
export PATH="$HOME/.config/bin:$HOME/.cargo/bin:$HOME/.local/bin:$NPM_PACKAGES/bin:$PATH"
# export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
