# Based on Paul Iris' install-deps.sh
mkdir -p ~/.bin

# https://github.com/rupa/z
cd ~/.bin
git clone https://github.com/rupa/z.git
chmod +x ~/.bin/z/z.sh

if [ ! -x $(which ruby) ]; then
	echo 'Ruby not installed. Install ruby and re-run this script.'
else
	# janus vim
	cd ~/
	curl -Lo- https://bit.ly/janus-bootstrap | bash

	mkdir -p ~/.janus
	cd ~/.janus

	git clone https://github.com/mileszs/ack.vim.git
	git clone https://github.com/digitaltoad/vim-jade.git
	git clone https://github.com/mattn/emmet-vim.git
	git clone https://github.com/michalliu/jsoncodecs.vim.git
	git clone https://github.com/michalliu/sourcebeautify.vim.git
	git clone https://github.com/michalliu/jsruntime.vim.git
	git clone https://github.com/vim-scripts/Align.git
	git clone https://github.com/tpope/vim-cucumber.git
	git clone https://github.com/Shougo/neocomplete.vim.git

	git clone https://github.com/morhetz/gruvbox.git
	git clone https://github.com/zeis/vim-kolor.git
	git clone https://github.com/noahfrederick/vim-hemisu.git
	git clone https://github.com/vim-scripts/TuttiColori-Colorscheme.git

	# Back to .dotfiles folder
	cd ~/.dotfiles
	source bootstrap.sh
fi
