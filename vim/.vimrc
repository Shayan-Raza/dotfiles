set number
set relativenumber
set foldmethod=indent
syntax on 

" Plugins
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/joshdick/onedark.vim'

call plug#end()

" Plugin config
let NERDTreeShowHidden=1

" Keybinds
nnoremap <C-b> :NERDTreeToggle<CR>

" Theme
if has('termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
	set t_Co=256
endif

set background=dark
colorscheme onedark

" Airline theme
let g:airline_theme='onedark'
