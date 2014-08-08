iptables:
  pkg:
    - installed
  service:
    - running
    - watch:
      - pkg: iptables
      - file: iptables
  file:
    - managed
    - source: salt://iptables/files/iptables
    - name: /etc/sysconfig/iptables
