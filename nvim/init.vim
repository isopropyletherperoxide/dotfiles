call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'Mofiqul/vscode.nvim'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'jbyuki/nabla.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'andweeb/presence.nvim'
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
call plug#end()
set termguicolors
colorscheme PaperColor 
hi vertsplit guifg=bg guibg=bg
hi statusline guifg=#33393B 
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
nnoremap <leader>v <cmd>NERDTree<cr>
:set fillchars+=eob:\ 
:set number rnu
:set cursorline
:set mouse=n
:nnoremap <F5> :Dashboard<Enter>


command RichPresenceUpd lua package.loaded.presence:update()
lua require('amongus')

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
imap <expr> <C-Tab> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-advance)' : '<Tab>'
imap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
smap <expr> <Tab> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'
smap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
xmap <Tab> <Plug>(snippy-cut-text)
set noshowmode


let g:dashboard_preview_file = "~/.config/nvim/Logo"
let g:dashboard_preview_command = 'cat'
let g:dashboard_default_executive = 'telescope'
let g:dashboard_preview_pipeline = 'lolcat'
let g:dashboard_preview_file_height = 14
let g:dashboard_preview_file_width = 32
let g:dashboard_preview_file_length = 20
let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "The One True Text Editor"
let g:presence_main_image          = "neovim"
let g:presence_client_id           = "793271441293967371"
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1
let g:coc_global_extensions = ['coc-json', 'coc-clangd', 'coc-spell-checker', 'coc-go']

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

:let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")


if exists("g:neovide") " neovide settings
	set guifont=Hack:h4
endif
