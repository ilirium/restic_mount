FROM ubuntu:focal

ENV RESTIC_VERSION 0.12.1
ENV RESTIC_URL https://github.com/restic/restic/releases/download/v${RESTIC_VERSION}/restic_${RESTIC_VERSION}_linux_amd64.bz2

ENV DAVE_VERSION 0.4.0
ENV DAVE_URL https://github.com/micromata/dave/releases/download/v${DAVE_VERSION}/dave-${DAVE_VERSION}-linux-amd64.zip

# Step: Update and install tools (Curl, Fuse, Zip)
RUN apt-get update && apt-get install -y curl fuse zip

# Step: Create a folder for mounting by Fuse
RUN mkdir /root/mnt
RUN mkdir /root/download

# Step: Install Restic
RUN curl -L ${RESTIC_URL} | bzip2 -d >/usr/local/bin/restic \
    && chmod +x /usr/local/bin/restic

# Step: Install Dave
RUN curl -L ${DAVE_URL} -o /root/download/dave.zip \
    && unzip /root/download/dave.zip -d /root/download/dave \
    && cp /root/download/dave/dave /usr/local/bin \
    && rm -rf /root/download \
    && chmod +x /usr/local/bin/dave

# Step: Copy configs
COPY config.yaml /root
COPY cmd.sh /root

# Step: Run point
WORKDIR /root
CMD ["/root/cmd.sh"]