# Vimfiles

## To install

```
cd ~
git clone http://github.com/cofinley/vimfiles.git ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
```

[More info](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

## Notes

- When installing plugin via `git submodule add [url] [path]`, make sure `[path]` uses forward slashes, since github doesn't recognize Windows back slash directory traversal