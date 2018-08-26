set nobackup " vim nie bedzie zostawial kopii zapisywanych plikow
set nowritebackup " ani tworzyl ich podczas edycji

set nolinebreak " brak autowstawiania enterow
set nowrap " brak zawijania wierszy
"set wrap " zawijanie wierszy

" spaces instead of tab
set expandtab
" how many spaces for each tab
set tabstop=2
" spaces for indention
set shiftwidth=2
"set list
"set colorcolumn=80

" auto indentions
set autoindent
set smartindent

" Set relative number and assign it to ctrl + m for toggle
"set relativenumber
"set nu
"map <C-m> :set nu!<CR>

"Needed for a lot of cool stuff and plugins
set nocompatible

"File type plugin recognize files using extension
filetype plugin on

" Pathogen and Vundle is not needed in vim 8
" execute pathogen#infect()
syntax on

"Nerdtree
"Ctrl n to open/close nerdtree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='.'

" Vim Wiki configuration
" Setting up home directory and markdown as default VimWiki language
let g:vimwiki_list = [{'path': "$VIMWIKIHOME", 'syntax': 'markdown', 'ext': '.md'}]
" Highlight headers with different colors
let g:vimwiki_hl_headers = 1
" Highlight completed tasks
let g:vimwiki_hl_cb_checked = 1
" Do not shorten links
"let g:vimwiki_url_maxsave=0

" Loads specific color scheme for vimdiff
if &diff
  colorscheme diffcolors
endif

" Fugitive status line to show current branch name
set statusline+=%{fugitive#statusline()}
let g:ale_puppet_puppetlint_options='--no-variable_scope-check --no-autoloader_layout-check'

" Synastic configuration removed and switched to ale
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_yaml_checkers = ['yamllint']
" let g:syntastic_yaml_yamllint_args = '-d "rules: {line-length:{allow-non-breakable-words: true, max: 120,allow-non-breakable-inline-mappings: true}}"'

" Setting filetypes
" Set the type for the file type and override if file type
" already has detected
au BufRead,BufNewFile *.pp set filetype=puppet
" Set the type for the file type but do NOT override if file type
" already has detected
" au BufRead,BufNewFile *.html.twig setfiletype=html
