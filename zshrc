# Prompt (man zshmisc)
USER_AT_HOST='%B%F{green}%n@%m%f%b'
PWD='%B%F{blue}%~%f%b'
SEP='%B%F{magenta}>%f%b'

PROMPT="${USER_AT_HOST}: ${PWD}
${SEP} "
PROMPT2="${SEP} "

# History (man zshoptions)
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

setopt SHARE_HISTORY             # Incrementally append and share history
setopt NO_INC_APPEND_HISTORY     # Conflicts with SHARE_HISTORY
setopt EXTENDED_HISTORY          # Write timestamp to history file
setopt HIST_VERIFY               # Don't execute history expansion directly
setopt HIST_IGNORE_ALL_DUPS      # Delete old entry if new entry is a duplicate
setopt HIST_SAVE_NO_DUPS         # Don't save duplicates to history
setopt HIST_EXPIRE_DUPS_FIRST    # Expire dup entries when trimming history
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't save commands starting with a space
setopt NO_HIST_REDUCE_BLANKS     # Breaks multiline command retrieval

# Aliases
alias ls="ls -FG"
alias la="ls -hAFG"
alias ll="ls -lhFG"
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -v"
alias du="du -sh"
alias diff="diff --side-by-side"
alias grep="grep --color=auto -i"
alias mkdir="mkdir -pv"
alias pw-gen="openssl rand -base64 14 | pbcopy && pbpaste"

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# source /usr/share/doc/fzf/examples/key-bindings.bash
# source /usr/share/doc/fzf/examples/completion.bash
