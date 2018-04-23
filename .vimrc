set nocompatible
syntax on
set nowrap
set encoding=utf8
let mapleader = ","
set mouse=a
"""" START Vundle Configuration 

" Disable file type for vundle
filetype off                  " required
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
"
" " Utility
Plugin 'scrooloose/nerdtree'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'Rip-Rip/clang_complete'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
" "Plugin 'BufOnly.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'SirVer/ultisnips'
Plugin 'junegunn/fzf'
" "Plugin 'godlygeek/tabular'
Plugin 'ctrlpvim/ctrlp.vim'
" "Plugin 'benmills/vimux'
" "Plugin 'jeetsukumaran/vim-buffergator'
" "Plugin 'gilsondev/searchtasks.vim'
" "Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-dispatch'
"
" " Generic Programming Support 
Plugin 'szw/vim-g'
Plugin 'honza/vim-snippets'
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'

"Dar formato a javascript 
"Plugin 'maksimr/vim-jsbeautify'

Plugin 'vim-syntastic/syntastic'
"" Markdown / Writting
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'samsonw/vim-markdown-preview'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'
Plugin 'junegunn/goyo.vim' "Concentracion
Plugin 'junegunn/limelight.vim' "Concentracion
" Plugin 'JamshedVesuna/vim-markdown-preview'
" "
" " Git Support
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'
"Plugin 'jaxbot/github-issues.vim'
"
" " Theme / Interface
Plugin 'AnsiEsc.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sjl/badwolf'
" "Plugin 'tomasr/molokai'
" "Plugin 'morhetz/gruvbox'
"
" temas
" "Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
" "Plugin 'junegunn/limelight.vim'
" "Plugin 'mkarmona/colorsbox'
" "Plugin 'romainl/Apprentice'
" "Plugin 'Lokaltog/vim-distinguished'
" "Plugin 'chriskempson/base16-vim'
" "Plugin 'w0ng/vim-hybrid'
" "Plugin 'AlessandroYorba/Sierra'
" "Plugin 'daylerees/colour-schemes'
" "Plugin 'effkay/argonaut.vim'
" "Plugin 'ajh17/Spacegray.vim'
" "Plugin 'atelierbram/Base2Tone-vim'
" "Plugin 'colepeters/spacemacs-theme.vim'
call vundle#end()            " required
filetype plugin indent on    " required
" END Vundle Configuration 
"
" 
" " Configuration Section
""""""""""""""""""""""""""""""""""""""

" Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
"
" Always display the status line
set laststatus=2
"
"
" " Enable highlighting of the current line
set cursorline

let g:clang_use_library = 1

" path to directory where library can be found
let g:clang_library_path='/usr/lib/llvm-3.8/lib/libclang.so'
"'/usr/lib/llvm-3.8/lib'
" or path directly to the library file
"let g:clang_library_path='/usr/lib/i386-linux-gnu/libclang-3.8.so.1'
"
" " Theme and Styling 
set t_Co=256
set background=dark

let NERDTreeWinSize =15
map <leader>n :NERDTreeToggle<CR>
map <leader><CR> :TagbarToggle<CR>
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'


"Goyo y limelight configuracion
"Color name (:help cterm-colors) or ANSI code
 let g:limelight_conceal_ctermfg = 'gray'
 let g:limelight_conceal_ctermfg = 240

 " Color name (:help gui-colors) or RGB color
 let g:limelight_conceal_guifg = 'DarkGray'
 let g:limelight_conceal_guifg = '#777777'

 " Default: 0.5
 let g:limelight_default_coefficient = 0.7

 " Number of preceding/following paragraphs to include (default: 0)
 let g:limelight_paragraph_span = 1

 " Beginning/end of paragraph
 "   When there's no empty line between the paragraphs
 "   and each paragraph starts with indentation
 let g:limelight_bop = '^\s'
 let g:limelight_eop = '\ze\n^\s'

 " Highlighting priority (default: 10)
 "   Set it to -1 not to overrule hlsearch
 let g:limelight_priority = -1
 autocmd! User GoyoEnter Limelight
 autocmd! User GoyoLeave Limelight!
 " Fin configuracion goyo
 "
 let g:languagetool_jar ='/home/pablo/Descargas/LanguageTool-4.1/languagetool.jar'
 let g:languagetool_lang = 'es'
