"Robert Gawdzik's Personal Vim File. DO NOT TOUCH :D


 set nocompatible               " be iMproved
  filetype off                   " required!
  
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 call pathogen#infect()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github

 Bundle 'Valloric/YouCompleteMe'

 Bundle 'wting/rust.vim'

 "YouCompleteMe Options
 let g:ycm_autoclose_preview_window_after_completion = 1
 let g:ycm_confirm_extra_conf = 0
 "Default Vim Stuff
 set backspace=2
 set number
 set tabstop=4 
 set shiftwidth=4 

 "Habit's Must Be Broken!
 noremap <Up> <NOP>
 noremap <Down> <NOP>
 noremap <Left> <NOP>
 noremap <Right> <NOP>


 :imap jj <Esc>
 inoremap {<cr> {<cr>}<c-o><s-o>
 inoremap [<cr> [<cr>]<c-o><s-o>
 inoremap (<cr> (<cr>)<c-o><s-o>
 :imap <F11> λ
 map <F2> :NERDTreeToggle<CR>

 set ruler "why would ruler be disabled by default...

 " vim-scripts repos
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 
 " ...

 filetype plugin indent on     " required!
 "

