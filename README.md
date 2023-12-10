# dotfiles

Template dotfiles repository, managed with [chezmoi](https://chezmoi.io/).

This is not completed yet TODO:

* Change shell to zsh
* nvm working
* Powershell with oh-my-posh
* Install in container (add ssh)
* Devcontainer
* powerlevel10k
* Want it to work on mac, windows and linux
* Secrets

## Testing

REF: Installing distros for testing [chrisguest75/sysadmin_examples/34_WSL/INSTALL_DISTRO.md](https://github.com/chrisguest75/sysadmin_examples/blob/master/34_WSL/INSTALL_DISTRO.md)  

## Steps

### Steps (wsl)

```sh
./install.sh
```

### Steps (local)

1) Install `homebrew` [Instructions Here](https://brew.sh/
) and [Configuration Here](https://docs.brew.sh/Homebrew-on-Linux)  
1) Install `chezmoi` [Instructions Here](https://www.chezmoi.io/install/)  


NOTE: To access this folder on windows in `vscode` you'll need to install remote development extension.  

```sh
cd .local/share/chezmoi
# or
chezmoi cd

# debug issues
chezmoi doctor
```

## Adding files

```sh
chezmoi --debug diff
```

## Resources

*  Cloned from chezmoi/dotfiles [here](https://github.com/chezmoi/dotfiles)
* How To Manage Dotfiles With Chezmoi [here](https://jerrynsh.com/how-to-manage-dotfiles-with-chezmoi/)
* Detect Windows Subsystem for Linux (WSL) [here](https://www.chezmoi.io/user-guide/machines/windows/)
* Understand chezmoi's files and directories [here](https://www.chezmoi.io/user-guide/setup/#understand-chezmois-files-and-directories)
* Shit Hot Dotfiles [here](https://kolv.in/posts/dotfile-managment)
* Meslo Nerd Font patched for Powerlevel10k [here](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
* Developing in WSL [here](https://code.visualstudio.com/docs/remote/wsl)
* Use scripts to perform actions [here](https://www.chezmoi.io/user-guide/use-scripts-to-perform-actions/) 
* Managing Dotfiles With Chezmoi [here](https://budimanjojo.com/2021/12/13/managing-dotfiles-with-chezmoi/)

Using it to deploy software?
https://github.com/twpayne/chezmoi/discussions/1733


### Examples 

* kolvin/dotfiles repo [here](https://github.com/kolvin/dotfiles)  
* twpayne/dotfiles repo [here](https://github.com/twpayne/dotfiles
* jasonmorganson/dotfiles repo [here](https://github.com/jasonmorganson/dotfiles)
* felipecrs/dotfiles repo [here](https://github.com/felipecrs/dotfiles)
* renemarc/dotfiles repo [here](https://github.com/renemarc/dotfiles)

## License

MIT
