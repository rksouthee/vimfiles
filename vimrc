source $VIMRUNTIME/defaults.vim

packadd! editexisting
packadd! matchit

if has('vcon')
	set termguicolors
endif

colorscheme rksouthee

if has('gui_running')
	set encoding=utf-8
endif

let tex_flavor = "latex"
let c_space_errors = 1
unlet c_comment_strings
let python_space_error_highlight = 1
let html_indent_autotags = "html,body"
let vim_indent_cont = shiftwidth()

augroup FileTypeSettings
	autocmd!
	autocmd FileType c,cpp setlocal comments-=:// comments+=f:// |
		\if $INCLUDE != "" |
		\let &path = &path . "," . escape(escape(substitute($INCLUDE, ';', ',', 'g'), ' '), ' ') |
		\endif |
		\setlocal cinoptions=:0,l1,g0,N-s,E-s,t0,(0,Ws,j1
	autocmd FileType tex setlocal spell
	autocmd Syntax tex syn region TexZone start="\\begin{lstlisting}" end="\\{lstlisting\|%stopzone\>" |
		\call TexNewMathZone("M", "align", 1)
augroup END

if executable('nmake')
	compiler! msvc
endif

set autowrite
set confirm
set autoindent
set formatoptions+=j
set noswapfile
let &showbreak = "\u21b3"
set cursorline
set visualbell
set complete-=i
set fileformats=unix,dos

set wildignore+=*.exe
set wildignore+=*.ilk
set wildignore+=*.obj
set wildignore+=*.pdb

abbreviate typenaem typename
abbreviate itn int
abbreviate valeu value
abbreviate Valeu Value
abbreviate lcoation location
abbreviate viod void
abbreviate ture true
abbreviate reutrn return
abbreviate cosnt const
abbreviate whiel while
