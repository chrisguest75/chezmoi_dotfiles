# syntax=docker/dockerfile:1.4
FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install zsh bash curl git nano locales -y 
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

# NOTE: Escape the \$ otherwise they are rendered at buildtime
COPY --chmod=755 <<EOF /bin/install.sh
#!/usr/bin/env bash
sh -c "\$(curl -fsLS get.chezmoi.io)"
echo "hello world"
chezmoi init https://github.com/chrisguest75/chezmoi_dotfiles.git
EOF

RUN /bin/install.sh
ENTRYPOINT ["zsh"]
CMD [""]
