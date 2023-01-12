lua require('plugins')
lua require('init')

set noswapfile
set noexpandtab
set tabstop=2
set shiftwidth=2
set relativenumber
set completeopt-=preview
set nowrap
set updatetime=50
set colorcolumn="80"

au ColorScheme * hi Normal ctermbg=none guibg=none

let g:astro_typescript = 'enable'
let g:astro_stylus = 'enable'
let g:rust_recommended_style = v:false

if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

" #################### KEY BINDINGS ####################
set timeoutlen=500
let mapleader = " "
imap jk <Esc>
imap kj <Esc>

nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" tab navigation
map <leader>h :wincmd h <CR>
map <leader>j :wincmd j <CR>
map <leader>k :wincmd k <CR>
map <leader>l :wincmd l <CR>

augroup packer_user_config
	autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
