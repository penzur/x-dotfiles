#####################################################
# BREW
# -
# https://brew.sh
#####################################################
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Git and vim
brew update && brew install git curl
brew install macvim --with-lua --with-override-system-vim --with-luajit --with-python3

# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

######################################################
# Z
# -
# https://github.com/rupa/z
######################################################
mkdir -p ~/.bin
cd ~/.bin
git clone https://github.com/rupa/z.git
chmod +x ~/.bin/z/z.sh

# Vim plugins
git clone https://github.com/vim-scripts/Align.git ~/.vim/bundle/
git clone https://github.com/vim-scripts/Align.git ~/.vim/bundle/
git clone https://github.com/vim-scripts/TuttiColori-Colorscheme.git ~/.vim/bundle/
git clone https://github.com/vim-scripts/TuttiColori-Colorscheme.git ~/.vim/bundle/
git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/
git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/
git clone https://github.com/zsiciarz/caddy.vim.git ~/.vim/bundle/
git clone https://github.com/zsiciarz/caddy.vim.git ~/.vim/bundle/
git clone https://github.com/tacahiroy/ctrlp-funky.git ~/.vim/bundle/
git clone https://github.com/tacahiroy/ctrlp-funky.git ~/.vim/bundle/
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/
git clone https://github.com/zchee/deoplete-go.git ~/.vim/bundle/
git clone https://github.com/zchee/deoplete-go.git ~/.vim/bundle/
git clone https://github.com/Shougo/deoplete.nvim.git ~/.vim/bundle/
git clone https://github.com/Shougo/deoplete.nvim.git ~/.vim/bundle/
git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/
git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/
git clone https://github.com/michalliu/jsoncodecs.vim.git ~/.vim/bundle/
git clone https://github.com/michalliu/jsoncodecs.vim.git ~/.vim/bundle/
git clone https://github.com/michalliu/jsruntime.vim.git ~/.vim/bundle/
git clone https://github.com/michalliu/jsruntime.vim.git ~/.vim/bundle/
git clone https://github.com/ddollar/nerdcommenter.git ~/.vim/bundle/
git clone https://github.com/ddollar/nerdcommenter.git ~/.vim/bundle/
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/
git clone https://github.com/roxma/nvim-yarp.git ~/.vim/bundle/
git clone https://github.com/roxma/nvim-yarp.git ~/.vim/bundle/
git clone https://github.com/michalliu/sourcebeautify.vim.git ~/.vim/bundle/
git clone https://github.com/michalliu/sourcebeautify.vim.git ~/.vim/bundle/
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git ~/.vim/bundle/
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git ~/.vim/bundle/
git clone https://github.com/jeetsukumaran/vim-buffergator.git ~/.vim/bundle/
git clone https://github.com/jeetsukumaran/vim-buffergator.git ~/.vim/bundle/
git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/
git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/
git clone https://github.com/tpope/vim-cucumber.git ~/.vim/bundle/
git clone https://github.com/tpope/vim-cucumber.git ~/.vim/bundle/
git clone https://github.com/ryanoasis/vim-devicons ~/.vim/bundle/
git clone https://github.com/ryanoasis/vim-devicons ~/.vim/bundle/
git clone https://github.com/easymotion/vim-easymotion.git ~/.vim/bundle/
git clone https://github.com/easymotion/vim-easymotion.git ~/.vim/bundle/
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/
git clone https://github.com/Blackrush/vim-gocode.git ~/.vim/bundle/
git clone https://github.com/Blackrush/vim-gocode.git ~/.vim/bundle/
git clone https://github.com/noahfrederick/vim-hemisu.git ~/.vim/bundle/
git clone https://github.com/noahfrederick/vim-hemisu.git ~/.vim/bundle/
git clone https://github.com/roxma/vim-hug-neovim-rpc.git ~/.vim/bundle/
git clone https://github.com/roxma/vim-hug-neovim-rpc.git ~/.vim/bundle/
git clone https://github.com/digitaltoad/vim-jade.git ~/.vim/bundle/
git clone https://github.com/digitaltoad/vim-jade.git ~/.vim/bundle/
git clone https://github.com/mxw/vim-jsx.git ~/.vim/bundle/
git clone https://github.com/mxw/vim-jsx.git ~/.vim/bundle/
git clone https://github.com/zeis/vim-kolor.git ~/.vim/bundle/
git clone https://github.com/zeis/vim-kolor.git ~/.vim/bundle/
git clone https://github.com/terryma/vim-multiple-cursors.git ~/.vim/bundle/
git clone https://github.com/terryma/vim-multiple-cursors.git ~/.vim/bundle/
git clone https://github.com/digitaltoad/vim-pug.git ~/.vim/bundle/
git clone https://github.com/digitaltoad/vim-pug.git ~/.vim/bundle/
git clone https://github.com/bronson/vim-trailing-whitespace.git ~/.vim/bundle/
git clone https://github.com/bronson/vim-trailing-whitespace.git ~/.vim/bundle/
git clone https://github.com/tpope/vim-unimpaired.git ~/.vim/bundle/
git clone https://github.com/tpope/vim-unimpaired.git ~/.vim/bundle/
git clone https://github.com/darthmall/vim-vue.git ~/.vim/bundle/
git clone https://github.com/darthmall/vim-vue.git ~/.vim/bundle/
git clone https://github.com/sekel/vim-vue-syntastic.git ~/.vim/bundle/
git clone https://github.com/sekel/vim-vue-syntastic.git ~/.vim/bundle/
