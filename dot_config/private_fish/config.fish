if status is-interactive
    # Commands to run in interactive sessions can go here
end

# XDG Base Directory Specification -------------------------------------------
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
if set -q HOME
	if set -q XDG_DATA_HOME
	  echo $XDG_DATA_HOME
	else
	  set -gx XDG_DATA_HOME "$HOME/.local/share"
	end

	if set -q XDG_CONFIG_HOME
	  echo $XDG_CONFIG_HOME
	else
	  set -gx XDG_CONFIG_HOME "$HOME/.config"
	end

	if set -q XDG_DATA_DIRS
	  echo $XDG_DATA_DIRS
	else
	  set -gx XDG_DATA_DIRS "/usr/local/share/:/usr/share/"
	end

	if set -q XDG_CONFIG_DIRS
	  echo $XDG_CONFIG_DIRS
	else
	  set -gx XDG_CONFIG_DIRS "/etc/xdg"
	end

	if set -q XDG_CACHE_HOME
	  echo $XDG_CACHE_HOME
	else
	  set -gx XDG_CACHE_HOME "$HOME/.cache"
	end
end
# end XDG Base Directory Specification -------------------

set -gx SHELL /usr/local/bin/fish

export EDITOR='/usr/local/bin/nvim'

# luajit ----------------------------------------------------------------
set -gx LDFLAGS -L/usr/local/opt/luajit-openresty/lib
set -gx CPPFLAGS -I/usr/local/opt/luajit-openresty/include
set -gx PKG_CONFIG_PATH /usr/local/opt/luajit-openresty/lib/pkgconfig


# nnn config ------------------------------------------------------------
set -gx NNN_BMS "d:/Volumes/Annes2TB-1/Downloads;p:/Volumes/Annes2TB-1/Google Drive/_PARA_GoogleDrive;c:/Users/gcman105/devel"
set -gx NNN_USE_EDITOR 1
set -gx NNN_TRASH 1
set -gx NNN_CONTEXT_COLORS "1234"
set -gx NNN_PLUG 'o:fzopen'


# MU config--------------------------------------------------------------
set -gx MAILDIR ~/Mail

# -----------------------------------------------------------------------
set -gx PATH $PATH /usr/local/opt/openssl/bin
set -gx PATH $PATH /usr/local/opt/luajit-openresty/bin
set -gx PATH $PATH /usr/local/bin
set -gx PATH $PATH /usr/local/sbin
set -gx PATH $PATH /usr/local/opt/ncurses/bin
set -gx PATH $PATH /usr/local/opt/ncurses/bin
set -gx PATH $PATH /usr/local/opt/ncurses/bin
set -gx PATH $PATH /usr/local/opt/openldap/bin
set -gx PATH $PATH /usr/local/opt/openldap/sbin
set -gx PATH $PATH /usr/local/opt/sqlite/bin
set -gx PATH $PATH /usr/local/bin/pandoc

set -gx PATH $PATH "$HOME/.cargo/bin"
set -gx PATH $PATH "$HOME/.yarn/bin"
set -gx PATH $PATH "$HOME/.config/yarn/global/node_modules/.bin"
set -gx PATH $PATH "$HOME/.composer/vendor/bin"

set -gx NODE_PATH 'npm root -g'

set -gx LC_ALL en_GB.UTF-8
set -gx LC_CTYPE en_GB.UTF-8

# EXPORT PATH -----------------------------------------------------------
export PATH

# ALIASES ---------------------------------------------------------------
source ~/.zsh_aliases

# ABBREVIATIONS ---------------------------------------------------------
abbr -a sail "./vendor/bin/sail"
abbr -a cz "chezmoi"

source ~/.config/fish/completions/tmuxinator.fish
source ~/.config/fish/completions/fnm.fish