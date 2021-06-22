# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

export TERM="termite"  
# export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)" 
export EDITOR="nvim" 
export VISUAL="emacsclient -c -a emacs" 
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"


bindkey -v

source ~/antigen.zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle fzf
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle history
antigen bundle zsh-interactive-cd
antigen bundle zsh-users/zsh-autosuggestions

antigen theme romkatv/powerlevel10k

antigen apply

section_mysection() {
	exec_time,
	git,
	julia,
	docker,
	aws
}

disfetch

if [ -d "$HOME/.bin" ] ;   
	then PATH="$HOME/.bin:$PATH" 
fi 

if [ -d "$HOME/.local/bin" ] ;   
	then PATH="$HOME/.local/bin:$PATH" 
fi 

if [ -d "$HOME/Applications" ] ;   
	then PATH="$HOME/Applications:$PATH" 
fi

alias install="vim ~/.config/nixpkgs/home.nix "

alias vim="nvim" 
alias em="/usr/bin/emacs -nw" 
alias emacs="emacsclient -c -a 'emacs'"

alias ls='exa -al --color=always --group-directories-first' 
alias la='exa -a --color=always --group-directories-first' 
alias ll='exa --git -labhF --icons --no-user '  
alias lt='exa -aT --color=always --group-directories-first' 
alias l.='exa -a | egrep "^\."'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
