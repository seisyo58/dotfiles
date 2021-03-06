"文字コード指定
set encoding=utf-8
"自動補完
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
exec "imap " . k . " " . k . "<C-N><C-P>"
endfor
imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"

"自動インデント
set smartindent
set shiftwidth=2

"tab
set softtabstop=2
set tabstop=2

"indentLine
"set list listchars=tab:\¦\ 

set number
set cursorline

"クリップボード
set clipboard+=unnamed
set clipboard+=autoselect

" dein setup
let s:dein_dir = $HOME . '/.vim/bundle'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

	if &runtimepath !~# '/dein.vim'
		if !isdirectory(s:dein_repo_dir)
			execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
		endif
		execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
	endif

	if dein#load_state(s:dein_dir)
		call dein#begin(s:dein_dir)
		" Load and cached toml
		" all plugins listed in toml
		call dein#add('Shougo/neosnippet.vim')
		call dein#add('Shougo/neosnippet-snippets')
		call dein#add('Yggdroot/indentLine')
		call dein#end()
		call dein#save_state()
	endif

	" If you want to install not installed plugins on startup.
	if dein#check_install()
		call dein#install()
	endif

	"色設定
	colorscheme molokai
	syntax on
	let g:molokai_original = 1
	let g:rehash256 = 1
	set background=dark
