" Make it beautiful - colors and fonts

if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=60
  set columns=240

  if has("gui_gtk2")
    set guifont=Menlo\ for\ Powerline\ XL\ 12,Inconsolata\ 15,Monaco\ 12
  else
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\:h19,Inconsolata:h20,Monaco:h17
  end
else
  let g:CSApprox_loaded = 1

  " For people using a terminal that is not Solarized
  if exists("g:yadr_using_unsolarized_terminal")
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
  end
endif

set background=dark    " Setting dark mode
colorscheme gruvbox

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set guioptions-=L

" Vim
" let g:indentLine_color_term = 239

"GVim
" let g:indentLine_color_gui = '#A4E57E'
" let g:indentLine_char = '┊'

" none X terminal
" let g:indentLine_color_tty_light = 7 " (default: 4)
" let g:indentLine_color_dark = 1 " (default: 2)

let g:gruvbox_color_column = 'orange'
" let g:indentLine_leadingSpaceChar = '·'

let g:gruvbox_contrast_dark = 'medium'

" let g:airline_theme             = 'base16'
" let g:airline_powerline_fonts 	= 1

" GVIM Only
" colorscheme gotham
" colorscheme gotham256

hi Normal ctermbg=none

let g:indentLine_enabled = 0
