



#special Variables

echo " Special variables "
echo "script name:  \$0 = $0"
echo "First Argumenr: \$1 = $1"
echo "Second Argument: \$2 = $2"
echo "All arguments: \$@ = $@"
echo "All arguments: \$* = $*"
echo "Number of Arguments: \$# = $#"
echo "Process ID: \$$ = $$"
echo "last exit code: \$? = $?"
echo "Current shell: \$SHELL = $SHELL"
echo "Current User: \$USER = $USER"
echo "Home directory:     \$HOME = $HOME"
echo "Current path:       \$PATH = $PATH"
echo "Random number:      \$RANDOM = $RANDOM"
echo "Line number:        \$LINENO = $LINENO"










: << 'MYCOMMENT'
#!/bin/bash
#variable scope

#global variable
global_var="i am global"

function test_scope(){
	#local variable
	local local_var="i am local"

	echo "inside function"
	echo " global_var = $global_var"
	echo " local_var = $local_var"

}

test_scope

echo "inside function"
echo " global_var = $global_var"
echo " local_var = $local_var"
MYCOMMENT
