export TERM="termite"  
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)" 
export EDITOR="nvim" 
export VISUAL="emacsclient -c -a emacs" 
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

pfetch

bindkey -v

source ~/antigen.zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle fzf
antigen theme denysdovhan/spaceship-prompt
antigen bundle zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle history
antigen bundle zsh-interactive-cd
antigen apply

section_mysection() {
	exec_time,
	git,
	julia,
	docker,
	aws
}


if [ -d "$HOME/.bin" ] ;   
	then PATH="$HOME/.bin:$PATH" 
fi 

if [ -d "$HOME/.local/bin" ] ;   
	then PATH="$HOME/.local/bin:$PATH" 
fi 

if [ -d "$HOME/Applications" ] ;   
	then PATH="$HOME/Applications:$PATH" 
fi

alias install="sudo pacman -S "

alias vim="nvim" 
alias em="/usr/bin/emacs -nw" 
alias emacs="emacsclient -c -a 'emacs'"

alias ls='exa -al --color=always --group-directories-first' 
alias la='exa -a --color=always --group-directories-first' 
alias ll='exa -l --color=always --group-directories-first'  
alias lt='exa -aT --color=always --group-directories-first' 
alias l.='exa -a | egrep "^\."'




