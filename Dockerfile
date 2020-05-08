FROM debian:stable-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends ipset iptables nftables sshguard systemd tini \
    && rm -rf /var/lib/apt/lists/*

RUN echo > /etc/sshguard/sshguard.conf
ADD start-sshguard.sh /

ENTRYPOINT ["tini", "--", "/start-sshguard.sh"]
