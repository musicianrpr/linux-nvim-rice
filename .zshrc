# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.oh-my-zsh/custom/plugins/zsh-histdb/sqlite-history.zsh
autoload -Uz add-zsh-hook
export PATH=~/.cargo/bin:$PATH
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable

# Pywal
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
# End Pywal

alias ls="exa --icons"
alias cat="bat --style=auto"

function eww() {
	~/Executables/eww/target/release/eww $*
}
function runtomisha() {
	~/Executables/tomishaflutter.sh $*
}

function reload() {
	source ~/.zshrc
}

eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# bun completions
[ -s "/home/mscnreaper/.bun/_bun" ] && source "/home/mscnreaper/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/mscnreaper/Executables/google-cloud-sdk/path.zsh.inc' ]; then . '/home/mscnreaper/Executables/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/mscnreaper/Executables/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/mscnreaper/Executables/google-cloud-sdk/completion.zsh.inc'; fi
