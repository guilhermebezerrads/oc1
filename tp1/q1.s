.data
argumento: .word 7

.text
main:
	lw x10, argumento
    call Impar_Par
    jal Fim

Impar_Par:
	addi sp, sp, -4
	sw x5, 0(sp)
	addi x5, x0, 2
	rem x10, x10, x5
	lw x5, 0(sp) 
	jalr x0, 0(x1)
Fim: