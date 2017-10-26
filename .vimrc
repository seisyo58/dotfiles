"自動補完
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
				exec "imap " . k . " " . k . "<C-N><C-P>"
endfor
imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"

"自動インデント
set smartindent

"色設定
set background=dark
colorscheme moneyforward

"tab
set softtabstop=2
set tabstop=2

"indentLine
set list listchars=tab:\¦\ 

set number
set cursorline

"dein Scripts-----------------------------
if &compatible
				set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/seisyo58/.vim/bundle/.//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/seisyo58/.vim/bundle/./')
	call dein#begin('/home/seisyo58/.vim/bundle/./')

	" Let dein manage dein
	" Required:
	call dein#add('/home/seisyo58/.vim/bundle/.//repos/github.com/Shougo/dein.vim')

	" Add or remove your plugins here:
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Yggdroot/indentLine')

	" You can specify revision/branch/tag.
	call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

	" Required:
	call dein#end()
	call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
				call dein#install()
endif	

"End dein Scripts-------------------------
