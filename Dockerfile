FROM alpine:edge

ADD rootfs /

RUN apk update && \
  apk upgrade && \
  apk add \
    ca-certificates \
    curl \
    bash \
    bash-completion \
    ncurses \
    vim \
    gettext \
    logrotate \
    tar \
    mg \
    unzip \
    rsync && \
  ln -s /usr/bin/mg /usr/local/bin/emacs && \
  rm -rf /var/cache/apk/*

CMD ["/bin/bash"]
