vim-enhanced:
  pkg:
    - installed

/root/.vimrc:
  file.managed:
    - source: salt://vim/files/.vimrc
    - require:
       - pkg: vim-enhanced

