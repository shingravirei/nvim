" NVIM Plugins
call plug#begin()
" html closetag
Plug 'alvan/vim-closetag'

" vim-vue
Plug 'posva/vim-vue'

" NERDCommenter
Plug 'preservim/nerdcommenter'

" jsx-pretty
Plug 'maxmellon/vim-jsx-pretty'

" sneak
Plug 'justinmk/vim-sneak'

" oceanic-next
Plug 'mhartington/oceanic-next'

" vim-one
Plug 'rakr/vim-one'

" ayu
Plug 'ayu-theme/ayu-vim'

" gruvbox
Plug 'morhetz/gruvbox'

" one-dark
Plug 'joshdick/onedark.vim'

" iceberg
Plug 'cocopon/iceberg.vim'

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

" Dracula
Plug 'dracula/vim', { 'as': 'dracula' }

" airline
Plug 'vim-airline/vim-airline'

" airline theme
Plug 'vim-airline/vim-airline-themes'

" Material Theme
Plug 'kaicataldo/material.vim'

" Close Tag
Plug 'alvan/vim-closetag'

" ctrl + p
Plug 'ctrlpvim/ctrlp.vim'

" coc.vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" indentline
Plug 'Yggdroot/indentLine'

" fugitive
Plug 'tpope/vim-fugitive'

" toml syntax
Plug 'cespare/vim-toml'

" vim surround
Plug 'tpope/vim-surround'

" gruvbox material
Plug 'sainnhe/gruvbox-material'

" vim eunuch
Plug 'tpope/vim-eunuch'

" startify
Plug 'mhinz/vim-startify'

" devicons
Plug 'ryanoasis/vim-devicons'
call plug#end()

set encoding=utf-8

" Custom mappings
let mapleader = " "
nnoremap <silent> <leader>w :w <CR>
nnoremap <silent> <Tab> :bn <CR>
nnoremap <silent> <S-Tab> :bp <CR>
nnoremap <silent> <leader>,q :q <CR>
nnoremap <silent> <leader>,e :e ~/.config/nvim/init.vim <CR>
nmap <silent> <F6> :NERDTreeToggle <bar> :NERDTreeRefreshRoot <CR>
nnoremap <silent> <c-x> :bdelete <CR> " delete current buffer

" Tab fix
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smarttab
set autoindent
set smartindent

" cursorline
set cursorline

" snippets config
let g:UltiSnipsExpandTrigger="<S-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" indentline config
let g:indentLine_char = '│'

" Airline Config
let g:airline_theme='material'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#coc#enabled = 0

" Color Scheme Config
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

syntax on
"let g:oceanic_next_terminal_italic = 1
"colorscheme OceanicNext
let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'
colorscheme material

" JSX Colorful style
let g:vim_jsx_pretty_colorful_config = 1

" JSX comment fix
let g:NERDCustomDelimiters={
	\ 'javascript': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}

" vim-vue
let g:vue_pre_processors = []

" Numbers on left
set number

" ctrlP config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'min:4,max:15'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Startify config
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1
let g:startify_custom_header = []

" NERDTree
let NERDTreeDirArrowExpandable=""
let NERDTreeDirArrowCollapsible=""
let NERDTreeMinimalUI = 1
let NERDTreeWinSize = 28
let g:NERDTreeWinPos = "right"

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


" ----------------------------- HTML CLOSETAG-----------------
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.vue,.*js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,vue,js'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,vue,js'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.js': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
"let g:closetag_close_shortcut = '<leader>>'


" -------------------- coc.vim config--------------------------

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

