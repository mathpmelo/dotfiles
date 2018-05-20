"  _          _          ____            _ _   _     _             _
" | |   _   _| | _____  / ___| _ __ ___ (_) |_| |__ ( )___  __   _(_)_ __ ___  _ __ ___
" | |  | | | | |/ / _ \ \___ \| '_ ` _ \| | __| '_ \|// __| \ \ / / | '_ ` _ \| '__/ __|
" | |__| |_| |   <  __/  ___) | | | | | | | |_| | | | \__ \  \ V /| | | | | | | | | (__
" |_____\__,_|_|\_\___| |____/|_| |_| |_|_|\__|_| |_| |___/   \_/ |_|_| |_| |_|_|  \___|

" Load Pathogen for plugins:
	execute pathogen#infect()
	execute pathogen#helptags()

" Some basics:
	set nocompatible
	filetype plugin on
	syntax on

"	colorscheme wal
	set encoding=utf-8
	set number
	set relativenumber
"	colorscheme monokai

"Add Ctrl P plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Change background to Black, removing transparency
"highlight Normal ctermbg=Black
"highlight NonText ctermbg=Black

" Powerline Settings
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
"set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
"set t_Co=256


" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow
	set splitright

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Open my bibliography file in split
"	map <F9> :vsp<space>~/Documents/LaTeX/uni.bib<CR>

" Open the selected text in a split (i.e. should be a file).
"	map <leader>o "oyaW:sp <C-R>o<CR>
"	xnoremap <leader>o "oy<esc>:sp <C-R>o<CR>
"	vnoremap <leader>o "oy<esc>:sp <C-R>o<CR>

" Replace all is aliased to S.
"	nnoremap S :%s//g<Left><Left>

"For saving view folds:
	"au BufWinLeave * mkview
	"au BufWinEnter * silent loadview

" Interpret .md files, etc. as .markdown
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Make calcurse notes markdown compatible:
"	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown

" Spell-check set to F6:
"	map <F6> :setlocal spell! spelllang=en_us,es<CR>

" Toggle DeadKeys set to F7 (for accent marks):
"	so ~/.vim/luke/deadkeys.vim
"	nm <F7> :call ToggleDeadKeys()<CR>

" Source my IPA shorcuts:
"	map <leader>i :so ~/.vim/luke/ipa.vim<CR>

" Use urlview to choose and open a url:
"	:noremap <leader>u :w<Home>silent <End> !urlview<CR>

" Copy selected text to system clipboard (requires xclip installed):
"	vnoremap <C-c> "cy<esc>:!echo -n '<C-R>c' \|<space>xclip<CR><enter>

" Goyo plugin makes text more readable when writing prose:
	map <F10> :Goyo<CR>
	inoremap <F10> <esc>:Goyo<CR>a

" Enable Goyo by default for mutt writting
	" Goyo's width will be the line limit in mutt.
"	autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=72
"	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo

" Enable autocompletion:
	set wildmode=longest,list,full
	set wildmenu

" Automatically deletes all tralling whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" When shortcut files are updated, renew bash and ranger configs with new
" material:
	autocmd BufWritePost ~/.scripts/folders,~/.scripts/configs !bash ~/.scripts/shortcuts.sh

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
"	autocmd VimLeave *.tex !texclear

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" C-T for new tab
	nnoremap <C-t> :tabnew<cr>

" Navigating with guides
	inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	map <Space><Tab> <Esc>/<++><Enter>"_c4l
	inoremap ;gui <++>

" For normal mode when in terminals (in X I have caps mapped to esc, this replaces it when I don't have X)
	inoremap jw <Esc>
	inoremap wj <Esc>

"Disable Arrow Keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

 "____        _                  _
"/ ___| _ __ (_)_ __  _ __   ___| |_ ___
"\___ \| '_ \| | '_ \| '_ \ / _ \ __/ __|
 "___) | | | | | |_) | |_) |  __/ |_\__ \
"|____/|_| |_|_| .__/| .__/ \___|\__|___/
              "|_|   |_|
