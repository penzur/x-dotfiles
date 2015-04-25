# Based on Paul Iris' install-deps.sh
mkdir -p ~/.bin

# https://github.com/rupa/z
cd ~/.bin
git clone https://github.com/rupa/z.git
chmod +x ~/.bin/z/z.sh

# janus vim
cd ~/
curl -Lo- https://bit.ly/janus-bootstrap | bash

mkdir -p ~/.janus
cd ~/.janus

# Vim Powerline
git clone https://github.com/Lokaltog/vim-powerline.git

# vim-jade
git clone https://github.com/digitaltoad/vim-jade.git

# emmet-vim
git clone https://github.com/mattn/emmet-vim.git

# jsoncodecs
git clone https://github.com/michalliu/jsoncodecs.vim.git

# source-beautify
git clone https://github.com/michalliu/sourcebeautify.vim.git

# Align
git clone https://github.com/vim-scripts/Align.git

# jsruntime
git clone https://github.com/michalliu/jsruntime.vim.git

# gruvbox colorscheme
git clone https://github.com/morhetz/gruvbox.git

# kolors
git clone https://github.com/zeis/vim-kolor.git

# hemisu colorscheme
git clone https://github.com/noahfrederick/vim-hemisu.git

# tutticolori from Espresso app
git clone https://github.com/vim-scripts/TuttiColori-Colorscheme.git
