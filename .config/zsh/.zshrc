#	  ____ ___  ______/ (_)___  ____
#	 / __ `/ / / / __  / / __ \/_  /
#	/ /_/ / /_/ / /_/ / / /_/ / / /_
#	\__,_/\__,_/\__,_/_/\____/ /___/

# Starting with zsh ;)                          
                          
export TERM="termite"       # colors
autoload -U colors && colors

# sets
export BROWSER="brave"
export FILE="thunar"
export EDITOR="nvim"
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOT="/home/audioz/.config/zsh/"
export PATH=$PATH:/home/audioz/.local/bin

#PROMPT="%{$fg_bold[white]%}♞ %{$fg_bold[black]%}[%{$fg_bold[white]%}%~%{$fg_bold[black]%}] 
#%{$fg_bold[black]%}→ %{$reset_color%} "

PROMPT="%{$fg_bold[red]%}%~ λ%{$reset_color%} "

#cd tweaks
setopt autocd # entering location will auto cd to it

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
[ ! -e "${XDG_CONFIG_HOME}" ]
HISTFILE=~/.cache/zsh/history
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY # Don't execute immediately upon history expansion.



# Basic auto/tab complete:
autoload -U compinit 
autoload -Uz promptinit
zstyle ':completion:*' menu select
zmodload zsh/complist
promptinit
compinit
_comp_options+=(globdots)		# Include hidden files.

# SYNTAX HIGHLIGHTING !
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
[ -e "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" 2>/dev/null

# Load shit
[ -e "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc"
[ -e  "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/highlightzsh" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/highlightzsh"



# color scheme
(cat ~/.config/wpg/sequences &)

# Neofetch
neofetch
