tools-pkgs:
  pkg.latest:
    - pkgs:
      - vim-enhanced
      - ntsysv
      - screen
      - mc
      - wget

/root/.vimrc:
  file.managed:
    - source: salt://tools/files/vim/.vimrc

