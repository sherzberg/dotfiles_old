Installation

    git clone git://github.com/whelmingbytes/dotfiles.git

Where possible, Vim plugins are installed as git submodules. Check these out by
running the commands:

    cd dotfiles
    git submodule init
    git submodule update

Create symlinks:

    ln -s ~/dotfiles/bashrc ~/.bashrc
    ln -s ~/dotfiles/gitconfig ~/.gitconfig
