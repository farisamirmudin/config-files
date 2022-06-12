# config-files

Install vim plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
Installing exuberant ctags for tagbar plugin
```
brew install ctags
```
Installing msgpack and pynvim for deoplete plugin
```
python3 -m pip install msgpack pynvim
```
If deoplete shows error at initialisation
```
:UpdateRemotePlugins
```

Dependencies to install telescope-fzf
```
brew install gcc make
```

Installing nodejs and npm for Lsp plugin
```
brew install node
npm i --location=global pyright
```
For more informations see server_configurations.md
To install latex language server
```
brew install ltex-ls
```
