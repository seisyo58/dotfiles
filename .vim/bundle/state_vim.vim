if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/seisyo58/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/seisyo58/dotfiles/.vim/bundle'
let g:dein#_runtime_path = '/home/seisyo58/dotfiles/.vim/bundle/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/seisyo58/dotfiles/.vim/bundle/.cache/.vimrc'
let &runtimepath = '/home/seisyo58/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/home/seisyo58/dotfiles/.vim/bundle/repos/github.com/Shougo/dein.vim,/home/seisyo58/dotfiles/.vim/bundle/.cache/.vimrc/.dein,/usr/share/vim/vim74,/home/seisyo58/dotfiles/.vim/bundle/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/seisyo58/.vim/after,/home/seisyo58/.vim/bundle/.//repos/github.com/Shougo/dein.vim'
filetype off
