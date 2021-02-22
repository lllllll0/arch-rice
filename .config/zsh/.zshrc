#	  ____ ___  ______/ (_)___  ____
#	 / __ `/ / / / __  / / __ \/_  /
#	/ /_/ / /_/ / /_/ / / /_/ / / /_
#	\__,_/\__,_/\__,_/_/\____/ /___/

# Starting with zsh ;)                          
                          

autoload -U colors && colors

# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


# PS1="%B%{$fg[green]%}[%{$fg[white]%}%n%{$fg[green]%}@%{$fg[black]%}%M %{$fg[white]%}%~%{$fg[green]%}]%{$fg[white]%}>$reset_color%b "


# PS1="%B%{$fg[green]%}[%{$fg[white]%}%n%{$fg[green]%}@%{$fg[black]%}archlinux %{$fg[magenta]%}%~%{$fg[green]%}]%{$fg[white]%}>$reset_color%b "

PROMPT="%B♞ [%{$fg[cyan]%}%~%{$fg[white]%}] 
→ %b"

#auto cd
setopt autocd

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=/home/audioz/.cache/zsh/history


# Load alias
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc"


# Basic auto/tab complete:
autoload -U compinit 
autoload -Uz promptinit
zstyle ':completion:*' menu select
zmodload zsh/complist
promptinit
# prompt spaceship
compinit
_comp_options+=(globdots)		# Include hidden files.

