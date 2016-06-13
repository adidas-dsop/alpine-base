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
    s6 \
    rsync && \
  rm -rf /var/cache/apk/*

CMD ["/bin/bash"]
