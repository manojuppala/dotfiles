<h1 align="center">Dotfiles</h1>

## What Are Dotfiles?

Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system. This repository contains my personal dotfiles. They are stored here for convenience so that I may quickly access them on new machines or new installs. Also, you may find some of my configurations helpful in customizing your own dotfiles.

## My Setup

- **Shell:** [Bash](https://github.com/manojuppala/dotfiles/blob/master/.bashrc)
- **Terminal:** [Kitty](https://github.com/manojuppala/dotfiles/blob/master/.config/kitty/kitty.conf)
- **Email client:** [Mutt](https://github.com/manojuppala/dotfiles/blob/master/.config/mutt/mutt_rc)
- **Text editor:** [Neovim](https://github.com/manojuppala/dotfiles/blob/master/.config/nvim/init.vim)
- **Shell prompt:** [Powerline-shell](https://github.com/manojuppala/dotfiles/blob/master/.config/powerline-shell/config.json)
- **File manager:** [Ranger](https://github.com/manojuppala/dotfiles/blob/master/.config/ranger/rc.conf)

## Configs

## **Kitty** <u>[_(kitty.conf)_](https://github.com/manojuppala/dotfiles/blob/master/.config/kitty/kitty.conf)</u>

**_Install_** [**_Kitty_**](https://sw.kovidgoyal.net/kitty/) **_using `sudo apt install kitty`_**<br>

> **Note:** 1. inorder to display images in the the terminal install imagemagick using **_`sudo apt install imagemagick`_**<br> 2. display images using `kitty +kitten icat <image_name>` <br> 3. install kitty themes from [here](https://github.com/dexpota/kitty-themes)

## **Neovim** <u>[_(init.vim)_](https://github.com/manojuppala/dotfiles/blob/master/.config/nvim/init.vim)</u>

**_Install_** [**_Neovim_**](https://github.com/neovim/neovim/wiki/Installing-Neovim) **_using `sudo apt install neovim`_**<br>
Neovim is fast, modern, and infinitely customizable. Neovim is an implementation of Vim, but focused on extensibility and usability. The key feature is asynchronous plugins (mostly) compatible with Vim, which significantly improves performance for things like code-completion and linting.<br>

**_install Plugins using_** [**_vim-plug_**](https://github.com/junegunn/vim-plug)

> **Note:** 1. for vim-airline plugin to work install powerline fonts from [here](https://github.com/powerline/fonts)<br> 2. for vim-devicons plugin to work install nerd fonts from [here](https://github.com/ryanoasis/nerd-fonts). i would recommend a font that is not mono. i use [Ubuntu Nerd Font Complete](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Ubuntu/Regular/complete/Ubuntu%20Nerd%20Font%20Complete.ttf)

## Miscellaneous

- [How to install Exa, a modern replacement for the ls command](https://ourcodeworld.com/articles/read/832/how-to-install-and-use-exa-a-modern-replacement-for-the-ls-command-in-ubuntu-16-04)
- [Add fish like autocompletion to bash](https://github.com/akinomyoga/ble.sh)

## How To Manage Your Own Dotfiles

There are a hundred ways to manage your dotfiles. Personally, I use the git bare repository method for managing my dotfiles. [Here](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) is an article about this method of managing your dotfiles.
Other resources discussing dotfile management are listed below:

- [Git Bare Repository - A Better Way To Manage Dotfiles](https://www.youtube.com/watch?v=tBoLDpTWVOM&t=602s) (Distro Tube)
- [Managing dotfiles with style with rcm](https://distrotube.com/guest-articles/managing-dotfiles-with-rcm.html) (Ronnie Nissan)
- [Interactive dotfile management with dotbare](https://distrotube.com/guest-articles/interactive-dotfile-management-dotbare.html) (Kevin Zhuang)

## License

The files and scripts in this repository are licensed under the MIT License, which is a very permissive license allowing you to use, modify, copy, distribute, sell, give away, etc. the software. In other words, do what you want with it. The only requirement with the MIT License is that the license and copyright notice must be provided with the software.
