.data
argumento: .word 7

.text
main:
	lw x10, argumento #recebe o argumento em x10
    call Impar_Par 
    jal Fim

Impar_Par:
	addi x5, x0, 2 #x5 = 2
	rem x10, x10, x5 #x10 = argumento mod 2
	jalr x0, 0(x1)
Fim: