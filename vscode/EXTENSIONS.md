# EXTENSIONS

Install `vscode` extensions.  

## Use VSCode Profiles

```sh
./install_profile.sh --profile=chrisguest75 --install
./install_profile.sh --profile=work --install
```

If on WSL configure some aliases for the distro to stop confusion when loading `code`.  

```sh
alias code="echo 'Use code@work or code@chris for required profiles'"
alias code@work="/mnt/c/Program\ Files/Microsoft\ VS\ Code/bin/code --profile work"
alias code@chris="/mnt/c/Program\ Files/Microsoft\ VS\ Code/bin/code --profile chrisguest75"
```

Or use direct profiles in totally seperate folders [chrisguest75/default_dotfiles/vscode/README.md](https://github.com/chrisguest75/default_dotfiles/blob/master/vscode/README.md)  

## Resources

* [chrisguest75/default_dotfiles/vscode/README.md](https://github.com/chrisguest75/default_dotfiles/blob/master/vscode/README.md)  
