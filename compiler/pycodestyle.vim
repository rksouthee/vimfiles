
if exists("current_compiler")
	finish
endif
let current_compiler = "pycodestyle"

if exists(":CompilerSet") != 2
	command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet makeprg=pycodestyle
CompilerSet errorformat=%f:%l:%c:\ E%n\ %m
