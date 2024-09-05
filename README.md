# Installation

## Ubunut

* Clone this repository to `.config/nvim`
```
$ cd .config
$ git clone git@github.com:/jennaluz/nvim_config.git nvim
```

* Install [Packer](https://github.com/wbthomason/packer.nvim?tab=readme-ov-file#quickstart)
```
$ git clone --depth 1 https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

* Install `nvim` using `AppImage`
  * Download `nvim.appimage` from the [Assets](https://github.com/neovim/neovim/releases) section of the latest version
```
$ cd ~/Downloads
$ chmod u+x nvim.appimage
$ ./nvim.appimage
```
  * If FUSE is not installed, install [FUSE](https://github.com/AppImage/AppImageKit/wiki/FUSE)
```
$ sudo add-apt-repository universe
$ sudo apt install libfuse2
```
  * Move `nvim.appimage` to `/usr/bin/nvim`
```
$ cd ~/Downloads
$ sudo mv nvim.appimage /usr/bin/nvim
$ nvim
```
