vim-enhanced:
  pkg:
    - latest

/root/.vimrc:
  file.managed:
    - source: salt://vim/files/.vimrc
    - require:
       - pkg: vim-enhanced

