	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/vrp-2.c"
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$1=, 2
	i32.const	$2=, 1
	block   	BB0_2
	i32.eq  	$push0=, $0, $1
	br_if   	$pop0, BB0_2
# BB#1:                                 # %if.then
	i32.const	$push1=, 31
	i32.shr_s	$2=, $0, $pop1
	i32.add 	$push2=, $0, $2
	i32.xor 	$push3=, $pop2, $2
	i32.ne  	$2=, $pop3, $1
BB0_2:                                  # %return
	return  	$2
func_end0:
	.size	f, func_end0-f

	.globl	main
	.type	main,@function
main:                                   # @main
	.param  	i32, i32
	.result 	i32
# BB#0:                                 # %if.end
	i32.const	$push0=, 0
	call    	exit, $pop0
	unreachable
func_end1:
	.size	main, func_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits