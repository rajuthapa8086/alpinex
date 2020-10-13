FROM alpine

WORKDIR /root/

RUN apk update && \
    apk add zsh bash vim git curl wget && \
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
    echo "alias vi=\"vim\"" >> /root/.zshrc
