# dotfiles

Template dotfiles repository, managed with [chezmoi](https://chezmoi.io/).

TODO:

* Install in container (add ssh)
* Clone and configure zsh.
* brewfile
* apt installs - package lists
* powerlevel10k


## Steps

1) Install `homebrew` [Instructions Here](https://brew.sh/
) and [Configuration Here](https://docs.brew.sh/Homebrew-on-Linux)  
1) Install `chezmoi` [Instructions Here](https://www.chezmoi.io/install/)  


NOTE: To access this folder on windows in code you'll need to install remote development extension.  

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



https://www.chezmoi.io/user-guide/machines/windows/

https://www.chezmoi.io/user-guide/setup/#understand-chezmois-files-and-directories

https://kolv.in/posts/dotfile-managment

Homebrew

https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k


https://code.visualstudio.com/docs/remote/wsl


https://www.chezmoi.io/user-guide/use-scripts-to-perform-actions/


### Examples 

* kolvin/dotfiles repo [here](https://github.com/kolvin/dotfiles)  
* twpayne/dotfiles repo [here](https://github.com/twpayne/dotfiles
* jasonmorganson/dotfiles repo [here](https://github.com/jasonmorganson/dotfiles)
* felipecrs/dotfiles repo [here](https://github.com/felipecrs/dotfiles)
* renemarc/dotfiles repo [here](https://github.com/renemarc/dotfiles)

## License

MIT
