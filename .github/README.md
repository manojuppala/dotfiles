# [**@manojuppala**](https://github.com/manojuppala)'s Dotfiles

## **Table of contents**
- [**What Are Dotfiles?**](#what-are-dotfiles)
- [**My Configs**](#my-configs)
    - [Bash](https://github.com/manojuppala/dotfiles/blob/master/.bashrc)
    - [Kitty](https://github.com/manojuppala/dotfiles/blob/master/.config/kitty/kitty.conf)
    - [Mutt](https://github.com/manojuppala/dotfiles/blob/master/.config/mutt/mutt_rc)
    - [Neovim](https://github.com/manojuppala/dotfiles/blob/master/.config/nvim/init.vim)
    - [Powerline-shell](https://github.com/manojuppala/dotfiles/blob/master/.config/powerline-shell/config.json)
    - [Ranger](https://github.com/manojuppala/dotfiles/blob/master/.config/ranger/rc.conf)
- [**Other Popular Configs Of Mine**](#other-popular-configs-of-mine)
- [**Tips and tricks**](#tips-and-tricks)
- [**How To Manage Your Own Dotfiles**](#how-to-manage-your-own-dotfiles)
- [**License**](#license)

## What Are Dotfiles?
Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system.  You can tell that a file is a dotfile because the name of the file will begin with a period–a dot!  The period at the beginning of a filename or directory name indicates that it is a hidden file or directory.  This repository contains my personal dotfiles.  They are stored here for convenience so that I may quickly access them on new machines or new installs.  Also, others may find some of my configurations helpful in customizing their own dotfiles.

## My Configs
## **Kitty** <u>[*(kitty.conf)*](https://github.com/manojuppala/dotfiles/blob/master/.config/kitty/kitty.conf)</u>
***Install*** [***Kitty***](https://sw.kovidgoyal.net/kitty/) ***using `sudo apt install kitty`***<br>
> **Note:** 1. inorder to display images in the the terminal install imagemagick using ***`sudo apt install imagemagick`***<br>
>       2. display images using `kitty +kitten icat <image_name>` <br>
>       3. install kitty themes from [here](https://github.com/dexpota/kitty-themes)

## **Neovim** <u>[*(init.vim)*](https://github.com/manojuppala/dotfiles/blob/master/.config/nvim/init.vim)</u>
***Install*** [***Neovim***](https://github.com/neovim/neovim/wiki/Installing-Neovim) ***using `sudo apt install neovim`***<br>
Neovim is fast, modern, and infinitely customizable. Neovim is an implementation of Vim, but focused on extensibility and usability. The key feature is asynchronous plugins (mostly) compatible with Vim, which significantly improves performance for things like code-completion and linting.<br>

***install Plugins using*** [***vim-plug***](https://github.com/junegunn/vim-plug)
> **Note:** 1. for vim-airline plugin to work install powerline fonts from [here](https://github.com/powerline/fonts)<br>
>       2. for vim-devicons plugin to work install nerd fonts from [here](https://github.com/ryanoasis/nerd-fonts). i would recommend a font that is not mono. i use [Ubuntu Nerd Font Complete](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Ubuntu/Regular/complete/Ubuntu%20Nerd%20Font%20Complete.ttf)

## Other Popular Configs Of Mine
- [Alacritty](https://github.com/manojuppala/dotfiles/blob/master/.config/alacritty/alacritty.yml)
- [Vifm](https://github.com/manojuppala/dotfiles/blob/master/.config/vifm/vifmrc)
- [xmonad]()
- [xmobar]()
- [ble.sh]()

## Tips and tricks
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
