" First, load the vimrc used by windows
source /mnt/c/Users/abricq/.vimrc_nopackages

""" VUNDLE SETUP 
set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'preservim/nerdcommenter'
Plugin 'rust-lang/rust.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
Plugin 'AndrewRadev/tagalong.vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'voldikss/vim-floaterm'
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}

call vundle#end()            " required
filetype plugin indent on    " required

" PERSONALS


let mapleader = ","
nnoremap <leader>r :%s/ ;/;/g <Esc>

" PLUGINS OPTIONS
nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeTabsToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Sorting of tabexplore
let NERDTreeSortOrder = ['[[extension]]']

" Create default mappings for nerd commenter
filetype plugin on
"let g:NERDCreateDefaultMappings = 1
map <C-k> <Plug>NERDCommenterToggle

"""COC.VIm

"let g:coc_global_extensions=['coc-json','coc-highlight','coc-tsserver','coc-html','coc-css','coc-pyright','coc-clangd']
"nm gd <Plug>(coc-definition)
"nm gr <Plug>(coc-references)
"xm <leader>f <Plug>(coc-format-selected)
"ino <silent><expr> <CR> coc#pum#visible()?coc#pum#confirm():"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"ino <silent><expr> <TAB> coc#pum#visible()?coc#pum#next(1):col('.')-1&&getline('.')[col('.')-2]!~#'\s'?coc#refresh():"\<Tab>"
"ino <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"nnoremap <silent> K :call ShowDocumentation()<CR>
"let b:coc_diagnostic_disable=1

"function! ShowDocumentation()
  "if CocAction('hasProvider', 'hover')
    "call CocActionAsync('doHover')
  "else
    "call feedkeys('K', 'in')
  "endif
"endfunction

" RUST_ANALYSER
hi CocInlayHint guibg=NONE guifg=Blue ctermbg=NONE ctermfg=Gray

hi Search ctermbg=LightYellow
hi Search ctermfg=Red

" for folding code
" za = fold current indentation
" zR = unfold everything
" zM = folds everything
set foldmethod=indent
set foldlevelstart=20

" Run the run command (@ QUENTIN)
nnoremap é :term run % <CR>
"tnoremap <CR> :q <CR>

" JenkinsFile syntax
 au BufNewFile,BufRead Jenkinsfile setf groovy

" Command to open the .vimrc
command Tev :tabedit ~/dotfiles/.vimrc
command Sev :source ~/dotfiles/.vimrc

 " Shorcuts for my fuzzy finder
nnoremap <leader>ff <cmd>:Files<cr>
nnoremap <leader>fg <cmd>:Rg<cr>

" This allow to visually select a section and then hit @ to run a macro on all
" lines of the section.
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" tabedit is slow
nnoremap <C-t> :tabedit 

" Oberon filetype
autocmd BufEnter *.aMod :setlocal filetype=oberon2
autocmd BufEnter *.mod :setlocal filetype=oberon2

" Comments for Oberon2
let g:NERDCustomDelimiters = {
	\ 'oberon2': { 'left': '(* ', 'right': ' *)' }
\ }

" Show trailing whitespaces in Red
":highlight ExtraWhitespace ctermbg=red guibg=red
":match ExtraWhitespace /\s\+$/

" Floaterm
" to close, use <C-d>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
