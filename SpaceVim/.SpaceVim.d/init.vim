
let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 1

call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#rust')
"call SpaceVim#layers#load('lang#elixir')
"call SpaceVim#layers#load('lang#haskell')
"call SpaceVim#layers#load('lang#java')
"call SpaceVim#layers#load('lang#lua')
"call SpaceVim#layers#load('lang#perl')
"call SpaceVim#layers#load('lang#php')
"call SpaceVim#layers#load('lang#swig')
"call SpaceVim#layers#load('lang#tmux')
"call SpaceVim#layers#load('lang#xml')
call SpaceVim#layers#load('shell')   
call SpaceVim#layers#load('tools#screensaver')

let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 1
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_statusline_display_mode = 0
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:neomake_vim_enabled_makers = []

if executable('vimlint')
    call add(g:neomake_vim_enabled_makers, 'vimlint') 
endif

if executable('vint')
    call add(g:neomake_vim_enabled_makers, 'vint') 
endif

if has('python3')
    let g:ctrlp_map = ''
    nnoremap <silent> <C-p> :Denite file_rec<CR>
endif

let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''


" colorscheme 
" https://github.com/rafi/awesome-vim-colorschemes
"let g:spacevim_colorscheme = 'molokai'
let g:spacevim_colorscheme = 'onedark'

" colorscheme with two variables
"let g:spacevim_colorscheme = 'one'
"let g:spacevim_colorscheme_bg = 'dark'

" Set menu toggle timeout 
set timeoutlen=200

" font
" How to install : https://github.com/ryanoasis/nerd-fonts
" How to set : https://github.com/dofy/7th-vim/issues/3
let g:spacevim_guifont='Knack\ Nerd\ Font:h13'

" Relative line number
let g:spacevim_relativenumber = 0

" Comment lines
call SpaceVim#custom#SPC('nmap', ['c', 'c'], '<Plug>NERDCommenterInvert', 'comment or uncomment lines', 0)


" Set .m/.xm file type default to objc
autocmd BufEnter *.m setlocal ft=objc
autocmd BufEnter *.xm setlocal ft=objc

" Json concealing
" Not work , why ? 
"autocmd BufEnter *.json setlocal conceallevel=0

