" fzf
if has('mac')
  set rtp+=/usr/local/opt/fzf
endif
map <leader>ff :FZF<CR>

" Color scheme
colorscheme gruvbox

" YouCompleteMe
let g:ycm_python_binary_path = 'python'
"" Disable Python completion, since we have Ale+pyls for that
let g:ycm_filetype_blacklist = {
\ 'python': 1,
\ 'tagbar': 1,
\ 'qf': 1,
\ 'notes': 1,
\ 'markdown': 1,
\ 'unite': 1,
\ 'text': 1,
\ 'vimwiki': 1,
\ 'pandoc': 1,
\ 'infolog': 1,
\ 'mail': 1
\}

" Ale
let g:ale_completion_enabled = 1
let g:ale_linters={
\ 'go': ['golint', 'govet'],
\ 'python': ['flake8', 'pyls'],
\ }
let g:ale_fixers={
\ 'go': ['gofmt', 'goimports'],
\ 'python': ['isort', 'black'],
\ }
"" See `help ale-completion-completeopt-bug`
set completeopt=menu,menuone,preview,noselect,noinsert

" Highlight lines over 80 characters long
highlight ColorColumn ctermbg=red guibg=red
call matchadd('ColorColumn', '\%81v', 100)

" Spellchecking
set spell spelllang=en
