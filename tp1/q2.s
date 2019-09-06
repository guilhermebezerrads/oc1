.data
argumento: .word 5

.text
main:
	lw x10, argumento
    call Fatorial
    jal Fim
    
Fatorial:
	# Guardar x5 e x6 na memória
	addi sp, sp, -4
	sw x5, 0(sp)
    # x5 = x10
	add x5, x10, x0 
    bne x5, x0, Loop
    # Fatorial de 0 é 1
    addi x10, x0, 1
    beq x0, x0, Exit
    # enquanto x5 for diferente de 0
    Loop:
    # x10 = x5 * (x5-1)
    	addi x5, x5, -1
        beq x5, x0, Exit
        mul x10, x10, x5
        beq x0, x0, Loop
    Exit: # x5 == 0
    	lw x5, 0(sp)
        jalr x0, 0(x1)
        
Fim: 
	