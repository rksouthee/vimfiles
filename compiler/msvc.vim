let current_compiler = "msvc"

if exists(":CompilerSet") != 2
	command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=nmake\ /nologo
CompilerSet errorformat=\%f(%l)%\\s%\\?:\ fatal\ %trror\ C%n:\ %m,
	\%f(%l)%\\s%\\?:\ %trror\ C%n:\ %m,
	\%f(%l\\,%c)%\\s%\\?:\ %trror\ C%n:\ %m,
	\%f(%l)%\\s%\\?:\ %tarning\ C%n:\ %m,
	\%f(%l\\,%c)%\\s%\\?:\ %tarning\ C%n:\ %m,
	\%+Gpredefined\ C++\ types\ (compiler\ internal)(%n):\ %tote:\ %m,
	\%f(%l):\ %tote:\ %m,
	\%o%\\s%\\?:\ %trror\ LNK%n:\ %m,
	\%o%\\s%\\?:\ fatal\ %trror\ LNK%n:\ %m,
	\LINK\ :\ %tarning\ LNK%n:\ %m,
	\%f(%l)\ :\ fatal\ %trror\ U%n:\ %m,
	\%o%\\s%\\?:\ fatal\ %trror\ U%n:\ %m,
	\NMAKE\ :\ fatal\ %trror\ U%n:\ %m

" Ignore lines that don't match any of the above
" CompilerSet errorformat+=%-G%.%#
