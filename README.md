[Vundle][vundle] stands for Vim Bundle and is one of the package managers for Vim. It is installed using `git`, and expects packages to be added to your `.vimrc` file.

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

# Vimrc
The `.vimrc` file in the home directory needs to reflect the use of Vundle for plugin management. The following is what a basic empty vim configuration that uses Vundle for plugin management looks like. You might want to enable paste mode when copying it into your `.vimrc`, this is done with the `:set paste` command.

```
cd ~
vim ~/.vimrc
    set encoding=utf8

    """" START Vundle Configuration

    " Disable file type for vundle
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " ... (declaration of your plugins)

    call vundle#end()            " required
    filetype plugin indent on    " required
    """" END Vundle Configuration
```

# Install plugins

Then, when you have defined the plugins you want to install, open vim and execute `:PluginInstall`. Vundle will automatically pull them in and install them into the correct directory. Remember the installation only concerns the current user.
```
vim
    :PluginInstall
    :h vundle
```

[vundle]:(https://github.com/VundleVim/Vundle.vim)
