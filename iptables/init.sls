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

iptables-ipv6:
  pkg:
    - installed
  service:
    - running
    - enable: True
    - watch:
      - pkg: iptables-ipv6
      - file: ip6tables
  file:
    - managed
    - source: salt://iptables/files/ip6tables
    - name: /etc/sysconfig/ip6tables

