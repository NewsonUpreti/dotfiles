# -------------------------------
# ⚡ FAST START CORE
# -------------------------------

# -------------------------------
# ⚡ ALIASES (unchanged)
# -------------------------------
alias c="clear"
alias vi="nvim"
alias e="nvim"
alias fl="yazi"
alias ls="eza --git --long --color=always --icons=always --no-user --no-permissions"
alias cat="bat"
alias f="fzf"
alias help="tldr"
alias q='exit'
alias open="xdg-open"
alias lg="lazygit"
alias ta="tmux attach"
alias dock="lazydocker"
alias j="z"

# Defaults
export EDITOR=nvim

# make the shell case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-Z}'

# -------------------------------
# ⚡ LAZY LOAD NVM (BIG WIN)
# -------------------------------
export NVM_DIR="$HOME/.nvm"

nvm() {
  unset -f nvm node npm npx
  [ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh"
  nvm "$@"
}

node() { nvm use default >/dev/null 2>&1; node "$@" }
npm()  { nvm use default >/dev/null 2>&1; npm "$@" }
npx()  { nvm use default >/dev/null 2>&1; npx "$@" }

# -------------------------------
# ⚡ FZF (DEFERRED LOAD)
# -------------------------------
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# --- setup fzf theme ---
fg="#CBE0F0"
bg="#011628"
bg_highlight="#143652"
purple="#B388FF"
blue="#06BCE4"
cyan="#2CF9ED"

export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"

# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Source personal/local aliases if they exist
if [[ -f "$HOME/.zsh_aliases_local" ]]; then
  source "$HOME/.zsh_aliases_local"
fi
export PATH="$HOME/.local/bin:$PATH"

# -------------------------------
# ⚡ ZOXIDE (light, keep normal)
# -------------------------------
eval "$(zoxide init zsh)"

# -------------------------------
# ⚡ STARSHIP (light and fast)
# -------------------------------

eval "$(starship init zsh)"


# -------------------------------
# ⚡ BAT
# -------------------------------
export BAT_THEME=tokyonight_night

# plugins : direct from homebrew
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# bun completions
[ -s "/Users/newson/.bun/_bun" ] && source "/Users/newson/.bun/_bun"

# bun
#export BUN_INSTALL="$HOME/.bun"
#export PATH="$BUN_INSTALL/bin:$PATH"
