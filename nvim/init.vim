set number
set autoindent

" Plugins
call plug#begin()

Plug 'https://github.com/nvim-lualine/lualine.nvim'
Plug 'preservim/nerdtree'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/ryanoasis/vim-devicons'

call plug#end()

" Keybinds
nnoremap <C-b> :NERDTreeToggle<CR>

" One Dark Theme
syntax on

if has('termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
    set t_Co=256
endif

set background=dark
colorscheme onedark

" Lualine bar
lua << end
require('lualine').setup {
    options = { theme = 'ayu_mirage' }
}

require('lualine').setup()