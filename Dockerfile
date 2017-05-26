FROM debian:stable-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends iptables sshguard \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/sbin/sshguard"]
