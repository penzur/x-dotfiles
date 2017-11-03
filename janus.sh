mkdir -p ~/.bin

# https://github.com/rupa/z
cd ~/.bin
git clone https://github.com/rupa/z.git
chmod +x ~/.bin/z/z.sh

if [[ ! -x $(which ruby) ]]; then
	echo 'Ruby not installed'
else
	# janus vim
	cd ~/
	curl -Lo- https://bit.ly/janus-bootstrap | bash

	mkdir -p ~/.janus
	cd ~/.janus

	git clone https://github.com/vim-scripts/Align.git
	git clone https://github.com/vim-scripts/TuttiColori-Colorscheme.git
	git clone https://github.com/mileszs/ack.vim.git
	git clone https://github.com/zsiciarz/caddy.vim.git
	git clone https://github.com/tacahiroy/ctrlp-funky.git
	git clone https://github.com/mattn/emmet-vim.git
	git clone https://github.com/morhetz/gruvbox.git
	git clone https://github.com/michalliu/jsoncodecs.vim.git
	git clone https://github.com/michalliu/jsruntime.vim.git
	git clone https://github.com/Shougo/neocomplete.vim.git
	git clone https://github.com/myusuf3/numbers.vim.git
	git clone https://github.com/michalliu/sourcebeautify.vim.git
	git clone https://github.com/vim-airline/vim-airline
	git clone https://github.com/vim-airline/vim-airline-themes
	git clone https://github.com/flazz/vim-colorschemes.git
	git clone https://github.com/tpope/vim-cucumber.git
	git clone https://github.com/ryanoasis/vim-devicons
	git clone https://github.com/fatih/vim-go.git
	git clone https://github.com/noahfrederick/vim-hemisu.git
	git clone https://github.com/digitaltoad/vim-jade.git
	git clone https://github.com/mxw/vim-jsx.git
	git clone https://github.com/zeis/vim-kolor.git
	git clone https://github.com/digitaltoad/vim-pug.git
	git clone https://github.com/darthmall/vim-vue.git
	git clone https://github.com/sekel/vim-vue-syntastic.git
fi
