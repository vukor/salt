tools-pkgs:
  pkg.latest:
    - pkgs:
      - vim-enhanced
      - ntsysv
      - screen
      - mc
      - wget
      - mailx
      - man

/root/.vimrc:
  file.managed:
    - source: salt://tools/files/vim/.vimrc

