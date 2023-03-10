# README

Demonstrates configuring using chezmoi for `bash` and `zsh` inside a container.  

## ๐  Build

```sh
# build and run
docker build --progress=plain --no-cache -f Dockerfile -t test_chezmoi . 

docker run --rm -it --name test_chezmoi --entrypoint /bin/zsh test_chezmoi

# configure zsh theme
docker exec -it test_chezmoi /bin/zsh   
```

```sh
docker run --rm -it -v $(git root)/../:/root/.local/share/chezmoi  --name test_chezmoi --entrypoint /bin/zsh test_chezmoi
```

## ๐ป Zsh

```sh
# run zsh
docker exec -it test_chezmoi /bin/zsh  
```

## ๐ป Bash

```sh
# run bash
docker exec -it test_chezmoi /bin/bash
```

## ๐งผ Cleanup

```sh
# cleanup the container
docker stop test_chezmoi 
```

## ๐ Resources

