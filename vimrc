source $VIMRUNTIME/defaults.vim

packadd! editexisting
packadd! matchit

if has('gui_running')
	set encoding=utf-8
endif

if &term == 'xterm-256color'
	set background=dark
	let &t_SI="\<CSI>5 q"
	let &t_EI="\<CSI>1 q"
endif

let tex_flavor = "latex"
let c_space_errors = 1
unlet c_comment_strings
let python_space_error_highlight = 1
let html_indent_autotags = "html,body"
let vim_indent_cont = shiftwidth()
let vim_json_warnings = 0

function! MyCppIndent() abort
	let l:cindent_value = cindent(v:lnum)
	let l:prev_linenr = v:lnum - 1
	let l:prev_line = getline(l:prev_linenr)

	if l:prev_line =~# '.*)$'
		let l:prev_linenr -= 1
		let l:prev_line = getline(l:prev_linenr)
		while l:prev_line =~# '.*),$'
			let l:prev_linenr -= 1
			let l:prev_line = getline(l:prev_linenr)
		endwhile
		if l:prev_line =~# '.*noexcept :$'
			if getline(v:lnum) =~# '^\s*{'
				let l:cindent_value = indent(l:prev_linenr)
			else
				let l:cindent_value = indent(l:prev_linenr) + shiftwidth()
			endif
		endif
	elseif l:prev_line =~# '^\s*\(template\|friend\)'
		let l:cindent_value = indent(l:prev_linenr)
	endif

	return l:cindent_value
endfunction

augroup FileTypeSettings
	autocmd!
	autocmd FileType c,cpp setlocal comments-=:// comments+=f:// |
		\if $INCLUDE != "" |
		\let &path = &path . "," . escape(escape(substitute($INCLUDE, ';', ',', 'g'), ' '), ' ') |
		\endif |
		\setlocal cinoptions=:0,l1,g0,N-s,E-s,t0,(0,Ws,j1
		\setlocal indentexpr=MyCppIndent()
	autocmd FileType tex setlocal spell
	autocmd Syntax tex syn region TexZone start="\\begin{lstlisting}" end="\\{lstlisting\|%stopzone\>" |
		\call TexNewMathZone("M", "align", 1)
	autocmd FileType qf setlocal nocursorline
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
abbreviate incldue include
