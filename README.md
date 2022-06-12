# config-files

#install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# tagbar needs exuberant tags
brew install ctags

# deplete needs python-msgpack and python3 support
python3 -m pip install msgpack pynvim
# when deoplete shows error at initialisation
:UpdateRemotePlugins

# telescope needs fzf
brew install gcc make


# lsp config needs nodejs and npm need to install the language server
brew install node
npm i --location=global pyright
# see server_configurations.md
# to install latex language server
brew install ltex-ls
