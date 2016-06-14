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
    wget \
    gettext \
    logrotate \
    tar \
    mg \
    unzip \
    s6 \
    rsync && \
  rm -rf /var/cache/apk/* && \
  update-ca-certificates

CMD ["/bin/bash"]
