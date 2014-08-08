iptables:
  pkg:
    - installed
  service:
    - running
    - enable: True
    - watch:
      - pkg: iptables
      - file: iptables
  file:
    - managed
    - source: salt://iptables/files/iptables
    - name: /etc/sysconfig/iptables
