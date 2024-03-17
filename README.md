# dotfiles

Template dotfiles repository, managed with [chezmoi](https://chezmoi.io/).

## Contents

- [dotfiles](#dotfiles)
  - [Contents](#contents)
  - [Testing](#testing)
  - [Steps](#steps)
    - [Steps (linux)](#steps-linux)
    - [Steps (windows)](#steps-windows)
    - [Steps (wsl)](#steps-wsl)
    - [Steps (local)](#steps-local)
  - [Adding files](#adding-files)
  - [Resources](#resources)
    - [Examples](#examples)
  - [License](#license)

NOTES:

* Handles all major platforms; Linux, Windows, WSL and Darwin.
* Be careful when writing templates that they still shebangs.  

TODO:

* Vscode extensions
* Install in container (add ssh)
* Devcontainer
* Want it to work on mac, windows and linux
  * Windows
    * choco software.
  * Linux
    * Terminal doesn't seem to use user shell
* Secrets - 1password
* Nix installer
* 

## Testing

REF: Installing distros for testing [chrisguest75/sysadmin_examples/34_WSL/INSTALL_DISTRO.md](https://github.com/chrisguest75/sysadmin_examples/blob/master/34_WSL/INSTALL_DISTRO.md)  

## Steps

### Steps (linux)

```sh
apt install curl

# install configuration
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply chrisguest75/chezmoi_dotfiles

# reapply
chezmoi update
```

### Steps (windows)

```powershell
choco install chezmoi

chezmoi data

```

### Steps (wsl)

```sh
# this script downloads and applies
./install.sh

# show data (this is the data structure that you can make decisions on)
/home/chrisguest/.local/bin/chezmoi data

/home/chrisguest/.local/bin/chezmoi data | jq .chezmoi
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

* Documentation for Chezmoi [here](https://www.chezmoi.io/)  
* Cloned from chezmoi/dotfiles [here](https://github.com/chezmoi/dotfiles)
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

https://learn.microsoft.com/en-us/linux/packages#how-to-use-the-gpg-repository-signing-key


### Examples

* kolvin/dotfiles repo [here](https://github.com/kolvin/dotfiles)  
* twpayne/dotfiles repo [here](https://github.com/twpayne/dotfiles
* jasonmorganson/dotfiles repo [here](https://github.com/jasonmorganson/dotfiles)
* felipecrs/dotfiles repo [here](https://github.com/felipecrs/dotfiles)
* renemarc/dotfiles repo [here](https://github.com/renemarc/dotfiles)

## License

MIT
