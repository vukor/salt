tools-pkgs:
  pkg.latest:
    - pkgs:
      - vim-enhanced
      - ntsysv

/root/.vimrc:
  file.managed:
    - source: salt://tools/files/vim/.vimrc

