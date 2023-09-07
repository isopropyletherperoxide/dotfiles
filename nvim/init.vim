call plug#begin('~/.vim/plugged')
Plug 'isopropyletherperoxide/komeiji-vim'
Plug 'vim-airline/vim-airline'
Plug 'Mofiqul/vscode.nvim'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'jbyuki/nabla.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gentoo/gentoo-syntax'
Plug 'alec-gibson/nvim-tetris'
Plug 'ThePrimeagen/vim-be-good'
Plug 'karb94/neoscroll.nvim'
Plug 'mangeshrex/everblush.vim'
Plug 'jbyuki/venn.nvim'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'glepnir/dashboard-nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'ryanoasis/vim-devicons'
Plug 'p00f/nvim-ts-rainbow'
Plug 'sbdchd/neoformat'
Plug 'wfxr/minimap.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'CRAG666/code_runner.nvim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tpope/vim-fugitive'
Plug 'rktjmp/lush.nvim'
Plug 'andweeb/presence.nvim'
Plug 'ActivityWatch/aw-watcher-vim'
Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
Plug 'raichoo/haskell-vim'
Plug 'tamton-aquib/zone.nvim'
Plug 'tpope/vim-surround'
Plug 'Shougo/echodoc.vim'
Plug 'ahmedkhalf/project.nvim'
Plug 'Olical/conjure'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'leoluz/nvim-dap-go'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-dispatch'
Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'folke/twilight.nvim'
Plug 'rktjmp/shipwright.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'folke/which-key.nvim'
Plug 'lervag/vimtex'
Plug 'tzachar/highlight-undo.nvim'
call plug#end()

" === Colours ===

set termguicolors
colorscheme PaperColor 
hi vertsplit guifg=bg guibg=bg
hi statusline guifg=#33393B


" === coc Keybinds === 
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
map <leader>a <Plug>(coc-codeaction-selected)
map <leader>rn <Plug>(coc-rename)
map <leader>rf <Plug>(coc-refactor)
map <leader>gr <Plug>(coc-references)
map <leader>gi <Plug>(coc-implementation)
map <leader>gy <Plug>(coc-type-definition)
map <silent> gd <Plug>(coc-definition)
map <Leader>ca <Plug>(coc-codeaction-line)
map <Leader>ac <Plug>(coc-codeaction-cursor)
map <Leader>ao <Plug>(coc-codelens-action)

" === Extra things for Coc ===
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

let g:coc_filetype_map = {
  \ 'arduino': 'cpp',
  \ }
let g:coc_global_extensions = ['coc-json', 'coc-clangd', 'coc-rust-analyzer', 'coc-spell-checker', 'coc-go', 'coc-snippets']

" === Navigation Remaps ===
noremap <expr> <Down> v:count ? 'j' : 'gj'
noremap <expr> <Up> v:count ? 'k' : 'gk'

nnoremap <leader>v <cmd>NERDTree<cr>

let @a = "0i€kb "
let @w = "ysiW`€krysiW`" 

set fillchars+=eob:\ 
set number rnu
set cursorline
set mouse=n
set expandtab
set shortmess+=A
set noshowmode
let g:echodoc#enable_at_startup = 1
let g:conjure#client_on_load = v:false
let g:conjure#mapping#doc_word = v:false

set undofile
set nocompatible

:nnoremap <F5> :Dashboard<Enter>

command UpdateRPC lua package.loaded.presence:update()
lua require('amongus')


""imap <expr> <C-Tab> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-advance)' : '<Tab>'
""imap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
""smap <expr> <Tab> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'
""smap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
""xmap <Tab> <Plug>(snippy-cut-text)

" === Dashboard Settings ===

let g:dashboard_preview_file = "~/.config/nvim/Logo"
let g:dashboard_preview_command = 'cat'
let g:dashboard_default_executive = 'telescope'
let g:dashboard_preview_pipeline = 'lolcat'
let g:dashboard_preview_file_height = 14
let g:dashboard_preview_file_width = 32
let g:dashboard_preview_file_length = 20

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]


:let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")
:let NERDTreeChDirMode = 2 

if exists("g:neovide") " neovide settings
	set guifont=Hack:h4
endif
