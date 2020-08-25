" Plugins
call plug#begin()
    " Python syntax
    Plug 'vim-python/python-syntax' 
    " Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

    " Styled syntax
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

    " Haskell Highlighting
    Plug 'neovimhaskell/haskell-vim'

    " html closetag
    Plug 'alvan/vim-closetag'

    " vim-vue
    Plug 'posva/vim-vue'

    " NERDCommenter
    Plug 'preservim/nerdcommenter'

    " jsx-pretty
    Plug 'maxmellon/vim-jsx-pretty'

    " TS sytax
    Plug 'HerringtonDarkholme/yats.vim'

    " colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    " sneak
    Plug 'justinmk/vim-sneak'

    " vim-one
    Plug 'rakr/vim-one'

    " one-dark
    Plug 'joshdick/onedark.vim'

    "auto-pairs
    Plug 'jiangmiao/auto-pairs'

    " snippets engine
    Plug 'SirVer/ultisnips'

    " snippets snippets
    Plug 'honza/vim-snippets'

    " emmet
    Plug 'mattn/emmet-vim'

    " nerdTree
    Plug 'preservim/nerdtree'

    " vim-javascript
    Plug 'pangloss/vim-javascript'

    " airline
    Plug 'vim-airline/vim-airline'

    " Material Theme
    Plug 'kaicataldo/material.vim'

    " Close Tag
    Plug 'alvan/vim-closetag'

    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " coc.vim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " c++ syntax
    " Plug 'octol/vim-cpp-enhanced-highlight'

    " C Syntax
    Plug 'jackguo380/vim-lsp-cxx-highlight'

    " fugitive
    Plug 'tpope/vim-fugitive'

    " toml syntax
    Plug 'cespare/vim-toml'
    
    " vim surround
    Plug 'tpope/vim-surround'

    " vim eunuch
    Plug 'tpope/vim-eunuch'

    " startify
    Plug 'mhinz/vim-startify'

    " devicons
    Plug 'ryanoasis/vim-devicons'
call plug#end()
