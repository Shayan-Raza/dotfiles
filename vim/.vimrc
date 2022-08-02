set number
set autoindent

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/sheerun/vim-polyglot'

nnoremap <C-b> :NERDTreeToggle<CR>

call plug#end()

" Turns on syntax highlighting
syntax on

if has('termguicolors')
    " Turns on true terminal colors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

    " Turns on 24-bit RGB color support
    set termguicolors

    " Defines how many colors should be used. (maximum: 256, minimum: 0)
    set t_Co=256
endif

set background=dark
colorscheme onedark
