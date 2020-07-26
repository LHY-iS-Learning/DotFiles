# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        git
        autojump
        osx
        zsh-syntax-highlighting
        zsh-autosuggestions
		fzf
    )

source $ZSH/oh-my-zsh.sh

################################################## COMPLITION ##################################################
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z-_}={A-Za-z_-}'
#############################################################################################################

################################################## VI-MODE ##################################################

# enable vi bindings
bindkey -v
# Better searching in command mode
bindkey -M vicmd '/' history-incremental-search-backward
bindkey -M vicmd '?' history-incremental-search-forward

# Beginning search with arrow keys
bindkey "^p" up-line-or-beginning-search
bindkey "^n" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

#############################################################################################################

################################################## AUTO-JUMP ##################################################
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
#############################################################################################################

################################################## HIGHLIGHT ##################################################
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red') # To have commands starting with `rm -rf` in red
#############################################################################################################

################################################## AUTOSUGGEST ##################################################
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=60"
bindkey '\x00' autosuggest-accept
#############################################################################################################
