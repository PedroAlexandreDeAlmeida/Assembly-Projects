MOV BL, 70
CALL 10
HALT

ORG 10
PUSH AL
PUSH BL
PUSHF

Rep:
IN 00
CMP AL, 0D
JZ Stop
MOV[BL], AL
INC BL
JMP Rep

Stop:
MOV AL, 0
MOV [BL], AL
POPF
POP BL
POP AL
RET

END
