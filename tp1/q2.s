.data
argumento: .word 3

.text
main:
    lw x10, argumento
    call Fatorial
    jal Fim
    
Fatorial:
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
        jalr x0, 0(x1)
        
Fim: 
    