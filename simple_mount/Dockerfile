FROM ubuntu:focal

ENV RESTIC_VERSION 0.12.1
ENV RESTIC_URL https://github.com/restic/restic/releases/download/v${RESTIC_VERSION}/restic_${RESTIC_VERSION}_linux_amd64.bz2

RUN apt-get update && apt-get install -y curl fuse python3 \
  && curl -L $RESTIC_URL | bzip2 -d >/usr/local/bin/restic \
  && chmod +x /usr/local/bin/restic \
  && mkdir /root/mnt

COPY cmd.sh /root
CMD ["/root/cmd.sh"]