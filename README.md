# coreos-sshguard
Dockerised sshguard for CoreOS.

Your iptable must already contain an sshguard chain.

This will correctly log as the sshguard unit.

# Installation

Add one of the ``sshguard-*.service`` files to your CoreOS installation as ``sshguard.service``.

CoreOS:
```yaml
coreos:
  units:
    - name: sshguard.service
      enable: true
      content: |
        <contents of sshguard.service here>
```

Fedora CoreOS:
```yaml
systemd:
  units:
    - name: sshguard.service
      enabled: true
      contents: |
        <contents of sshguard.service here>
```

# Configuration

All configuration variables are exposed as environment variables. Check out `start-sshguard.sh` for more information and the defaults.

You can also mount /etc/sshguard/sshguard.conf into the container with your overrides.
