# coreos-sshguard
Dockerised sshguard for CoreOS.

Your iptable must already contain an sshguard chain.

This will correctly log using as the sshguard unit.

# Installation

Add the ``sshguard-docker.service`` or ``sshguard-rkt.service`` file to your CoreOS installation. You probably want to rename it to ``sshguard.service``.

For instance:
```yaml
coreos:
  units:
    - name: sshguard.service
      enable: true
      content: |
        <contents of sshguard.service here>
```
