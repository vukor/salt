services:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: RELATED,ESTABLISHED
    - proto: tcp
    - save: True

  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: RELATED,ESTABLISHED
    - proto: tcp
    - save: True

