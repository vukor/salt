openssh-server:
  pkg:
    - installed
  service:
    - name: sshd
    - running
    - enable: True
    - watch:
      - pkg: openssh-server
      - file: sshd_config
  file:
    - managed
    - source: salt:///ssh/files/sshd_config
    - name: /etc/ssh/sshd_config
