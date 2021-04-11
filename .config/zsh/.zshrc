#	  ____ ___  ______/ (_)___  ____
#	 / __ `/ / / / __  / / __ \/_  /
#	/ /_/ / /_/ / /_/ / / /_/ / / /_
#	\__,_/\__,_/\__,_/_/\____/ /___/

# Starting with zsh ;)                          
                          
export TERM="xterm-256color"       # colors
autoload -U colors && colors

# sets
export BROWSER="brave"
export FILE="thunar"
export EDITOR="nvim"
export XDG_CONFIG_HOME="/home/audioz/.config"
export ZDOT="~/.config/zsh/aliasrc"
# PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
# PROMPT="%B%{$fg[green]%}[%{$fg[white]%}%n%{$fg[green]%}@%{$fg[black]%}%M %{$fg[white]%}%~%{$fg[green]%}]%{$fg[white]%}>$reset_color%b "
# PROMPT="%B%{$fg[green]%}[%{$fg[white]%}%n%{$fg[green]%}@%{$fg[black]%}archlinux %{$fg[magenta]%}%~%{$fg[green]%}]%{$fg[white]%}>$reset_color%b "
#PROMPT="%B♞ [%{$fg[cyan]%}%~%{$fg[white]%}] 
# → %b"

#PROMPT="%{$fg_bold[white]%}♞ %{$fg_bold[black]%}[%{$fg_bold[green]%}%~%{$fg_bold[black]%}] 
#%{$reset_color%}→  "

#PROMPT="%{$fg_bold[white]%}♞ %{$fg_bold[black]%}[%{$fg_bold[white]%}%~%{$fg_bold[black]%}] 
#%{$fg_bold[black]%}→ %{$reset_color%} "

#PROMPT="%{$fg_bold[black]%}%n%{$fg_bold[magenta]%}@%{$fg_bold[white]%}archlinux %{$fg_bold[yellow]%}[%{$fg_bold[blue]%}%~%{$fg_bold[yellow]%}] 
#%{$fg_bold[green]%}λ%{$reset_color%} "

#PROMPT="%{$fg_bold[yellow]%}[%{$fg_bold[black]%}%n %{$fg_bold[white]%}%~%{$fg_bold[yellow]%}]
#%{$fg_bold[green]%}~λ%{$reset_color%} "
PROMPT="%{$fg_bold[white]%}%~ λ%{$reset_color%} "
#cd tweaks
setopt autocd # entering location will auto cd to it

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
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

# Load alias
source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc"


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
source /home/audioz/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009,bold
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=yellow,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=214
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=214
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=214
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[assign]=none
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# neofetch shit that i had to do because of termite :(
# trap boi SIGINT
# boi(){clear; trap - SIGINT; trap}
(cat ~/.config/wpg/sequences &)
neofetch
