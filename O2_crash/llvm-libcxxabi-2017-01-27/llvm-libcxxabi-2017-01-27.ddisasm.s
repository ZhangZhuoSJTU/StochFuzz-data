#===================================
.intel_syntax noprefix
#===================================

nop
nop
nop
nop
nop
nop
nop
nop

#===================================
.section .interp ,"a",@progbits
.align 8
#===================================

          .byte 0x2f
          .byte 0x6c
          .byte 0x69
          .byte 0x62
          .byte 0x36
          .byte 0x34
          .byte 0x2f
          .byte 0x6c
          .byte 0x64
          .byte 0x2d
          .byte 0x6c
          .byte 0x69
          .byte 0x6e
          .byte 0x75
          .byte 0x78
          .byte 0x2d
          .byte 0x78
          .byte 0x38
          .byte 0x36
          .byte 0x2d
          .byte 0x36
          .byte 0x34
          .byte 0x2e
          .byte 0x73
          .byte 0x6f
          .byte 0x2e
          .byte 0x32
          .byte 0x0
#===================================
# end section .interp
#===================================

#===================================
.text
.align 16
#===================================

#-----------------------------------
.align 16
.globl main
.type main, @notype
#-----------------------------------
main:

            push R12
            push RBP
            push RBX
.L_400db4:

            mov RDI,QWORD PTR [RSI+8]
            lea RSI,QWORD PTR [RIP+.L_414e94]
            call fopen@PLT

            test RAX,RAX
            je .L_400e38

            xor ESI,ESI
            mov EDX,2
            mov RBX,RAX
            mov RDI,RAX
            call fseek@PLT

            mov RDI,RBX
            call ftell@PLT

            mov RDI,RBX
            mov RBP,RAX
            call rewind@PLT

            mov RDI,RBP
            call malloc@PLT

            test RAX,RAX
            mov R12,RAX
            je .L_400e5f

            mov RCX,RBX
            mov RDX,RBP
            mov ESI,1
            mov RDI,RAX
            call fread@PLT

            cmp RBP,RAX
            jne .L_400e42

            mov RSI,RBP
            mov RDI,R12
            call .L_400f70

            mov RDI,R12
            call free@PLT

            mov RDI,RBX
            call fclose@PLT

            pop RBX
.L_400e32:

            xor EAX,EAX
            pop RBP
            pop R12
            ret 
.L_400e38:

            mov EDI,1
            call exit@PLT
.L_400e42:

            lea RSI,QWORD PTR [RIP+.L_414ea6]
            mov EDI,1
            xor EAX,EAX
            call __printf_chk@PLT

            mov EDI,3
            call exit@PLT
.L_400e5f:

            lea RSI,QWORD PTR [RIP+.L_414e97]
            mov EDI,1
            xor EAX,EAX
            call __printf_chk@PLT

            mov EDI,2
            call exit@PLT
.L_400e7c:

            nop
            nop
            nop
            nop
.L_400eb0:

            ret 
.L_400eb2:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_400ec0:

            push RBP
            mov EAX,OFFSET .L_619110
            cmp RAX,OFFSET .L_619110
            mov RBP,RSP
            je .L_400ee8

            mov EAX,0
            test RAX,RAX
            je .L_400ee8

            pop RBP
            mov EDI,OFFSET .L_619110
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_400ee8:

            pop RBP
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_400ef0:

            mov ESI,OFFSET .L_619110
            push RBP
            sub RSI,OFFSET .L_619110
            mov RBP,RSP
            sar RSI,3
            mov RAX,RSI
            shr RAX,63
            add RSI,RAX
            sar RSI,1
            je .L_400f28

            mov EAX,0
            test RAX,RAX
            je .L_400f28

            pop RBP
            mov EDI,OFFSET .L_619110
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_400f28:

            pop RBP
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_400f60:

            push RBP
            mov RBP,RSP
            pop RBP
            jmp .L_400ef0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_400f70:

            push R12
            mov R12,RDI
            push RBP
            lea RDI,QWORD PTR [RSI+1]
            push RBX
            mov RBP,RSI
            call _Znam@PLT

            mov RDX,RBP
            mov RBX,RAX
            mov RSI,R12
            mov RDI,RAX
            call memcpy@PLT

            xor ECX,ECX
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBX
            mov BYTE PTR [RBX+RBP*1],0
            call __cxa_demangle

            mov RDI,RAX
            call free@PLT

            mov RDI,RBX
            call _ZdaPv@PLT

            pop RBX
            xor EAX,EAX
            pop RBP
            pop R12
            ret 
.L_400fbd:

            nop
            nop
            nop
.L_400fc0:

            cmp RDI,RSI
            mov RAX,RDI
            je .L_401014

            movzx EAX,BYTE PTR [RDI]
            mov RCX,RDI
            cmp AL,110
            je .L_401020
.L_400fd2:

            cmp AL,48
            je .L_401038

            lea EDX,DWORD PTR [RAX-49]
            mov RAX,RDI
            cmp DL,8
            ja .L_401014

            lea RAX,QWORD PTR [RCX+1]
            cmp RSI,RAX
            je .L_401014

            movsx EDX,BYTE PTR [RCX+1]
            sub EDX,48
            cmp EDX,9
            jbe .L_40100b

            jmp .L_401040
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401000:

            movsx EDX,BYTE PTR [RAX]
            sub EDX,48
            cmp EDX,9
            ja .L_401014
.L_40100b:

            add RAX,1
            cmp RSI,RAX
            jne .L_401000
.L_401014:

            ret 
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401020:

            lea RCX,QWORD PTR [RDI+1]
            mov RAX,RDI
            cmp RSI,RCX
            je .L_401014

            movzx EAX,BYTE PTR [RDI+1]
            jmp .L_400fd2
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401038:

            lea RAX,QWORD PTR [RCX+1]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401040:

            ret 
.L_401042:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401050:

            push RBX
            mov RBX,RDI
            mov RDI,QWORD PTR [RDI+32]
            lea RAX,QWORD PTR [RBX+48]
            cmp RDI,RAX
            je .L_401066

            call free@PLT
.L_401066:

            mov RDI,QWORD PTR [RBX]
            add RBX,16
            cmp RDI,RBX
            je .L_401080

            pop RBX
            jmp free@PLT

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401080:

            pop RBX
            ret 
.L_401082:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401090:

            push R13
            push R12
            mov R12,RDI
            push RBP
            push RBX
            mov R13,RSI
            sub RSP,8
.L_4010a0:

            mov RBX,QWORD PTR [RDI+8]
            mov RDI,RSI
            call strlen@PLT

            mov RDX,RAX
            mov RBP,RAX
            cmp RBX,RAX
            cmovbe RDX,RBX
            test RDX,RDX
            je .L_4010ce

            mov RDI,QWORD PTR [R12]
            mov RSI,R13
            call memcmp@PLT

            test EAX,EAX
            jne .L_4010ec
.L_4010ce:

            sub RBX,RBP
            mov EAX,2147483647
            cmp RBX,2147483647
            jg .L_4010ec

            lea EAX,DWORD PTR [RAX+1]
            cmp RBX,-2147483648
            cmovge EAX,EBX
.L_4010ec:

            add RSP,8
.L_4010f0:

            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
.L_4010f7:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401100:

            cmp RDI,RSI
            mov RAX,RDI
            je .L_40115c

            movsx EDX,BYTE PTR [RDI]
            cmp DL,95
            je .L_401160

            sub EDX,48
            cmp EDX,9
            ja .L_40115c

            lea RDX,QWORD PTR [RDI+1]
            cmp RSI,RDX
            je .L_40114c

            movsx ECX,BYTE PTR [RDI+1]
            sub ECX,48
            cmp ECX,9
            jbe .L_401143

            jmp .L_4011b8
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401138:

            movsx ECX,BYTE PTR [RDX]
            sub ECX,48
            cmp ECX,9
            ja .L_40115c
.L_401143:

            add RDX,1
            cmp RSI,RDX
            jne .L_401138
.L_40114c:

            mov RAX,RSI
            ret 
.L_401150:

            add RDX,1
            cmp DIL,95
            cmove RAX,RDX
.L_40115c:

            ret 
          .byte 0x66
          .byte 0x90
.L_401160:

            lea RDX,QWORD PTR [RDI+1]
            cmp RSI,RDX
            je .L_40115c

            movsx EDX,BYTE PTR [RDI+1]
            mov ECX,EDX
            sub EDX,48
            cmp EDX,9
            jbe .L_4011b0

            cmp CL,95
            jne .L_40115c

            lea RDX,QWORD PTR [RDI+2]
            cmp RSI,RDX
            je .L_40115c

            movsx ECX,BYTE PTR [RDI+2]
            mov EDI,ECX
            sub ECX,48
            cmp ECX,9
            jbe .L_4011a5

            jmp .L_401150
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401198:

            movsx ECX,BYTE PTR [RDX]
            mov EDI,ECX
            sub ECX,48
            cmp ECX,9
            ja .L_401150
.L_4011a5:

            add RDX,1
            cmp RSI,RDX
            jne .L_401198

            ret 
.L_4011b0:

            add RAX,2
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4011b8:

            ret 
.L_4011ba:

            nop
            nop
            nop
            nop
            nop
            nop
.L_4011c0:

            cmp RDI,RSI
            mov R8,RDI
            mov R9,RSI
            je .L_4011f1

            movzx EAX,BYTE PTR [RDI]
            cmp AL,104
            je .L_4011f8

            cmp AL,118
            jne .L_4011f1

            lea R10,QWORD PTR [RDI+1]
            mov RDI,R10
            call .L_400fc0

            cmp R10,RAX
            je .L_4011f1

            cmp RSI,RAX
            je .L_4011f1

            cmp BYTE PTR [RAX],95
            je .L_401220
.L_4011f1:

            mov RAX,R8
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4011f8:

            lea R10,QWORD PTR [RDI+1]
.L_4011fc:

            mov RSI,R9
            mov RDI,R10
            call .L_400fc0

            cmp R10,RAX
            je .L_4011f1

            cmp R9,RAX
            je .L_4011f1

            cmp BYTE PTR [RAX],95
            lea RDX,QWORD PTR [RAX+1]
            cmove R8,RDX
            mov RAX,R8
            ret 
.L_401220:

            lea R10,QWORD PTR [RAX+1]
            jmp .L_4011fc
.L_401226:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401230:

            mov RAX,QWORD PTR [RDI]
            test RAX,RAX
            js .L_40128c

            cmp RAX,RSI
            jbe .L_401260

            add RSI,RSI
            cmp RAX,RSI
            jae .L_401260

            test RSI,RSI
            js .L_401270

            mov QWORD PTR [RDI],RSI
            lea RDI,QWORD PTR [RSI+1]
            jmp malloc@PLT
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401260:

            lea RDI,QWORD PTR [RAX+1]
            jmp malloc@PLT
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401270:

            movabs RAX,9223372036854775807
            mov QWORD PTR [RDI],RAX
            movabs RDI,-9223372036854775808
            jmp malloc@PLT
.L_40128c:

            lea RDI,QWORD PTR [RIP+.L_414eb3]
            sub RSP,8

            call _ZSt20__throw_length_errorPKc@PLT
.L_40129c:

            nop
            nop
            nop
            nop
.L_4012a0:

            cmp RSI,RDI
            jb .L_4012d0

            lea RAX,QWORD PTR [RDI+4096]
            cmp RSI,RAX
            ja .L_4012d0

            add RDX,15
            and RDX,-16
            add RDX,RSI
            cmp QWORD PTR [RDI+4096],RDX
            je .L_4012e0

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4012d0:

            mov RDI,RSI
            jmp free@PLT
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4012e0:

            mov QWORD PTR [RDI+4096],RSI
            ret 
.L_4012e8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4012f0:

            cmp RDI,RSI
            je .L_401378

            mov RCX,RDX
            mov R8,RDI
            nop
.L_401300:

            test RCX,RCX
            je .L_401353

            mov R9,QWORD PTR [R8]
            mov QWORD PTR [RCX+16],0
            mov QWORD PTR [RCX+24],0
            mov QWORD PTR [RCX+8],0
            mov QWORD PTR [RCX],R9
            mov R9,QWORD PTR [R8+8]
            mov QWORD PTR [RCX+8],R9
            mov QWORD PTR [R8+8],0
            mov R10,QWORD PTR [R8+16]
            mov R9,QWORD PTR [RCX+16]
            mov QWORD PTR [RCX+16],R10
            mov QWORD PTR [R8+16],R9
            mov R10,QWORD PTR [R8+24]
            mov R9,QWORD PTR [RCX+24]
            mov QWORD PTR [RCX+24],R10
            mov QWORD PTR [R8+24],R9
.L_401353:

            add R8,32
            add RCX,32
            cmp R8,RSI
            jne .L_401300

            add RDI,32
            sub R8,RDI
            and R8,-32
            lea RAX,QWORD PTR [RDX+R8*1+32]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401378:

            mov RAX,RDX
            ret 
.L_40137c:

            nop
            nop
            nop
            nop
.L_401380:

            cmp RDI,RSI
            je .L_401408

            mov RCX,RDX
            mov R8,RDI
            nop
.L_401390:

            test RCX,RCX
            je .L_4013e3

            mov R9,QWORD PTR [R8]
            mov QWORD PTR [RCX+16],0
            mov QWORD PTR [RCX+24],0
            mov QWORD PTR [RCX+8],0
            mov QWORD PTR [RCX],R9
            mov R9,QWORD PTR [R8+8]
            mov QWORD PTR [RCX+8],R9
            mov QWORD PTR [R8+8],0
            mov R10,QWORD PTR [R8+16]
            mov R9,QWORD PTR [RCX+16]
            mov QWORD PTR [RCX+16],R10
            mov QWORD PTR [R8+16],R9
            mov R10,QWORD PTR [R8+24]
            mov R9,QWORD PTR [RCX+24]
            mov QWORD PTR [RCX+24],R10
            mov QWORD PTR [R8+24],R9
.L_4013e3:

            add R8,32
            add RCX,32
            cmp R8,RSI
            jne .L_401390

            add RDI,32
            sub R8,RDI
            and R8,-32
            lea RAX,QWORD PTR [RDX+R8*1+32]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401408:

            mov RAX,RDX
            ret 
.L_40140c:

            nop
            nop
            nop
            nop
.L_401410:

            push RBX
            mov RDX,QWORD PTR [RDI+8]
            xor EAX,EAX
            mov RBX,RDI
            mov RDI,QWORD PTR [RDI]
            cmp RDX,1
            jbe .L_401441

            sub RDX,1
            cmp RDX,1
            je .L_401450

            lea RSI,QWORD PTR [RDI+1]
            call memmove@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov RDI,QWORD PTR [RBX]
            sub RAX,1
.L_401441:

            mov QWORD PTR [RBX+8],RAX
            mov BYTE PTR [RDI+RAX*1],0
            mov RAX,RBX
            pop RBX
            ret 
          .byte 0x66
          .byte 0x90
.L_401450:

            movzx EAX,BYTE PTR [RDI+1]
            mov BYTE PTR [RDI],AL
            mov RAX,QWORD PTR [RBX+8]
            mov RDI,QWORD PTR [RBX]
            sub RAX,1
            mov QWORD PTR [RBX+8],RAX
            mov BYTE PTR [RDI+RAX*1],0
            mov RAX,RBX
            pop RBX
            ret 
.L_40146e:

            nop
            nop
.L_401470:

            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDI
            sub RSP,16
.L_40147e:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            test RSI,RSI
            jne .L_40149c

            test RDX,RDX
            jne .L_401527
.L_40149c:

            mov RBX,RDX
            sub RBX,R12
            cmp RBX,15
            mov QWORD PTR [RSP],RBX
            ja .L_4014f0

            mov RDX,QWORD PTR [RBP]
            cmp RBX,1
            mov RAX,RDX
            jne .L_401520

            movzx EAX,BYTE PTR [R12]
            mov BYTE PTR [RDX],AL
            mov RDX,QWORD PTR [RBP]
.L_4014c4:

            mov RAX,QWORD PTR [RSP]
            mov QWORD PTR [RBP+8],RAX
            mov BYTE PTR [RDX+RAX*1],0
            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_401533

            add RSP,16
.L_4014e4:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4014f0:

            mov RDI,RSP
            xor ESI,ESI
            call .L_401230

            mov RDX,QWORD PTR [RSP]
            mov QWORD PTR [RBP],RAX
            mov QWORD PTR [RBP+16],RDX
.L_401506:

            mov RDX,RBX
            mov RSI,R12
            mov RDI,RAX
            call memcpy@PLT

            mov RDX,QWORD PTR [RBP]
            jmp .L_4014c4
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401520:

            test RBX,RBX
            je .L_4014c4

            jmp .L_401506
.L_401527:

            lea RDI,QWORD PTR [RIP+.L_4154b0]
            call _ZSt19__throw_logic_errorPKc@PLT
.L_401533:

            call __stack_chk_fail@PLT
.L_401538:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401540:

            push RBP
            lea RAX,QWORD PTR [RDI+16]
            push RBX
            mov RBX,RDI
            mov RBP,RSI
            sub RSP,8
            mov QWORD PTR [RDI],RAX
            mov RDI,RSI
            call strlen@PLT

            add RSP,8
            lea RDX,QWORD PTR [RBP+RAX*1]
            mov RSI,RBP
            mov RDI,RBX
            pop RBX
            pop RBP
            jmp .L_401470
.L_401571:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401580:

            lea RCX,QWORD PTR [RDI+16]
            mov RAX,RSI
            push RBX
            mov RBX,RDI
            mov QWORD PTR [RDI],RCX
            cmp QWORD PTR [RAX+8],RDX
            cmovbe RDX,QWORD PTR [RAX+8]
            mov RSI,QWORD PTR [RSI]
            add RDX,RSI
            call .L_401470

            mov RAX,RBX
            pop RBX
            ret 
.L_4015a7:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4015b0:

            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,16
.L_4015bc:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            cmp RDI,RSI
            je .L_401603

            mov R12,QWORD PTR [RDI]
            lea R14,QWORD PTR [RDI+16]
            mov R13,RSI
            mov RBP,QWORD PTR [RSI+8]
            mov RBX,RDI
            mov ESI,15
            cmp R14,R12
            je .L_4015f0

            mov RSI,QWORD PTR [RDI+16]
.L_4015f0:

            cmp RSI,RBP
            jb .L_401640

            test RBP,RBP
            jne .L_401620
.L_4015fa:

            mov QWORD PTR [RBX+8],RBP
            mov BYTE PTR [R12+RBP*1],0
.L_401603:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_401683

            add RSP,16
.L_401617:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
.L_401620:

            cmp RBP,1
            mov RSI,QWORD PTR [R13]
            jne .L_401670

            movzx EAX,BYTE PTR [RSI]
            mov BYTE PTR [R12],AL
            mov R12,QWORD PTR [RBX]
            jmp .L_4015fa
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401640:

            mov RDI,RSP
            mov QWORD PTR [RSP],RBP
            call .L_401230

            mov RDI,QWORD PTR [RBX]
            mov R12,RAX
            cmp R14,RDI
            je .L_40165c

            call free@PLT
.L_40165c:

            mov RAX,QWORD PTR [RSP]
            test RBP,RBP
            mov QWORD PTR [RBX],R12
            mov QWORD PTR [RBX+16],RAX
            je .L_4015fa

            jmp .L_401620
          .byte 0x66
          .byte 0x90
.L_401670:

            mov RDI,R12
            mov RDX,RBP
            call memcpy@PLT

            mov R12,QWORD PTR [RBX]
            jmp .L_4015fa
.L_401683:

            call __stack_chk_fail@PLT
.L_401688:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401690:

            push R15
            push R14
            lea R15,QWORD PTR [RDI+16]
            push R13
            push R12
            mov R13,RDX
            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,40
.L_4016ab:

            mov RDX,QWORD PTR [RDI+8]
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            mov RAX,R8
            mov R12,RDX
            sub RAX,R13
            sub R12,RSI
            add RAX,RDX
            mov ESI,15
            sub R12,R13
            cmp R15,QWORD PTR [RDI]
            mov QWORD PTR [RSP+16],RAX
            je .L_4016e4

            mov RSI,QWORD PTR [RDI+16]
.L_4016e4:

            lea RDI,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+8],R8
            mov QWORD PTR [RSP],RCX
            call .L_401230

            test RBP,RBP
            mov R14,RAX
            mov RCX,QWORD PTR [RSP]
            mov R8,QWORD PTR [RSP+8]
            je .L_40171b

            cmp RBP,1
            mov RSI,QWORD PTR [RBX]
            jne .L_4017b8

            movzx EAX,BYTE PTR [RSI]
            mov BYTE PTR [R14],AL
.L_40171b:

            test RCX,RCX
            je .L_401734

            test R8,R8
            je .L_401734

            cmp R8,1
            lea RDI,QWORD PTR [R14+RBP*1]
            jne .L_401790

            movzx EAX,BYTE PTR [RCX]
            mov BYTE PTR [RDI],AL
.L_401734:

            test R12,R12
            mov RDI,QWORD PTR [RBX]
            je .L_401758

            add R13,RBP
            add RBP,R8
            cmp R12,1
            lea RSI,QWORD PTR [RDI+R13*1]
            lea RDI,QWORD PTR [R14+RBP*1]
            jne .L_4017a8

            movzx EAX,BYTE PTR [RSI]
            mov BYTE PTR [RDI],AL
            mov RDI,QWORD PTR [RBX]
.L_401758:

            cmp R15,RDI
            je .L_401762

            call free@PLT
.L_401762:

            mov RAX,QWORD PTR [RSP+16]
            mov QWORD PTR [RBX],R14
            mov QWORD PTR [RBX+16],RAX
            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_4017da

            add RSP,40
.L_401782:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401790:

            mov RDX,R8
            mov RSI,RCX
            mov QWORD PTR [RSP],R8
            call memcpy@PLT

            mov R8,QWORD PTR [RSP]
            jmp .L_401734
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4017a8:

            mov RDX,R12
            call memcpy@PLT

            mov RDI,QWORD PTR [RBX]
            jmp .L_401758
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4017b8:

            mov RDX,RBP
            mov RDI,RAX
            mov QWORD PTR [RSP+8],R8
            mov QWORD PTR [RSP],RCX
            call memcpy@PLT

            mov R8,QWORD PTR [RSP+8]
            mov RCX,QWORD PTR [RSP]
            jmp .L_40171b
.L_4017da:

            call __stack_chk_fail@PLT
.L_4017df:

            nop
.L_4017e0:

            push RBP
            push RBX
            mov RBX,RDI
            lea R8,QWORD PTR [RBX+16]
            mov EAX,15
            sub RSP,8
            mov R9,QWORD PTR [RDI+8]
            mov RDI,QWORD PTR [RDI]
            cmp RDI,R8
            lea RBP,QWORD PTR [RDX+R9*1]
            je .L_401806

            mov RAX,QWORD PTR [RBX+16]
.L_401806:

            cmp RBP,RAX
            ja .L_401838

            test RDX,RDX
            je .L_401821

            add RDI,R9
            cmp RDX,1
            jne .L_401850

            movzx EAX,BYTE PTR [RSI]
            mov BYTE PTR [RDI],AL
            mov RDI,QWORD PTR [RBX]
.L_401821:

            mov QWORD PTR [RBX+8],RBP
            mov BYTE PTR [RDI+RBP*1],0
            add RSP,8
            mov RAX,RBX
            pop RBX
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401838:

            mov R8,RDX
            mov RCX,RSI
            mov RDI,RBX
            xor EDX,EDX
            mov RSI,R9
            call .L_401690

            mov RDI,QWORD PTR [RBX]
            jmp .L_401821
.L_401850:

            call memcpy@PLT

            mov RDI,QWORD PTR [RBX]
            jmp .L_401821
.L_40185a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_401860:

            push RBP
            push RBX
            mov RBX,RDI
            mov RDI,RSI
            mov RBP,RSI
            sub RSP,8
            call strlen@PLT

            movabs RCX,9223372036854775807
            sub RCX,QWORD PTR [RBX+8]
            cmp RAX,RCX
            ja .L_40189b

            add RSP,8
            mov RSI,RBP
            mov RDI,RBX
            pop RBX
            pop RBP
            mov RDX,RAX
            jmp .L_4017e0
.L_40189b:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
            call _ZSt20__throw_length_errorPKc@PLT
.L_4018a7:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4018b0:

            mov RAX,RDX
            push RBX
.L_4018b4:

            mov RBX,RDI
            mov RDX,QWORD PTR [RDX+8]
            mov RDI,RSI
            mov RSI,QWORD PTR [RAX]
            call .L_4017e0

            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_401900

            mov QWORD PTR [RBX],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RBX+16],RCX
.L_4018e4:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RBX+8],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RAX,RBX
            pop RBX
.L_4018ff:

            ret 
.L_401900:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movups XMMWORD PTR [RBX+16],XMM0
            jmp .L_4018e4
.L_40190b:

            nop
            nop
            nop
            nop
            nop
.L_401910:

            push R15
            push R14
            push R13
            push R12
            mov R13,RSI
            push RBP
            push RBX
            mov RBX,RDI
            lea R14,QWORD PTR [RBX+16]
            mov RBP,RDX
            mov RDI,RSI
            sub RSP,24
.L_40192e:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            call strlen@PLT

            mov QWORD PTR [RBX],R14
            mov R12,RAX
            mov QWORD PTR [RBX+8],0
            mov BYTE PTR [RBX+16],0
            add RAX,QWORD PTR [RBP+8]
            cmp RAX,15
            mov QWORD PTR [RSP],RAX
            ja .L_4019b0
.L_401963:

            mov RDX,R12
            mov RSI,R13
            mov RDI,RBX
.L_40196c:

            call .L_4017e0

            mov RDX,QWORD PTR [RBP+8]
            mov RSI,QWORD PTR [RBP]
            mov RDI,RBX
            call .L_4017e0

            mov RCX,QWORD PTR [RSP+8]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBX
            jne .L_401a45

            add RSP,24
.L_40199c:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4019b0:

            mov RDI,RSP
            mov ESI,15
            call .L_401230

            mov R15,RAX
            mov RAX,QWORD PTR [RBX+8]
            mov RDI,QWORD PTR [RBX]
            lea RDX,QWORD PTR [RAX+1]
            cmp RDX,1
            jne .L_401a18

            movzx EAX,BYTE PTR [RDI]
            mov BYTE PTR [R15],AL
            mov RDI,QWORD PTR [RBX]
.L_4019da:

            cmp R14,RDI
            je .L_4019e4

            call free@PLT
.L_4019e4:

            mov RAX,QWORD PTR [RSP]
            mov QWORD PTR [RBX],R15
            mov QWORD PTR [RBX+16],RAX
            movabs RAX,9223372036854775807
            sub RAX,QWORD PTR [RBX+8]
            cmp R12,RAX
            jbe .L_401963

            lea RDI,QWORD PTR [RIP+.L_414ecb]
            call _ZSt20__throw_length_errorPKc@PLT
.L_401a12:

            nop
            nop
            nop
            nop
            nop
            nop
.L_401a18:

            test RDX,RDX
            je .L_4019da

            mov RSI,RDI
            mov RDI,R15
            call memcpy@PLT

            mov RDI,QWORD PTR [RBX]
            jmp .L_4019da
.L_401a2d:

            mov RDI,QWORD PTR [RBX]
            mov RBP,RAX
            cmp R14,RDI
            je .L_401a3d

            call free@PLT
.L_401a3d:

            mov RDI,RBP
.L_401a40:

            call _Unwind_Resume@PLT
.L_401a45:

            call __stack_chk_fail@PLT
.L_401a4a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_401a50:

            push RBP
            push RBX
            mov RBX,RSI
            add RSI,16
            mov RBP,RDI
            sub RSP,8
.L_401a60:

            mov RAX,QWORD PTR [RSI-16]
            mov RDI,QWORD PTR [RDI]
            cmp RSI,RAX
            je .L_401ad0

            lea RDX,QWORD PTR [RBP+16]
            cmp RDI,RDX
            je .L_401ab0

            mov QWORD PTR [RBP],RAX
            mov RAX,QWORD PTR [RBX+8]
            test RDI,RDI
            mov RDX,QWORD PTR [RBP+16]
            mov QWORD PTR [RBP+8],RAX
            mov RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBP+16],RAX
            je .L_401ac4

            mov QWORD PTR [RBX],RDI
            mov QWORD PTR [RBX+16],RDX
.L_401a99:

            mov QWORD PTR [RBX+8],0
            mov BYTE PTR [RDI],0
            add RSP,8
.L_401aa8:

            mov RAX,RBP
            pop RBX
            pop RBP
            ret 
          .byte 0x66
          .byte 0x90
.L_401ab0:

            mov QWORD PTR [RBP],RAX
            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBP+8],RAX
            mov RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBP+16],RAX
.L_401ac4:

            mov QWORD PTR [RBX],RSI
            mov RDI,RSI
            jmp .L_401a99
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_401ad0:

            mov RDX,QWORD PTR [RBX+8]
            test RDX,RDX
            je .L_401af0

            cmp RDX,1
            je .L_401b00

            call memcpy@PLT

            mov RDX,QWORD PTR [RBX+8]
            mov RDI,QWORD PTR [RBP]
            nop
            nop
            nop
            nop
.L_401af0:

            mov QWORD PTR [RBP+8],RDX
            mov BYTE PTR [RDI+RDX*1],0
            mov RDI,QWORD PTR [RBX]
            jmp .L_401a99
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401b00:

            movzx EAX,BYTE PTR [RBX+16]
            mov BYTE PTR [RDI],AL
            mov RDX,QWORD PTR [RBX+8]
            mov RDI,QWORD PTR [RBP]
            jmp .L_401af0
.L_401b10:

            push R12
            push RBP
            mov R12,RDI
            push RBX
.L_401b17:

            mov RBP,QWORD PTR [RDI+16]
            mov RBX,QWORD PTR [RDI+8]
            cmp RBP,RBX
            je .L_401b59

            nop
            nop
            nop
            nop
.L_401b28:

            mov RDI,QWORD PTR [RBX+32]
            lea RAX,QWORD PTR [RBX+48]
            cmp RDI,RAX
            je .L_401b3a

            call free@PLT
.L_401b3a:

            mov RDI,QWORD PTR [RBX]
            lea RAX,QWORD PTR [RBX+16]
            cmp RDI,RAX
            je .L_401b4b

            call free@PLT
.L_401b4b:

            add RBX,64
            cmp RBP,RBX
            jne .L_401b28

            mov RBX,QWORD PTR [R12+8]
.L_401b59:

            test RBX,RBX
            je .L_401b80

            mov RDX,QWORD PTR [R12+24]
            mov RSI,RBX
            mov RDI,QWORD PTR [R12]
            sub RDX,RBX
            pop RBX
.L_401b6e:

            pop RBP
            pop R12
            jmp .L_4012a0
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401b80:

            pop RBX
            pop RBP
            pop R12
            ret 
.L_401b85:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401b90:

            push R15
            push R14
            movabs RAX,9223372036854775807
            push R13
            push R12
            push RBP
            push RBX
            mov RBP,RDX
            add RAX,RBP
            sub RSP,40
.L_401bae:

            mov RDX,QWORD PTR [RDI+8]
            sub RAX,RDX
            cmp R8,RAX
            ja .L_401e3a

            mov RAX,QWORD PTR [RDI]
            lea R9,QWORD PTR [RDI+16]
            mov R15,R8
            sub R15,RBP
            mov RBX,RDI
            mov EDI,15
            lea R12,QWORD PTR [RDX+R15*1]
            cmp RAX,R9
            je .L_401be0

            mov RDI,QWORD PTR [RBX+16]
.L_401be0:

            cmp RDI,R12
            jb .L_401ce0

            mov R13,RDX
            lea R9,QWORD PTR [RAX+RSI*1]
            sub R13,RSI
            cmp RBP,R8
            setne R14B
            sub R13,RBP
            setne SIL
            and R14D,ESI
            cmp RCX,RAX
            jae .L_401c60
.L_401c09:

            test R14B,R14B
            je .L_401c25

            cmp R13,1
            lea RSI,QWORD PTR [R9+RBP*1]
            lea RDI,QWORD PTR [R9+R8*1]
            jne .L_401d08

            movzx EAX,BYTE PTR [RSI]
            mov BYTE PTR [RDI],AL
.L_401c25:

            test R8,R8
            je .L_401c3a

            cmp R8,1
            jne .L_401cf0
.L_401c34:

            movzx EAX,BYTE PTR [RCX]
            mov BYTE PTR [R9],AL
.L_401c3a:

            mov RAX,QWORD PTR [RBX]
            mov QWORD PTR [RBX+8],R12
            mov BYTE PTR [RAX+R12*1],0
            add RSP,40
.L_401c4a:

            mov RAX,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401c60:

            add RAX,RDX
            cmp RCX,RAX
            ja .L_401c09

            test R8,R8
            je .L_401c82

            cmp RBP,R8
            jb .L_401c82

            cmp R8,1
            jne .L_401d58

            movzx EAX,BYTE PTR [RCX]
            mov BYTE PTR [R9],AL
.L_401c82:

            test R14B,R14B
            je .L_401c9e
.L_401c87:

            cmp R13,1
            lea RSI,QWORD PTR [R9+RBP*1]
            lea RDI,QWORD PTR [R9+R8*1]
            jne .L_401d90

            movzx EAX,BYTE PTR [RSI]
            mov BYTE PTR [RDI],AL
.L_401c9e:

            cmp RBP,R8
            jae .L_401c3a

            lea RAX,QWORD PTR [RCX+R8*1]
            add RBP,R9
            cmp RBP,RAX
            jae .L_401d38

            cmp RBP,RCX
            ja .L_401dc0

            cmp R8,1
            lea RSI,QWORD PTR [RCX+R15*1]
            je .L_401df0

            mov RDX,R8
            mov RDI,R9
            call memcpy@PLT

            jmp .L_401c3a
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401ce0:

            mov RDX,RBP
            mov RDI,RBX
            call .L_401690

            jmp .L_401c3a
.L_401cf0:

            mov RDX,R8
            mov RSI,RCX
            mov RDI,R9
            call memcpy@PLT

            jmp .L_401c3a
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401d08:

            mov RDX,R13
            mov QWORD PTR [RSP+24],R8
            mov QWORD PTR [RSP+16],RCX
            mov QWORD PTR [RSP+8],R9
            call memmove@PLT

            mov R8,QWORD PTR [RSP+24]
            mov RCX,QWORD PTR [RSP+16]
            mov R9,QWORD PTR [RSP+8]
            jmp .L_401c25
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401d38:

            cmp R8,1
            je .L_401c34

            mov RDX,R8
            mov RSI,RCX
            mov RDI,R9
            call memmove@PLT

            jmp .L_401c3a
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401d58:

            mov RDX,R8
            mov RSI,RCX
            mov RDI,R9
            mov QWORD PTR [RSP+16],R8
            mov QWORD PTR [RSP+8],RCX
            call memmove@PLT

            test R14B,R14B
            mov R9,RAX
            mov RCX,QWORD PTR [RSP+8]
            mov R8,QWORD PTR [RSP+16]
            je .L_401c3a

            jmp .L_401c87
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401d90:

            mov RDX,R13
            mov QWORD PTR [RSP+24],R8
            mov QWORD PTR [RSP+16],RCX
            mov QWORD PTR [RSP+8],R9
            call memmove@PLT

            mov R8,QWORD PTR [RSP+24]
            mov RCX,QWORD PTR [RSP+16]
            mov R9,QWORD PTR [RSP+8]
            jmp .L_401c9e
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401dc0:

            sub RBP,RCX
            cmp RBP,1
            jne .L_401e18

            movzx EAX,BYTE PTR [RCX]
            mov BYTE PTR [R9],AL
.L_401dcf:

            mov RDX,R8
            lea RSI,QWORD PTR [R9+R8*1]
            lea RDI,QWORD PTR [R9+RBP*1]
            sub RDX,RBP
            cmp RDX,1
            jne .L_401e00

            movzx EAX,BYTE PTR [RSI]
            mov BYTE PTR [RDI],AL
            jmp .L_401c3a
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401df0:

            movzx EAX,BYTE PTR [RSI]
            mov BYTE PTR [R9],AL
            jmp .L_401c3a
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401e00:

            test RDX,RDX
            je .L_401c3a

            call memcpy@PLT

            jmp .L_401c3a
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401e18:

            test RBP,RBP
            je .L_401dcf

            mov RDI,R9
            mov RDX,RBP
            mov RSI,RCX
            mov QWORD PTR [RSP+8],R8
            call memmove@PLT

            mov R8,QWORD PTR [RSP+8]
            mov R9,RAX
            jmp .L_401dcf
.L_401e3a:

            lea RDI,QWORD PTR [RIP+.L_414ee0]
            call _ZSt20__throw_length_errorPKc@PLT
.L_401e46:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401e50:

            mov R9,QWORD PTR [RDI+8]
            mov RAX,R9
            sub RAX,RSI
            cmp RAX,RDX
            cmovbe RDX,RAX
            cmp RSI,R9
            ja .L_401e6b

            jmp .L_401b90
.L_401e6b:

            mov RDX,RSI
            lea RDI,QWORD PTR [RIP+.L_4154e0]
            lea RSI,QWORD PTR [RIP+.L_414ef9]
            sub RSP,8
            mov RCX,R9
            xor EAX,EAX
            call _ZSt24__throw_out_of_range_fmtPKcz@PLT
.L_401e8a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_401e90:

            push R12
            push RBP
            mov RBP,RDI
            push RBX
            mov RDI,RDX
            mov RBX,RSI
            mov R12,RDX
            call strlen@PLT

            mov RCX,QWORD PTR [RBP+8]
            cmp RBX,RCX
            ja .L_401ec5

            mov RCX,R12
            mov RSI,RBX
            mov RDI,RBP
            pop RBX
            pop RBP
            pop R12
            mov R8,RAX
            xor EDX,EDX
            jmp .L_401b90
.L_401ec5:

            lea RSI,QWORD PTR [RIP+.L_414ef9]
            lea RDI,QWORD PTR [RIP+.L_4154e0]
            mov RDX,RBX
            xor EAX,EAX
            call _ZSt24__throw_out_of_range_fmtPKcz@PLT
.L_401edd:

            nop
            nop
            nop
.L_401ee0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,24
.L_401eee:

            mov R15,QWORD PTR [RDI+16]
            cmp R15,QWORD PTR [RDI+24]
            je .L_401f98

            test R15,R15
            je .L_401f7b

            lea RAX,QWORD PTR [R15+16]
            mov QWORD PTR [R15],RAX
            mov RDX,QWORD PTR [RSI]
            lea RAX,QWORD PTR [RSI+16]
            cmp RDX,RAX
            je .L_4022b8

            mov QWORD PTR [R15],RDX
            mov RDX,QWORD PTR [RSI+16]
            mov QWORD PTR [R15+16],RDX
.L_401f23:

            mov RDX,QWORD PTR [RSI+8]
            mov QWORD PTR [R15+8],RDX
            mov QWORD PTR [RSI],RAX
            lea RAX,QWORD PTR [R15+48]
            mov QWORD PTR [RSI+8],0
            mov BYTE PTR [RSI+16],0
            mov QWORD PTR [R15+32],RAX
            mov RDX,QWORD PTR [RSI+32]
            lea RAX,QWORD PTR [RSI+48]
            cmp RDX,RAX
            je .L_4022d0

            mov QWORD PTR [R15+32],RDX
            mov RDX,QWORD PTR [RSI+48]
            mov QWORD PTR [R15+48],RDX
.L_401f5f:

            mov RDX,QWORD PTR [RSI+40]
            mov QWORD PTR [R15+40],RDX
            mov BYTE PTR [RSI+48],0
            mov R15,QWORD PTR [RDI+16]
            mov QWORD PTR [RSI+32],RAX
            mov QWORD PTR [RSI+40],0
.L_401f7b:

            add R15,64
            mov QWORD PTR [RDI+16],R15
            add RSP,24
.L_401f87:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401f98:

            mov R13,R15
            sub R13,QWORD PTR [RDI+8]
            mov RBX,RDI
            mov RAX,R13
            sar RAX,6
            test RAX,RAX
            jne .L_402120

            mov EDI,64
            mov R12D,64
.L_401fbd:

            mov RDX,QWORD PTR [RBX]
            mov RBP,QWORD PTR [RDX+4096]
            lea RAX,QWORD PTR [RDX+4096]
            sub RAX,RBP
            cmp RAX,RDI
            jb .L_402340

            add RDI,RBP
            mov QWORD PTR [RDX+4096],RDI
.L_401fe4:

            mov RAX,R13
            add RAX,RBP
            je .L_402062

            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RAX],RDX
            mov RCX,QWORD PTR [RSI]
            lea RDX,QWORD PTR [RSI+16]
            cmp RCX,RDX
            je .L_4022f0

            mov QWORD PTR [RAX],RCX
            mov RCX,QWORD PTR [RSI+16]
            mov QWORD PTR [RAX+16],RCX
.L_40200e:

            mov RCX,QWORD PTR [RSI+8]
            mov QWORD PTR [RAX+8],RCX
            mov QWORD PTR [RSI],RDX
            lea RDX,QWORD PTR [RAX+48]
            mov QWORD PTR [RSI+8],0
            mov BYTE PTR [RSI+16],0
            mov QWORD PTR [RAX+32],RDX
            mov RCX,QWORD PTR [RSI+32]
            lea RDX,QWORD PTR [RSI+48]
            cmp RCX,RDX
            je .L_4022e0

            mov QWORD PTR [RAX+32],RCX
            mov RCX,QWORD PTR [RSI+48]
            mov QWORD PTR [RAX+48],RCX
.L_40204a:

            mov RCX,QWORD PTR [RSI+40]
            mov QWORD PTR [RAX+40],RCX
            mov QWORD PTR [RSI+32],RDX
            mov QWORD PTR [RSI+40],0
            mov BYTE PTR [RSI+48],0
.L_402062:

            mov RAX,QWORD PTR [RBX+8]
            cmp R15,RAX
            je .L_402330

            lea RCX,QWORD PTR [RAX+64]
            mov RDI,R15
            lea RDX,QWORD PTR [RAX+48]
            sub RDI,RCX
            mov R13,RDI
            lea RDI,QWORD PTR [RAX+RDI*1+112]
            mov RAX,RBP
            shr R13,6
            jmp .L_4020f3
          .byte 0x66
          .byte 0x90
.L_402090:

            mov QWORD PTR [RAX],RSI
            mov RSI,QWORD PTR [RDX-32]
            mov QWORD PTR [RAX+16],RSI
.L_40209b:

            mov RSI,QWORD PTR [RDX-40]
            mov QWORD PTR [RAX+8],RSI
            mov QWORD PTR [RDX-48],RCX
            lea RCX,QWORD PTR [RAX+48]
            mov QWORD PTR [RDX-40],0
            mov BYTE PTR [RDX-32],0
            mov QWORD PTR [RAX+32],RCX
            mov RCX,QWORD PTR [RDX-16]
            cmp RCX,RDX
            je .L_402140

            mov QWORD PTR [RAX+32],RCX
            mov RCX,QWORD PTR [RDX]
            mov QWORD PTR [RAX+48],RCX
.L_4020cf:

            mov RCX,QWORD PTR [RDX-8]
            mov QWORD PTR [RAX+40],RCX
            mov QWORD PTR [RDX-16],RDX
            mov QWORD PTR [RDX-8],0
            mov BYTE PTR [RDX],0
.L_4020e6:

            add RDX,64
            add RAX,64
            cmp RDI,RDX
            je .L_402150
.L_4020f3:

            test RAX,RAX
            je .L_4020e6

            lea RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RAX],RCX
            mov RSI,QWORD PTR [RDX-48]
            lea RCX,QWORD PTR [RDX-32]
            cmp RSI,RCX
            jne .L_402090

            movdqu XMM0,XMMWORD PTR [RDX-32]
            movups XMMWORD PTR [RAX+16],XMM0
            jmp .L_40209b
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402120:

            lea R12,QWORD PTR [RAX+RAX*1]
            cmp RAX,R12
            jbe .L_402300
.L_40212d:

            mov RDI,-64
            mov R12,RDI
            jmp .L_401fbd
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_402140:

            movdqu XMM0,XMMWORD PTR [RDX]
            movups XMMWORD PTR [RAX+48],XMM0
            jmp .L_4020cf
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402150:

            add R13,1
            shl R13,6
            add R13,RBP
.L_40215b:

            mov R14,QWORD PTR [RBX+16]
            add R13,64
            cmp R15,R14
            je .L_40223f

            lea RAX,QWORD PTR [R15+64]
            lea RDX,QWORD PTR [R15+48]
            mov RCX,R13
            sub R14,RAX
            mov RDI,R14
            lea R8,QWORD PTR [R15+R14*1+112]
            shr RDI,6
            jmp .L_4021f3
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402190:

            mov QWORD PTR [RCX],RSI
            mov RSI,QWORD PTR [RDX-32]
            mov QWORD PTR [RCX+16],RSI
.L_40219b:

            mov RSI,QWORD PTR [RDX-40]
            mov QWORD PTR [RCX+8],RSI
            mov QWORD PTR [RDX-48],RAX
            lea RAX,QWORD PTR [RCX+48]
            mov QWORD PTR [RDX-40],0
            mov BYTE PTR [RDX-32],0
            mov QWORD PTR [RCX+32],RAX
            mov RAX,QWORD PTR [RDX-16]
            cmp RAX,RDX
            je .L_402220

            mov QWORD PTR [RCX+32],RAX
            mov RAX,QWORD PTR [RDX]
            mov QWORD PTR [RCX+48],RAX
.L_4021cf:

            mov RAX,QWORD PTR [RDX-8]
            mov QWORD PTR [RCX+40],RAX
            mov QWORD PTR [RDX-16],RDX
            mov QWORD PTR [RDX-8],0
            mov BYTE PTR [RDX],0
.L_4021e6:

            add RDX,64
            add RCX,64
            cmp R8,RDX
            je .L_402230
.L_4021f3:

            test RCX,RCX
            je .L_4021e6

            lea RAX,QWORD PTR [RCX+16]
            mov QWORD PTR [RCX],RAX
            mov RSI,QWORD PTR [RDX-48]
            lea RAX,QWORD PTR [RDX-32]
            cmp RSI,RAX
            jne .L_402190

            movdqu XMM0,XMMWORD PTR [RDX-32]
            movups XMMWORD PTR [RCX+16],XMM0
            jmp .L_40219b
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402220:

            movdqu XMM0,XMMWORD PTR [RDX]
            movups XMMWORD PTR [RCX+48],XMM0
            jmp .L_4021cf
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402230:

            add RDI,1
            mov R14,QWORD PTR [RBX+16]
            shl RDI,6
            add R13,RDI
.L_40223f:

            mov R15,QWORD PTR [RBX+8]
            cmp R14,R15
            je .L_402280

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402250:

            mov RDI,QWORD PTR [R15+32]
            lea RAX,QWORD PTR [R15+48]
            cmp RDI,RAX
            je .L_402262

            call free@PLT
.L_402262:

            mov RDI,QWORD PTR [R15]
            lea RAX,QWORD PTR [R15+16]
            cmp RDI,RAX
            je .L_402273

            call free@PLT
.L_402273:

            add R15,64
            cmp R14,R15
            jne .L_402250

            mov R15,QWORD PTR [RBX+8]
.L_402280:

            test R15,R15
            je .L_402297

            mov RDX,QWORD PTR [RBX+24]
            mov RDI,QWORD PTR [RBX]
            mov RSI,R15
            sub RDX,R15
            call .L_4012a0
.L_402297:

            mov QWORD PTR [RBX+8],RBP
            add RBP,R12
            mov QWORD PTR [RBX+16],R13
            mov QWORD PTR [RBX+24],RBP
            add RSP,24
.L_4022aa:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4022b8:

            movdqa XMM0,XMMWORD PTR [RSI+16]
            movups XMMWORD PTR [R15+16],XMM0
            jmp .L_401f23
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4022d0:

            movdqa XMM0,XMMWORD PTR [RSI+48]
            movups XMMWORD PTR [R15+48],XMM0
            jmp .L_401f5f
          .byte 0x90
.L_4022e0:

            movdqa XMM0,XMMWORD PTR [RSI+48]
            movups XMMWORD PTR [RAX+48],XMM0
            jmp .L_40204a
          .byte 0x66
          .byte 0x90
.L_4022f0:

            movdqa XMM0,XMMWORD PTR [RSI+16]
            movups XMMWORD PTR [RAX+16],XMM0
            jmp .L_40200e
          .byte 0x66
          .byte 0x90
.L_402300:

            movabs RDX,288230376151711743
            cmp R12,RDX
            ja .L_40212d

            xor EBP,EBP
            test R12,R12
            je .L_401fe4

            shl RAX,7
            mov R12,RAX
            mov RDI,RAX
            jmp .L_401fbd
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_402330:

            mov R13,RBP
            jmp .L_40215b
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402340:

            mov QWORD PTR [RSP+8],RSI
            call malloc@PLT

            mov RSI,QWORD PTR [RSP+8]
            mov RBP,RAX
            jmp .L_401fe4
.L_402357:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402360:

            push R14
            push R13
            mov R14,RDI
            push R12
            push RBP
            push RBX
.L_40236b:

            mov R13,QWORD PTR [RDI+16]
            mov RBP,QWORD PTR [RDI+8]
            cmp R13,RBP
            je .L_4023e5

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402380:

            mov R12,QWORD PTR [RBP+16]
            mov RBX,QWORD PTR [RBP+8]
            cmp R12,RBX
            je .L_4023c0

            nop
            nop
            nop
.L_402390:

            mov RDI,QWORD PTR [RBX+32]
            lea RAX,QWORD PTR [RBX+48]
            cmp RDI,RAX
            je .L_4023a2

            call free@PLT
.L_4023a2:

            mov RDI,QWORD PTR [RBX]
            lea RAX,QWORD PTR [RBX+16]
            cmp RDI,RAX
            je .L_4023b3

            call free@PLT
.L_4023b3:

            add RBX,64
            cmp R12,RBX
            jne .L_402390

            mov RBX,QWORD PTR [RBP+8]
.L_4023c0:

            test RBX,RBX
            je .L_4023d8

            mov RDX,QWORD PTR [RBP+24]
            mov RDI,QWORD PTR [RBP]
            mov RSI,RBX
            sub RDX,RBX
            call .L_4012a0
.L_4023d8:

            add RBP,32
            cmp R13,RBP
            jne .L_402380

            mov RBP,QWORD PTR [R14+8]
.L_4023e5:

            test RBP,RBP
            je .L_402408

            mov RDX,QWORD PTR [R14+24]
            mov RSI,RBP
            mov RDI,QWORD PTR [R14]
            pop RBX
.L_4023f5:

            sub RDX,RBP
            pop RBP
            pop R12
            pop R13
            pop R14
            jmp .L_4012a0
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_402408:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
.L_402411:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402420:

            push R12
            push RBP
            mov R12,RDX
            push RBX
.L_402427:

            mov RBP,RSI
            mov RBX,RDI
            mov RDI,RSI
            call strlen@PLT

            xor EDX,EDX
            mov RCX,RBP
            xor ESI,ESI
            mov R8,RAX
            mov RDI,R12
            call .L_401b90

            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_402488

            mov QWORD PTR [RBX],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RBX+16],RCX
.L_402465:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RBX+8],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RAX,RBX
            pop RBX
.L_402480:

            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_402488:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movups XMMWORD PTR [RBX+16],XMM0
            jmp .L_402465
.L_402493:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4024a0:

            push RBX
.L_4024a1:

            mov RCX,QWORD PTR [RSI]
            mov RAX,RDX
            mov R8,QWORD PTR [RSI+8]
            mov RDX,QWORD PTR [RDX+8]
            mov RBX,RDI
            mov RDI,RSI
            add RSI,16
            mov R9D,15
            cmp RCX,RSI
            lea R10,QWORD PTR [R8+RDX*1]
            je .L_4024cc

            mov R9,QWORD PTR [RDI+16]
.L_4024cc:

            cmp R10,R9
            mov RSI,QWORD PTR [RAX]
            jbe .L_4024ec

            lea R11,QWORD PTR [RAX+16]
            mov R9D,15
            cmp RSI,R11
            je .L_4024e7

            mov R9,QWORD PTR [RAX+16]
.L_4024e7:

            cmp R10,R9
            jbe .L_402530
.L_4024ec:

            call .L_4017e0
.L_4024f1:

            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_402540

            mov QWORD PTR [RBX],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RBX+16],RCX
.L_40250f:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RBX+8],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RAX,RBX
            pop RBX
.L_40252a:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402530:

            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RAX
            call .L_401b90

            jmp .L_4024f1
          .byte 0x66
          .byte 0x90
.L_402540:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movups XMMWORD PTR [RBX+16],XMM0
            jmp .L_40250f
.L_40254b:

            nop
            nop
            nop
            nop
            nop
.L_402550:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,8
.L_40255e:

            mov R15,QWORD PTR [RDI+16]
            cmp R15,QWORD PTR [RDI+24]
            je .L_4025b8

            test R15,R15
            je .L_40259e

            lea RAX,QWORD PTR [R15+16]
            pxor XMM0,XMM0
            mov QWORD PTR [R15+8],0
            mov QWORD PTR [R15+40],0
            mov QWORD PTR [R15],RAX
            lea RAX,QWORD PTR [R15+48]
            movups XMMWORD PTR [R15+16],XMM0
            mov QWORD PTR [R15+32],RAX
            movups XMMWORD PTR [R15+48],XMM0
            mov R15,QWORD PTR [RDI+16]
.L_40259e:

            add R15,64
            mov QWORD PTR [RDI+16],R15
            add RSP,8
.L_4025aa:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4025b8:

            mov RBP,R15
            sub RBP,QWORD PTR [RDI+8]
            mov RBX,RDI
            mov RAX,RBP
            sar RAX,6
            test RAX,RAX
            je .L_402700

            lea R13,QWORD PTR [RAX+RAX*1]
            cmp RAX,R13
            jbe .L_402898
.L_4025df:

            mov RDI,-64
            mov R13,RDI
.L_4025e9:

            mov RDX,QWORD PTR [RBX]
            mov R12,QWORD PTR [RDX+4096]
            lea RAX,QWORD PTR [RDX+4096]
            sub RAX,R12
            cmp RAX,RDI
            jb .L_402710

            add RDI,R12
            mov QWORD PTR [RDX+4096],RDI
.L_402610:

            mov RAX,RBP
            add RAX,R12
            je .L_402643

            pxor XMM0,XMM0
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RAX+8],0
            mov QWORD PTR [RAX+40],0
            mov QWORD PTR [RAX],RDX
            lea RDX,QWORD PTR [RAX+48]
            movups XMMWORD PTR [RAX+16],XMM0
            mov QWORD PTR [RAX+32],RDX
            movups XMMWORD PTR [RAX+48],XMM0
.L_402643:

            mov RAX,QWORD PTR [RBX+8]
            cmp R15,RAX
            je .L_4028d0

            lea RCX,QWORD PTR [RAX+64]
            mov RSI,R15
            lea RDX,QWORD PTR [RAX+48]
            sub RSI,RCX
            mov R14,RSI
            lea RDI,QWORD PTR [RAX+RSI*1+112]
            mov RAX,R12
            shr R14,6
            jmp .L_4026d3
          .byte 0x90
.L_402670:

            mov QWORD PTR [RAX],RSI
            mov RSI,QWORD PTR [RDX-32]
            mov QWORD PTR [RAX+16],RSI
.L_40267b:

            mov RSI,QWORD PTR [RDX-40]
            mov QWORD PTR [RAX+8],RSI
            mov QWORD PTR [RDX-48],RCX
            lea RCX,QWORD PTR [RAX+48]
            mov QWORD PTR [RDX-40],0
            mov BYTE PTR [RDX-32],0
            mov QWORD PTR [RAX+32],RCX
            mov RCX,QWORD PTR [RDX-16]
            cmp RCX,RDX
            je .L_402720

            mov QWORD PTR [RAX+32],RCX
            mov RCX,QWORD PTR [RDX]
            mov QWORD PTR [RAX+48],RCX
.L_4026af:

            mov RCX,QWORD PTR [RDX-8]
            mov QWORD PTR [RAX+40],RCX
            mov QWORD PTR [RDX-16],RDX
            mov QWORD PTR [RDX-8],0
            mov BYTE PTR [RDX],0
.L_4026c6:

            add RDX,64
            add RAX,64
            cmp RDX,RDI
            je .L_402730
.L_4026d3:

            test RAX,RAX
            je .L_4026c6

            lea RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RAX],RCX
            mov RSI,QWORD PTR [RDX-48]
            lea RCX,QWORD PTR [RDX-32]
            cmp RSI,RCX
            jne .L_402670

            movdqu XMM0,XMMWORD PTR [RDX-32]
            movups XMMWORD PTR [RAX+16],XMM0
            jmp .L_40267b
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402700:

            mov EDI,64
            mov R13D,64
            jmp .L_4025e9
.L_402710:

            call malloc@PLT

            mov R12,RAX
            jmp .L_402610
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_402720:

            movdqu XMM0,XMMWORD PTR [RDX]
            movups XMMWORD PTR [RAX+48],XMM0
            jmp .L_4026af
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402730:

            add R14,1
            shl R14,6
            add R14,R12
.L_40273b:

            mov RBP,QWORD PTR [RBX+16]
            add R14,64
            cmp R15,RBP
            je .L_40281f

            lea RAX,QWORD PTR [R15+64]
            lea RDX,QWORD PTR [R15+48]
            sub RBP,RAX
            mov RAX,R14
            mov RDI,RBP
            lea R8,QWORD PTR [R15+RBP*1+112]
            shr RDI,6
            jmp .L_4027d3
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402770:

            mov QWORD PTR [RAX],RSI
            mov RSI,QWORD PTR [RDX-32]
            mov QWORD PTR [RAX+16],RSI
.L_40277b:

            mov RSI,QWORD PTR [RDX-40]
            mov QWORD PTR [RAX+8],RSI
            mov QWORD PTR [RDX-48],RCX
            lea RCX,QWORD PTR [RAX+48]
            mov QWORD PTR [RDX-40],0
            mov BYTE PTR [RDX-32],0
            mov QWORD PTR [RAX+32],RCX
            mov RCX,QWORD PTR [RDX-16]
            cmp RCX,RDX
            je .L_402800

            mov QWORD PTR [RAX+32],RCX
            mov RCX,QWORD PTR [RDX]
            mov QWORD PTR [RAX+48],RCX
.L_4027af:

            mov RCX,QWORD PTR [RDX-8]
            mov QWORD PTR [RAX+40],RCX
            mov QWORD PTR [RDX-16],RDX
            mov QWORD PTR [RDX-8],0
            mov BYTE PTR [RDX],0
.L_4027c6:

            add RDX,64
            add RAX,64
            cmp R8,RDX
            je .L_402810
.L_4027d3:

            test RAX,RAX
            je .L_4027c6

            lea RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RAX],RCX
            mov RSI,QWORD PTR [RDX-48]
            lea RCX,QWORD PTR [RDX-32]
            cmp RSI,RCX
            jne .L_402770

            movdqu XMM0,XMMWORD PTR [RDX-32]
            movups XMMWORD PTR [RAX+16],XMM0
            jmp .L_40277b
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402800:

            movdqu XMM0,XMMWORD PTR [RDX]
            movups XMMWORD PTR [RAX+48],XMM0
            jmp .L_4027af
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402810:

            add RDI,1
            mov RBP,QWORD PTR [RBX+16]
            shl RDI,6
            add R14,RDI
.L_40281f:

            mov R15,QWORD PTR [RBX+8]
            cmp RBP,R15
            je .L_402860

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402830:

            mov RDI,QWORD PTR [R15+32]
            lea RAX,QWORD PTR [R15+48]
            cmp RDI,RAX
            je .L_402842

            call free@PLT
.L_402842:

            mov RDI,QWORD PTR [R15]
            lea RAX,QWORD PTR [R15+16]
            cmp RDI,RAX
            je .L_402853

            call free@PLT
.L_402853:

            add R15,64
            cmp RBP,R15
            jne .L_402830

            mov R15,QWORD PTR [RBX+8]
.L_402860:

            test R15,R15
            je .L_402877

            mov RDX,QWORD PTR [RBX+24]
            mov RDI,QWORD PTR [RBX]
            mov RSI,R15
            sub RDX,R15
            call .L_4012a0
.L_402877:

            mov QWORD PTR [RBX+8],R12
            add R12,R13
            mov QWORD PTR [RBX+16],R14
            mov QWORD PTR [RBX+24],R12
            add RSP,8
.L_40288a:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_402898:

            movabs RDX,288230376151711743
            cmp R13,RDX
            ja .L_4025df

            xor R12D,R12D
            test R13,R13
            je .L_402610

            shl RAX,7
            mov R13,RAX
            mov RDI,RAX
            jmp .L_4025e9
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4028d0:

            mov R14,R12
            jmp .L_40273b
.L_4028d8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4028e0:

            push R12
            push RBP
            mov RBP,RSI
            push RBX
.L_4028e7:

            mov RBX,RDI
            mov RDI,RDX
            mov R12,RDX
            call strlen@PLT

            movabs RCX,9223372036854775807
            sub RCX,QWORD PTR [RBP+8]
            cmp RAX,RCX
            ja .L_402963

            mov RDX,RAX
            mov RSI,R12
            mov RDI,RBP
            call .L_4017e0

            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_402958

            mov QWORD PTR [RBX],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RBX+16],RCX
.L_402934:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RBX+8],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RAX,RBX
            pop RBX
.L_40294f:

            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402958:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movups XMMWORD PTR [RBX+16],XMM0
            jmp .L_402934
.L_402963:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
            call _ZSt20__throw_length_errorPKc@PLT
.L_40296f:

            nop
.L_402970:

            push R14
            push R13
            push R12
            push RBP
            mov R12,RSI
            push RBX
.L_40297b:

            mov RAX,QWORD PTR [RDX]
            mov RBP,RDI
            mov QWORD PTR [RDI+8],0
            mov QWORD PTR [RDI+16],0
            mov QWORD PTR [RDI+24],0
            mov QWORD PTR [RDI],RAX
            mov RBX,QWORD PTR [RAX+4096]
            lea RDX,QWORD PTR [RAX+4096]
            sub RDX,RBX
            cmp RDX,63
            jbe .L_402a18

            lea R13,QWORD PTR [RBX+64]
            mov QWORD PTR [RAX+4096],R13
.L_4029be:

            test RBX,RBX
            mov QWORD PTR [RBP+8],RBX
            mov QWORD PTR [RBP+16],RBX
            mov QWORD PTR [RBP+24],R13
            je .L_402a08

            lea R14,QWORD PTR [RBX+16]
            mov RDI,RBX
            mov QWORD PTR [RBX],R14
            mov RSI,QWORD PTR [R12]
            mov RDX,QWORD PTR [R12+8]
            add RDX,RSI
.L_4029e5:

            call .L_401470
.L_4029ea:

            lea RAX,QWORD PTR [RBX+48]
            lea RDI,QWORD PTR [RBX+32]
            mov QWORD PTR [RBX+32],RAX
            mov RSI,QWORD PTR [R12+32]
            mov RDX,QWORD PTR [R12+40]
            add RDX,RSI
.L_402a03:

            call .L_401470
.L_402a08:

            mov QWORD PTR [RBP+16],R13
            pop RBX
.L_402a0d:

            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_402a18:

            mov EDI,64
            call malloc@PLT

            mov RBX,RAX
            lea R13,QWORD PTR [RAX+64]
            jmp .L_4029be
.L_402a2b:

            mov RDI,QWORD PTR [RBX]
            mov R12,RAX
            cmp R14,RDI
            je .L_402a3b

            call free@PLT
.L_402a3b:

            mov RAX,R12
.L_402a3e:

            mov RDI,RAX
            call __cxa_begin_catch@PLT
.L_402a46:

            call __cxa_rethrow@PLT
.L_402a4b:

            jmp .L_402a3e
.L_402a4d:

            mov RBX,RAX
            call __cxa_end_catch@PLT

            mov RSI,QWORD PTR [RBP+8]
            mov RDX,QWORD PTR [RBP+24]
            sub RDX,RSI
            test RSI,RSI
            je .L_402a6e

            mov RDI,QWORD PTR [RBP]
            call .L_4012a0
.L_402a6e:

            mov RDI,RBX
.L_402a71:

            call _Unwind_Resume@PLT
.L_402a76:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402a80:

            push R12
            lea R12,QWORD PTR [RDI+16]
            push RBP
            mov RBP,RDX
            push RBX
.L_402a8b:

            mov RBX,RDI
            mov QWORD PTR [RDI],R12
            mov RAX,QWORD PTR [RSI]
            mov RDX,QWORD PTR [RSI+8]
            mov RSI,RAX
            add RDX,RAX
.L_402a9e:

            call .L_401470
.L_402aa3:

            mov RDI,RBP
            call strlen@PLT

            movabs RCX,9223372036854775807
            sub RCX,QWORD PTR [RBX+8]
            cmp RAX,RCX
            ja .L_402ad4

            mov RDX,RAX
            mov RSI,RBP
            mov RDI,RBX
.L_402ac7:

            call .L_4017e0

            mov RAX,RBX
            pop RBX
.L_402ad0:

            pop RBP
            pop R12
            ret 
.L_402ad4:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
            call _ZSt20__throw_length_errorPKc@PLT
.L_402ae0:

            mov RDI,QWORD PTR [RBX]
            mov RBP,RAX
            cmp R12,RDI
            je .L_402af0

            call free@PLT
.L_402af0:

            mov RDI,RBP
.L_402af3:

            call _Unwind_Resume@PLT
.L_402af8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402b00:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,24
            mov RBX,QWORD PTR [RDI+16]
            cmp RBX,QWORD PTR [RDI+24]
            je .L_402b58

            test RBX,RBX
            je .L_402b3b

            mov RAX,QWORD PTR [RSI]
            mov QWORD PTR [RBX+8],0
            mov QWORD PTR [RBX+16],0
            mov QWORD PTR [RBX+24],0
            mov QWORD PTR [RBX],RAX
.L_402b3b:

            add RBX,32
            mov QWORD PTR [RDI+16],RBX
            add RSP,24
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402b58:

            mov R14,QWORD PTR [RDI+8]
            mov RBP,RBX
            mov R12,RDI
            sub RBP,R14
            mov RAX,RBP
            sar RAX,5
            test RAX,RAX
            je .L_402cc0

            lea RCX,QWORD PTR [RAX+RAX*1]
            cmp RAX,RCX
            mov QWORD PTR [RSP],RCX
            jbe .L_402ce9
.L_402b86:

            mov RDI,-32
            mov QWORD PTR [RSP],RDI
.L_402b91:

            mov RDX,QWORD PTR [R12]
            mov R13,QWORD PTR [RDX+4096]
            lea RAX,QWORD PTR [RDX+4096]
            sub RAX,R13
            cmp RAX,RDI
            jb .L_402cd2

            add RDI,R13
            mov QWORD PTR [RDX+4096],RDI
            mov R14,QWORD PTR [R12+8]
.L_402bbe:

            add RBP,R13
            je .L_402be2

            mov RAX,QWORD PTR [RSI]
            mov QWORD PTR [RBP+8],0
            mov QWORD PTR [RBP+16],0
            mov QWORD PTR [RBP+24],0
            mov QWORD PTR [RBP],RAX
.L_402be2:

            mov RSI,RBX
            mov RDI,R14
            mov RDX,R13
            call .L_401380

            mov RSI,QWORD PTR [R12+16]
            lea RDX,QWORD PTR [RAX+32]
            mov RDI,RBX
            call .L_401380

            mov R14,QWORD PTR [R12+16]
            mov RBX,QWORD PTR [R12+8]
            mov QWORD PTR [RSP+8],RAX
            cmp R14,RBX
            je .L_402c7d

            nop
            nop
            nop
.L_402c18:

            mov RBP,QWORD PTR [RBX+16]
            mov R15,QWORD PTR [RBX+8]
            cmp RBP,R15
            je .L_402c58

            nop
            nop
            nop
.L_402c28:

            mov RDI,QWORD PTR [R15+32]
            lea RAX,QWORD PTR [R15+48]
            cmp RDI,RAX
            je .L_402c3a

            call free@PLT
.L_402c3a:

            mov RDI,QWORD PTR [R15]
            lea RAX,QWORD PTR [R15+16]
            cmp RDI,RAX
            je .L_402c4b

            call free@PLT
.L_402c4b:

            add R15,64
            cmp RBP,R15
            jne .L_402c28

            mov R15,QWORD PTR [RBX+8]
.L_402c58:

            test R15,R15
            je .L_402c6f

            mov RDX,QWORD PTR [RBX+24]
            mov RDI,QWORD PTR [RBX]
            mov RSI,R15
            sub RDX,R15
            call .L_4012a0
.L_402c6f:

            add RBX,32
            cmp R14,RBX
            jne .L_402c18

            mov RBX,QWORD PTR [R12+8]
.L_402c7d:

            test RBX,RBX
            je .L_402c96

            mov RDX,QWORD PTR [R12+24]
            mov RDI,QWORD PTR [R12]
            mov RSI,RBX
            sub RDX,RBX
            call .L_4012a0
.L_402c96:

            mov QWORD PTR [R12+8],R13
            add R13,QWORD PTR [RSP]
            mov RAX,QWORD PTR [RSP+8]
            mov QWORD PTR [R12+24],R13
            mov QWORD PTR [R12+16],RAX
            add RSP,24
.L_402cb2:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_402cc0:

            mov EDI,32
            mov QWORD PTR [RSP],32
            jmp .L_402b91
.L_402cd2:

            mov QWORD PTR [RSP+8],RSI
            call malloc@PLT

            mov RSI,QWORD PTR [RSP+8]
            mov R13,RAX
            jmp .L_402bbe
.L_402ce9:

            movabs RDX,576460752303423487
            cmp RCX,RDX
            ja .L_402b86

            xor R13D,R13D
            test RCX,RCX
            je .L_402bbe

            shl RAX,6
            mov QWORD PTR [RSP],RAX
            mov RDI,RAX
            jmp .L_402b91
.L_402d18:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402d20:

            push R15
            push R14
            mov R15,RDX
            push R13
            push R12
            mov R13,RSI
            push RBP
            push RBX
            mov R12,RSI
            mov RBX,RDI
            mov RBP,RSI
            sub RSP,24
.L_402d3d:

            mov RDX,QWORD PTR [RDI+8]
            mov RAX,QWORD PTR [RDI+16]
            sub RAX,RDX
            sub R13,RDX
            sar RAX,6
            test RAX,RAX
            je .L_402ea0

            lea RDI,QWORD PTR [RAX+RAX*1]
            cmp RAX,RDI
            mov QWORD PTR [RSP],RDI
            jbe .L_403038

            movabs RAX,288230376151711743
            mov RDI,-64
            mov QWORD PTR [RSP],RAX
.L_402d7e:

            mov RDX,QWORD PTR [RBX]
            mov R14,QWORD PTR [RDX+4096]
            lea RAX,QWORD PTR [RDX+4096]
            sub RAX,R14
            cmp RAX,RDI
            jb .L_403070

            add RDI,R14
            mov QWORD PTR [RDX+4096],RDI
.L_402da5:

            add R13,R14
            je .L_402de5

            lea RAX,QWORD PTR [R13+16]
            mov RDI,R13
            mov QWORD PTR [R13],RAX
            mov RSI,QWORD PTR [R15]
            mov RDX,QWORD PTR [R15+8]
            mov QWORD PTR [RSP+8],RAX
            add RDX,RSI
.L_402dc4:

            call .L_401470
.L_402dc9:

            lea RAX,QWORD PTR [R13+48]
            lea RDI,QWORD PTR [R13+32]
            mov QWORD PTR [R13+32],RAX
            mov RSI,QWORD PTR [R15+32]
            mov RDX,QWORD PTR [R15+40]
            add RDX,RSI
.L_402de0:

            call .L_401470
.L_402de5:

            mov RDX,QWORD PTR [RBX+8]
            cmp RDX,R12
            je .L_403060

            lea RCX,QWORD PTR [RDX+64]
            mov RDI,R12
            lea RAX,QWORD PTR [RDX+48]
            sub RDI,RCX
            mov RCX,RDI
            shr RDI,6
            lea R8,QWORD PTR [RDX+RCX*1+112]
            mov RDX,R14
            jmp .L_402e7b
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402e18:

            mov QWORD PTR [RDX],RSI
            mov RSI,QWORD PTR [RAX-32]
            mov QWORD PTR [RDX+16],RSI
.L_402e23:

            mov RSI,QWORD PTR [RAX-40]
            mov QWORD PTR [RDX+8],RSI
            mov QWORD PTR [RAX-48],RCX
            lea RCX,QWORD PTR [RDX+48]
            mov QWORD PTR [RAX-40],0
            mov BYTE PTR [RAX-32],0
            mov QWORD PTR [RDX+32],RCX
            mov RCX,QWORD PTR [RAX-16]
            cmp RCX,RAX
            je .L_402eb8

            mov QWORD PTR [RDX+32],RCX
            mov RCX,QWORD PTR [RAX]
            mov QWORD PTR [RDX+48],RCX
.L_402e57:

            mov RCX,QWORD PTR [RAX-8]
            mov QWORD PTR [RDX+40],RCX
            mov QWORD PTR [RAX-16],RAX
            mov QWORD PTR [RAX-8],0
            mov BYTE PTR [RAX],0
.L_402e6e:

            add RAX,64
            add RDX,64
            cmp RAX,R8
            je .L_402ec8
.L_402e7b:

            test RDX,RDX
            je .L_402e6e

            lea RCX,QWORD PTR [RDX+16]
            mov QWORD PTR [RDX],RCX
            mov RSI,QWORD PTR [RAX-48]
            lea RCX,QWORD PTR [RAX-32]
            cmp RSI,RCX
            jne .L_402e18

            movdqu XMM0,XMMWORD PTR [RAX-32]
            movups XMMWORD PTR [RDX+16],XMM0
            jmp .L_402e23
          .byte 0x90
.L_402ea0:

            mov QWORD PTR [RSP],1
.L_402ea8:

            mov RDI,QWORD PTR [RSP]
            shl RDI,6
            jmp .L_402d7e
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_402eb8:

            movdqu XMM0,XMMWORD PTR [RAX]
            movups XMMWORD PTR [RDX+48],XMM0
            jmp .L_402e57
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402ec8:

            lea R13,QWORD PTR [RDI+1]
            shl R13,6
            add R13,R14
.L_402ed3:

            mov RDX,QWORD PTR [RBX+16]
            add R13,64
            cmp RDX,R12
            je .L_402faf

            lea RCX,QWORD PTR [R12+64]
            lea RAX,QWORD PTR [R12+48]
            sub RDX,RCX
            mov RDI,RDX
            lea R8,QWORD PTR [RDX+R12*1+112]
            mov RDX,R13
            shr RDI,6
            jmp .L_402f6b
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402f08:

            mov QWORD PTR [RDX],RSI
            mov RSI,QWORD PTR [RAX-32]
            mov QWORD PTR [RDX+16],RSI
.L_402f13:

            mov RSI,QWORD PTR [RAX-40]
            mov QWORD PTR [RDX+8],RSI
            mov QWORD PTR [RAX-48],RCX
            lea RCX,QWORD PTR [RDX+48]
            mov QWORD PTR [RAX-40],0
            mov BYTE PTR [RAX-32],0
            mov QWORD PTR [RDX+32],RCX
            mov RCX,QWORD PTR [RAX-16]
            cmp RCX,RAX
            je .L_402f90

            mov QWORD PTR [RDX+32],RCX
            mov RCX,QWORD PTR [RAX]
            mov QWORD PTR [RDX+48],RCX
.L_402f47:

            mov RCX,QWORD PTR [RAX-8]
            mov QWORD PTR [RDX+40],RCX
            mov QWORD PTR [RAX-16],RAX
            mov QWORD PTR [RAX-8],0
            mov BYTE PTR [RAX],0
.L_402f5e:

            add RAX,64
            add RDX,64
            cmp RAX,R8
            je .L_402fa0
.L_402f6b:

            test RDX,RDX
            je .L_402f5e

            lea RCX,QWORD PTR [RDX+16]
            mov QWORD PTR [RDX],RCX
            mov RSI,QWORD PTR [RAX-48]
            lea RCX,QWORD PTR [RAX-32]
            cmp RSI,RCX
            jne .L_402f08

            movdqu XMM0,XMMWORD PTR [RAX-32]
            movups XMMWORD PTR [RDX+16],XMM0
            jmp .L_402f13
          .byte 0x90
.L_402f90:

            movdqu XMM0,XMMWORD PTR [RAX]
            movups XMMWORD PTR [RDX+48],XMM0
            jmp .L_402f47
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402fa0:

            add RDI,1
            mov RBP,QWORD PTR [RBX+16]
            shl RDI,6
            add R13,RDI
.L_402faf:

            mov R12,QWORD PTR [RBX+8]
            cmp R12,RBP
            je .L_402ff4

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402fc0:

            mov RDI,QWORD PTR [R12+32]
            lea RAX,QWORD PTR [R12+48]
            cmp RDI,RAX
            je .L_402fd4

            call free@PLT
.L_402fd4:

            mov RDI,QWORD PTR [R12]
            lea RAX,QWORD PTR [R12+16]
            cmp RDI,RAX
            je .L_402fe7

            call free@PLT
.L_402fe7:

            add R12,64
            cmp R12,RBP
            jne .L_402fc0

            mov RBP,QWORD PTR [RBX+8]
.L_402ff4:

            test RBP,RBP
            je .L_40300b

            mov RDX,QWORD PTR [RBX+24]
            mov RDI,QWORD PTR [RBX]
            mov RSI,RBP
            sub RDX,RBP
            call .L_4012a0
.L_40300b:

            mov RAX,QWORD PTR [RSP]
            mov QWORD PTR [RBX+8],R14
            mov QWORD PTR [RBX+16],R13
            shl RAX,6
            add R14,RAX
            mov QWORD PTR [RBX+24],R14
            add RSP,24
.L_403026:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403038:

            movabs RAX,288230376151711743
            cmp RDI,RAX
            jbe .L_40307d

            mov RDI,-64
            mov QWORD PTR [RSP],RAX
            jmp .L_402d7e
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403060:

            mov R13,R14
            jmp .L_402ed3
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403070:

            call malloc@PLT

            mov R14,RAX
            jmp .L_402da5
.L_40307d:

            xor R14D,R14D
            test RDI,RDI
            je .L_402da5

            jmp .L_402ea8
.L_40308e:

            mov RDI,RAX
            call __cxa_begin_catch@PLT

            test R14,R14
            je .L_4030db

            mov RDX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RBX]
            mov RSI,R14
            shl RDX,6
            call .L_4012a0
.L_4030ae:

            call __cxa_rethrow@PLT
.L_4030b3:

            mov RDI,QWORD PTR [R13]
            cmp QWORD PTR [RSP+8],RDI
            mov RBP,RAX
            je .L_4030c6

            call free@PLT
.L_4030c6:

            mov RAX,RBP
            jmp .L_40308e
.L_4030cb:

            mov RBX,RAX
            call __cxa_end_catch@PLT

            mov RDI,RBX
.L_4030d6:

            call _Unwind_Resume@PLT
.L_4030db:

            mov RDI,R13
            call .L_401050

            jmp .L_4030ae
.L_4030e5:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4030f0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,24
.L_4030fe:

            mov RBX,QWORD PTR [RDI+16]
            cmp RBX,QWORD PTR [RDI+24]
            je .L_403178

            test RBX,RBX
            je .L_40315b

            mov RAX,QWORD PTR [RSI]
            mov QWORD PTR [RBX+16],0
            mov QWORD PTR [RBX+24],0
            mov QWORD PTR [RBX+8],0
            mov QWORD PTR [RBX],RAX
            mov RAX,QWORD PTR [RSI+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSI+8],0
            mov RDX,QWORD PTR [RSI+16]
            mov RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX+16],RDX
            mov QWORD PTR [RSI+16],RAX
            mov RDX,QWORD PTR [RSI+24]
            mov RAX,QWORD PTR [RBX+24]
            mov QWORD PTR [RBX+24],RDX
            mov QWORD PTR [RSI+24],RAX
.L_40315b:

            add RBX,32
            mov QWORD PTR [RDI+16],RBX
            add RSP,24
.L_403167:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403178:

            mov R14,QWORD PTR [RDI+8]
            mov RBP,RBX
            mov R12,RDI
            sub RBP,R14
            mov RAX,RBP
            sar RAX,5
            test RAX,RAX
            je .L_403318

            lea RCX,QWORD PTR [RAX+RAX*1]
            cmp RAX,RCX
            mov QWORD PTR [RSP],RCX
            jbe .L_403341
.L_4031a6:

            mov RDI,-32
            mov QWORD PTR [RSP],RDI
.L_4031b1:

            mov RDX,QWORD PTR [R12]
            mov R13,QWORD PTR [RDX+4096]
            lea RAX,QWORD PTR [RDX+4096]
            sub RAX,R13
            cmp RAX,RDI
            jb .L_40332a

            add RDI,R13
            mov QWORD PTR [RDX+4096],RDI
            mov R14,QWORD PTR [R12+8]
.L_4031de:

            mov RAX,RBP
            add RAX,R13
            je .L_403234

            mov RDX,QWORD PTR [RSI]
            mov QWORD PTR [RAX+16],0
            mov QWORD PTR [RAX+24],0
            mov QWORD PTR [RAX+8],0
            mov QWORD PTR [RAX],RDX
            mov RDX,QWORD PTR [RSI+8]
            mov QWORD PTR [RAX+8],RDX
            mov QWORD PTR [RSI+8],0
            mov RCX,QWORD PTR [RSI+16]
            mov RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RAX+16],RCX
            mov QWORD PTR [RSI+16],RDX
            mov RCX,QWORD PTR [RSI+24]
            mov RDX,QWORD PTR [RAX+24]
            mov QWORD PTR [RAX+24],RCX
            mov QWORD PTR [RSI+24],RDX
.L_403234:

            mov RSI,RBX
            mov RDI,R14
            mov RDX,R13
            call .L_401380

            mov RSI,QWORD PTR [R12+16]
            lea RDX,QWORD PTR [RAX+32]
            mov RDI,RBX
            call .L_401380

            mov R14,QWORD PTR [R12+16]
            mov RBX,QWORD PTR [R12+8]
            mov QWORD PTR [RSP+8],RAX
            cmp R14,RBX
            je .L_4032d5

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403270:

            mov RBP,QWORD PTR [RBX+16]
            mov R15,QWORD PTR [RBX+8]
            cmp RBP,R15
            je .L_4032b0

            nop
            nop
            nop
.L_403280:

            mov RDI,QWORD PTR [R15+32]
            lea RAX,QWORD PTR [R15+48]
            cmp RDI,RAX
            je .L_403292

            call free@PLT
.L_403292:

            mov RDI,QWORD PTR [R15]
            lea RAX,QWORD PTR [R15+16]
            cmp RDI,RAX
            je .L_4032a3

            call free@PLT
.L_4032a3:

            add R15,64
            cmp RBP,R15
            jne .L_403280

            mov R15,QWORD PTR [RBX+8]
.L_4032b0:

            test R15,R15
            je .L_4032c7

            mov RDX,QWORD PTR [RBX+24]
            mov RDI,QWORD PTR [RBX]
            mov RSI,R15
            sub RDX,R15
            call .L_4012a0
.L_4032c7:

            add RBX,32
            cmp R14,RBX
            jne .L_403270

            mov RBX,QWORD PTR [R12+8]
.L_4032d5:

            test RBX,RBX
            je .L_4032ee

            mov RDX,QWORD PTR [R12+24]
            mov RDI,QWORD PTR [R12]
            mov RSI,RBX
            sub RDX,RBX
            call .L_4012a0
.L_4032ee:

            mov QWORD PTR [R12+8],R13
            add R13,QWORD PTR [RSP]
            mov RAX,QWORD PTR [RSP+8]
            mov QWORD PTR [R12+24],R13
            mov QWORD PTR [R12+16],RAX
            add RSP,24
.L_40330a:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403318:

            mov EDI,32
            mov QWORD PTR [RSP],32
            jmp .L_4031b1
.L_40332a:

            mov QWORD PTR [RSP+8],RSI
            call malloc@PLT

            mov RSI,QWORD PTR [RSP+8]
            mov R13,RAX
            jmp .L_4031de
.L_403341:

            movabs RDX,576460752303423487
            cmp RCX,RDX
            ja .L_4031a6

            xor R13D,R13D
            test RCX,RCX
            je .L_4031de

            shl RAX,6
            mov QWORD PTR [RSP],RAX
            mov RDI,RAX
            jmp .L_4031b1
.L_403370:

            push R13
            push R12
            lea R13,QWORD PTR [RDI+16]
            push RBP
            push RBX
            mov RBP,RDI
            mov RBX,RSI
            sub RSP,8
.L_403384:

            mov R12,QWORD PTR [RSI+8]
            test R12,R12
            je .L_403490

            lea RSI,QWORD PTR [RIP+.L_414f0f]
            mov RDI,RBX
            call .L_401090

            test EAX,EAX
            je .L_403450

            lea RSI,QWORD PTR [RIP+.L_414f1b]
            mov RDI,RBX
            call .L_401090

            test EAX,EAX
            je .L_4034e8

            lea RSI,QWORD PTR [RIP+.L_414f36]
            mov RDI,RBX
            call .L_401090

            test EAX,EAX
            je .L_403530

            lea RSI,QWORD PTR [RIP+.L_414f51]
            mov RDI,RBX
            call .L_401090

            test EAX,EAX
            je .L_4034b0

            mov RSI,QWORD PTR [RBX]
            lea RDX,QWORD PTR [RSI+R12*1]
            cmp BYTE PTR [RDX-1],62
            je .L_403588
.L_4033fe:

            mov RAX,RDX
            sub RAX,RSI
            cmp RAX,1
            jle .L_403570

            lea RAX,QWORD PTR [RDX-1]
            cmp RAX,RSI
            je .L_40343a

            cmp BYTE PTR [RDX-1],58
            jne .L_403431

            jmp .L_4035c0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403428:

            cmp BYTE PTR [RAX],58
            je .L_4035c0
.L_403431:

            sub RAX,1
            cmp RAX,RSI
            jne .L_403428
.L_40343a:

            mov QWORD PTR [RBP],R13
            mov RDI,RBP
            call .L_401470

            jmp .L_403481
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403450:

            lea RCX,QWORD PTR [RIP+.L_415518]
            mov RDX,R12
            xor ESI,ESI
            mov RDI,RBX
            mov R8D,70
            call .L_401b90

            lea RDX,QWORD PTR [RIP+.L_414faf]
            mov QWORD PTR [RBP],R13
            mov RDI,RBP
            lea RSI,QWORD PTR [RDX-12]
            call .L_401470
.L_403481:

            add RSP,8
.L_403485:

            mov RAX,RBP
            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
          .byte 0x90
.L_403490:

            mov QWORD PTR [RDI],R13
            mov RDX,QWORD PTR [RBX+8]
            mov RSI,QWORD PTR [RSI]
            add RDX,RSI
            call .L_401470

            add RSP,8
            mov RAX,RBP
            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
.L_4034b0:

            lea RCX,QWORD PTR [RIP+.L_4155d0]
            mov RDX,R12
            xor ESI,ESI
            mov RDI,RBX
            mov R8D,50
            call .L_401b90

            lea RDX,QWORD PTR [RIP+.L_414f6d]
            mov QWORD PTR [RBP],R13
            mov RDI,RBP
            lea RSI,QWORD PTR [RDX-14]
            call .L_401470

            jmp .L_403481
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4034e8:

            lea RCX,QWORD PTR [RIP+.L_415560]
            mov RDX,R12
            mov RDI,RBX
            mov R8D,49
            xor ESI,ESI
            call .L_401b90

            lea RDX,QWORD PTR [RIP+.L_414f35]
            mov QWORD PTR [RBP],R13
            mov RDI,RBP
            lea RSI,QWORD PTR [RDX-13]
            call .L_401470

            add RSP,8
.L_40351d:

            mov RAX,RBP
            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403530:

            lea RCX,QWORD PTR [RIP+.L_415598]
            mov RDX,R12
            mov RDI,RBX
            mov R8D,49
            xor ESI,ESI
            call .L_401b90

            lea RDX,QWORD PTR [RIP+.L_414f50]
            mov QWORD PTR [RBP],R13
            mov RDI,RBP
            lea RSI,QWORD PTR [RDX-13]
            call .L_401470

            add RSP,8
            mov RAX,RBP
            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
          .byte 0x90
.L_403570:

            mov QWORD PTR [RBP],R13
            mov QWORD PTR [RBP+8],0
            mov BYTE PTR [RBP+16],0
            jmp .L_403481
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403588:

            mov EDI,1
            jmp .L_40359d
          .byte 0x90
.L_403590:

            xor EDX,EDX
            cmp CL,62
            sete DL
            add EDI,EDX
.L_40359a:

            mov RDX,RAX
.L_40359d:

            lea RAX,QWORD PTR [RDX-1]
            cmp RAX,RSI
            je .L_403570

            movzx ECX,BYTE PTR [RAX-1]
            cmp CL,60
            jne .L_403590

            sub EDI,1
            jne .L_40359a

            sub RDX,2
            jmp .L_4033fe
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4035c0:

            lea RSI,QWORD PTR [RAX+1]
            jmp .L_40343a
.L_4035c9:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4035d0:

            push R15
            push R14
            push R13
            push R12
            mov R13,RCX
            push RBP
            push RBX
            mov R12,RDX
            mov RBX,RDI
            sub RSP,168
.L_4035ea:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+152],RAX
            xor EAX,EAX
            call .L_400fc0

            cmp RDI,RAX
            je .L_403614

            cmp RSI,RAX
            mov RBP,RAX
            je .L_403614

            cmp BYTE PTR [RAX],69
            je .L_403640
.L_403614:

            mov RCX,QWORD PTR [RSP+152]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBX
            jne .L_40388f

            add RSP,168
.L_403635:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_403640:

            cmp QWORD PTR [R12+8],3
            jbe .L_4037a8

            lea R14,QWORD PTR [RSP+16]
            lea RSI,QWORD PTR [RIP+.L_415458]
            mov RDX,R12
            mov RDI,R14
.L_40365e:

            call .L_401910
.L_403663:

            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+24],RAX
            je .L_4038b2

            lea RSI,QWORD PTR [RIP+.L_415221]
            mov EDX,1
            mov RDI,R14
.L_403687:

            call .L_4017e0
.L_40368c:

            lea R15,QWORD PTR [RSP+48]
            lea RDX,QWORD PTR [R15+16]
            mov QWORD PTR [RSP+48],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_403880

            mov QWORD PTR [RSP+48],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+64],RCX
.L_4036b8:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov QWORD PTR [RSP+56],RCX
            mov QWORD PTR [RAX],RDX
            lea RCX,QWORD PTR [R15+16]
            mov QWORD PTR [RAX+8],0
            lea RAX,QWORD PTR [RSP+80]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+80],RDX
            mov RDX,QWORD PTR [RSP+48]
            cmp RDX,RCX
            je .L_403870

            mov QWORD PTR [RSP+80],RDX
            mov RDX,QWORD PTR [RSP+64]
            mov QWORD PTR [RSP+96],RDX
.L_4036ff:

            mov RDX,QWORD PTR [RSP+56]
            mov RSI,RAX
            mov RDI,R13
            mov QWORD PTR [RSP],RAX
            mov QWORD PTR [RSP+56],0
            mov BYTE PTR [RSP+64],0
            mov QWORD PTR [RSP+120],0
            mov QWORD PTR [RSP+88],RDX
            lea RDX,QWORD PTR [R15+16]
            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+48],RDX
            lea RDX,QWORD PTR [RAX+48]
            mov QWORD PTR [RSP+112],RDX
            mov QWORD PTR [RSP+8],RDX
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+112]
            mov RDX,QWORD PTR [RSP+8]
            mov RAX,QWORD PTR [RSP]
            cmp RDI,RDX
            je .L_40376a

            call free@PLT

            mov RAX,QWORD PTR [RSP]
.L_40376a:

            mov RDI,QWORD PTR [RSP+80]
            add RAX,16
            cmp RDI,RAX
            je .L_40377d

            call free@PLT
.L_40377d:

            mov RDI,QWORD PTR [RSP+48]
            add R15,16
            cmp RDI,R15
            je .L_403790

            call free@PLT
.L_403790:

            mov RDI,QWORD PTR [RSP+16]
            add R14,16
            cmp RDI,R14
            je .L_4037b0

            call free@PLT

            jmp .L_4037b0

            nop
            nop
            nop
.L_4037a8:

            mov RDI,R13
            call .L_402550
.L_4037b0:

            cmp BYTE PTR [RBX],110
            mov R14,QWORD PTR [R13+16]
            mov R15,QWORD PTR [R14-56]
            lea RDI,QWORD PTR [R14-64]
            je .L_403808
.L_4037c1:

            mov R8,RBP
            xor EDX,EDX
            mov RCX,RBX
            sub R8,RBX
            mov RSI,R15
.L_4037cf:

            call .L_401b90

            mov RDX,QWORD PTR [R12+8]
            cmp RDX,3
            jbe .L_4037f0
.L_4037df:

            lea RBX,QWORD PTR [RBP+1]
            jmp .L_403614
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4037f0:

            mov RDI,QWORD PTR [R13+16]
            mov RSI,QWORD PTR [R12]
            sub RDI,64
            call .L_4017e0

            jmp .L_4037df
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403808:

            mov RDX,QWORD PTR [R14-64]
            lea RSI,QWORD PTR [RDI+16]
            lea RAX,QWORD PTR [R15+1]
            mov ECX,15
            cmp RDX,RSI
            je .L_403822

            mov RCX,QWORD PTR [R14-48]
.L_403822:

            cmp RAX,RCX
            jbe .L_403845

            xor EDX,EDX
            mov R8D,1
            xor ECX,ECX
            mov RSI,R15
            mov QWORD PTR [RSP],RAX
            call .L_401690

            mov RDX,QWORD PTR [R14-64]
            mov RAX,QWORD PTR [RSP]
.L_403845:

            mov BYTE PTR [RDX+R15*1],45
            mov RDX,QWORD PTR [R14-64]
            add RBX,1
            mov QWORD PTR [R14-56],RAX
            mov BYTE PTR [RDX+RAX*1],0
            mov RAX,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RAX-64]
            mov R15,QWORD PTR [RAX-56]
            jmp .L_4037c1
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403870:

            movdqa XMM0,XMMWORD PTR [RSP+64]
            movaps XMMWORD PTR [RSP+96],XMM0
            jmp .L_4036ff
.L_403880:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+64],XMM0
            jmp .L_4036b8
.L_40388f:

            call __stack_chk_fail@PLT
.L_403894:

            mov RDI,QWORD PTR [RSP+16]
            add R14,16
            mov RBX,RAX
            cmp RDI,R14
            je .L_4038aa

            call free@PLT
.L_4038aa:

            mov RDI,RBX
            call _Unwind_Resume@PLT
.L_4038b2:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
.L_4038b9:

            call _ZSt20__throw_length_errorPKc@PLT
.L_4038be:

            nop
            nop
.L_4038c0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,152
.L_4038d4:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+136],RAX
            xor EAX,EAX
            cmp RDI,RSI
            je .L_403ad0

            mov RBP,RDX
            movsx EDX,BYTE PTR [RDI]
            sub EDX,48
            cmp EDX,9
            ja .L_403ad0

            lea RCX,QWORD PTR [RDI+1]
            cmp RCX,RSI
            je .L_403ad0

            movsx EAX,BYTE PTR [RDI+1]
            movsxd RDX,EDX
            sub EAX,48
            cmp EAX,9
            ja .L_403962

            lea RCX,QWORD PTR [RDI+2]
            lea RDX,QWORD PTR [RDX+RDX*4]
            cdqe 
            cmp RSI,RCX
            lea RDX,QWORD PTR [RAX+RDX*2]
            jne .L_403957

            jmp .L_403ad0
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403940:

            lea RDX,QWORD PTR [RDX+RDX*4]
            add RCX,1
            cdqe 
            cmp RSI,RCX
            lea RDX,QWORD PTR [RAX+RDX*2]
            je .L_403ad0
.L_403957:

            movsx EAX,BYTE PTR [RCX]
            sub EAX,48
            cmp EAX,9
            jbe .L_403940
.L_403962:

            sub RSI,RCX
            cmp RSI,RDX
            jb .L_403ad0

            mov R13,RSP
            lea RBX,QWORD PTR [RCX+RDX*1]
            mov RSI,RCX
            lea RAX,QWORD PTR [R13+16]
            mov RDI,R13
            lea R12,QWORD PTR [RSP+64]
            mov RDX,RBX
            mov QWORD PTR [RSP],RAX
.L_40398b:

            call .L_401470
.L_403990:

            mov RAX,QWORD PTR [RSP+8]
            lea RDX,QWORD PTR [R12+16]
            mov RSI,QWORD PTR [RSP]
            mov RDI,R12
            mov QWORD PTR [RSP+64],RDX
            mov EDX,10
            cmp RAX,10
            cmova RAX,RDX
            lea RDX,QWORD PTR [RSI+RAX*1]
.L_4039b7:

            call .L_401470

            lea RSI,QWORD PTR [RIP+.L_414f6e]
            mov RDI,R12
            call .L_401090

            mov RDI,QWORD PTR [RSP+64]
            mov R14D,EAX
            lea RAX,QWORD PTR [R12+16]
            cmp RDI,RAX
            je .L_4039e2

            call free@PLT
.L_4039e2:

            test R14D,R14D
            je .L_403b00

            mov RAX,QWORD PTR [RSP]
            lea RDX,QWORD PTR [R13+16]
            lea R14,QWORD PTR [RSP+32]
            lea RDI,QWORD PTR [R14+16]
            cmp RAX,RDX
            je .L_403b66

            mov RCX,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP],RDX
            lea RDX,QWORD PTR [R12+16]
            cmp RAX,RDI
            mov RSI,QWORD PTR [RSP+8]
            mov BYTE PTR [RSP+16],0
            mov QWORD PTR [RSP+8],0
            mov QWORD PTR [RSP+64],RDX
            mov QWORD PTR [RSP+48],RCX
            je .L_403b8e

            mov QWORD PTR [RSP+64],RAX
            mov QWORD PTR [RSP+80],RCX
.L_403a43:

            lea RAX,QWORD PTR [R14+16]
            lea R15,QWORD PTR [R12+48]
            mov QWORD PTR [RSP+72],RSI
            mov RDI,RBP
            mov RSI,R12
            mov QWORD PTR [RSP+40],0
            mov QWORD PTR [RSP+32],RAX
            mov BYTE PTR [RSP+48],0
            mov QWORD PTR [RSP+96],R15
            mov QWORD PTR [RSP+104],0
            mov BYTE PTR [RSP+112],0
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+96]
            cmp RDI,R15
            je .L_403a91

            call free@PLT
.L_403a91:

            mov RDI,QWORD PTR [RSP+64]
            add R12,16
            cmp RDI,R12
            je .L_403aa4

            call free@PLT
.L_403aa4:

            mov RDI,QWORD PTR [RSP+32]
            add R14,16
            cmp RDI,R14
            je .L_403ab7
.L_403ab2:

            call free@PLT
.L_403ab7:

            mov RDI,QWORD PTR [RSP]
            add R13,16
            cmp RDI,R13
            je .L_403ad0

            call free@PLT

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403ad0:

            mov RDI,QWORD PTR [RSP+136]
            xor RDI,QWORD PTR FS:[40]
            mov RAX,RBX
            jne .L_403b9e

            add RSP,152
.L_403af1:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_403b00:

            lea RDX,QWORD PTR [RIP+.L_414f8e]
            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            lea RSI,QWORD PTR [RDX-21]
            mov QWORD PTR [RSP+64],RAX
            call .L_401470
.L_403b1d:

            lea R14,QWORD PTR [R12+48]
            mov RDI,RBP
            mov RSI,R12
            mov QWORD PTR [RSP+104],0
            mov BYTE PTR [RSP+112],0
            mov QWORD PTR [RSP+96],R14
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+96]
            cmp RDI,R14
            je .L_403b4f

            call free@PLT
.L_403b4f:

            mov RDI,QWORD PTR [RSP+64]
            add R12,16
            cmp RDI,R12
            jne .L_403ab2

            jmp .L_403ab7
.L_403b66:

            movdqa XMM0,XMMWORD PTR [RSP+16]
            lea RAX,QWORD PTR [R12+16]
            mov RSI,QWORD PTR [RSP+8]
            mov BYTE PTR [RSP+16],0
            movaps XMMWORD PTR [RSP+48],XMM0
            mov QWORD PTR [RSP+8],0
            mov QWORD PTR [RSP+64],RAX
.L_403b8e:

            movdqa XMM0,XMMWORD PTR [RSP+48]
            movaps XMMWORD PTR [RSP+80],XMM0
            jmp .L_403a43
.L_403b9e:

            call __stack_chk_fail@PLT
.L_403ba3:

            mov RDI,QWORD PTR [RSP]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_403bb8

            call free@PLT
.L_403bb8:

            mov RDI,RBX
.L_403bbb:

            call _Unwind_Resume@PLT
.L_403bc0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,104
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+88],RAX
            xor EAX,EAX
            mov RAX,RSI
            sub RAX,RDI
            cmp RAX,1
            jle .L_403bf2

            cmp BYTE PTR [RDI],83
            je .L_403c20
.L_403bf2:

            mov RCX,QWORD PTR [RSP+88]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBX
            jne .L_403f6b

            add RSP,104
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403c20:

            movzx EAX,BYTE PTR [RDI+1]
            mov RBP,RDX
            lea EDX,DWORD PTR [RAX-95]
            cmp DL,20
            ja .L_403e10

            lea RCX,QWORD PTR [RIP+.L_415630]
            movzx EDX,DL
            movsxd RDX,DWORD PTR [RCX+RDX*4]
            add RDX,RCX
            jmp RDX
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403c50:

            lea R12,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RIP+.L_414f1a]
            lea RAX,QWORD PTR [R12+16]
            lea RSI,QWORD PTR [RDX-11]
            mov QWORD PTR [RSP+16],RAX
            nop
            nop
            nop
            nop
            nop
            nop
.L_403c70:

            mov RDI,R12
            lea R13,QWORD PTR [R12+48]
.L_403c78:

            call .L_401470

            mov RDI,RBP
            mov RSI,R12
            mov QWORD PTR [RSP+48],R13
            mov QWORD PTR [RSP+56],0
            mov BYTE PTR [RSP+64],0
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+48]
            cmp RDI,R13
            je .L_403caa

            call free@PLT
.L_403caa:

            mov RDI,QWORD PTR [RSP+16]
            add R12,16
            cmp RDI,R12
            je .L_403cbd

            call free@PLT
.L_403cbd:

            add RBX,2
            jmp .L_403bf2
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403cd0:

            mov RAX,QWORD PTR [RBP+40]
            cmp QWORD PTR [RBP+48],RAX
            je .L_403bf2

            mov R13,QWORD PTR [RAX+8]
            mov R14,QWORD PTR [RAX+16]
            cmp R14,R13
            jne .L_403d49

            jmp .L_403cbd
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403cf0:

            test R12,R12
            je .L_403d34

            lea R15,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [R12],R15
            mov RSI,QWORD PTR [R13]
            mov RDX,QWORD PTR [R13+8]
            add RDX,RSI
            call .L_401470
.L_403d11:

            lea RAX,QWORD PTR [R12+48]
            lea RDI,QWORD PTR [R12+32]
            mov QWORD PTR [R12+32],RAX
            mov RSI,QWORD PTR [R13+32]
            mov RDX,QWORD PTR [R13+40]
            add RDX,RSI
.L_403d2b:

            call .L_401470
.L_403d30:

            mov R12,QWORD PTR [RBP+16]
.L_403d34:

            add R12,64
            mov QWORD PTR [RBP+16],R12
.L_403d3c:

            add R13,64
            cmp R14,R13
            je .L_403cbd
.L_403d49:

            mov R12,QWORD PTR [RBP+16]
            cmp R12,QWORD PTR [RBP+24]
            jne .L_403cf0

            mov RDX,R13
            mov RSI,R12
            mov RDI,RBP
.L_403d5c:

            call .L_402d20

            jmp .L_403d3c
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403d68:

            lea R12,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RIP+.L_414faf]
            lea RAX,QWORD PTR [R12+16]
            lea RSI,QWORD PTR [RDX-17]
            mov QWORD PTR [RSP+16],RAX
            jmp .L_403c70
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403d90:

            lea R12,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RIP+.L_414f5e]
            lea RAX,QWORD PTR [R12+16]
            lea RSI,QWORD PTR [RDX-13]
            mov QWORD PTR [RSP+16],RAX
            jmp .L_403c70
          .byte 0x90
.L_403db0:

            lea R12,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RIP+.L_414f27]
            lea RAX,QWORD PTR [R12+16]
            lea RSI,QWORD PTR [RDX-12]
            mov QWORD PTR [RSP+16],RAX
            jmp .L_403c70
          .byte 0x90
.L_403dd0:

            lea R12,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RIP+.L_414f42]
            lea RAX,QWORD PTR [R12+16]
            lea RSI,QWORD PTR [RDX-12]
            mov QWORD PTR [RSP+16],RAX
            jmp .L_403c70
          .byte 0x90
.L_403df0:

            lea R12,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RIP+.L_414f9d]
            lea RAX,QWORD PTR [R12+16]
            lea RSI,QWORD PTR [RDX-14]
            mov QWORD PTR [RSP+16],RAX
            jmp .L_403c70
          .byte 0x90
.L_403e10:

            movsx R12D,AL
            lea EAX,DWORD PTR [R12-48]
            cmp EAX,9
            ja .L_403f38

            movsxd R12,EAX
.L_403e25:

            lea R13,QWORD PTR [RBX+2]
            cmp RSI,R13
            jne .L_403e6b

            jmp .L_403bf2
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403e38:

            mov EDI,R14D
            mov QWORD PTR [RSP+8],RSI
            call isupper@PLT

            test EAX,EAX
            mov RSI,QWORD PTR [RSP+8]
            je .L_403e85

            lea RAX,QWORD PTR [R12+R12*8]
            sub R14D,65
            movsxd R14,R14D
            lea R12,QWORD PTR [R14+RAX*4+10]
.L_403e5e:

            add R13,1
            cmp RSI,R13
            je .L_403bf2
.L_403e6b:

            movsx R14D,BYTE PTR [R13]
            lea EAX,DWORD PTR [R14-48]
            cmp EAX,9
            ja .L_403e38

            lea RDX,QWORD PTR [R12+R12*8]
            cdqe 
            lea R12,QWORD PTR [RAX+RDX*4]
            jmp .L_403e5e
.L_403e85:

            cmp R14B,95
            jne .L_403bf2

            mov RDX,QWORD PTR [RBP+40]
            mov RAX,QWORD PTR [RBP+48]
            add R12,1
            sub RAX,RDX
            sar RAX,5
            cmp R12,RAX
            jae .L_403bf2

            shl R12,5
            add RDX,R12
            mov R12,QWORD PTR [RDX+8]
            mov R14,QWORD PTR [RDX+16]
            cmp R14,R12
            jne .L_403f1b

            jmp .L_403f62
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_403ec8:

            test RBX,RBX
            je .L_403f0a

            lea R15,QWORD PTR [RBX+16]
            mov RDI,RBX
            mov QWORD PTR [RBX],R15
            mov RSI,QWORD PTR [R12]
            mov RDX,QWORD PTR [R12+8]
            add RDX,RSI
            call .L_401470
.L_403ee8:

            lea RAX,QWORD PTR [RBX+48]
            lea RDI,QWORD PTR [RBX+32]
            mov QWORD PTR [RBX+32],RAX
            mov RSI,QWORD PTR [R12+32]
            mov RDX,QWORD PTR [R12+40]
            add RDX,RSI
.L_403f01:

            call .L_401470
.L_403f06:

            mov RBX,QWORD PTR [RBP+16]
.L_403f0a:

            add RBX,64
            mov QWORD PTR [RBP+16],RBX
.L_403f12:

            add R12,64
            cmp R14,R12
            je .L_403f62
.L_403f1b:

            mov RBX,QWORD PTR [RBP+16]
            cmp RBX,QWORD PTR [RBP+24]
            jne .L_403ec8

            mov RDX,R12
            mov RSI,RBX
            mov RDI,RBP
.L_403f2e:

            call .L_402d20

            jmp .L_403f12
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403f38:

            mov EDI,R12D
            mov QWORD PTR [RSP+8],RSI
            call isupper@PLT

            test EAX,EAX
            mov RSI,QWORD PTR [RSP+8]
            je .L_403bf2

            sub R12D,65
            movsxd R12,R12D
            add R12,10
            jmp .L_403e25
.L_403f62:

            lea RBX,QWORD PTR [R13+1]
            jmp .L_403bf2
.L_403f6b:

            call __stack_chk_fail@PLT
.L_403f70:

            mov RDI,QWORD PTR [RBX]
            mov RBP,RAX
            cmp R15,RDI
            je .L_403f80

            call free@PLT
.L_403f80:

            mov RDI,RBP
            call _Unwind_Resume@PLT
.L_403f88:

            mov RDI,QWORD PTR [R12]
            mov RBX,RAX
            cmp R15,RDI
            je .L_403f99

            call free@PLT
.L_403f99:

            mov RDI,RBX
            call _Unwind_Resume@PLT
.L_403fa1:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403fb0:

            push R15
            push R14
            mov R8,RDI
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,152
.L_403fc4:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+136],RAX
            xor EAX,EAX
            mov RAX,RSI
            sub RAX,RDI
            cmp RAX,2
            jle .L_403fe8

            cmp BYTE PTR [RDI],102
            je .L_404018
.L_403fe8:

            mov RCX,QWORD PTR [RSP+136]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,R8
            jne .L_4042bd

            add RSP,152
.L_404009:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_404018:

            movzx EAX,BYTE PTR [RDI+1]
            mov R9,RSI
            mov RBX,RDX
            cmp AL,112
            je .L_404170

            cmp AL,76
            jne .L_403fe8

            lea RDI,QWORD PTR [RDI+2]
            call .L_400fc0

            cmp RSI,RAX
            je .L_403fe8

            cmp BYTE PTR [RAX],112
            jne .L_403fe8

            lea R10,QWORD PTR [RAX+1]
            cmp RSI,R10
            je .L_404074

            movzx EDX,BYTE PTR [RAX+1]
            cmp DL,114
            jne .L_40405b

            movzx EDX,BYTE PTR [RAX+2]
            lea R10,QWORD PTR [RAX+2]
.L_40405b:

            cmp DL,86
            jne .L_404069

            movzx EDX,BYTE PTR [R10+1]
            add R10,1
.L_404069:

            xor EAX,EAX
            cmp DL,75
            sete AL
            add R10,RAX
.L_404074:

            mov RSI,R9
            mov RDI,R10
            call .L_400fc0

            cmp R9,RAX
            mov RBP,RAX
            je .L_403fe8

            cmp BYTE PTR [RAX],95
            jne .L_403fe8

            mov R12,RSP
            mov RDX,RBP
            mov RSI,R10
            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            lea R13,QWORD PTR [RSP+32]
            mov QWORD PTR [RSP],RAX
.L_4040ae:

            call .L_401470
.L_4040b3:

            lea RSI,QWORD PTR [RIP+.L_414fb0]
            mov RDX,R12
            mov RDI,R13
.L_4040c0:

            call .L_402420
.L_4040c5:

            lea R14,QWORD PTR [RSP+64]
            lea RDX,QWORD PTR [R13+16]
            lea RAX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+64],RAX
            mov RAX,QWORD PTR [RSP+32]
            cmp RAX,RDX
            je .L_4042ad

            mov QWORD PTR [RSP+64],RAX
            mov RAX,QWORD PTR [RSP+48]
            mov QWORD PTR [RSP+80],RAX
.L_4040f4:

            mov RAX,QWORD PTR [RSP+40]
            add R13,16
            mov RSI,R14
            mov RDI,RBX
            mov QWORD PTR [RSP+32],R13
            mov QWORD PTR [RSP+40],0
            mov BYTE PTR [RSP+48],0
            mov QWORD PTR [RSP+104],0
            mov QWORD PTR [RSP+72],RAX
            lea RAX,QWORD PTR [R14+48]
            mov BYTE PTR [RSP+112],0
            mov QWORD PTR [RSP+96],RAX
            call .L_401ee0

            mov RDI,R14
            call .L_401050

            mov RDI,QWORD PTR [RSP+32]
            cmp RDI,R13
            je .L_40414e
.L_404149:

            call free@PLT
.L_40414e:

            mov RDI,QWORD PTR [RSP]
            add R12,16
            cmp RDI,R12
            je .L_404160

            call free@PLT
.L_404160:

            lea R8,QWORD PTR [RBP+1]
            jmp .L_403fe8
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404170:

            lea R10,QWORD PTR [RDI+2]
            cmp R10,RSI
            je .L_4041a1

            movzx EAX,BYTE PTR [RDI+2]
            cmp AL,114
            jne .L_404189

            movzx EAX,BYTE PTR [RDI+3]
            lea R10,QWORD PTR [RDI+3]
.L_404189:

            cmp AL,86
            jne .L_404196

            movzx EAX,BYTE PTR [R10+1]
            add R10,1
.L_404196:

            cmp AL,75
            sete AL
            movzx EAX,AL
            add R10,RAX
.L_4041a1:

            mov RSI,R9
            mov RDI,R10
            call .L_400fc0

            cmp R9,RAX
            mov RBP,RAX
            je .L_403fe8

            cmp BYTE PTR [RAX],95
            jne .L_403fe8

            mov R12,RSP
            mov RDX,RBP
            mov RSI,R10
            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            lea R13,QWORD PTR [RSP+32]
            mov QWORD PTR [RSP],RAX
.L_4041db:

            call .L_401470
.L_4041e0:

            lea RSI,QWORD PTR [RIP+.L_414fb0]
            mov RDX,R12
            mov RDI,R13
.L_4041ed:

            call .L_402420
.L_4041f2:

            lea R14,QWORD PTR [RSP+64]
            lea RDX,QWORD PTR [R13+16]
            lea RAX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+64],RAX
            mov RAX,QWORD PTR [RSP+32]
            cmp RAX,RDX
            je .L_40429d

            mov QWORD PTR [RSP+64],RAX
            mov RAX,QWORD PTR [RSP+48]
            mov QWORD PTR [RSP+80],RAX
.L_404221:

            mov RAX,QWORD PTR [RSP+40]
            lea R15,QWORD PTR [R14+48]
            mov RDI,RBX
            mov RSI,R14
            mov QWORD PTR [RSP+40],0
            mov BYTE PTR [RSP+48],0
            mov QWORD PTR [RSP+96],R15
            mov QWORD PTR [RSP+104],0
            mov QWORD PTR [RSP+72],RAX
            lea RAX,QWORD PTR [R13+16]
            mov BYTE PTR [RSP+112],0
            mov QWORD PTR [RSP+32],RAX
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+96]
            cmp RDI,R15
            je .L_404273

            call free@PLT
.L_404273:

            mov RDI,QWORD PTR [RSP+64]
            add R14,16
            cmp RDI,R14
            je .L_404286

            call free@PLT
.L_404286:

            mov RDI,QWORD PTR [RSP+32]
            add R13,16
            cmp RDI,R13
            jne .L_404149

            jmp .L_40414e
.L_40429d:

            movdqa XMM0,XMMWORD PTR [RSP+48]
            movaps XMMWORD PTR [RSP+80],XMM0
            jmp .L_404221
.L_4042ad:

            movdqa XMM0,XMMWORD PTR [RSP+48]
            movaps XMMWORD PTR [RSP+80],XMM0
            jmp .L_4040f4
.L_4042bd:

            call __stack_chk_fail@PLT
.L_4042c2:

            mov RDI,QWORD PTR [RSP]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_4042d7

            call free@PLT
.L_4042d7:

            mov RDI,RBX
.L_4042da:

            call _Unwind_Resume@PLT
.L_4042df:

            jmp .L_4042c2
.L_4042e1:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4042f0:

            push R13
            push R12
            push RBP
            push RBX
            sub RSP,88
.L_4042fa:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+72],RAX
            xor EAX,EAX
            cmp RDI,RSI
            mov RAX,RDI
            je .L_4043af

            movzx EAX,BYTE PTR [RDI]
            mov RBP,RDI
            sub EAX,68
            cmp AL,54
            ja .L_404470

            mov R12,RDX
            lea RDX,QWORD PTR [RIP+.L_415684]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_404340:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_415042]
            lea RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP],RAX
.L_404352:

            lea RSI,QWORD PTR [RDX-3]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_404360:

            mov RDI,RBX
            lea R13,QWORD PTR [RBX+48]
            call .L_401470

            mov RDI,R12
            mov RSI,RBX
            mov QWORD PTR [RSP+32],R13
            mov QWORD PTR [RSP+40],0
            mov BYTE PTR [RSP+48],0
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+32]
            cmp RDI,R13
            je .L_404399

            call free@PLT
.L_404399:

            mov RDI,QWORD PTR [RSP]
            add RBX,16
            cmp RDI,RBX
            je .L_4043ab

            call free@PLT
.L_4043ab:

            lea RAX,QWORD PTR [RBP+1]
.L_4043af:

            mov RCX,QWORD PTR [RSP+72]
            xor RCX,QWORD PTR FS:[40]
            jne .L_4047d1

            add RSP,88
.L_4043c7:

            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
          .byte 0x66
          .byte 0x90
.L_4043d0:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_41500f]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-18]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4043f0:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_41500f]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404410:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_414fbf]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-7]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404430:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_414fb7]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-4]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404450:

            lea RBX,QWORD PTR [RDI+1]
            mov RDX,R12
            mov RDI,RBX
            call .L_4038c0

            cmp RBX,RAX
            jne .L_4043af

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_404470:

            mov RAX,RBP
            jmp .L_4043af
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404480:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_414fe1]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-14]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4044a0:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_414fe1]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-5]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4044c0:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_415021]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-17]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4044e0:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_415021]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-8]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404500:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_414ffc]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-13]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404520:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_414ffc]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-4]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404540:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_414fee]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-12]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404560:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_414fee]
            lea RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP],RAX
            jmp .L_404352
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404580:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_414fd2]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-13]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4045a0:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_41503e]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4045c0:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_415027]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-5]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4045e0:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_415033]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-11]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404600:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_415033]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-6]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404620:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_414fd2]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-4]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404640:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_414fc4]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-4]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404660:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_414fd2]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-11]
            mov QWORD PTR [RSP],RAX
            jmp .L_404360
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404680:

            lea RAX,QWORD PTR [RDI+1]
            cmp RSI,RAX
            je .L_404470

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,97
            cmp AL,18
            ja .L_404470

            lea RDX,QWORD PTR [RIP+.L_415760]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
.L_4046af:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_41507d]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-8]
            mov QWORD PTR [RSP],RAX
            nop
            nop
            nop
.L_4046c8:

            mov RDI,RBX
            call .L_401470

            lea RAX,QWORD PTR [RBX+48]
            mov RSI,RBX
            mov RDI,R12
            mov QWORD PTR [RSP+40],0
            mov BYTE PTR [RSP+48],0
            mov QWORD PTR [RSP+32],RAX
            call .L_401ee0

            mov RDI,RBX
            call .L_401050

            lea RAX,QWORD PTR [RBP+2]
            jmp .L_4043af
.L_404703:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_4150a0]
            lea RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP],RAX
.L_404715:

            lea RSI,QWORD PTR [RDX-14]
            jmp .L_4046c8
.L_40471b:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_415074]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-8]
            mov QWORD PTR [RSP],RAX
            jmp .L_4046c8
.L_404733:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_41506b]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_4046c8
.L_40474e:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_415061]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_4046c8
.L_404769:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_415057]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_4046c8
.L_404784:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_41504c]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_4046c8
.L_40479f:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_415091]
            lea RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP],RAX
            jmp .L_404715
.L_4047b6:

            mov RBX,RSP
            lea RDX,QWORD PTR [RIP+.L_415082]
            lea RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RDX-4]
            mov QWORD PTR [RSP],RAX
            jmp .L_4046c8
.L_4047d1:

            call __stack_chk_fail@PLT
.L_4047d6:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4047e0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,120
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+104],RAX
            xor EAX,EAX
            mov RAX,RSI
            sub RAX,RDI
            cmp RAX,1
            jle .L_404812

            cmp BYTE PTR [RDI],84
            je .L_404840
.L_404812:

            mov RCX,QWORD PTR [RSP+104]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBX
            jne .L_404b7b

            add RSP,120
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404840:

            mov RBP,RDX
            movsx EDX,BYTE PTR [RDI+1]
            cmp DL,95
            je .L_4048b0

            sub EDX,48
            cmp EDX,9
            ja .L_404812

            lea R12,QWORD PTR [RDI+2]
            movsxd RDX,EDX
            cmp RSI,R12
            je .L_404812

            movsx EAX,BYTE PTR [RDI+2]
            lea EDI,DWORD PTR [RAX-48]
            mov ECX,EAX
            cmp EDI,9
            jbe .L_40488b

            jmp .L_404960
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404878:

            movsx EAX,BYTE PTR [R12]
            lea EDI,DWORD PTR [RAX-48]
            mov ECX,EAX
            cmp EDI,9
            ja .L_404960
.L_40488b:

            sub EAX,48
            lea RDX,QWORD PTR [RDX+RDX*4]
            add R12,1
            cdqe 
            cmp RSI,R12
            lea RDX,QWORD PTR [RAX+RDX*2]
            jne .L_404878

            jmp .L_404812
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4048b0:

            mov RAX,QWORD PTR [RBP+80]
            cmp QWORD PTR [RBP+72],RAX
            je .L_404812

            mov RDX,QWORD PTR [RAX-24]
            cmp RDX,QWORD PTR [RAX-16]
            je .L_404a30

            mov R13,QWORD PTR [RDX+8]
            mov R14,QWORD PTR [RDX+16]
            cmp R13,R14
            jne .L_404945

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4048e0:

            add RBX,2
            jmp .L_404812
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4048f0:

            test R12,R12
            je .L_404934

            lea R15,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [R12],R15
            mov RSI,QWORD PTR [R13]
            mov RDX,QWORD PTR [R13+8]
            add RDX,RSI
.L_40490c:

            call .L_401470
.L_404911:

            lea RAX,QWORD PTR [R12+48]
            lea RDI,QWORD PTR [R12+32]
            mov QWORD PTR [R12+32],RAX
            mov RSI,QWORD PTR [R13+32]
            mov RDX,QWORD PTR [R13+40]
            add RDX,RSI
.L_40492b:

            call .L_401470
.L_404930:

            mov R12,QWORD PTR [RBP+16]
.L_404934:

            add R12,64
            mov QWORD PTR [RBP+16],R12
.L_40493c:

            add R13,64
            cmp R14,R13
            je .L_4048e0
.L_404945:

            mov R12,QWORD PTR [RBP+16]
            cmp R12,QWORD PTR [RBP+24]
            jne .L_4048f0

            mov RDX,R13
            mov RSI,R12
            mov RDI,RBP
.L_404958:

            call .L_402d20

            jmp .L_40493c
          .byte 0x90
.L_404960:

            cmp CL,95
            jne .L_404812

            mov RAX,QWORD PTR [RBP+80]
            cmp RAX,QWORD PTR [RBP+72]
            je .L_404812

            mov RCX,QWORD PTR [RAX-24]
            mov RAX,QWORD PTR [RAX-16]
            add RDX,1
            sub RAX,RCX
            sar RAX,5
            cmp RDX,RAX
            jae .L_404aa2

            shl RDX,5
            add RDX,RCX
            mov R13,QWORD PTR [RDX+8]
            mov R14,QWORD PTR [RDX+16]
            cmp R14,R13
            jne .L_404a00

            jmp .L_404a20
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4049b0:

            test RBX,RBX
            je .L_4049ef

            lea R15,QWORD PTR [RBX+16]
            mov RDI,RBX
            mov QWORD PTR [RBX],R15
            mov RSI,QWORD PTR [R13]
            mov RDX,QWORD PTR [R13+8]
            add RDX,RSI
            call .L_401470
.L_4049cf:

            lea RAX,QWORD PTR [RBX+48]
            lea RDI,QWORD PTR [RBX+32]
            mov QWORD PTR [RBX+32],RAX
            mov RSI,QWORD PTR [R13+32]
            mov RDX,QWORD PTR [R13+40]
            add RDX,RSI
.L_4049e6:

            call .L_401470
.L_4049eb:

            mov RBX,QWORD PTR [RBP+16]
.L_4049ef:

            add RBX,64
            mov QWORD PTR [RBP+16],RBX
.L_4049f7:

            add R13,64
            cmp R14,R13
            je .L_404a20
.L_404a00:

            mov RBX,QWORD PTR [RBP+16]
            cmp RBX,QWORD PTR [RBP+24]
            jne .L_4049b0

            mov RDX,R13
            mov RSI,RBX
            mov RDI,RBP
.L_404a13:

            call .L_402d20

            jmp .L_4049f7
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404a20:

            lea RBX,QWORD PTR [R12+1]
            jmp .L_404812
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404a30:

            lea R13,QWORD PTR [RSP+32]
            lea RDX,QWORD PTR [RIP+.L_4150a3]
            lea RAX,QWORD PTR [R13+16]
            lea RSI,QWORD PTR [RDX-2]
            mov RDI,R13
            lea R12,QWORD PTR [R13+48]
            mov QWORD PTR [RSP+32],RAX
            call .L_401470

            mov RDI,RBP
            mov RSI,R13
            mov QWORD PTR [RSP+64],R12
            mov QWORD PTR [RSP+72],0
            mov BYTE PTR [RSP+80],0
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+64]
            cmp RDI,R12
            je .L_404a82

            call free@PLT
.L_404a82:

            mov RDI,QWORD PTR [RSP+32]
            add R13,16
            cmp RDI,R13
            je .L_404a95

            call free@PLT
.L_404a95:

            add RBX,2
            mov BYTE PTR [RBP+110],1
            jmp .L_404812
.L_404aa2:

            mov R14,RSP
            add R12,1
            lea R13,QWORD PTR [RSP+32]
            lea R15,QWORD PTR [R14+16]
            mov RDX,R12
            mov RSI,RBX
            mov RDI,R14
            mov QWORD PTR [RSP],R15
            call .L_401470

            lea RAX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+32],RAX
            mov RAX,QWORD PTR [RSP]
            cmp RAX,R15
            je .L_404b6b

            mov QWORD PTR [RSP+32],RAX
            mov RAX,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+48],RAX
.L_404ae9:

            mov RAX,QWORD PTR [RSP+8]
            lea RBX,QWORD PTR [R13+48]
            mov RDI,RBP
            mov RSI,R13
            mov QWORD PTR [RSP+8],0
            mov BYTE PTR [RSP+16],0
            mov QWORD PTR [RSP+64],RBX
            mov QWORD PTR [RSP+72],0
            mov QWORD PTR [RSP+40],RAX
            lea RAX,QWORD PTR [R14+16]
            mov BYTE PTR [RSP+80],0
            mov QWORD PTR [RSP],RAX
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+64]
            cmp RDI,RBX
            je .L_404b3a

            call free@PLT
.L_404b3a:

            mov RDI,QWORD PTR [RSP+32]
            add R13,16
            cmp RDI,R13
            je .L_404b4d

            call free@PLT
.L_404b4d:

            mov RDI,QWORD PTR [RSP]
            lea RAX,QWORD PTR [R14+16]
            cmp RDI,RAX
            je .L_404b5f

            call free@PLT
.L_404b5f:

            mov BYTE PTR [RBP+110],1
            mov RBX,R12
            jmp .L_404812
.L_404b6b:

            movdqa XMM0,XMMWORD PTR [RSP+16]
            movaps XMMWORD PTR [RSP+48],XMM0
            jmp .L_404ae9
.L_404b7b:

            call __stack_chk_fail@PLT
.L_404b80:

            mov RDI,QWORD PTR [R12]
            mov RBX,RAX
            cmp R15,RDI
            je .L_404b91

            call free@PLT
.L_404b91:

            mov RDI,RBX
            call _Unwind_Resume@PLT
.L_404b99:

            mov RDI,QWORD PTR [RBX]
            mov RBP,RAX
            cmp R15,RDI
            je .L_404ba9

            call free@PLT
.L_404ba9:

            mov RDI,RBP
            call _Unwind_Resume@PLT
.L_404bb1:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_404bc0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBP,RDI
            sub RSP,280
.L_404bd4:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+264],RAX
            xor EAX,EAX
            cmp RDI,RSI
            je .L_404e40

            mov R15D,DWORD PTR [RDX+104]
            mov R13,RSI
            movzx ESI,BYTE PTR [RDX+109]
            mov RBX,RDX
            lea EAX,DWORD PTR [R15+1]
            mov BYTE PTR [RSP+38],SIL
            cmp EAX,1
            mov DWORD PTR [RDX+104],EAX
            jbe .L_404c13

            mov BYTE PTR [RDX+109],1
.L_404c13:

            movzx EAX,BYTE PTR [RBP]
            cmp AL,71
            je .L_404db0

            cmp AL,84
            je .L_404db0

            lea RCX,QWORD PTR [RSP+95]
            mov RDX,RBX
            mov RSI,R13
            mov RDI,RBP
            mov BYTE PTR [RSP+95],0
.L_404c3a:

            call .L_4059b0
.L_404c3f:

            cmp RBP,RAX
            mov R12,RAX
            je .L_404e03

            cmp R13,RAX
            je .L_404e03

            movzx EAX,BYTE PTR [RAX]
            cmp AL,69
            setne DL
            cmp AL,46
            setne AL
            and DL,AL
            mov BYTE PTR [RSP+39],DL
            je .L_404e03

            mov EAX,DWORD PTR [RBX+96]
            mov R14,QWORD PTR [RBX+16]
            cmp QWORD PTR [RBX+8],R14
            mov BYTE PTR [RBX+109],0
            mov QWORD PTR [RSP+168],0
            mov BYTE PTR [RSP+176],0
            mov DWORD PTR [RSP+56],EAX
            mov EAX,DWORD PTR [RBX+100]
            mov DWORD PTR [RSP+60],EAX
            lea RAX,QWORD PTR [RSP+160]
            mov QWORD PTR [RSP+48],RAX
            lea RAX,QWORD PTR [RSP+176]
            mov QWORD PTR [RSP+160],RAX
            je .L_404e86

            mov RAX,QWORD PTR [R14-56]
            test RAX,RAX
            mov QWORD PTR [RSP+8],RAX
            je .L_404e86

            cmp BYTE PTR [RBX+108],0
            jne .L_404ce1

            cmp BYTE PTR [RSP+95],0
            jne .L_405639
.L_404ce1:

            mov RAX,QWORD PTR [RSP+8]
            lea RDI,QWORD PTR [R14-64]
            mov EDX,15
            lea RCX,QWORD PTR [RDI+16]
            add RAX,1
            mov QWORD PTR [RSP+16],RAX
            mov RAX,QWORD PTR [R14-64]
            cmp RAX,RCX
            je .L_404d09

            mov RDX,QWORD PTR [R14-48]
.L_404d09:

            cmp QWORD PTR [RSP+16],RDX
            ja .L_40561c
.L_404d14:

            mov RSI,QWORD PTR [RSP+8]
            mov RCX,QWORD PTR [RSP+16]
            cmp R12,R13
            mov BYTE PTR [RAX+RSI*1],40
            mov RAX,QWORD PTR [R14-64]
            mov QWORD PTR [R14-56],RCX
            mov BYTE PTR [RAX+RCX*1],0
            mov R14,QWORD PTR [RBX+16]
            mov RAX,QWORD PTR [RBX+8]
            je .L_404d46

            cmp BYTE PTR [R12],118
            je .L_405554
.L_404d46:

            lea RCX,QWORD PTR [RSP+224]
            lea RSI,QWORD PTR [RSP+240]
            mov QWORD PTR [RSP+72],RCX
            mov QWORD PTR [RSP+16],RSI
.L_404d60:

            sub R14,RAX
            mov RDX,RBX
            mov RSI,R13
            sar R14,6
            mov RDI,R12
            mov QWORD PTR [RSP+8],R14
.L_404d75:

            call .L_4073b0
.L_404d7a:

            mov R14,QWORD PTR [RBX+16]
            mov RSI,RAX
            mov QWORD PTR [RSP+40],RAX
            mov RAX,QWORD PTR [RBX+8]
            mov RDX,R14
            sub RDX,RAX
            sar RDX,6
            cmp R12,RSI
            je .L_40555e

            cmp QWORD PTR [RSP+8],RDX
            jb .L_4052d8
.L_404da8:

            mov R12,QWORD PTR [RSP+40]
            jmp .L_404d60
          .byte 0x90
.L_404db0:

            mov RDX,R13
            sub RDX,RBP
            cmp RDX,2
            jle .L_404e00

            cmp AL,71
            je .L_404ea0

            cmp AL,84
            jne .L_404e00

            movzx EAX,BYTE PTR [RBP+1]
            sub EAX,67
            cmp AL,32
            ja .L_405270

            lea RDX,QWORD PTR [RIP+.L_4157ac]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
.L_404dea:

            mov RDI,QWORD PTR [RSP+96]
            add R13,16
            cmp RDI,R13
            je .L_404e00

            call free@PLT

            nop
            nop
            nop
.L_404e00:

            mov R12,RBP
.L_404e03:

            movzx EAX,BYTE PTR [RSP+38]
            mov DWORD PTR [RBX+104],R15D
            mov BYTE PTR [RBX+109],AL
.L_404e0f:

            mov RCX,QWORD PTR [RSP+264]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,R12
            jne .L_40588b

            add RSP,280
.L_404e30:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404e40:

            mov R12,RDI
            jmp .L_404e0f
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_404e48:

            mov RBX,RBP
            mov RBP,QWORD PTR [RSP+8]
.L_404e50:

            mov RAX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+192]
            add RAX,16
            cmp RDI,RAX
            je .L_404e6b
.L_404e66:

            call free@PLT
.L_404e6b:

            mov RAX,QWORD PTR [RSP+48]
            mov RDI,QWORD PTR [RSP+160]
            add RAX,16
            cmp RDI,RAX
            je .L_404e86

            call free@PLT
.L_404e86:

            movzx EAX,BYTE PTR [RSP+38]
            mov DWORD PTR [RBX+104],R15D
            mov R12,RBP
            mov BYTE PTR [RBX+109],AL
            jmp .L_404e0f
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404ea0:

            movzx EAX,BYTE PTR [RBP+1]
            cmp AL,82
            je .L_404ef8

            cmp AL,86
            jne .L_404e00

            lea R14,QWORD PTR [RBP+2]
            xor ECX,ECX
            mov RDX,RBX
            mov RSI,R13
            mov RDI,R14
.L_404ebf:

            call .L_4059b0

            cmp R14,RAX
            mov R12,RAX
            je .L_404e00

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_404e00

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_41511d]
            xor ESI,ESI
            call .L_401e90

            jmp .L_404e03
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_404ef8:

            lea R14,QWORD PTR [RBP+2]
            xor ECX,ECX
            mov RDX,RBX
            mov RSI,R13
            mov RDI,R14
            call .L_4059b0

            cmp R14,RAX
            mov R12,RAX
            je .L_404e00

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_404e00

            lea RDI,QWORD PTR [RAX-64]
            lea RCX,QWORD PTR [RIP+.L_415131]
            mov R8D,24
            xor EDX,EDX
            xor ESI,ESI
            call .L_401b90

            jmp .L_404e03
.L_404f45:

            lea R12,QWORD PTR [RBP+2]
            mov RSI,R13
            mov RDI,R12
            call .L_4011c0

            cmp R12,RAX
            mov R11,RAX
            je .L_404e00

            mov RSI,R13
            mov RDI,RAX
            call .L_4011c0

            cmp R11,RAX
            mov R14,RAX
            je .L_404e00

            mov RDX,RBX
            mov RSI,R13
            mov RDI,RAX
            call .L_404bc0

            cmp R14,RAX
            mov R12,RAX
            je .L_404e00

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_404e00

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_4150ce]
            xor ESI,ESI
            call .L_401e90

            jmp .L_404e03
.L_404fb6:

            lea R14,QWORD PTR [RBP+2]
            mov RDX,RBX
            mov RSI,R13
            mov RDI,R14
            call .L_4073b0

            cmp R14,RAX
            mov R12,RAX
            je .L_404e00

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_404e00

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_4150f6]
            xor ESI,ESI
            call .L_401e90

            jmp .L_404e03
.L_404ff9:

            lea R14,QWORD PTR [RBP+2]
            mov RDX,RBX
            mov RSI,R13
            mov RDI,R14
            call .L_4073b0

            cmp R14,RAX
            mov R12,RAX
            je .L_404e00

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_404e00

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_4150a4]
            xor ESI,ESI
            call .L_401e90

            jmp .L_404e03
.L_40503c:

            lea R14,QWORD PTR [RBP+2]
            mov RDX,RBX
            mov RSI,R13
            mov RDI,R14
            call .L_4073b0

            cmp R14,RAX
            mov R12,RAX
            je .L_404e00

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_404e00

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_4150bb]
            xor ESI,ESI
            call .L_401e90

            jmp .L_404e03
.L_40507f:

            lea R14,QWORD PTR [RBP+2]
            mov RDX,RBX
            mov RSI,R13
            mov RDI,R14
            call .L_4073b0

            cmp R14,RAX
            mov R12,RAX
            je .L_404e00

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_404e00

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_4150ad]
            xor ESI,ESI
            call .L_401e90

            jmp .L_404e03
.L_4050c2:

            lea R12,QWORD PTR [RBP+2]
            mov RDX,RBX
            mov RSI,R13
            mov RDI,R12
            call .L_4073b0

            cmp R12,RAX
            mov R8,RAX
            je .L_404e00

            mov RSI,R13
            mov RDI,RAX
            call .L_400fc0

            cmp R8,RAX
            je .L_404e00

            cmp R13,RAX
            je .L_404e00

            cmp BYTE PTR [RAX],95
            jne .L_404e00

            lea R14,QWORD PTR [RAX+1]
            mov RDX,RBX
            mov RDI,R14
            call .L_4073b0

            cmp R14,RAX
            mov R12,RAX
            je .L_404e00

            mov RSI,QWORD PTR [RBX+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [RBX+8]
            cmp RAX,127
            jbe .L_404e00

            lea R13,QWORD PTR [RSP+96]
            sub RSI,64
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R13
            call .L_4024a0
.L_40514b:

            mov RAX,QWORD PTR [RBX+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBX+16],RDI
            call .L_401050

            mov RSI,QWORD PTR [RBX+16]
            cmp RSI,QWORD PTR [RBX+8]
            je .L_404dea

            lea RAX,QWORD PTR [RSP+192]
            sub RSI,64
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,RAX
            mov QWORD PTR [RSP+24],RAX
.L_405182:

            call .L_4024a0
.L_405187:

            lea RBP,QWORD PTR [RSP+128]
            lea RSI,QWORD PTR [RIP+.L_4150e9]
            mov RDX,R13
            mov RDI,RBP
.L_40519c:

            call .L_402420
.L_4051a1:

            lea RCX,QWORD PTR [RSP+160]
            lea RDX,QWORD PTR [RIP+.L_415102]
            mov RSI,RBP
            mov RDI,RCX
            mov QWORD PTR [RSP+48],RCX
.L_4051bb:

            call .L_4028e0
.L_4051c0:

            lea R14,QWORD PTR [RSP+224]
            mov RDX,QWORD PTR [RSP+24]
            mov RSI,QWORD PTR [RSP+48]
            mov RDI,R14
.L_4051d5:

            call .L_4024a0
.L_4051da:

            mov RAX,QWORD PTR [RBX+16]
            mov RSI,R14
            add R14,16
            lea RDI,QWORD PTR [RAX-64]
            call .L_401a50

            mov RDI,QWORD PTR [RSP+224]
            cmp RDI,R14
            je .L_405200

            call free@PLT
.L_405200:

            mov RAX,QWORD PTR [RSP+48]
            mov RDI,QWORD PTR [RSP+160]
            add RAX,16
            cmp RDI,RAX
            je .L_40521b

            call free@PLT
.L_40521b:

            mov RDI,QWORD PTR [RSP+128]
            add RBP,16
            cmp RDI,RBP
            je .L_405231

            call free@PLT
.L_405231:

            mov RAX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+192]
            add RAX,16
            cmp RDI,RAX
            je .L_40524c

            call free@PLT
.L_40524c:

            mov RDI,QWORD PTR [RSP+96]
            add R13,16
            cmp RDI,R13
            je .L_404e03

            call free@PLT

            jmp .L_404e03
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405270:

            lea R11,QWORD PTR [RBP+1]
            mov RSI,R13
            mov RDI,R11
            call .L_4011c0

            cmp R11,RAX
            mov R14,RAX
            je .L_404e00

            mov RDX,RBX
            mov RSI,R13
            mov RDI,RAX
.L_405294:

            call .L_404bc0

            cmp R14,RAX
            mov R12,RAX
            je .L_404e00

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_404e00

            cmp BYTE PTR [RBP+1],118
            lea RDI,QWORD PTR [RAX-64]
            je .L_40583e

            lea RDX,QWORD PTR [RIP+.L_415107]
            xor ESI,ESI
            call .L_401e90
.L_4052cf:

            jmp .L_404e03
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4052d8:

            lea RCX,QWORD PTR [RSP+192]
            lea R14,QWORD PTR [RDX-1]
            mov QWORD PTR [RSP+200],0
            mov BYTE PTR [RSP+208],0
            sub R14,QWORD PTR [RSP+8]
            xor R12D,R12D
            mov QWORD PTR [RSP+24],RCX
            lea RCX,QWORD PTR [RSP+208]
            mov QWORD PTR [RSP+192],RCX
            jmp .L_4053c8
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405320:

            mov QWORD PTR [RSP+224],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+240],RCX
.L_405334:

            mov RCX,QWORD PTR [RAX+8]
            mov RDI,QWORD PTR [RSP+24]
            mov QWORD PTR [RSP+232],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RDX,QWORD PTR [RSP+232]
            mov RSI,QWORD PTR [RSP+224]
.L_405364:

            call .L_4017e0
.L_405369:

            mov RDI,QWORD PTR [RSP+224]
            cmp RDI,QWORD PTR [RSP+16]
            je .L_40537d

            call free@PLT
.L_40537d:

            cmp R12,R14
            je .L_405460

            mov RAX,QWORD PTR [RSP+200]
            test RAX,RAX
            je .L_4053c0

            movabs RCX,9223372036854775807
            sub RCX,RAX
            cmp RCX,1
            jbe .L_40591d

            mov RDI,QWORD PTR [RSP+24]
            lea RSI,QWORD PTR [RIP+.L_41514a]
            mov EDX,2
.L_4053bb:

            call .L_4017e0
.L_4053c0:

            mov RAX,QWORD PTR [RBX+8]
            add R12,1
.L_4053c8:

            mov RCX,QWORD PTR [RSP+8]
            lea RDI,QWORD PTR [RCX+R12*1]
            shl RDI,6
            add RDI,RAX
            mov EAX,15
            mov RCX,QWORD PTR [RDI]
            mov R8,QWORD PTR [RDI+8]
            lea RSI,QWORD PTR [RDI+16]
            mov RDX,QWORD PTR [RDI+40]
            cmp RCX,RSI
            lea R9,QWORD PTR [R8+RDX*1]
            je .L_4053f9

            mov RAX,QWORD PTR [RDI+16]
.L_4053f9:

            cmp R9,RAX
            mov RSI,QWORD PTR [RDI+32]
            jbe .L_405419

            lea R10,QWORD PTR [RDI+48]
            mov EAX,15
            cmp RSI,R10
            je .L_405414

            mov RAX,QWORD PTR [RDI+48]
.L_405414:

            cmp R9,RAX
            jbe .L_405450
.L_405419:

            call .L_4017e0
.L_40541e:

            mov RSI,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+224],RSI
            mov RCX,QWORD PTR [RAX]
            cmp RCX,RDX
            jne .L_405320

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+240],XMM0
            jmp .L_405334
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_405450:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
            call .L_401b90

            jmp .L_40541e
          .byte 0x90
.L_405460:

            mov R14,QWORD PTR [RBX+16]
            cmp QWORD PTR [RBX+8],R14
            je .L_404e50

            xor EAX,EAX
            mov QWORD PTR [RSP+8],RBP
            mov QWORD PTR [RSP+64],R13
            mov RBP,RBX
            mov R13,R12
            mov RBX,RAX
            jmp .L_40549a
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_405488:

            mov R14,QWORD PTR [RBP+16]
            add RBX,1
            cmp R14,QWORD PTR [RBP+8]
            je .L_404e48
.L_40549a:

            lea R12,QWORD PTR [R14-64]
            lea RCX,QWORD PTR [R14-16]
            mov QWORD PTR [RBP+16],R12
            mov RDI,QWORD PTR [R14-32]
            cmp RDI,RCX
            je .L_4054b4

            call free@PLT
.L_4054b4:

            mov RDI,QWORD PTR [R14-64]
            add R12,16
            cmp RDI,R12
            je .L_4054c6

            call free@PLT
.L_4054c6:

            cmp R13,RBX
            jne .L_405488

            mov RDX,QWORD PTR [RSP+200]
            mov RBX,RBP
            mov R13,QWORD PTR [RSP+64]
            mov RBP,QWORD PTR [RSP+8]
            test RDX,RDX
            je .L_40552c

            mov RDI,QWORD PTR [RBX+16]
            cmp RDI,QWORD PTR [RBX+8]
            je .L_404e50

            sub RDI,64
            cmp BYTE PTR [RSP+39],0
            jne .L_40551a

            lea RSI,QWORD PTR [RIP+.L_41514a]
            call .L_401860

            mov RAX,QWORD PTR [RBX+16]
            mov RDX,QWORD PTR [RSP+200]
            lea RDI,QWORD PTR [RAX-64]
.L_40551a:

            mov RSI,QWORD PTR [RSP+192]
            call .L_4017e0
.L_405527:

            mov BYTE PTR [RSP+39],0
.L_40552c:

            mov RAX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+192]
            add RAX,16
            cmp RDI,RAX
            je .L_405547

            call free@PLT
.L_405547:

            mov RAX,QWORD PTR [RBX+8]
            mov R14,QWORD PTR [RBX+16]
            jmp .L_404da8
.L_405554:

            lea RCX,QWORD PTR [R12+1]
            mov QWORD PTR [RSP+40],RCX
.L_40555e:

            cmp RAX,R14
            je .L_404e6b

            lea RDI,QWORD PTR [R14-64]
            mov RAX,QWORD PTR [R14-64]
            mov RBP,QWORD PTR [R14-56]
            mov EDX,15
            lea RCX,QWORD PTR [RDI+16]
            lea R12,QWORD PTR [RBP+1]
            cmp RAX,RCX
            je .L_405589

            mov RDX,QWORD PTR [R14-48]
.L_405589:

            cmp R12,RDX
            ja .L_4057a5
.L_405592:

            test BYTE PTR [RSP+56],1
            mov BYTE PTR [RAX+RBP*1],41
            mov RAX,QWORD PTR [R14-64]
            mov QWORD PTR [R14-56],R12
            mov BYTE PTR [RAX+RBP*1+1],0
            jne .L_4057f2
.L_4055ae:

            test BYTE PTR [RSP+56],2
            mov RAX,QWORD PTR [RBX+16]
            lea RDI,QWORD PTR [RAX-64]
            jne .L_4057d9
.L_4055c1:

            test BYTE PTR [RSP+56],4
            jne .L_4057c0
.L_4055cc:

            cmp DWORD PTR [RSP+60],1
            je .L_405825

            cmp DWORD PTR [RSP+60],2
            je .L_405851
.L_4055e2:

            mov RDX,QWORD PTR [RSP+168]
            mov RSI,QWORD PTR [RSP+160]
.L_4055f2:

            call .L_4017e0

            mov RAX,QWORD PTR [RSP+48]
            mov RDI,QWORD PTR [RSP+160]
            add RAX,16
            cmp RDI,RAX
            je .L_405612

            call free@PLT
.L_405612:

            mov R12,QWORD PTR [RSP+40]
            jmp .L_404e03
.L_40561c:

            mov RSI,QWORD PTR [RSP+8]
            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            call .L_401690

            mov RAX,QWORD PTR [R14-64]
            jmp .L_404d14
.L_405639:

            mov RDX,RBX
            mov RSI,R13
            mov RDI,R12
            call .L_4073b0
.L_405647:

            cmp R12,RAX
            mov QWORD PTR [RSP+16],RAX
            je .L_404e6b

            mov RAX,QWORD PTR [RBX+16]
            mov RDX,RAX
            sub RDX,QWORD PTR [RBX+8]
            cmp RDX,127
            jbe .L_404e6b

            lea R14,QWORD PTR [RSP+224]
            lea RDX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+224],RDX
            mov RCX,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RAX-48]
            cmp RDX,RCX
            je .L_40585f

            mov QWORD PTR [RSP+224],RCX
            mov RCX,QWORD PTR [RAX-48]
            mov QWORD PTR [RSP+240],RCX
.L_4056a3:

            mov RCX,QWORD PTR [RAX-56]
            mov RDI,QWORD PTR [RSP+48]
            mov QWORD PTR [RSP+232],RCX
            mov QWORD PTR [RAX-64],RDX
            mov QWORD PTR [RAX-56],0
            mov BYTE PTR [RAX-48],0
            mov RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RAX-32]
            call .L_401a50

            cmp QWORD PTR [RSP+168],0
            jne .L_40573c

            mov R12,QWORD PTR [RSP+232]
            lea RDX,QWORD PTR [R14+16]
            cmp QWORD PTR [RSP+224],RDX
            lea RAX,QWORD PTR [R12+1]
            mov QWORD PTR [RSP+8],RAX
            mov EAX,15
            je .L_405709

            mov RAX,QWORD PTR [RSP+240]
.L_405709:

            cmp QWORD PTR [RSP+8],RAX
            ja .L_405871
.L_405714:

            mov RAX,QWORD PTR [RSP+224]
            mov BYTE PTR [RAX+R12*1],32
            lea RAX,QWORD PTR [R12+1]
            mov QWORD PTR [RSP+232],RAX
            mov RAX,QWORD PTR [RSP+224]
            mov BYTE PTR [RAX+R12*1+1],0
.L_40573c:

            mov RAX,QWORD PTR [RBX+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBX+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_40580b

            mov R8,QWORD PTR [RSP+232]
            mov RCX,QWORD PTR [RSP+224]
            lea RDI,QWORD PTR [RAX-64]
            xor EDX,EDX
            xor ESI,ESI
.L_405773:

            call .L_401e50
.L_405778:

            mov RDI,QWORD PTR [RSP+224]
            add R14,16
            cmp RDI,R14
            je .L_40578e

            call free@PLT
.L_40578e:

            mov R14,QWORD PTR [RBX+16]
            mov R12,QWORD PTR [RSP+16]
            mov RAX,QWORD PTR [R14-56]
            mov QWORD PTR [RSP+8],RAX
            jmp .L_404ce1
.L_4057a5:

            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,RBP
.L_4057b2:

            call .L_401690

            mov RAX,QWORD PTR [R14-64]
            jmp .L_405592
.L_4057c0:

            lea RSI,QWORD PTR [RIP+.L_41515e]
            call .L_401860

            mov RAX,QWORD PTR [RBX+16]
            lea RDI,QWORD PTR [RAX-64]
            jmp .L_4055cc
.L_4057d9:

            lea RSI,QWORD PTR [RIP+.L_415154]
            call .L_401860

            mov RAX,QWORD PTR [RBX+16]
            lea RDI,QWORD PTR [RAX-64]
            jmp .L_4055c1
.L_4057f2:

            mov RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RIP+.L_41514d]
            lea RDI,QWORD PTR [RAX-64]
            call .L_401860

            jmp .L_4055ae
.L_40580b:

            mov RDI,QWORD PTR [RSP+224]
            add R14,16
            cmp RDI,R14
            jne .L_404e66

            jmp .L_404e6b
.L_405825:

            lea RSI,QWORD PTR [RIP+.L_415168]
            call .L_401860
.L_405831:

            mov RAX,QWORD PTR [RBX+16]
            lea RDI,QWORD PTR [RAX-64]
            jmp .L_4055e2
.L_40583e:

            lea RDX,QWORD PTR [RIP+.L_41510b]
            xor ESI,ESI
.L_405847:

            call .L_401e90
.L_40584c:

            jmp .L_404e03
.L_405851:

            lea RSI,QWORD PTR [RIP+.L_41516b]
.L_405858:

            call .L_401860
.L_40585d:

            jmp .L_405831
.L_40585f:

            movdqu XMM0,XMMWORD PTR [RAX-48]
            movaps XMMWORD PTR [RSP+240],XMM0
            jmp .L_4056a3
.L_405871:

            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,R12
            mov RDI,R14
.L_405881:

            call .L_401690
.L_405886:

            jmp .L_405714
.L_40588b:

            call __stack_chk_fail@PLT
.L_405890:

            mov RDI,QWORD PTR [RSP+224]
            add R14,16
            mov RBP,RAX
            cmp RDI,R14
            je .L_4058a9
.L_4058a4:

            call free@PLT
.L_4058a9:

            mov RDX,QWORD PTR [RSP+48]
            mov RDI,QWORD PTR [RSP+160]
            add RDX,16
            cmp RDI,RDX
            je .L_4058c4
.L_4058bf:

            call free@PLT
.L_4058c4:

            movzx EAX,BYTE PTR [RSP+38]
            mov DWORD PTR [RBX+104],R15D
            mov RDI,RBP
            mov BYTE PTR [RBX+109],AL
.L_4058d3:

            call _Unwind_Resume@PLT
.L_4058d8:

            mov RBP,RAX
            jmp .L_4058a9
.L_4058dd:

            mov RBP,RAX
            jmp .L_4058c4
.L_4058e2:

            mov RBP,RAX
.L_4058e5:

            mov RDX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+192]
            add RDX,16
            cmp RDI,RDX
            jne .L_4058a4

            jmp .L_4058a9
.L_4058fd:

            mov RBP,RAX
            mov RAX,QWORD PTR [RSP+72]
            mov RDI,QWORD PTR [RSP+224]
            add RAX,16
            cmp RDI,RAX
            je .L_4058e5

            call free@PLT

            jmp .L_4058e5
.L_40591d:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
.L_405924:

            call _ZSt20__throw_length_errorPKc@PLT
.L_405929:

            mov R12,RAX
            mov RAX,QWORD PTR [RSP+48]
            mov RDI,QWORD PTR [RSP+160]
            add RAX,16
            cmp RDI,RAX
            je .L_405947

            call free@PLT
.L_405947:

            mov RDI,QWORD PTR [RSP+128]
            add RBP,16
            cmp RDI,RBP
            je .L_40595d

            call free@PLT
.L_40595d:

            mov RBP,R12
.L_405960:

            mov RAX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+192]
            add RAX,16
            cmp RDI,RAX
            je .L_40597b

            call free@PLT
.L_40597b:

            mov RDI,QWORD PTR [RSP+96]
            add R13,16
            cmp RDI,R13
            jne .L_4058bf

            jmp .L_4058c4
.L_405992:

            mov R12,RAX
            jmp .L_405947
.L_405997:

            mov RBP,RAX
            jmp .L_405960
.L_40599c:

            mov RBP,RAX
            jmp .L_40597b
.L_4059a1:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4059b0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBP,RDI
            sub RSP,216
.L_4059c4:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+200],RAX
            xor EAX,EAX
            mov RAX,RSI
            mov QWORD PTR [RSP],RCX
            sub RAX,RDI
            cmp RAX,1
            jle .L_405b10

            movzx EAX,BYTE PTR [RDI]
            mov R15,RSI
            mov RBX,RDX
            cmp AL,76
            je .L_405b40

            cmp AL,78
            mov R14,RDI
            je .L_405c40

            cmp AL,90
            jne .L_405d40
.L_405a0f:

            cmp R15,R14
            je .L_405b10

            lea R12,QWORD PTR [R14+1]
            mov RDX,RBX
            mov RSI,R15
            mov RDI,R12
.L_405a25:

            call .L_404bc0

            cmp R12,RAX
            je .L_405b10

            cmp R15,RAX
            je .L_405b10

            cmp BYTE PTR [RAX],69
            jne .L_405b10

            lea R12,QWORD PTR [RAX+1]
            cmp R15,R12
            je .L_405b10

            movzx EDX,BYTE PTR [RAX+1]
            cmp DL,100
            je .L_40706e

            cmp DL,115
            jne .L_406fa3

            lea RDI,QWORD PTR [RAX+2]
            mov RSI,R15
            call .L_401100

            mov R12,RAX
            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_405a91

            lea RDI,QWORD PTR [RAX-64]
            lea RSI,QWORD PTR [RIP+.L_415173]
            call .L_401860
.L_405a91:

            cmp R14,R12
            je .L_405b10

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405aa0:

            mov R14,R12
            jmp .L_405b13
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_405aa8:

            mov DWORD PTR [RBX+100],1
            add R12,1
.L_405ab3:

            mov RDI,RBX
            call .L_402550

            mov RAX,R15
            sub RAX,R12
            cmp RAX,1
            jle .L_405ad2

            cmp BYTE PTR [R12],83
            je .L_406f6e
.L_405ad2:

            cmp R15,R12
            jne .L_406db0

            mov R13,QWORD PTR [RBX+16]
            lea R12,QWORD PTR [R13-64]
            lea RAX,QWORD PTR [R13-16]
            mov QWORD PTR [RBX+16],R12
            mov RDI,QWORD PTR [R13-32]
            cmp RDI,RAX
            je .L_405af9

            call free@PLT
.L_405af9:

            mov RDI,QWORD PTR [R13-64]
            add R12,16
            cmp RDI,R12
            je .L_405b10
.L_405b06:

            call free@PLT

            nop
            nop
            nop
            nop
            nop
.L_405b10:

            mov R14,RBP
.L_405b13:

            mov RBX,QWORD PTR [RSP+200]
            xor RBX,QWORD PTR FS:[40]
            mov RAX,R14
            jne .L_40718a

            add RSP,216
.L_405b34:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x90
.L_405b40:

            movzx EAX,BYTE PTR [RDI+1]
            lea R14,QWORD PTR [RDI+1]
            cmp AL,78
            je .L_405c40

            cmp AL,90
            je .L_405a0f

            mov RDX,RSI
            mov R12,R14
            sub RDX,R14
            cmp RDX,1
            jg .L_405d43
.L_405b6b:

            mov RDX,RBX
            mov RSI,R15
            mov RDI,R14
            call .L_403bc0

            cmp RAX,R14
            mov R12,RAX
            je .L_405b10

            cmp R15,RAX
            je .L_405b10

            cmp BYTE PTR [RAX],73
            jne .L_405b10

            mov RDX,RBX
            mov RSI,R15
            mov RDI,RAX
            call .L_40c230

            cmp R12,RAX
            mov R14,RAX
            je .L_405b10

            mov RAX,QWORD PTR [RBX+16]
            mov RDX,RAX
            sub RDX,QWORD PTR [RBX+8]
            cmp RDX,127
            jbe .L_405b10

            lea RSI,QWORD PTR [RAX-64]
            lea R15,QWORD PTR [RSP+160]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            mov QWORD PTR [RSP+40],R15
            call .L_4024a0
.L_405bd7:

            mov RAX,QWORD PTR [RBX+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBX+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_407133

            mov RDX,QWORD PTR [RSP+168]
            mov RSI,QWORD PTR [RSP+160]
            lea RDI,QWORD PTR [RAX-64]
.L_405c0a:

            call .L_4017e0
.L_405c0f:

            mov RAX,QWORD PTR [RSP]
            test RAX,RAX
            je .L_405c1b

            mov BYTE PTR [RAX],1
.L_405c1b:

            mov R15,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+160]
            add R15,16
            cmp RDI,R15
            je .L_405b13

            call free@PLT

            jmp .L_405b13
          .byte 0x90
.L_405c40:

            cmp R15,R14
            je .L_405b10

            lea R12,QWORD PTR [R14+1]
            cmp R15,R12
            je .L_405b10

            movzx EAX,BYTE PTR [R14+1]
            mov DWORD PTR [RSP+68],0
            cmp AL,114
            jne .L_405c78

            movzx EAX,BYTE PTR [R14+2]
            lea R12,QWORD PTR [R14+2]
            mov DWORD PTR [RSP+68],4
.L_405c78:

            cmp AL,86
            jne .L_405c8b

            or DWORD PTR [RSP+68],2
            movzx EAX,BYTE PTR [R12+1]
            add R12,1
.L_405c8b:

            cmp AL,75
            jne .L_405c98

            or DWORD PTR [RSP+68],1
            add R12,1
.L_405c98:

            cmp R15,R12
            je .L_405b10

            mov DWORD PTR [RBX+100],0
            movzx EAX,BYTE PTR [R12]
            cmp AL,82
            je .L_405aa8

            cmp AL,79
            je .L_406f20

            mov RDI,RBX
            call .L_402550

            mov RAX,R15
            sub RAX,R12
            cmp RAX,1
            jle .L_406db0

            movzx EAX,BYTE PTR [R12]
            cmp AL,83
            je .L_406d9b
.L_405ce2:

            lea RCX,QWORD PTR [RSP+144]
            lea RSI,QWORD PTR [RSP+128]
            mov BYTE PTR [RSP+16],0
            mov BYTE PTR [RSP+67],0
            mov QWORD PTR [RSP+8],RCX
            lea RCX,QWORD PTR [RSP+96]
            mov QWORD PTR [RSP+32],RSI
            mov QWORD PTR [RSP+24],RCX
.L_405d10:

            cmp AL,69
            je .L_406ed0

            sub EAX,68
            cmp AL,16
            ja .L_406a28

            lea RCX,QWORD PTR [RIP+.L_415830]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RCX+RAX*4]
            add RAX,RCX
            jmp RAX
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405d40:

            mov R12,RBP
.L_405d43:

            cmp AL,83
            je .L_405ee0
.L_405d4b:

            mov RDX,RBX
            mov RSI,R15
            mov RDI,R12
.L_405d54:

            call .L_40b600

            cmp R12,RAX
            mov R14,RAX
            je .L_405b6b
.L_405d65:

            cmp R15,R14
            je .L_405b13

            cmp BYTE PTR [R14],73
            jne .L_405b13

            mov RSI,QWORD PTR [RBX+16]
            cmp QWORD PTR [RBX+8],RSI
            je .L_405b10

            mov RAX,QWORD PTR [RBX]
            lea R12,QWORD PTR [RSP+96]
            lea RDX,QWORD PTR [RSP+88]
            sub RSI,64
            mov RDI,R12
            mov QWORD PTR [RSP+88],RAX
            call .L_402970

            lea RDI,QWORD PTR [RBX+32]
            mov RSI,R12
            call .L_4030f0

            mov R12,QWORD PTR [RSP+112]
            mov R13,QWORD PTR [RSP+104]
            cmp R12,R13
            je .L_405df2

            nop
.L_405dc0:

            mov RDI,QWORD PTR [R13+32]
            lea RAX,QWORD PTR [R13+48]
            cmp RDI,RAX
            je .L_405dd2

            call free@PLT
.L_405dd2:

            mov RDI,QWORD PTR [R13]
            lea RAX,QWORD PTR [R13+16]
            cmp RDI,RAX
            je .L_405de4

            call free@PLT
.L_405de4:

            add R13,64
            cmp R12,R13
            jne .L_405dc0

            mov R13,QWORD PTR [RSP+104]
.L_405df2:

            test R13,R13
            je .L_405e0c

            mov RDX,QWORD PTR [RSP+120]
            mov RDI,QWORD PTR [RSP+96]
            mov RSI,R13
            sub RDX,R13
            call .L_4012a0
.L_405e0c:

            mov RDX,RBX
            mov RSI,R15
            mov RDI,R14
            call .L_40c230

            cmp RAX,R14
            mov R12,RAX
            je .L_405b10

            mov RAX,QWORD PTR [RBX+16]
            mov RDX,RAX
            sub RDX,QWORD PTR [RBX+8]
            cmp RDX,127
            jbe .L_405b10

            lea RSI,QWORD PTR [RAX-64]
            lea RDI,QWORD PTR [RSP+160]
            lea RDX,QWORD PTR [RSI+32]
            mov QWORD PTR [RSP+40],RDI
            call .L_4024a0
.L_405e55:

            mov R14,QWORD PTR [RBX+16]
            lea R13,QWORD PTR [R14-64]
            lea RAX,QWORD PTR [R14-16]
            mov QWORD PTR [RBX+16],R13
            mov RDI,QWORD PTR [R14-32]
            cmp RDI,RAX
            je .L_405e73

            call free@PLT
.L_405e73:

            mov RDI,QWORD PTR [R14-64]
            add R13,16
            cmp RDI,R13
            je .L_405e85

            call free@PLT
.L_405e85:

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_406f4f

            mov RDX,QWORD PTR [RSP+168]
            mov RSI,QWORD PTR [RSP+160]
            lea RDI,QWORD PTR [RAX-64]
.L_405ea7:

            call .L_4017e0
.L_405eac:

            mov RAX,QWORD PTR [RSP]
            test RAX,RAX
            je .L_405eb8

            mov BYTE PTR [RAX],1
.L_405eb8:

            mov R15,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+160]
            add R15,16
            cmp RDI,R15
            je .L_405aa0

            call free@PLT

            jmp .L_405aa0
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_405ee0:

            cmp BYTE PTR [R12+1],116
            jne .L_405d4b

            lea R13,QWORD PTR [R12+2]
            cmp R15,R13
            je .L_405f03

            cmp BYTE PTR [R12+2],76
            jne .L_405f03

            lea R13,QWORD PTR [R12+3]
.L_405f03:

            mov RDX,RBX
            mov RSI,R15
            mov RDI,R13
.L_405f0c:

            call .L_40b600

            cmp R13,RAX
            mov R14,RAX
            je .L_406e10

            mov RDI,QWORD PTR [RBX+16]
            cmp RDI,QWORD PTR [RBX+8]
            je .L_406e10

            lea RCX,QWORD PTR [RIP+.L_415184]
            sub RDI,64
            xor EDX,EDX
            xor ESI,ESI
            mov R8D,5
            call .L_401b90

            cmp R12,R14
            jne .L_405d65

            jmp .L_405b6b
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405f58:

            mov RDX,RBX
            mov RSI,R15
            mov RDI,R12
            call .L_4047e0

            cmp R12,RAX
            mov QWORD PTR [RSP+48],RAX
            setne DL
            cmp R15,RAX
            setne AL
            and DL,AL
            mov BYTE PTR [RSP+67],DL
            je .L_405b10

            mov RAX,QWORD PTR [RBX+16]
            mov R9D,15
            lea RDI,QWORD PTR [RAX-64]
            mov RCX,QWORD PTR [RAX-64]
            mov R8,QWORD PTR [RAX-56]
            mov RDX,QWORD PTR [RAX-24]
            lea RSI,QWORD PTR [RDI+16]
            cmp RCX,RSI
            lea R10,QWORD PTR [R8+RDX*1]
            je .L_405fae

            mov R9,QWORD PTR [RAX-48]
.L_405fae:

            cmp R10,R9
            mov RSI,QWORD PTR [RAX-32]
            jbe .L_405fd3

            lea R11,QWORD PTR [RAX-16]
            mov R9D,15
            cmp RSI,R11
            je .L_405fca

            mov R9,QWORD PTR [RAX-16]
.L_405fca:

            cmp R10,R9
            jbe .L_406e38
.L_405fd3:

            call .L_4017e0
.L_405fd8:

            mov RCX,QWORD PTR [RSP+8]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+128],RCX
            mov RCX,QWORD PTR [RAX]
            cmp RCX,RDX
            je .L_406dc0

            mov QWORD PTR [RSP+128],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+144],RCX
.L_406009:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+136],RCX
            mov BYTE PTR [RAX+16],0
            mov R13,QWORD PTR [RBX+16]
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            lea R12,QWORD PTR [R13-64]
            lea RAX,QWORD PTR [R13-16]
            mov QWORD PTR [RBX+16],R12
            mov RDI,QWORD PTR [R13-32]
            cmp RDI,RAX
            je .L_406042

            call free@PLT
.L_406042:

            mov RDI,QWORD PTR [R13-64]
            add R12,16
            cmp RDI,R12
            je .L_406054

            call free@PLT
.L_406054:

            mov RDI,QWORD PTR [RBX+16]
            cmp RDI,QWORD PTR [RBX+8]
            je .L_406f30

            cmp QWORD PTR [RDI-56],0
            je .L_406ce8

            lea R12,QWORD PTR [RSP+160]
            mov RDX,QWORD PTR [RSP+32]
            lea RSI,QWORD PTR [RIP+.L_415187]
            mov RDI,R12
            mov QWORD PTR [RSP+40],R12
.L_406089:

            call .L_401910
.L_40608e:

            mov RAX,QWORD PTR [RBX+16]
            mov RDX,QWORD PTR [RSP+168]
            mov RSI,QWORD PTR [RSP+160]
            lea RDI,QWORD PTR [RAX-64]
.L_4060a6:

            call .L_4017e0
.L_4060ab:

            mov RDI,QWORD PTR [RSP+160]
            mov RAX,R12
            add RAX,16
            cmp RDI,RAX
            je .L_4060c4

            call free@PLT
.L_4060c4:

            lea RAX,QWORD PTR [RBX+32]
            mov QWORD PTR [RSP+104],0
            mov QWORD PTR [RSP+112],0
            mov QWORD PTR [RSP+120],0
            mov R13,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+16],RAX
            mov RAX,QWORD PTR [RBX]
            mov QWORD PTR [RSP+96],RAX
            mov R12,QWORD PTR [RAX+4096]
            lea RDX,QWORD PTR [RAX+4096]
            sub RDX,R12
            cmp RDX,63
            jbe .L_406d50

            lea RCX,QWORD PTR [R12+64]
            mov QWORD PTR [RSP+16],RCX
            mov QWORD PTR [RAX+4096],RCX
.L_406120:

            mov RAX,QWORD PTR [RSP+16]
            test R12,R12
            mov QWORD PTR [RSP+104],R12
            mov QWORD PTR [RSP+112],R12
            mov QWORD PTR [RSP+120],RAX
            je .L_406179

            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [R12],RAX
            mov RSI,QWORD PTR [R13-64]
            mov RDX,QWORD PTR [R13-56]
            mov QWORD PTR [RSP+40],RAX
            add RDX,RSI
.L_406155:

            call .L_401470
.L_40615a:

            lea RAX,QWORD PTR [R12+48]
            lea RDI,QWORD PTR [R12+32]
            mov QWORD PTR [R12+32],RAX
            mov RSI,QWORD PTR [R13-32]
            mov RDX,QWORD PTR [R13-24]
            add RDX,RSI
.L_406174:

            call .L_401470
.L_406179:

            mov RAX,QWORD PTR [RSP+16]
            mov RSI,QWORD PTR [RSP+24]
            lea RDI,QWORD PTR [RBX+32]
            mov QWORD PTR [RSP+112],RAX
            call .L_4030f0

            mov R12,QWORD PTR [RSP+112]
            mov R13,QWORD PTR [RSP+104]
            cmp R12,R13
            je .L_4061d2
.L_4061a0:

            mov RDI,QWORD PTR [R13+32]
            lea RAX,QWORD PTR [R13+48]
            cmp RDI,RAX
            je .L_4061b2

            call free@PLT
.L_4061b2:

            mov RDI,QWORD PTR [R13]
            lea RAX,QWORD PTR [R13+16]
            cmp RDI,RAX
            je .L_4061c4

            call free@PLT
.L_4061c4:

            add R13,64
            cmp R12,R13
            jne .L_4061a0
.L_4061cd:

            mov R13,QWORD PTR [RSP+104]
.L_4061d2:

            test R13,R13
            je .L_4061ec

            mov RDX,QWORD PTR [RSP+120]
            mov RDI,QWORD PTR [RSP+96]
            mov RSI,R13
            sub RDX,R13
            call .L_4012a0
.L_4061ec:

            mov RDI,QWORD PTR [RSP+128]
            cmp RDI,QWORD PTR [RSP+8]
            je .L_406200

            call free@PLT
.L_406200:

            mov R12,QWORD PTR [RSP+48]
            jmp .L_40676d
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406210:

            lea RAX,QWORD PTR [R12+1]
            cmp R15,RAX
            je .L_406226

            cmp BYTE PTR [R12+1],116
            je .L_406a28
.L_406226:

            mov RDX,RBX
            mov RSI,R15
            mov RDI,R12
.L_40622f:

            call .L_403bc0

            cmp R12,RAX
            mov QWORD PTR [RSP+16],RAX
            setne DL
            cmp R15,RAX
            setne AL
            and DL,AL
            mov BYTE PTR [RSP+67],DL
            je .L_405b10

            mov RAX,QWORD PTR [RBX+16]
            mov R9D,15
            lea RDI,QWORD PTR [RAX-64]
            mov RCX,QWORD PTR [RAX-64]
            mov R8,QWORD PTR [RAX-56]
            mov RDX,QWORD PTR [RAX-24]
            lea RSI,QWORD PTR [RDI+16]
            cmp RCX,RSI
            lea R10,QWORD PTR [R8+RDX*1]
            je .L_40627c

            mov R9,QWORD PTR [RAX-48]
.L_40627c:

            cmp R10,R9
            mov RSI,QWORD PTR [RAX-32]
            jbe .L_4062a1

            lea R11,QWORD PTR [RAX-16]
            mov R9D,15
            cmp RSI,R11
            je .L_406298

            mov R9,QWORD PTR [RAX-16]
.L_406298:

            cmp R10,R9
            jbe .L_406e80
.L_4062a1:

            call .L_4017e0
.L_4062a6:

            mov RCX,QWORD PTR [RSP+8]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+128],RCX
            mov RCX,QWORD PTR [RAX]
            cmp RCX,RDX
            je .L_406e50

            mov QWORD PTR [RSP+128],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+144],RCX
.L_4062d7:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+136],RCX
            mov BYTE PTR [RAX+16],0
            mov R13,QWORD PTR [RBX+16]
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            lea R12,QWORD PTR [R13-64]
            lea RAX,QWORD PTR [R13-16]
            mov QWORD PTR [RBX+16],R12
            mov RDI,QWORD PTR [R13-32]
            cmp RDI,RAX
            je .L_406310

            call free@PLT
.L_406310:

            mov RDI,QWORD PTR [R13-64]
            add R12,16
            cmp RDI,R12
            je .L_406322

            call free@PLT
.L_406322:

            mov RDI,QWORD PTR [RBX+16]
            cmp RDI,QWORD PTR [RBX+8]
            je .L_406f30

            cmp QWORD PTR [RDI-56],0
            je .L_406d70

            lea R12,QWORD PTR [RSP+160]
            mov RDX,QWORD PTR [RSP+32]
            lea RSI,QWORD PTR [RIP+.L_415187]
            mov RDI,R12
            mov QWORD PTR [RSP+40],R12
.L_406357:

            call .L_401910
.L_40635c:

            mov RAX,QWORD PTR [RBX+16]
            mov RDX,QWORD PTR [RSP+168]
            mov RSI,QWORD PTR [RSP+160]
            lea RDI,QWORD PTR [RAX-64]
.L_406374:

            call .L_4017e0
.L_406379:

            mov RDI,QWORD PTR [RSP+160]
            mov RAX,R12
            add RAX,16
            cmp RDI,RAX
            je .L_406392

            call free@PLT
.L_406392:

            lea RAX,QWORD PTR [RBX+32]
            mov QWORD PTR [RSP+104],0
            mov QWORD PTR [RSP+112],0
            mov QWORD PTR [RSP+120],0
            mov R13,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+40],RAX
            mov RAX,QWORD PTR [RBX]
            mov QWORD PTR [RSP+96],RAX
            mov R12,QWORD PTR [RAX+4096]
            lea RDX,QWORD PTR [RAX+4096]
            sub RDX,R12
            cmp RDX,63
            jbe .L_406eb0

            lea RSI,QWORD PTR [R12+64]
            mov QWORD PTR [RSP+40],RSI
            mov QWORD PTR [RAX+4096],RSI
.L_4063ee:

            mov RAX,QWORD PTR [RSP+40]
            test R12,R12
            mov QWORD PTR [RSP+104],R12
            mov QWORD PTR [RSP+112],R12
            mov QWORD PTR [RSP+120],RAX
            je .L_406447

            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [R12],RAX
            mov RSI,QWORD PTR [R13-64]
            mov RDX,QWORD PTR [R13-56]
            mov QWORD PTR [RSP+48],RAX
            add RDX,RSI
.L_406423:

            call .L_401470
.L_406428:

            lea RAX,QWORD PTR [R12+48]
            lea RDI,QWORD PTR [R12+32]
            mov QWORD PTR [R12+32],RAX
            mov RSI,QWORD PTR [R13-32]
            mov RDX,QWORD PTR [R13-24]
            add RDX,RSI
.L_406442:

            call .L_401470
.L_406447:

            mov RAX,QWORD PTR [RSP+40]
            mov RSI,QWORD PTR [RSP+24]
            lea RDI,QWORD PTR [RBX+32]
            mov QWORD PTR [RSP+112],RAX
            call .L_4030f0

            mov R12,QWORD PTR [RSP+112]
            mov R13,QWORD PTR [RSP+104]
            cmp R12,R13
            je .L_4064a2

            nop
            nop
.L_406470:

            mov RDI,QWORD PTR [R13+32]
            lea RAX,QWORD PTR [R13+48]
            cmp RDI,RAX
            je .L_406482

            call free@PLT
.L_406482:

            mov RDI,QWORD PTR [R13]
            lea RAX,QWORD PTR [R13+16]
            cmp RDI,RAX
            je .L_406494

            call free@PLT
.L_406494:

            add R13,64
            cmp R12,R13
            jne .L_406470

            mov R13,QWORD PTR [RSP+104]
.L_4064a2:

            test R13,R13
            je .L_4064bc

            mov RDX,QWORD PTR [RSP+120]
            mov RDI,QWORD PTR [RSP+96]
            mov RSI,R13
            sub RDX,R13
            call .L_4012a0
.L_4064bc:

            mov RDI,QWORD PTR [RSP+128]
            cmp RDI,QWORD PTR [RSP+8]
            je .L_4064d0

            call free@PLT
.L_4064d0:

            mov R12,QWORD PTR [RSP+16]
            mov BYTE PTR [RSP+16],0
            jmp .L_406772
          .byte 0x90
.L_4064e0:

            mov RDX,RBX
            mov RSI,R15
            mov RDI,R12
.L_4064e9:

            call .L_40c230

            cmp R12,RAX
            mov QWORD PTR [RSP+56],RAX
            setne DL
            cmp R15,RAX
            setne AL
            and DL,AL
            mov BYTE PTR [RSP+16],DL
            je .L_405b10

            mov RAX,QWORD PTR [RBX+16]
            mov R9D,15
            lea RDI,QWORD PTR [RAX-64]
            mov RCX,QWORD PTR [RAX-64]
            mov R8,QWORD PTR [RAX-56]
            mov RDX,QWORD PTR [RAX-24]
            lea RSI,QWORD PTR [RDI+16]
            cmp RCX,RSI
            lea R10,QWORD PTR [R8+RDX*1]
            je .L_406536

            mov R9,QWORD PTR [RAX-48]
.L_406536:

            cmp R10,R9
            mov RSI,QWORD PTR [RAX-32]
            jbe .L_40655b

            lea R11,QWORD PTR [RAX-16]
            mov R9D,15
            cmp RSI,R11
            je .L_406552

            mov R9,QWORD PTR [RAX-16]
.L_406552:

            cmp R10,R9
            jbe .L_406e20
.L_40655b:

            call .L_4017e0
.L_406560:

            lea RDX,QWORD PTR [RSP+176]
            lea RSI,QWORD PTR [RSP+160]
            mov QWORD PTR [RSP+160],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+40],RSI
            cmp RCX,RDX
            je .L_406dd8

            mov QWORD PTR [RSP+160],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+176],RCX
.L_4065a1:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+168],RCX
            mov BYTE PTR [RAX+16],0
            mov R13,QWORD PTR [RBX+16]
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            lea R12,QWORD PTR [R13-64]
            lea RAX,QWORD PTR [R13-16]
            mov QWORD PTR [RBX+16],R12
            mov RDI,QWORD PTR [R13-32]
            cmp RDI,RAX
            je .L_4065da

            call free@PLT
.L_4065da:

            mov RDI,QWORD PTR [R13-64]
            add R12,16
            cmp RDI,R12
            je .L_4065ec

            call free@PLT
.L_4065ec:

            mov RDI,QWORD PTR [RBX+16]
            cmp RDI,QWORD PTR [RBX+8]
            je .L_406f4f

            mov RDX,QWORD PTR [RSP+168]
            mov RSI,QWORD PTR [RSP+160]
            sub RDI,64
.L_40660e:

            call .L_4017e0
.L_406613:

            lea RAX,QWORD PTR [RBX+32]
            mov QWORD PTR [RSP+104],0
            mov QWORD PTR [RSP+112],0
            mov QWORD PTR [RSP+120],0
            mov R13,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+48],RAX
            mov RAX,QWORD PTR [RBX]
            mov QWORD PTR [RSP+96],RAX
            mov R12,QWORD PTR [RAX+4096]
            lea RDX,QWORD PTR [RAX+4096]
            sub RDX,R12
            cmp RDX,63
            jbe .L_406d30

            lea RSI,QWORD PTR [R12+64]
            mov QWORD PTR [RSP+48],RSI
            mov QWORD PTR [RAX+4096],RSI
.L_40666f:

            mov RAX,QWORD PTR [RSP+48]
            test R12,R12
            mov QWORD PTR [RSP+104],R12
            mov QWORD PTR [RSP+112],R12
            mov QWORD PTR [RSP+120],RAX
            je .L_4066c8

            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [R12],RAX
            mov RSI,QWORD PTR [R13-64]
            mov RDX,QWORD PTR [R13-56]
            mov QWORD PTR [RSP+72],RAX
            add RDX,RSI
.L_4066a4:

            call .L_401470
.L_4066a9:

            lea RAX,QWORD PTR [R12+48]
            lea RDI,QWORD PTR [R12+32]
            mov QWORD PTR [R12+32],RAX
            mov RSI,QWORD PTR [R13-32]
            mov RDX,QWORD PTR [R13-24]
            add RDX,RSI
.L_4066c3:

            call .L_401470
.L_4066c8:

            mov RAX,QWORD PTR [RSP+48]
            mov RSI,QWORD PTR [RSP+24]
            lea RDI,QWORD PTR [RBX+32]
            mov QWORD PTR [RSP+112],RAX
            call .L_4030f0

            mov R12,QWORD PTR [RSP+112]
            mov R13,QWORD PTR [RSP+104]
            cmp R12,R13
            je .L_406722

            nop
.L_4066f0:

            mov RDI,QWORD PTR [R13+32]
            lea RAX,QWORD PTR [R13+48]
            cmp RDI,RAX
            je .L_406702

            call free@PLT
.L_406702:

            mov RDI,QWORD PTR [R13]
            lea RAX,QWORD PTR [R13+16]
            cmp RDI,RAX
            je .L_406714

            call free@PLT
.L_406714:

            add R13,64
            cmp R12,R13
            jne .L_4066f0

            mov R13,QWORD PTR [RSP+104]
.L_406722:

            test R13,R13
            je .L_40673c

            mov RDX,QWORD PTR [RSP+120]
            mov RDI,QWORD PTR [RSP+96]
            mov RSI,R13
            sub RDX,R13
            call .L_4012a0
.L_40673c:

            mov RAX,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+160]
            add RAX,16
            cmp RDI,RAX
            je .L_406757

            call free@PLT
.L_406757:

            mov R12,QWORD PTR [RSP+56]
            jmp .L_406772
          .byte 0x66
          .byte 0x90
.L_406760:

            add R12,1
            cmp R15,R12
            je .L_405b10
.L_40676d:

            mov BYTE PTR [RSP+16],0
.L_406772:

            movzx EAX,BYTE PTR [R12]
            jmp .L_405d10
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_406780:

            lea RAX,QWORD PTR [R12+1]
            cmp R15,RAX
            je .L_40679b

            movzx EAX,BYTE PTR [R12+1]
            and EAX,4294967263
            cmp AL,84
            jne .L_406a28
.L_40679b:

            mov RDX,RBX
            mov RSI,R15
            mov RDI,R12
.L_4067a4:

            call .L_412520

            cmp R12,RAX
            mov QWORD PTR [RSP+48],RAX
            setne DL
            cmp R15,RAX
            setne AL
            and DL,AL
            mov BYTE PTR [RSP+67],DL
            je .L_405b10

            mov RAX,QWORD PTR [RBX+16]
            mov R9D,15
            lea RDI,QWORD PTR [RAX-64]
            mov RCX,QWORD PTR [RAX-64]
            mov R8,QWORD PTR [RAX-56]
            mov RDX,QWORD PTR [RAX-24]
            lea RSI,QWORD PTR [RDI+16]
            cmp RCX,RSI
            lea R10,QWORD PTR [R8+RDX*1]
            je .L_4067f1

            mov R9,QWORD PTR [RAX-48]
.L_4067f1:

            cmp R10,R9
            mov RSI,QWORD PTR [RAX-32]
            jbe .L_406816

            lea R11,QWORD PTR [RAX-16]
            mov R9D,15
            cmp RSI,R11
            je .L_40680d

            mov R9,QWORD PTR [RAX-16]
.L_40680d:

            cmp R10,R9
            jbe .L_406e98
.L_406816:

            call .L_4017e0
.L_40681b:

            mov RCX,QWORD PTR [RSP+8]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+128],RCX
            mov RCX,QWORD PTR [RAX]
            cmp RCX,RDX
            je .L_406e68

            mov QWORD PTR [RSP+128],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+144],RCX
.L_40684c:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+136],RCX
            mov BYTE PTR [RAX+16],0
            mov R13,QWORD PTR [RBX+16]
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            lea R12,QWORD PTR [R13-64]
            lea RAX,QWORD PTR [R13-16]
            mov QWORD PTR [RBX+16],R12
            mov RDI,QWORD PTR [R13-32]
            cmp RDI,RAX
            je .L_406885

            call free@PLT
.L_406885:

            mov RDI,QWORD PTR [R13-64]
            add R12,16
            cmp RDI,R12
            je .L_406897

            call free@PLT
.L_406897:

            mov RDI,QWORD PTR [RBX+16]
            cmp RDI,QWORD PTR [RBX+8]
            je .L_406f30

            cmp QWORD PTR [RDI-56],0
            je .L_406d88

            lea R12,QWORD PTR [RSP+160]
            mov RDX,QWORD PTR [RSP+32]
            lea RSI,QWORD PTR [RIP+.L_415187]
            mov RDI,R12
            mov QWORD PTR [RSP+40],R12
.L_4068cc:

            call .L_401910
.L_4068d1:

            mov RAX,QWORD PTR [RBX+16]
            mov RDX,QWORD PTR [RSP+168]
            mov RSI,QWORD PTR [RSP+160]
            lea RDI,QWORD PTR [RAX-64]
.L_4068e9:

            call .L_4017e0
.L_4068ee:

            mov RDI,QWORD PTR [RSP+160]
            mov RAX,R12
            add RAX,16
            cmp RDI,RAX
            je .L_406907

            call free@PLT
.L_406907:

            lea RAX,QWORD PTR [RBX+32]
            mov QWORD PTR [RSP+104],0
            mov QWORD PTR [RSP+112],0
            mov QWORD PTR [RSP+120],0
            mov R13,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+16],RAX
            mov RAX,QWORD PTR [RBX]
            mov QWORD PTR [RSP+96],RAX
            mov R12,QWORD PTR [RAX+4096]
            lea RDX,QWORD PTR [RAX+4096]
            sub RDX,R12
            cmp RDX,63
            jbe .L_406df0

            lea RCX,QWORD PTR [R12+64]
            mov QWORD PTR [RSP+16],RCX
            mov QWORD PTR [RAX+4096],RCX
.L_406963:

            mov RAX,QWORD PTR [RSP+16]
            test R12,R12
            mov QWORD PTR [RSP+104],R12
            mov QWORD PTR [RSP+112],R12
            mov QWORD PTR [RSP+120],RAX
            je .L_4069bc

            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [R12],RAX
            mov RSI,QWORD PTR [R13-64]
            mov RDX,QWORD PTR [R13-56]
            mov QWORD PTR [RSP+40],RAX
            add RDX,RSI
.L_406998:

            call .L_401470
.L_40699d:

            lea RAX,QWORD PTR [R12+48]
            lea RDI,QWORD PTR [R12+32]
            mov QWORD PTR [R12+32],RAX
            mov RSI,QWORD PTR [R13-32]
            mov RDX,QWORD PTR [R13-24]
            add RDX,RSI
.L_4069b7:

            call .L_401470
.L_4069bc:

            mov RAX,QWORD PTR [RSP+16]
            mov RSI,QWORD PTR [RSP+24]
            lea RDI,QWORD PTR [RBX+32]
            mov QWORD PTR [RSP+112],RAX
            call .L_4030f0

            mov R12,QWORD PTR [RSP+112]
            mov R13,QWORD PTR [RSP+104]
            cmp R12,R13
            je .L_4061d2

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4069f0:

            mov RDI,QWORD PTR [R13+32]
            lea RAX,QWORD PTR [R13+48]
            cmp RDI,RAX
            je .L_406a02

            call free@PLT
.L_406a02:

            mov RDI,QWORD PTR [R13]
            lea RAX,QWORD PTR [R13+16]
            cmp RDI,RAX
            je .L_406a14

            call free@PLT
.L_406a14:

            add R13,64
            cmp R12,R13
            jne .L_4069f0

            jmp .L_4061cd
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406a28:

            mov RDX,RBX
            mov RSI,R15
            mov RDI,R12
.L_406a31:

            call .L_40b600

            cmp R12,RAX
            mov QWORD PTR [RSP+48],RAX
            setne DL
            cmp R15,RAX
            setne AL
            and DL,AL
            mov BYTE PTR [RSP+67],DL
            je .L_405b10

            mov RAX,QWORD PTR [RBX+16]
            mov R9D,15
            lea RDI,QWORD PTR [RAX-64]
            mov RCX,QWORD PTR [RAX-64]
            mov R8,QWORD PTR [RAX-56]
            mov RDX,QWORD PTR [RAX-24]
            lea RSI,QWORD PTR [RDI+16]
            cmp RCX,RSI
            lea R10,QWORD PTR [R8+RDX*1]
            je .L_406a7e

            mov R9,QWORD PTR [RAX-48]
.L_406a7e:

            cmp R10,R9
            mov RSI,QWORD PTR [RAX-32]
            jbe .L_406aa3

            lea R11,QWORD PTR [RAX-16]
            mov R9D,15
            cmp RSI,R11
            je .L_406a9a

            mov R9,QWORD PTR [RAX-16]
.L_406a9a:

            cmp R10,R9
            jbe .L_406d18
.L_406aa3:

            call .L_4017e0
.L_406aa8:

            mov RSI,QWORD PTR [RSP+8]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+128],RSI
            mov RCX,QWORD PTR [RAX]
            cmp RCX,RDX
            je .L_406d00

            mov QWORD PTR [RSP+128],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+144],RCX
.L_406ad9:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+136],RCX
            mov BYTE PTR [RAX+16],0
            mov R13,QWORD PTR [RBX+16]
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            lea R12,QWORD PTR [R13-64]
            lea RAX,QWORD PTR [R13-16]
            mov QWORD PTR [RBX+16],R12
            mov RDI,QWORD PTR [R13-32]
            cmp RDI,RAX
            je .L_406b12

            call free@PLT
.L_406b12:

            mov RDI,QWORD PTR [R13-64]
            add R12,16
            cmp RDI,R12
            je .L_406b24

            call free@PLT
.L_406b24:

            mov RDI,QWORD PTR [RBX+16]
            cmp RDI,QWORD PTR [RBX+8]
            je .L_406f30

            cmp QWORD PTR [RDI-56],0
            je .L_406cb0

            lea R12,QWORD PTR [RSP+160]
            mov RDX,QWORD PTR [RSP+32]
            lea RSI,QWORD PTR [RIP+.L_415187]
            mov RDI,R12
            mov QWORD PTR [RSP+40],R12
.L_406b59:

            call .L_401910
.L_406b5e:

            mov RAX,QWORD PTR [RBX+16]
            mov RDX,QWORD PTR [RSP+168]
            mov RSI,QWORD PTR [RSP+160]
            lea RDI,QWORD PTR [RAX-64]
.L_406b76:

            call .L_4017e0
.L_406b7b:

            mov RDI,QWORD PTR [RSP+160]
            mov RAX,R12
            add RAX,16
            cmp RDI,RAX
            je .L_406b94

            call free@PLT
.L_406b94:

            lea RAX,QWORD PTR [RBX+32]
            mov QWORD PTR [RSP+104],0
            mov QWORD PTR [RSP+112],0
            mov QWORD PTR [RSP+120],0
            mov R13,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+16],RAX
            mov RAX,QWORD PTR [RBX]
            mov QWORD PTR [RSP+96],RAX
            mov R12,QWORD PTR [RAX+4096]
            lea RDX,QWORD PTR [RAX+4096]
            sub RDX,R12
            cmp RDX,63
            jbe .L_406cc8

            lea RSI,QWORD PTR [R12+64]
            mov QWORD PTR [RSP+16],RSI
            mov QWORD PTR [RAX+4096],RSI
.L_406bf0:

            mov RAX,QWORD PTR [RSP+16]
            test R12,R12
            mov QWORD PTR [RSP+104],R12
            mov QWORD PTR [RSP+112],R12
            mov QWORD PTR [RSP+120],RAX
            je .L_406c49

            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [R12],RAX
            mov RSI,QWORD PTR [R13-64]
            mov RDX,QWORD PTR [R13-56]
            mov QWORD PTR [RSP+40],RAX
            add RDX,RSI
.L_406c25:

            call .L_401470
.L_406c2a:

            lea RAX,QWORD PTR [R12+48]
            lea RDI,QWORD PTR [R12+32]
            mov QWORD PTR [R12+32],RAX
            mov RSI,QWORD PTR [R13-32]
            mov RDX,QWORD PTR [R13-24]
            add RDX,RSI
.L_406c44:

            call .L_401470
.L_406c49:

            mov RAX,QWORD PTR [RSP+16]
            mov RSI,QWORD PTR [RSP+24]
            lea RDI,QWORD PTR [RBX+32]
            mov QWORD PTR [RSP+112],RAX
            call .L_4030f0

            mov R12,QWORD PTR [RSP+112]
            mov R13,QWORD PTR [RSP+104]
            cmp R12,R13
            je .L_4061d2

            nop
            nop
            nop
            nop
.L_406c78:

            mov RDI,QWORD PTR [R13+32]
            lea RAX,QWORD PTR [R13+48]
            cmp RDI,RAX
            je .L_406c8a

            call free@PLT
.L_406c8a:

            mov RDI,QWORD PTR [R13]
            lea RAX,QWORD PTR [R13+16]
            cmp RDI,RAX
            je .L_406c9c

            call free@PLT
.L_406c9c:

            add R13,64
            cmp R12,R13
            jne .L_406c78

            jmp .L_4061cd
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406cb0:

            mov RSI,QWORD PTR [RSP+32]
            sub RDI,64
.L_406cb9:

            call .L_4015b0
.L_406cbe:

            jmp .L_406b94
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406cc8:

            mov EDI,64
            call malloc@PLT

            mov R12,RAX
            lea RAX,QWORD PTR [RAX+64]
            mov QWORD PTR [RSP+16],RAX
            jmp .L_406bf0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406ce8:

            mov RSI,QWORD PTR [RSP+32]
            sub RDI,64
.L_406cf1:

            call .L_4015b0
.L_406cf6:

            jmp .L_4060c4
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406d00:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+144],XMM0
            jmp .L_406ad9
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406d18:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
.L_406d20:

            call .L_401b90
.L_406d25:

            jmp .L_406aa8
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406d30:

            mov EDI,64
            call malloc@PLT

            mov R12,RAX
            lea RAX,QWORD PTR [RAX+64]
            mov QWORD PTR [RSP+48],RAX
            jmp .L_40666f
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406d50:

            mov EDI,64
            call malloc@PLT

            mov R12,RAX
            lea RAX,QWORD PTR [RAX+64]
            mov QWORD PTR [RSP+16],RAX
            jmp .L_406120
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406d70:

            mov RSI,QWORD PTR [RSP+32]
            sub RDI,64
.L_406d79:

            call .L_4015b0
.L_406d7e:

            jmp .L_4064bc
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406d88:

            mov RSI,QWORD PTR [RSP+32]
            sub RDI,64
.L_406d91:

            call .L_4015b0
.L_406d96:

            jmp .L_406907
.L_406d9b:

            cmp BYTE PTR [R12+1],116
            je .L_406f7a

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406db0:

            movzx EAX,BYTE PTR [R12]
            jmp .L_405ce2
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406dc0:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+144],XMM0
            jmp .L_406009
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406dd8:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+176],XMM0
            jmp .L_4065a1
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406df0:

            mov EDI,64
            call malloc@PLT

            mov R12,RAX
            lea RAX,QWORD PTR [RAX+64]
            mov QWORD PTR [RSP+16],RAX
            jmp .L_406963
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406e10:

            mov R14,R12
            jmp .L_405b6b
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406e20:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
.L_406e28:

            call .L_401b90

            jmp .L_406560
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406e38:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
            call .L_401b90

            jmp .L_405fd8
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406e50:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+144],XMM0
            jmp .L_4062d7
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406e68:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+144],XMM0
            jmp .L_40684c
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406e80:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
            call .L_401b90

            jmp .L_4062a6
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406e98:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
            call .L_401b90

            jmp .L_40681b
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406eb0:

            mov EDI,64
            call malloc@PLT

            mov R12,RAX
            lea RAX,QWORD PTR [RAX+64]
            mov QWORD PTR [RSP+40],RAX
            jmp .L_4063ee
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406ed0:

            add R12,1
            cmp BYTE PTR [RSP+67],0
            mov EAX,DWORD PTR [RSP+68]
            mov DWORD PTR [RBX+96],EAX
            je .L_406ef9

            mov RAX,QWORD PTR [RBX+48]
            cmp RAX,QWORD PTR [RBX+40]
            je .L_406ef9

            lea RDI,QWORD PTR [RAX-32]
            mov QWORD PTR [RBX+48],RDI
            call .L_401b10
.L_406ef9:

            mov RAX,QWORD PTR [RSP]
            test RAX,RAX
            je .L_406f09

            movzx EBX,BYTE PTR [RSP+16]
            mov BYTE PTR [RAX],BL
.L_406f09:

            cmp R12,R14
            jne .L_405aa0

            jmp .L_405b10
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406f20:

            mov DWORD PTR [RBX+100],2
            add R12,1
            jmp .L_405ab3
.L_406f30:

            mov RAX,QWORD PTR [RSP+32]
            mov RDI,QWORD PTR [RSP+128]
            add RAX,16
            cmp RDI,RAX
            jne .L_405b06

            jmp .L_405b10
.L_406f4f:

            mov R15,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+160]
            add R15,16
            cmp RDI,R15
            jne .L_405b06

            jmp .L_405b10
.L_406f6e:

            cmp BYTE PTR [R12+1],116
            jne .L_405ad2
.L_406f7a:

            mov RAX,QWORD PTR [RBX+16]
            lea RCX,QWORD PTR [RIP+.L_41516f]
            mov R8D,3
            xor ESI,ESI
            add R12,2
            mov RDX,QWORD PTR [RAX-56]
            lea RDI,QWORD PTR [RAX-64]
            call .L_401b90

            jmp .L_405ad2
.L_406fa3:

            mov RCX,QWORD PTR [RSP]
            mov RDX,RBX
            mov RSI,R15
            mov RDI,R12
            call .L_4059b0

            cmp R12,RAX
            je .L_40714d

            mov RSI,R15
            mov RDI,RAX
            call .L_401100

            mov RSI,QWORD PTR [RBX+16]
            mov R12,RAX
            mov RAX,RSI
            sub RAX,QWORD PTR [RBX+8]
            cmp RAX,127
            jbe .L_405a91

            sub RSI,64
            lea R15,QWORD PTR [RSP+160]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            mov QWORD PTR [RSP+40],R15
            call .L_4024a0
.L_406ffe:

            mov RAX,QWORD PTR [RBX+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBX+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_407170

            lea RDI,QWORD PTR [RAX-64]
            lea RSI,QWORD PTR [RIP+.L_415187]
.L_407028:

            call .L_401860

            mov RDI,QWORD PTR [RBX+16]
            mov RDX,QWORD PTR [RSP+168]
            mov RSI,QWORD PTR [RSP+160]
            sub RDI,64
            call .L_4017e0
.L_40704a:

            mov R15,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+160]
            add R15,16
            cmp RDI,R15
            je .L_405a91
.L_407064:

            call free@PLT

            jmp .L_405a91
.L_40706e:

            lea RDI,QWORD PTR [RAX+2]
            cmp R15,RDI
            je .L_405b10

            mov RSI,R15
            call .L_400fc0

            cmp R15,RAX
            je .L_405b10

            cmp BYTE PTR [RAX],95
            jne .L_405b10

            lea R13,QWORD PTR [RAX+1]
            mov RCX,QWORD PTR [RSP]
            mov RDX,RBX
            mov RDI,R13
.L_4070a3:

            call .L_4059b0

            cmp R13,RAX
            mov R12,RAX
            je .L_40714d

            mov RSI,QWORD PTR [RBX+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [RBX+8]
            cmp RAX,127
            jbe .L_405b10

            sub RSI,64
            lea R15,QWORD PTR [RSP+160]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            mov QWORD PTR [RSP+40],R15
            call .L_4024a0
.L_4070e6:

            mov RAX,QWORD PTR [RBX+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBX+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBX+16]
            cmp RAX,QWORD PTR [RBX+8]
            je .L_407133

            lea RDI,QWORD PTR [RAX-64]
            lea RSI,QWORD PTR [RIP+.L_415187]
.L_40710c:

            call .L_401860

            mov RDI,QWORD PTR [RBX+16]
            mov RDX,QWORD PTR [RSP+168]
            mov RSI,QWORD PTR [RSP+160]
            sub RDI,64
            call .L_4017e0
.L_40712e:

            jmp .L_40704a
.L_407133:

            mov RDI,QWORD PTR [RSP+160]
            add R15,16
            cmp RDI,R15
            jne .L_405b06

            jmp .L_405b10
.L_40714d:

            mov RDI,QWORD PTR [RBX+16]
            cmp RDI,QWORD PTR [RBX+8]
            je .L_405b10

            sub RDI,64
            mov R14,RBP
            mov QWORD PTR [RBX+16],RDI
            call .L_401050

            jmp .L_405b13
.L_407170:

            mov RDI,QWORD PTR [RSP+160]
            add R15,16
            cmp RDI,R15
            jne .L_407064

            jmp .L_405a91
.L_40718a:

            call __stack_chk_fail@PLT
.L_40718f:

            mov R15,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+160]
            mov RBX,RAX
            add R15,16
            cmp RDI,R15
            je .L_4071ad

            call free@PLT
.L_4071ad:

            mov RDX,QWORD PTR [RSP+32]
            mov RDI,QWORD PTR [RSP+128]
            add RDX,16
            cmp RDI,RDX
            je .L_4071c8
.L_4071c3:

            call free@PLT
.L_4071c8:

            mov RDI,RBX
.L_4071cb:

            call _Unwind_Resume@PLT
.L_4071d0:

            mov RDI,QWORD PTR [R12]
            cmp QWORD PTR [RSP+40],RDI
            mov RBX,RAX
            je .L_4071e3

            call free@PLT
.L_4071e3:

            mov RAX,RBX
.L_4071e6:

            mov RDI,RAX
            call __cxa_begin_catch@PLT
.L_4071ee:

            call __cxa_rethrow@PLT
.L_4071f3:

            jmp .L_4071e6
.L_4071f5:

            mov RBX,RAX
            call __cxa_end_catch@PLT

            mov RSI,QWORD PTR [RSP+104]
            mov RDX,QWORD PTR [RSP+120]
            sub RDX,RSI
            test RSI,RSI
            je .L_4071ad

            mov RDI,QWORD PTR [RSP+96]
            call .L_4012a0

            jmp .L_4071ad
.L_40721b:

            mov RBX,RAX
.L_40721e:

            mov R15,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+160]
            add R15,16
            cmp RDI,R15
            jne .L_4071c3

            jmp .L_4071c8
.L_407236:

            jmp .L_40721b
.L_407238:

            mov RBX,RAX
.L_40723b:

            mov RAX,QWORD PTR [RSP+32]
            mov RDI,QWORD PTR [RSP+128]
            add RAX,16
            cmp RDI,RAX
            jne .L_4071c3

            jmp .L_4071c8
.L_40725a:

            jmp .L_40721b
.L_40725c:

            mov RDI,QWORD PTR [R12]
            cmp QWORD PTR [RSP+72],RDI
            mov RBX,RAX
            je .L_40726f

            call free@PLT
.L_40726f:

            mov RAX,RBX
.L_407272:

            mov RDI,RAX
            call __cxa_begin_catch@PLT
.L_40727a:

            call __cxa_rethrow@PLT
.L_40727f:

            jmp .L_407272
.L_407281:

            mov RBX,RAX
            call __cxa_end_catch@PLT

            mov RSI,QWORD PTR [RSP+104]
            mov RDX,QWORD PTR [RSP+120]
            sub RDX,RSI
            test RSI,RSI
            je .L_40721e

            mov RDI,QWORD PTR [RSP+96]
            call .L_4012a0

            jmp .L_40721e
.L_4072aa:

            mov RDI,QWORD PTR [R12]
            cmp RDI,QWORD PTR [RSP+40]
            mov RBX,RAX
            je .L_4072bd

            call free@PLT
.L_4072bd:

            mov RAX,RBX
.L_4072c0:

            mov RDI,RAX
            call __cxa_begin_catch@PLT
.L_4072c8:

            call __cxa_rethrow@PLT
.L_4072cd:

            jmp .L_4072c0
.L_4072cf:

            mov RBX,RAX
            call __cxa_end_catch@PLT
.L_4072d7:

            mov RSI,QWORD PTR [RSP+104]
            mov RDX,QWORD PTR [RSP+120]
            sub RDX,RSI
            test RSI,RSI
            je .L_40723b

            mov RDI,QWORD PTR [RSP+96]
            call .L_4012a0

            jmp .L_40723b
.L_4072fc:

            mov R15,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+160]
            mov RBX,RAX
            add R15,16
            cmp RDI,R15
            je .L_40723b

            call free@PLT

            jmp .L_40723b
.L_407323:

            jmp .L_407238
.L_407328:

            mov RDI,QWORD PTR [R12]
            cmp RDI,QWORD PTR [RSP+40]
            mov RBX,RAX
            je .L_40733b

            call free@PLT
.L_40733b:

            mov RAX,RBX
.L_40733e:

            mov RDI,RAX
            call __cxa_begin_catch@PLT
.L_407346:

            call __cxa_rethrow@PLT
.L_40734b:

            jmp .L_40733e
.L_40734d:

            mov RBX,RAX
            call __cxa_end_catch@PLT

            jmp .L_4072d7
.L_407357:

            jmp .L_40721b
.L_40735c:

            jmp .L_40721b
.L_407361:

            jmp .L_4072fc
.L_407363:

            mov RBX,RAX
            jmp .L_4071ad
.L_40736b:

            jmp .L_4072fc
.L_40736d:

            jmp .L_407238
.L_407372:

            mov RDI,QWORD PTR [R12]
            cmp RDI,QWORD PTR [RSP+48]
            mov RBX,RAX
            je .L_407385

            call free@PLT
.L_407385:

            mov RAX,RBX
.L_407388:

            mov RDI,RAX
            call __cxa_begin_catch@PLT
.L_407390:

            call __cxa_rethrow@PLT
.L_407395:

            jmp .L_407388
.L_407397:

            mov RBX,RAX
            call __cxa_end_catch@PLT

            jmp .L_4072d7
.L_4073a4:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4073b0:

            push R15
            push R14
            mov R15,RDI
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,424
.L_4073c4:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+408],RAX
            xor EAX,EAX
            cmp RDI,RSI
            je .L_407660

            movzx EAX,BYTE PTR [RDI]
            mov R13,RDX
            mov R14,RSI
            lea EDX,DWORD PTR [RAX-75]
            cmp DL,39
            ja .L_4075d8

            movabs RCX,549755815937
            bt RCX,RDX
            jae .L_4075d8

            cmp AL,114
            mov RBX,RDI
            mov DWORD PTR [RSP+8],0
            je .L_407698
.L_40741c:

            cmp AL,86
            je .L_407680
.L_407424:

            cmp AL,75
            je .L_407668
.L_40742c:

            cmp R15,RBX
            je .L_4075f2

            movzx EAX,BYTE PTR [RBX]
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBX
            mov R12,QWORD PTR [R13+8]
            mov RBP,QWORD PTR [R13+16]
            mov BYTE PTR [RSP+16],AL
.L_40744d:

            call .L_4073b0

            cmp RAX,RBX
            mov QWORD PTR [RSP+48],RAX
            je .L_407660

            cmp BYTE PTR [RSP+16],70
            mov R15,QWORD PTR [R13+8]
            mov RBX,QWORD PTR [R13+16]
            je .L_4088f0
.L_407473:

            sub RBP,R12
            mov RAX,QWORD PTR [R13]
            sub RBX,R15
            mov R14,RBP
            lea RSI,QWORD PTR [RSP+80]
            lea RDI,QWORD PTR [R13+32]
            sar RBX,6
            sar R14,6
            mov QWORD PTR [RSP+24],RBX
            mov QWORD PTR [RSP+80],RAX
            call .L_402b00

            cmp RBX,R14
            jbe .L_4076b0

            mov R15D,DWORD PTR [RSP+8]
            and R15D,1
            jmp .L_40755d
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4074c0:

            test R15D,R15D
            jne .L_408910
.L_4074c9:

            test BYTE PTR [RSP+8],2
            jne .L_408990
.L_4074d4:

            test BYTE PTR [RSP+8],4
            jne .L_408950
.L_4074df:

            mov R12,QWORD PTR [R13+48]
            mov RBX,QWORD PTR [R12-16]
            cmp RBX,QWORD PTR [R12-8]
            je .L_4089d0

            test RBX,RBX
            je .L_407541

            lea RCX,QWORD PTR [RBX+16]
            mov RDI,RBX
            mov QWORD PTR [RSP+32],RAX
            mov QWORD PTR [RBX],RCX
            mov RSI,QWORD PTR [RAX]
            mov RDX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+40],RCX
            add RDX,RSI
            call .L_401470
.L_40751b:

            mov RAX,QWORD PTR [RSP+32]
            lea RDX,QWORD PTR [RBX+48]
            lea RDI,QWORD PTR [RBX+32]
            mov QWORD PTR [RBX+32],RDX
            mov RSI,QWORD PTR [RAX+32]
            mov RDX,QWORD PTR [RAX+40]
            add RDX,RSI
.L_407537:

            call .L_401470
.L_40753c:

            mov RBX,QWORD PTR [R12-16]
.L_407541:

            add RBX,64
            mov QWORD PTR [R12-16],RBX
.L_40754a:

            add R14,1
            add RBP,64
            cmp R14,QWORD PTR [RSP+24]
            jae .L_4076b0
.L_40755d:

            mov RAX,QWORD PTR [R13+8]
            add RAX,RBP
            cmp BYTE PTR [RSP+16],70
            jne .L_4074c0

            mov RBX,QWORD PTR [RAX+40]
            mov RDX,QWORD PTR [RAX+32]
            cmp BYTE PTR [RDX+RBX*1-2],38
            lea RDI,QWORD PTR [RBX-2]
            lea RSI,QWORD PTR [RBX-1]
            movzx ECX,BYTE PTR [RDX+RBX*1-1]
            je .L_4089e8

            cmp CL,38
            cmove RBX,RSI
.L_407596:

            test R15D,R15D
            jne .L_4089f8
.L_40759f:

            test BYTE PTR [RSP+8],2
            jne .L_408a20
.L_4075aa:

            test BYTE PTR [RSP+8],4
            je .L_4074df

            lea RDI,QWORD PTR [RAX+32]
            lea RDX,QWORD PTR [RIP+.L_41515e]
            mov RSI,RBX
.L_4075c3:

            call .L_401e90

            mov RAX,QWORD PTR [R13+8]
            add RAX,RBP
            jmp .L_4074df
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4075d8:

            mov RDX,R13
            mov RSI,R14
            mov RDI,R15
            call .L_4042f0

            cmp R15,RAX
            mov RBX,RAX
            je .L_4076c0
.L_4075f2:

            mov RCX,QWORD PTR [RSP+408]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBX
            jne .L_40951e

            add RSP,424
.L_407613:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_40761e:

            add RBX,1
            cmp R14,RBX
            jne .L_408c4e
.L_40762b:

            mov RAX,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R13+16],RDI
            call .L_401050
.L_40763c:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+272]
            add RAX,16
            cmp RDI,RAX
            je .L_407660

            call free@PLT

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407660:

            mov RBX,R15
            jmp .L_4075f2
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407668:

            or DWORD PTR [RSP+8],1
            add RBX,1
            jmp .L_40742c
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407680:

            movzx EAX,BYTE PTR [RBX+1]
            or DWORD PTR [RSP+8],2
            add RBX,1
            jmp .L_407424
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407698:

            lea RBX,QWORD PTR [RDI+1]
            movzx EAX,BYTE PTR [RDI+1]
            mov DWORD PTR [RSP+8],4
            jmp .L_40741c
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4076b0:

            mov RBX,QWORD PTR [RSP+48]
            jmp .L_4075f2
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4076c0:

            movzx EAX,BYTE PTR [R15]
            sub EAX,65
            cmp AL,20
            ja .L_407f28

            lea RDX,QWORD PTR [RIP+.L_415874]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4076e8:

            mov RAX,QWORD PTR [R13+16]
            lea R12,QWORD PTR [R15+1]
            mov RDX,R13
            mov RSI,R14
            mov RBP,QWORD PTR [R13+8]
            mov RDI,R12
            mov QWORD PTR [RSP+8],RAX
            call .L_4073b0

            cmp R12,RAX
            mov RBX,RAX
            je .L_407660

            mov RAX,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RSP+80]
            lea RDI,QWORD PTR [R13+32]
            sub RAX,RBP
            mov R14,RAX
            mov RBP,RAX
            mov RAX,QWORD PTR [R13+16]
            sub RAX,QWORD PTR [R13+8]
            sar R14,6
            mov QWORD PTR [RSP+8],R14
            sar RAX,6
            mov R15,RAX
            mov QWORD PTR [RSP+16],RAX
            mov RAX,QWORD PTR [R13]
            mov QWORD PTR [RSP+80],RAX
            call .L_402b00

            cmp R14,R15
            jae .L_4075f2

            mov R15,RBP
            lea RBP,QWORD PTR [RSP+336]
            lea RAX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+24],RAX
            jmp .L_40782d
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407780:

            cmp QWORD PTR [RDX+40],0
            je .L_407794

            mov RAX,QWORD PTR [RDX+32]
            cmp BYTE PTR [RAX],40
            je .L_408d28
.L_407794:

            lea RSI,QWORD PTR [RIP+.L_41516c]
            call .L_401860

            mov R14,QWORD PTR [R13+48]
            mov RAX,QWORD PTR [R13+8]
            mov R12,QWORD PTR [R14-16]
            add RAX,R15
            cmp R12,QWORD PTR [R14-8]
            je .L_408bcd

            test R12,R12
            je .L_40780b

            lea RSI,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [RSP+32],RAX
            mov QWORD PTR [R12],RSI
            mov QWORD PTR [RSP+40],RSI
            mov RDX,QWORD PTR [RAX+8]
            mov RSI,QWORD PTR [RAX]
            add RDX,RSI
            call .L_401470
.L_4077e3:

            mov RAX,QWORD PTR [RSP+32]
            lea RDX,QWORD PTR [R12+48]
            lea RDI,QWORD PTR [R12+32]
            mov QWORD PTR [R12+32],RDX
            mov RSI,QWORD PTR [RAX+32]
            mov RDX,QWORD PTR [RAX+40]
            add RDX,RSI
.L_407802:

            call .L_401470
.L_407807:

            mov R12,QWORD PTR [R14-16]
.L_40780b:

            add R12,64
            mov QWORD PTR [R14-16],R12
.L_407813:

            add QWORD PTR [RSP+8],1
            add R15,64
            mov RAX,QWORD PTR [RSP+8]
            cmp QWORD PTR [RSP+16],RAX
            jbe .L_4075f2
.L_40782d:

            mov RDX,QWORD PTR [R13+8]
            mov R14,QWORD PTR [RSP+24]
            mov RDI,RBP
            add RDX,R15
            mov RAX,QWORD PTR [RDX+40]
            mov QWORD PTR [RSP+336],R14
            mov RSI,QWORD PTR [RDX+32]
            mov EDX,2
            cmp RAX,2
            cmova RAX,RDX
            lea RDX,QWORD PTR [RSI+RAX*1]
.L_40785d:

            call .L_401470

            lea RSI,QWORD PTR [RIP+.L_41518a]
            mov RDI,RBP
            call .L_401090

            mov RDI,QWORD PTR [RSP+336]
            mov R12D,EAX
            cmp RDI,R14
            je .L_407886

            call free@PLT
.L_407886:

            mov RDX,QWORD PTR [R13+8]
            lea RSI,QWORD PTR [RIP+.L_415457]
            add RDX,R15
            test R12D,R12D
            mov RDI,RDX
            jne .L_407780
.L_4078a0:

            call .L_401860

            mov RDI,QWORD PTR [R13+8]
            lea RDX,QWORD PTR [RIP+.L_415221]
            xor ESI,ESI
            add RDI,R15
            add RDI,32
            call .L_401e90

            mov RDI,QWORD PTR [R13+8]
            add RDI,R15
            jmp .L_407794

            nop
            nop
            nop
            nop
            nop
            nop
.L_4078d0:

            lea RBP,QWORD PTR [R15+1]
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
            call .L_4073b0

            cmp RBP,RAX
            mov RBX,RAX
            je .L_407660

            mov RAX,QWORD PTR [R13+16]
            cmp RAX,QWORD PTR [R13+8]
            je .L_407660

            lea RDI,QWORD PTR [RAX-64]
            lea RSI,QWORD PTR [RIP+.L_41519a]
.L_407907:

            call .L_401860

            mov RAX,QWORD PTR [R13]
            lea RDX,QWORD PTR [RSP+72]
            mov QWORD PTR [RSP+72],RAX
            mov RAX,QWORD PTR [R13+16]
.L_40791e:

            lea RBP,QWORD PTR [RSP+80]
            lea RSI,QWORD PTR [RAX-64]
            mov RDI,RBP
            call .L_402970

            lea RDI,QWORD PTR [R13+32]
            mov RSI,RBP
            call .L_4030f0

            mov RDI,RBP
            call .L_401b10

            jmp .L_4075f2
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407950:

            mov RDX,R13
            mov RSI,R14
            mov RDI,R15
            mov R12,QWORD PTR [R13+8]
            mov RBP,QWORD PTR [R13+16]
            call .L_4047e0

            cmp R15,RAX
            mov RBX,RAX
            je .L_4075f2

            mov RAX,QWORD PTR [R13]
            mov R15,QWORD PTR [R13+16]
            sub RBP,R12
            sub R15,QWORD PTR [R13+8]
            lea RDI,QWORD PTR [R13+32]
            sar RBP,6
            mov QWORD PTR [RSP+32],RBP
            mov QWORD PTR [RSP+80],RAX
            lea RAX,QWORD PTR [RSP+80]
            mov QWORD PTR [RSP+40],RDI
            sar R15,6
            mov RSI,RAX
            mov QWORD PTR [RSP+48],RAX
            mov QWORD PTR [RSP+8],R15
            call .L_402b00

            cmp R15,RBP
            jbe .L_408ac5

            mov R15,RBP
            jmp .L_407a2f
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4079c8:

            test RBP,RBP
            je .L_407a17

            lea RCX,QWORD PTR [RBP+16]
            mov RDI,RBP
            mov QWORD PTR [RSP+16],RAX
            mov QWORD PTR [RBP],RCX
            mov RSI,QWORD PTR [RAX]
            mov RDX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+24],RCX
            add RDX,RSI
            call .L_401470
.L_4079f1:

            mov RAX,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RBP+48]
            lea RDI,QWORD PTR [RBP+32]
            mov QWORD PTR [RBP+32],RDX
            mov RSI,QWORD PTR [RAX+32]
            mov RDX,QWORD PTR [RAX+40]
            add RDX,RSI
.L_407a0d:

            call .L_401470
.L_407a12:

            mov RBP,QWORD PTR [R12-16]
.L_407a17:

            add RBP,64
            mov QWORD PTR [R12-16],RBP
.L_407a20:

            add R15,1
            cmp R15,QWORD PTR [RSP+8]
            jae .L_408ac5
.L_407a2f:

            mov R12,QWORD PTR [R13+48]
            mov RAX,R15
            shl RAX,6
            add RAX,QWORD PTR [R13+8]
            mov RBP,QWORD PTR [R12-16]
            cmp RBP,QWORD PTR [R12-8]
            jne .L_4079c8

            lea RDI,QWORD PTR [R12-32]
            mov RDX,RAX
            mov RSI,RBP
.L_407a59:

            call .L_402d20

            jmp .L_407a20
.L_407a60:

            lea RBP,QWORD PTR [R15+1]
            cmp RBP,R14
            je .L_407660

            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
            call .L_4038c0

            cmp RBP,RAX
            mov R12,RAX
            mov RBX,R15
            je .L_4075f2

            mov RDX,R13
            mov RSI,R14
            mov RDI,RAX
            call .L_4073b0

            cmp R12,RAX
            mov RBX,RAX
            je .L_407660

            mov RSI,QWORD PTR [R13+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [R13+8]
            cmp RAX,127
            jbe .L_407660

            sub RSI,64
            lea R15,QWORD PTR [RSP+112]
            lea RBP,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            call .L_4024a0
.L_407ad6:

            mov RAX,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R13+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [R13+16]
            mov EDX,9
            mov RDI,RBP
            lea RSI,QWORD PTR [RAX-64]
.L_407af7:

            call .L_401580

            lea RSI,QWORD PTR [RIP+.L_4151b6]
            mov RDI,RBP
            call .L_401090

            mov RDI,QWORD PTR [RSP+336]
            mov R12D,EAX
            lea RAX,QWORD PTR [RBP+16]
            cmp RDI,RAX
            je .L_407b24

            call free@PLT
.L_407b24:

            mov RAX,QWORD PTR [R13+16]
            test R12D,R12D
            lea RSI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RSI+32]
            je .L_409306

            lea R14,QWORD PTR [RSP+272]
            mov RDI,R14
            mov QWORD PTR [RSP+8],R14
            call .L_4024a0
.L_407b4e:

            lea RAX,QWORD PTR [RSP+208]
            lea RDX,QWORD PTR [RIP+.L_4152d7]
            mov RSI,R15
            mov RDI,RAX
            mov QWORD PTR [RSP+16],RAX
.L_407b68:

            call .L_402a80
.L_407b6d:

            lea R12,QWORD PTR [RSP+240]
            mov RSI,QWORD PTR [RSP+16]
            mov RDX,R14
            mov RDI,R12
.L_407b80:

            call .L_4024a0
.L_407b85:

            lea RAX,QWORD PTR [RBP+16]
            lea RDX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+240]
            cmp RAX,RDX
            je .L_4098a8

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+256]
            mov QWORD PTR [RSP+352],RAX
.L_407bbf:

            mov RAX,QWORD PTR [RSP+248]
            add R12,16
            mov RSI,RBP
            mov QWORD PTR [RSP+240],R12
            mov QWORD PTR [RSP+248],0
            mov BYTE PTR [RSP+256],0
            mov QWORD PTR [RSP+376],0
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [RBP+48]
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            mov RAX,QWORD PTR [R13+16]
            lea R14,QWORD PTR [RAX-64]
            mov RDI,R14
            call .L_401a50

            lea RSI,QWORD PTR [RBP+32]
            lea RDI,QWORD PTR [R14+32]
            call .L_401a50

            mov RDI,RBP
            call .L_401050

            mov RDI,QWORD PTR [RSP+240]
            cmp RDI,R12
            je .L_407c49

            call free@PLT
.L_407c49:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_407c64

            call free@PLT
.L_407c64:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+272]
            add RAX,16
            cmp RDI,RAX
            je .L_407c7f
.L_407c7a:

            call free@PLT
.L_407c7f:

            mov RAX,QWORD PTR [R13]
            mov RSI,QWORD PTR [R13+16]
            lea RDX,QWORD PTR [RSP+72]
            lea RBP,QWORD PTR [R13+32]
            mov QWORD PTR [RSP+72],RAX
            lea RAX,QWORD PTR [RSP+80]
            sub RSI,64
            mov RDI,RAX
            mov R14,RAX
.L_407ca4:

            call .L_402970
.L_407ca9:

            mov RSI,R14
            mov RDI,RBP
            call .L_4030f0

            mov RDI,R14
            call .L_401b10

            mov RDI,QWORD PTR [RSP+112]
            lea RAX,QWORD PTR [R15+16]
            cmp RDI,RAX
            je .L_4075f2
.L_407cce:

            call free@PLT

            jmp .L_4075f2
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407ce0:

            mov RAX,QWORD PTR [R13+16]
            lea R12,QWORD PTR [R15+1]
            mov RDX,R13
            mov RSI,R14
            mov RBP,QWORD PTR [R13+8]
            mov RDI,R12
            mov QWORD PTR [RSP+8],RAX
.L_407cfa:

            call .L_4073b0

            cmp R12,RAX
            mov RBX,RAX
            je .L_407660

            mov RAX,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RSP+80]
            lea RDI,QWORD PTR [R13+32]
            sub RAX,RBP
            mov R14,RAX
            mov RBP,RAX
            mov RAX,QWORD PTR [R13+16]
            sub RAX,QWORD PTR [R13+8]
            sar R14,6
            mov QWORD PTR [RSP+8],R14
            sar RAX,6
            mov R15,RAX
            mov QWORD PTR [RSP+16],RAX
            mov RAX,QWORD PTR [R13]
            mov QWORD PTR [RSP+80],RAX
            call .L_402b00

            cmp R15,R14
            jbe .L_4075f2

            mov R15,RBP
            lea RBP,QWORD PTR [RSP+336]
            lea RAX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+24],RAX
            jmp .L_407e1d
          .byte 0x90
.L_407d70:

            cmp QWORD PTR [RDX+40],0
            je .L_407d84

            mov RAX,QWORD PTR [RDX+32]
            cmp BYTE PTR [RAX],40
            je .L_408d10
.L_407d84:

            lea RSI,QWORD PTR [RIP+.L_415169]
            call .L_401860

            mov R14,QWORD PTR [R13+48]
            mov RAX,QWORD PTR [R13+8]
            mov R12,QWORD PTR [R14-16]
            add RAX,R15
            cmp R12,QWORD PTR [R14-8]
            je .L_408ba0

            test R12,R12
            je .L_407dfb

            lea RCX,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [RSP+32],RAX
            mov QWORD PTR [R12],RCX
            mov RSI,QWORD PTR [RAX]
            mov RDX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+40],RCX
            add RDX,RSI
            call .L_401470
.L_407dd3:

            mov RAX,QWORD PTR [RSP+32]
            lea RDX,QWORD PTR [R12+48]
            lea RDI,QWORD PTR [R12+32]
            mov QWORD PTR [R12+32],RDX
            mov RSI,QWORD PTR [RAX+32]
            mov RDX,QWORD PTR [RAX+40]
            add RDX,RSI
.L_407df2:

            call .L_401470
.L_407df7:

            mov R12,QWORD PTR [R14-16]
.L_407dfb:

            add R12,64
            mov QWORD PTR [R14-16],R12
.L_407e03:

            add QWORD PTR [RSP+8],1
            add R15,64
            mov RAX,QWORD PTR [RSP+8]
            cmp RAX,QWORD PTR [RSP+16]
            jae .L_4075f2
.L_407e1d:

            mov RDX,QWORD PTR [R13+8]
            mov R14,QWORD PTR [RSP+24]
            mov RDI,RBP
            add RDX,R15
            mov RAX,QWORD PTR [RDX+40]
            mov QWORD PTR [RSP+336],R14
            mov RSI,QWORD PTR [RDX+32]
            mov EDX,2
            cmp RAX,2
            cmova RAX,RDX
            lea RDX,QWORD PTR [RSI+RAX*1]
.L_407e4d:

            call .L_401470

            lea RSI,QWORD PTR [RIP+.L_41518a]
            mov RDI,RBP
            call .L_401090

            mov RDI,QWORD PTR [RSP+336]
            mov R12D,EAX
            cmp RDI,R14
            je .L_407e76

            call free@PLT
.L_407e76:

            mov RDX,QWORD PTR [R13+8]
            lea RSI,QWORD PTR [RIP+.L_415457]
            add RDX,R15
            test R12D,R12D
            mov RDI,RDX
            jne .L_407d70
.L_407e90:

            call .L_401860

            mov RDI,QWORD PTR [R13+8]
            lea RDX,QWORD PTR [RIP+.L_415221]
            xor ESI,ESI
            add RDI,R15
            add RDI,32
            call .L_401e90

            mov RDI,QWORD PTR [R13+8]
            add RDI,R15
            jmp .L_407d84

            nop
            nop
            nop
            nop
            nop
            nop
.L_407ec0:

            lea RAX,QWORD PTR [R15+1]
            cmp R14,RAX
            je .L_407f28

            movzx EAX,BYTE PTR [R15+1]
            cmp AL,112
            je .L_408e1f

            jle .L_408df8

            cmp AL,116
            je .L_408e00

            cmp AL,118
            jne .L_407f28

            mov RAX,R14
            sub RAX,R15
            cmp RAX,3
            jle .L_407f28

            movzx EAX,BYTE PTR [R15+2]
            lea RBP,QWORD PTR [R15+2]
            lea EDX,DWORD PTR [RAX-49]
            cmp DL,8
            ja .L_4096f7

            mov RSI,R14
            mov RDI,RBP
            call .L_400fc0

            cmp R14,RAX
            je .L_407f28

            cmp BYTE PTR [RAX],95
            je .L_409c01

            nop
            nop
            nop
            nop
            nop
            nop
.L_407f28:

            mov RDX,R13
            mov RSI,R14
            mov RDI,R15
            call .L_4042f0

            cmp R15,RAX
            mov RBX,RAX
            jne .L_4075f2

            xor ECX,ECX
            mov RDX,R13
            mov RSI,R14
            mov RDI,RAX
            call .L_4059b0

            mov RBX,RAX
.L_407f55:

            cmp R15,RBX
            je .L_4075f2
.L_407f5e:

            mov RAX,QWORD PTR [R13+16]
            cmp RAX,QWORD PTR [R13+8]
            je .L_407660
.L_407f6c:

            mov RDX,QWORD PTR [R13]
            mov QWORD PTR [RSP+72],RDX
            lea RDX,QWORD PTR [RSP+72]
            jmp .L_40791e
          .byte 0x90
.L_407f80:

            lea RBP,QWORD PTR [R15+1]
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
            call .L_4073b0

            cmp RBP,RAX
            mov RBX,RAX
            je .L_407660

            mov RAX,QWORD PTR [R13+16]
            cmp QWORD PTR [R13+8],RAX
            je .L_407660

            lea RDI,QWORD PTR [RAX-64]
            lea RSI,QWORD PTR [RIP+.L_415191]
            jmp .L_407907
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_407fc0:

            lea RAX,QWORD PTR [R15+1]
            cmp R14,RAX
            je .L_407fd4

            cmp BYTE PTR [R15+1],116
            je .L_408f27
.L_407fd4:

            mov RDX,R13
            mov RSI,R14
            mov RDI,R15
            call .L_403bc0

            cmp R15,RAX
            mov RBP,RAX
            je .L_407660

            mov RDX,R13
            mov RSI,R14
            mov RDI,RAX
            call .L_40c230

            cmp RBP,RAX
            mov RBX,RAX
            je .L_4075f2

            mov RAX,QWORD PTR [R13+16]
            mov RDX,RAX
            sub RDX,QWORD PTR [R13+8]
            cmp RDX,127
            ja .L_408d5b

            mov RBX,RBP
            jmp .L_4075f2
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408028:

            mov RAX,QWORD PTR [R13+16]
            lea R12,QWORD PTR [R15+1]
            mov RDX,R13
            mov RSI,R14
            mov RBP,QWORD PTR [R13+8]
            mov RDI,R12
            mov QWORD PTR [RSP+8],RAX
            call .L_4073b0

            cmp R12,RAX
            mov RBX,RAX
            je .L_407660

            mov RAX,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RSP+80]
            lea RDI,QWORD PTR [R13+32]
            sub RAX,RBP
            mov R14,RAX
            mov RBP,RAX
            mov RAX,QWORD PTR [R13+16]
            sub RAX,QWORD PTR [R13+8]
            sar R14,6
            mov QWORD PTR [RSP+8],R14
            sar RAX,6
            mov R12,RAX
            mov QWORD PTR [RSP+32],RAX
            mov RAX,QWORD PTR [R13]
            mov QWORD PTR [RSP+80],RAX
            call .L_402b00

            cmp R12,R14
            jbe .L_4075f2

            mov R14,RBP
            lea RBP,QWORD PTR [RSP+336]
            lea RAX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+24],RAX
            jmp .L_408187
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4080c0:

            cmp QWORD PTR [RDI+40],0
            je .L_4080d4

            mov RAX,QWORD PTR [RDI+32]
            cmp BYTE PTR [RAX],40
            je .L_408d1c
.L_4080d4:

            cmp BYTE PTR [R15+1],85
            je .L_408a43
.L_4080df:

            lea RSI,QWORD PTR [RIP+.L_415436]
            call .L_401860
.L_4080eb:

            mov RCX,QWORD PTR [R13+48]
            mov RAX,QWORD PTR [R13+8]
            mov R12,QWORD PTR [RCX-16]
            add RAX,R14
            cmp R12,QWORD PTR [RCX-8]
            mov QWORD PTR [RSP+16],RCX
            je .L_408bb4

            test R12,R12
            je .L_408160

            lea RSI,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [RSP+40],RAX
            mov QWORD PTR [R12],RSI
            mov QWORD PTR [RSP+48],RSI
            mov RDX,QWORD PTR [RAX+8]
            mov RSI,QWORD PTR [RAX]
            add RDX,RSI
            call .L_401470
.L_408133:

            mov RAX,QWORD PTR [RSP+40]
            lea RDX,QWORD PTR [R12+48]
            lea RDI,QWORD PTR [R12+32]
            mov QWORD PTR [R12+32],RDX
            mov RSI,QWORD PTR [RAX+32]
            mov RDX,QWORD PTR [RAX+40]
            add RDX,RSI
.L_408152:

            call .L_401470
.L_408157:

            mov RCX,QWORD PTR [RSP+16]
            mov R12,QWORD PTR [RCX-16]
.L_408160:

            mov RAX,QWORD PTR [RSP+16]
            add R12,64
            mov QWORD PTR [RAX-16],R12
.L_40816d:

            add QWORD PTR [RSP+8],1
            add R14,64
            mov RAX,QWORD PTR [RSP+8]
            cmp RAX,QWORD PTR [RSP+32]
            jae .L_4075f2
.L_408187:

            mov RDX,QWORD PTR [R13+8]
            mov RSI,QWORD PTR [RSP+24]
            mov RDI,RBP
            add RDX,R14
            mov RAX,QWORD PTR [RDX+40]
            mov QWORD PTR [RSP+336],RSI
            mov RSI,QWORD PTR [RDX+32]
            mov EDX,2
            cmp RAX,2
            cmova RAX,RDX
            lea RDX,QWORD PTR [RSI+RAX*1]
.L_4081b7:

            call .L_401470

            lea RSI,QWORD PTR [RIP+.L_41518a]
            mov RDI,RBP
            call .L_401090

            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,QWORD PTR [RSP+24]
            mov R12D,EAX
            je .L_4081e2

            call free@PLT
.L_4081e2:

            mov RDI,QWORD PTR [R13+8]
            lea RSI,QWORD PTR [RIP+.L_415457]
            add RDI,R14
            test R12D,R12D
            jne .L_4080c0
.L_4081f9:

            call .L_401860

            mov RDI,QWORD PTR [R13+8]
            lea RDX,QWORD PTR [RIP+.L_415221]
            xor ESI,ESI
            add RDI,R14
            add RDI,32
            call .L_401e90

            mov RDI,QWORD PTR [R13+8]
            add RDI,R14
            jmp .L_4080d4

            nop
            nop
            nop
            nop
            nop
.L_408228:

            lea RAX,QWORD PTR [R15+1]
            cmp R14,RAX
            mov QWORD PTR [RSP+8],RAX
            je .L_407660

            movzx EAX,BYTE PTR [R15+1]
            cmp AL,95
            je .L_409275

            sub EAX,49
            cmp AL,8
            ja .L_408f55

            mov RDI,QWORD PTR [RSP+8]
            mov RSI,R14
            mov RBX,R15
            call .L_400fc0

            cmp R14,RAX
            mov QWORD PTR [RSP+16],RAX
            je .L_4075f2

            cmp BYTE PTR [RAX],95
            jne .L_4075f2

            lea RBP,QWORD PTR [RAX+1]
            mov RDX,R13
            mov RDI,RBP
            call .L_4073b0

            cmp RBP,RAX
            mov RBX,RAX
            je .L_407660

            mov RAX,QWORD PTR [R13+16]
            cmp RAX,QWORD PTR [R13+8]
            je .L_407660

            lea RBP,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RAX-32]
            mov EDX,2
            mov RDI,RBP
            call .L_401580

            lea RSI,QWORD PTR [RIP+.L_41518a]
            mov RDI,RBP
            call .L_401090

            mov RDI,QWORD PTR [RSP+336]
            mov R12D,EAX
            lea RAX,QWORD PTR [RBP+16]
            cmp RDI,RAX
            je .L_4082e3

            call free@PLT
.L_4082e3:

            test R12D,R12D
            je .L_409b37
.L_4082ec:

            mov RAX,QWORD PTR [R13+16]
            lea R12,QWORD PTR [RSP+240]
            mov RDX,QWORD PTR [RSP+16]
            mov RSI,QWORD PTR [RSP+8]
            mov RDI,R12
            lea R14,QWORD PTR [RAX-32]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+240],RAX
            call .L_401470
.L_40831b:

            lea RAX,QWORD PTR [RSP+272]
            lea RSI,QWORD PTR [RIP+.L_41518a]
            mov RDX,R12
            mov RDI,RAX
            mov QWORD PTR [RSP+8],RAX
.L_408335:

            call .L_402420
.L_40833a:

            mov RSI,QWORD PTR [RSP+8]
            lea RDX,QWORD PTR [RIP+.L_41518f]
            mov RDI,RBP
.L_408349:

            call .L_4028e0
.L_40834e:

            mov R8,QWORD PTR [RSP+344]
            mov RCX,QWORD PTR [RSP+336]
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,R14
.L_408365:

            call .L_401e50
.L_40836a:

            mov RDI,QWORD PTR [RSP+336]
            add RBP,16
            cmp RDI,RBP
            je .L_408380

            call free@PLT
.L_408380:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+272]
            add RAX,16
            cmp RDI,RAX
            je .L_40839b

            call free@PLT
.L_40839b:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            cmp RDI,R12
            je .L_4083b1

            call free@PLT
.L_4083b1:

            cmp R15,RBX
            je .L_4075f2

            mov RAX,QWORD PTR [R13+16]
            cmp QWORD PTR [R13+8],RAX
            jne .L_407f6c

            jmp .L_407660
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4083d0:

            lea RBP,QWORD PTR [R15+1]
            cmp R14,RBP
            je .L_407660

            cmp BYTE PTR [R15+1],89
            jne .L_4083f1

            lea RBP,QWORD PTR [R15+2]
            cmp R14,RBP
            je .L_407660
.L_4083f1:

            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_4083fa:

            call .L_4073b0

            cmp RBP,RAX
            mov RBX,RAX
            je .L_407660

            lea RAX,QWORD PTR [RSP+272]
            lea RSI,QWORD PTR [RIP+.L_415458]
            mov RDI,RAX
            mov QWORD PTR [RSP+8],RAX
            call .L_401540
.L_408427:

            cmp R14,RBX
            je .L_40762b

            movzx EAX,BYTE PTR [RBX]
            mov DWORD PTR [RSP+48],0
            cmp AL,69
            je .L_408c59

            lea RSI,QWORD PTR [RSP+336]
            mov QWORD PTR [RSP+56],RSI
            lea RSI,QWORD PTR [RSP+352]
            mov QWORD PTR [RSP+16],RSI
.L_40845d:

            cmp AL,118
            je .L_40761e

            cmp AL,82
            je .L_408d34

            cmp AL,79
            jne .L_408484

            lea RAX,QWORD PTR [RBX+1]
            cmp R14,RAX
            je .L_408484

            cmp BYTE PTR [RBX+1],69
            je .L_408f48
.L_408484:

            mov RBP,QWORD PTR [R13+16]
            sub RBP,QWORD PTR [R13+8]
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBX
            sar RBP,6
            mov R12,RBP
.L_40849c:

            call .L_4073b0
.L_4084a1:

            mov RCX,RAX
            mov QWORD PTR [RSP+32],RAX
            mov RAX,QWORD PTR [R13+16]
            sub RAX,QWORD PTR [R13+8]
            mov RSI,RAX
            sar RSI,6
            cmp RCX,RBX
            mov QWORD PTR [RSP+24],RSI
            je .L_40763c

            cmp R14,RCX
            je .L_40763c

            cmp RBP,RSI
            jb .L_40854c

            jmp .L_408c49
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4084e0:

            mov QWORD PTR [RSP+336],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+352],RCX
.L_4084f4:

            mov RCX,QWORD PTR [RAX+8]
            mov RDI,QWORD PTR [RSP+8]
            mov QWORD PTR [RSP+344],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RDX,QWORD PTR [RSP+344]
            mov RSI,QWORD PTR [RSP+336]
.L_408524:

            call .L_4017e0
.L_408529:

            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,QWORD PTR [RSP+16]
            je .L_40853d

            call free@PLT
.L_40853d:

            add RBP,1
            cmp QWORD PTR [RSP+24],RBP
            jbe .L_408bf3
.L_40854c:

            mov RAX,QWORD PTR [RSP+280]
            cmp RAX,1
            jbe .L_408587

            movabs RCX,9223372036854775807
            sub RCX,RAX
            cmp RCX,1
            jbe .L_40a07f

            mov RDI,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RIP+.L_41514a]
            mov EDX,2
.L_408582:

            call .L_4017e0
.L_408587:

            mov RDI,RBP
            mov EAX,15
            shl RDI,6
            add RDI,QWORD PTR [R13+8]
            mov RCX,QWORD PTR [RDI]
            mov R8,QWORD PTR [RDI+8]
            lea RSI,QWORD PTR [RDI+16]
            mov RDX,QWORD PTR [RDI+40]
            cmp RCX,RSI
            lea R9,QWORD PTR [R8+RDX*1]
            je .L_4085b3

            mov RAX,QWORD PTR [RDI+16]
.L_4085b3:

            cmp R9,RAX
            mov RSI,QWORD PTR [RDI+32]
            jbe .L_4085d7

            lea R10,QWORD PTR [RDI+48]
            mov EAX,15
            cmp RSI,R10
            je .L_4085ce

            mov RAX,QWORD PTR [RDI+48]
.L_4085ce:

            cmp R9,RAX
            jbe .L_408be1
.L_4085d7:

            call .L_4017e0
.L_4085dc:

            mov RCX,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+336],RCX
            mov RCX,QWORD PTR [RAX]
            cmp RCX,RDX
            jne .L_4084e0

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_4084f4
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408610:

            lea RBX,QWORD PTR [R15+1]
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBX
.L_40861d:

            call .L_4073b0

            cmp RBX,RAX
            mov RBP,RAX
            je .L_407660

            mov RDX,R13
            mov RSI,R14
            mov RDI,RAX
            call .L_4073b0
.L_40863c:

            cmp RBP,RAX
            mov RBX,RAX
            je .L_407660

            mov RAX,QWORD PTR [R13+16]
            mov RDX,RAX
            sub RDX,QWORD PTR [R13+8]
            cmp RDX,127
            jbe .L_407660

            lea RCX,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RSP+288]
            mov QWORD PTR [RSP+8],RCX
            mov QWORD PTR [RSP+272],RDX
            lea RDX,QWORD PTR [RAX-48]
            mov RCX,QWORD PTR [RAX-64]
            cmp RCX,RDX
            je .L_40956f

            mov QWORD PTR [RSP+272],RCX
            mov RCX,QWORD PTR [RAX-48]
            mov QWORD PTR [RSP+288],RCX
.L_40869f:

            mov RCX,QWORD PTR [RAX-56]
            mov RSI,QWORD PTR [RSP+8]
            mov QWORD PTR [RSP+280],RCX
            mov QWORD PTR [RAX-64],RDX
            lea RDX,QWORD PTR [RSI+48]
            mov QWORD PTR [RAX-56],0
            mov BYTE PTR [RAX-48],0
            mov QWORD PTR [RSP+304],RDX
            mov RCX,QWORD PTR [RAX-32]
            lea RDX,QWORD PTR [RAX-16]
            cmp RCX,RDX
            je .L_40955d

            mov QWORD PTR [RSP+304],RCX
            mov RCX,QWORD PTR [RAX-16]
            mov QWORD PTR [RSP+320],RCX
.L_4086f1:

            mov RCX,QWORD PTR [RAX-24]
            lea RBP,QWORD PTR [RSP+336]
            mov QWORD PTR [RSP+312],RCX
            mov QWORD PTR [RAX-32],RDX
            mov QWORD PTR [RAX-24],0
            mov BYTE PTR [RAX-16],0
            mov RAX,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R13+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [R13+16]
            lea RDX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+336],RDX
            mov RCX,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RAX-48]
            cmp RCX,RDX
            je .L_40954b

            mov QWORD PTR [RSP+336],RCX
            mov RCX,QWORD PTR [RAX-48]
            mov QWORD PTR [RSP+352],RCX
.L_40875b:

            mov RCX,QWORD PTR [RAX-56]
            mov QWORD PTR [RSP+344],RCX
            mov QWORD PTR [RAX-64],RDX
            lea RDX,QWORD PTR [RBP+48]
            mov QWORD PTR [RAX-56],0
            mov BYTE PTR [RAX-48],0
            mov QWORD PTR [RSP+368],RDX
            mov RCX,QWORD PTR [RAX-32]
            lea RDX,QWORD PTR [RAX-16]
            cmp RCX,RDX
            je .L_409539

            mov QWORD PTR [RSP+368],RCX
            mov RCX,QWORD PTR [RAX-16]
            mov QWORD PTR [RSP+384],RCX
.L_4087a8:

            mov RCX,QWORD PTR [RAX-24]
            mov QWORD PTR [RSP+376],RCX
            mov QWORD PTR [RAX-32],RDX
            mov QWORD PTR [RAX-24],0
            mov BYTE PTR [RAX-16],0
            cmp QWORD PTR [RSP+312],0
            je .L_4087e0

            mov RAX,QWORD PTR [RSP+304]
            cmp BYTE PTR [RAX],40
            je .L_4095ca
.L_4087e0:

            lea RAX,QWORD PTR [RSP+208]
            lea RDX,QWORD PTR [RBP+32]
            mov RSI,RBP
            mov RDI,RAX
            mov QWORD PTR [RSP+16],RAX
.L_4087f7:

            call .L_4024a0
.L_4087fc:

            lea R14,QWORD PTR [RSP+144]
            mov RSI,QWORD PTR [RSP+8]
            lea RDX,QWORD PTR [RIP+.L_4152d7]
            mov RDI,R14
.L_408813:

            call .L_4028e0
.L_408818:

            lea R12,QWORD PTR [RSP+240]
            mov RDX,QWORD PTR [RSP+16]
            mov RSI,R14
            mov RDI,R12
.L_40882b:

            call .L_4024a0
.L_408830:

            lea RAX,QWORD PTR [RSP+176]
            lea RDX,QWORD PTR [RIP+.L_4151a5]
            mov RSI,R12
            mov RDI,RAX
            mov QWORD PTR [RSP+24],RAX
.L_40884a:

            call .L_4028e0
.L_40884f:

            mov RCX,QWORD PTR [R13+16]
            mov RSI,QWORD PTR [RSP+24]
            lea RDI,QWORD PTR [RCX-64]
            call .L_401a50

            mov RAX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_40887c

            call free@PLT
.L_40887c:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            cmp RDI,R12
            je .L_408892

            call free@PLT
.L_408892:

            mov RDI,QWORD PTR [RSP+144]
            add R14,16
            cmp RDI,R14
            je .L_4088a8

            call free@PLT
.L_4088a8:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_4088c3

            call free@PLT
.L_4088c3:

            mov RAX,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RAX+32]
            mov RAX,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RAX-32]
            call .L_401a50
.L_4088d9:

            mov RDI,RBP
            call .L_401050

            mov RDI,QWORD PTR [RSP+8]
            call .L_401050

            jmp .L_4083b1
.L_4088f0:

            mov RAX,QWORD PTR [R13+48]
            lea RDI,QWORD PTR [RAX-32]
            mov QWORD PTR [R13+48],RDI
            call .L_401b10

            jmp .L_407473
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408910:

            movabs RDX,9223372036854775807
            sub RDX,QWORD PTR [RAX+8]
            cmp RDX,5
            jbe .L_409f23

            lea RSI,QWORD PTR [RIP+.L_41514d]
            mov EDX,6
            mov RDI,RAX
.L_408937:

            call .L_4017e0

            mov RAX,QWORD PTR [R13+8]
            add RAX,RBP
            jmp .L_4074c9
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408950:

            movabs RDX,9223372036854775807
            sub RDX,QWORD PTR [RAX+8]
            cmp RDX,8
            jbe .L_409f23

            lea RSI,QWORD PTR [RIP+.L_41515e]
            mov EDX,9
            mov RDI,RAX
            call .L_4017e0

            mov RAX,QWORD PTR [R13+8]
            add RAX,RBP
            jmp .L_4074df
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408990:

            movabs RDX,9223372036854775807
            sub RDX,QWORD PTR [RAX+8]
            cmp RDX,8
            jbe .L_409f23

            lea RSI,QWORD PTR [RIP+.L_415154]
            mov EDX,9
            mov RDI,RAX
            call .L_4017e0

            mov RAX,QWORD PTR [R13+8]
            add RAX,RBP
            jmp .L_4074d4
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4089d0:

            lea RDI,QWORD PTR [R12-32]
            mov RDX,RAX
            mov RSI,RBX
            call .L_402d20

            jmp .L_40754a
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4089e8:

            cmp CL,38
            cmove RBX,RDI
            jmp .L_407596
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4089f8:

            lea RDI,QWORD PTR [RAX+32]
            lea RDX,QWORD PTR [RIP+.L_41514d]
            mov RSI,RBX
            add RBX,6
            call .L_401e90

            mov RAX,QWORD PTR [R13+8]
            add RAX,RBP
            jmp .L_40759f
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408a20:

            lea RDI,QWORD PTR [RAX+32]
            lea RDX,QWORD PTR [RIP+.L_415154]
            mov RSI,RBX
            add RBX,9
            call .L_401e90

            mov RAX,QWORD PTR [R13+8]
            add RAX,RBP
            jmp .L_4075aa
.L_408a43:

            mov R12,QWORD PTR [RSP+24]
            mov EDX,12
            mov QWORD PTR [RSP+336],R12
            cmp QWORD PTR [RDI+8],12
            cmovbe RDX,QWORD PTR [RDI+8]
            mov RSI,QWORD PTR [RDI]
            mov RDI,RBP
            add RDX,RSI
            call .L_401470

            lea RSI,QWORD PTR [RIP+.L_4151a9]
            mov RDI,RBP
            call .L_401090

            test EAX,EAX
            mov RDI,QWORD PTR [RSP+336]
            jne .L_408cf8

            cmp RDI,R12
            je .L_408a96

            call free@PLT
.L_408a96:

            mov RDI,QWORD PTR [R13+8]
            mov EDX,11
            lea RCX,QWORD PTR [RIP+.L_414fb5]
            mov R8D,2
            add RDI,R14
            cmp QWORD PTR [RDI+8],11
            cmovbe RDX,QWORD PTR [RDI+8]
            xor ESI,ESI
            call .L_401b90

            jmp .L_4080eb
.L_408ac5:

            cmp BYTE PTR [R13+111],0
            je .L_4075f2

            mov RAX,QWORD PTR [RSP+32]
            add RAX,1
            cmp RAX,QWORD PTR [RSP+8]
            jne .L_4075f2

            mov RDX,R13
            mov RSI,R14
            mov RDI,RBX
            call .L_40c230

            cmp RBX,RAX
            mov R12,RAX
            je .L_4075f2

            mov RAX,QWORD PTR [R13+16]
            lea RBP,QWORD PTR [RSP+336]
            mov RDI,RBP
            lea RSI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RSI+32]
            call .L_4024a0
.L_408b1a:

            mov RAX,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R13+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [R13+16]
            mov RDX,QWORD PTR [RSP+344]
            mov RSI,QWORD PTR [RSP+336]
            lea RDI,QWORD PTR [RAX-64]
.L_408b43:

            call .L_4017e0

            mov RSI,QWORD PTR [R13+16]
            mov RBX,QWORD PTR [RSP+48]
            lea RDX,QWORD PTR [RSP+72]
            mov RAX,QWORD PTR [R13]
            sub RSI,64
            mov RDI,RBX
            mov QWORD PTR [RSP+72],RAX
            call .L_402970
.L_408b6b:

            mov RDI,QWORD PTR [RSP+40]
            mov RSI,RBX
            add RBP,16
            call .L_4030f0

            mov RDI,RBX
            call .L_401b10

            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,RBP
            je .L_408b96

            call free@PLT
.L_408b96:

            mov RBX,R12
            jmp .L_4075f2
          .byte 0x66
          .byte 0x90
.L_408ba0:

            lea RDI,QWORD PTR [R14-32]
            mov RDX,RAX
            mov RSI,R12
.L_408baa:

            call .L_402d20

            jmp .L_407e03
.L_408bb4:

            mov RDI,QWORD PTR [RSP+16]
            mov RDX,RAX
            mov RSI,R12
            sub RDI,32
            call .L_402d20

            jmp .L_40816d
.L_408bcd:

            lea RDI,QWORD PTR [R14-32]
            mov RDX,RAX
            mov RSI,R12
            call .L_402d20
.L_408bdc:

            jmp .L_407813
.L_408be1:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
.L_408be9:

            call .L_401b90

            jmp .L_4085dc
.L_408bf3:

            mov QWORD PTR [RSP+40],R14
            mov R14,R13
            mov R13,R12
            mov R12,QWORD PTR [RSP+24]
            nop
            nop
            nop
            nop
            nop
.L_408c08:

            mov RBP,QWORD PTR [R14+16]
            lea RBX,QWORD PTR [RBP-64]
            lea RDX,QWORD PTR [RBP-16]
            mov QWORD PTR [R14+16],RBX
            mov RDI,QWORD PTR [RBP-32]
            cmp RDI,RDX
            je .L_408c26

            call free@PLT
.L_408c26:

            mov RDI,QWORD PTR [RBP-64]
            add RBX,16
            cmp RDI,RBX
            je .L_408c38

            call free@PLT
.L_408c38:

            add R13,1
            cmp R12,R13
            jne .L_408c08

            mov R13,R14
            mov R14,QWORD PTR [RSP+40]
.L_408c49:

            mov RBX,QWORD PTR [RSP+32]
.L_408c4e:

            movzx EAX,BYTE PTR [RBX]
            cmp AL,69
            jne .L_40845d
.L_408c59:

            mov RDI,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RIP+.L_415221]
            add RBX,1
            call .L_401860

            mov EAX,DWORD PTR [RSP+48]
            cmp EAX,1
            je .L_409523

            cmp EAX,2
            jne .L_408c91

            mov RDI,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RIP+.L_41516b]
            call .L_401860
.L_408c91:

            mov RAX,QWORD PTR [R13+16]
            cmp RAX,QWORD PTR [R13+8]
            je .L_40763c

            lea RDI,QWORD PTR [RAX-64]
            lea RSI,QWORD PTR [RIP+.L_4152d7]
            call .L_401860

            mov RAX,QWORD PTR [R13+16]
            mov R8,QWORD PTR [RSP+280]
            xor EDX,EDX
            mov RCX,QWORD PTR [RSP+272]
            xor ESI,ESI
            lea RDI,QWORD PTR [RAX-32]
            call .L_401e50
.L_408cd0:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+272]
            add RAX,16
            cmp RDI,RAX
            je .L_407f55

            call free@PLT

            jmp .L_407f55
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_408cf8:

            cmp RDI,QWORD PTR [RSP+24]
            je .L_408d04

            call free@PLT
.L_408d04:

            mov RDI,QWORD PTR [R13+8]
            add RDI,R14
            jmp .L_4080df
.L_408d10:

            lea RSI,QWORD PTR [RIP+.L_415458]
            jmp .L_407e90
.L_408d1c:

            lea RSI,QWORD PTR [RIP+.L_415458]
            jmp .L_4081f9
.L_408d28:

            lea RSI,QWORD PTR [RIP+.L_415458]
            jmp .L_4078a0
.L_408d34:

            lea RAX,QWORD PTR [RBX+1]
            cmp R14,RAX
            je .L_408484

            cmp BYTE PTR [RBX+1],69
            jne .L_408484

            mov DWORD PTR [RSP+48],1
.L_408d53:

            mov RBX,RAX
            jmp .L_408c4e
.L_408d5b:

            lea RSI,QWORD PTR [RAX-64]
            lea RBP,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,RBP
.L_408d6e:

            call .L_4024a0
.L_408d73:

            mov RAX,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R13+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [R13+16]
            mov RDX,QWORD PTR [RSP+344]
            mov RSI,QWORD PTR [RSP+336]
            lea RDI,QWORD PTR [RAX-64]
.L_408d9c:

            call .L_4017e0

            mov RAX,QWORD PTR [R13]
            mov RSI,QWORD PTR [R13+16]
            lea RDX,QWORD PTR [RSP+72]
            lea R12,QWORD PTR [R13+32]
            mov QWORD PTR [RSP+72],RAX
            lea RAX,QWORD PTR [RSP+80]
            sub RSI,64
            mov RDI,RAX
            mov R14,RAX
            call .L_402970
.L_408dcb:

            mov RSI,R14
            mov RDI,R12
            add RBP,16
            call .L_4030f0

            mov RDI,R14
            call .L_401b10

            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,RBP
            jne .L_407cce

            jmp .L_4075f2
.L_408df8:

            cmp AL,84
            jne .L_407f28
.L_408e00:

            mov RDX,R13
            mov RSI,R14
            mov RDI,R15
.L_408e09:

            call .L_412520

            cmp R15,RAX
            mov RBX,RAX
            jne .L_407f5e

            jmp .L_407f28
.L_408e1f:

            mov RAX,QWORD PTR [R13+8]
            lea R12,QWORD PTR [R15+2]
            mov RDX,R13
            mov RSI,R14
            mov RBP,QWORD PTR [R13+16]
            mov RDI,R12
            mov QWORD PTR [RSP+8],RAX
            call .L_4073b0

            cmp R12,RAX
            mov RBX,RAX
            je .L_407f28

            mov RAX,QWORD PTR [R13+16]
            sub RAX,QWORD PTR [R13+8]
            lea RSI,QWORD PTR [RSP+80]
            sub RBP,QWORD PTR [RSP+8]
            lea RDI,QWORD PTR [R13+32]
            sar RAX,6
            mov R15,RAX
            mov QWORD PTR [RSP+8],RAX
            mov RAX,QWORD PTR [R13]
            mov R14,RBP
            sar R14,6
            mov QWORD PTR [RSP+80],RAX
            call .L_402b00

            cmp R15,R14
            jbe .L_4075f2

            mov R15,RBP
            jmp .L_408efa
.L_408e8f:

            test RBP,RBP
            je .L_408ede

            lea RSI,QWORD PTR [RBP+16]
            mov RDI,RBP
            mov QWORD PTR [RSP+16],RAX
            mov QWORD PTR [RBP],RSI
            mov QWORD PTR [RSP+24],RSI
            mov RDX,QWORD PTR [RAX+8]
            mov RSI,QWORD PTR [RAX]
            add RDX,RSI
            call .L_401470
.L_408eb8:

            mov RAX,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RBP+48]
            lea RDI,QWORD PTR [RBP+32]
            mov QWORD PTR [RBP+32],RDX
            mov RSI,QWORD PTR [RAX+32]
            mov RDX,QWORD PTR [RAX+40]
            add RDX,RSI
.L_408ed4:

            call .L_401470
.L_408ed9:

            mov RBP,QWORD PTR [R12-16]
.L_408ede:

            add RBP,64
            mov QWORD PTR [R12-16],RBP
.L_408ee7:

            add R14,1
            add R15,64
            cmp R14,QWORD PTR [RSP+8]
            jae .L_4075f2
.L_408efa:

            mov R12,QWORD PTR [R13+48]
            mov RAX,QWORD PTR [R13+8]
            mov RBP,QWORD PTR [R12-16]
            add RAX,R15
            cmp RBP,QWORD PTR [R12-8]
            jne .L_408e8f

            lea RDI,QWORD PTR [R12-32]
            mov RDX,RAX
            mov RSI,RBP
.L_408f20:

            call .L_402d20

            jmp .L_408ee7
.L_408f27:

            xor ECX,ECX
            mov RDX,R13
            mov RSI,R14
            mov RDI,R15
            call .L_4059b0

            cmp R15,RAX
            mov RBX,RAX
            jne .L_407f5e

            jmp .L_4075f2
.L_408f48:

            mov DWORD PTR [RSP+48],2
            jmp .L_408d53
.L_408f55:

            mov RBX,QWORD PTR [RSP+8]
            mov RSI,R14
            mov RDX,R13
            mov RDI,RBX
            call .L_40d570

            mov RSI,RBX
            mov RBX,R15
            cmp RSI,RAX
            je .L_4075f2

            cmp R14,RAX
            je .L_4075f2

            cmp BYTE PTR [RAX],95
            jne .L_4075f2

            lea RBP,QWORD PTR [RAX+1]
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
            call .L_4073b0
.L_408f9b:

            cmp RBP,RAX
            mov RBX,RAX
            je .L_407660

            mov RAX,QWORD PTR [R13+16]
            mov RDX,RAX
            sub RDX,QWORD PTR [R13+8]
            cmp RDX,127
            jbe .L_407660

            lea RDX,QWORD PTR [RSP+288]
            lea RSI,QWORD PTR [RSP+272]
            mov QWORD PTR [RSP+272],RDX
            mov RCX,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RAX-48]
            mov QWORD PTR [RSP+8],RSI
            cmp RCX,RDX
            je .L_409b25

            mov QWORD PTR [RSP+272],RCX
            mov RCX,QWORD PTR [RAX-48]
            mov QWORD PTR [RSP+288],RCX
.L_408ffe:

            mov RCX,QWORD PTR [RAX-56]
            mov RSI,QWORD PTR [RSP+8]
            mov QWORD PTR [RSP+280],RCX
            mov QWORD PTR [RAX-64],RDX
            lea RDX,QWORD PTR [RSI+48]
            mov QWORD PTR [RAX-56],0
            mov BYTE PTR [RAX-48],0
            mov QWORD PTR [RSP+304],RDX
            mov RCX,QWORD PTR [RAX-32]
            lea RDX,QWORD PTR [RAX-16]
            cmp RCX,RDX
            je .L_409b72

            mov QWORD PTR [RSP+304],RCX
            mov RCX,QWORD PTR [RAX-16]
            mov QWORD PTR [RSP+320],RCX
.L_409050:

            mov RCX,QWORD PTR [RAX-24]
            lea RBP,QWORD PTR [RSP+336]
            mov QWORD PTR [RSP+312],RCX
            mov QWORD PTR [RAX-32],RDX
            mov QWORD PTR [RAX-24],0
            mov BYTE PTR [RAX-16],0
            mov RAX,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R13+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [R13+16]
            lea RDX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+336],RDX
            mov RCX,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RAX-48]
            cmp RCX,RDX
            je .L_409b60

            mov QWORD PTR [RSP+336],RCX
            mov RCX,QWORD PTR [RAX-48]
            mov QWORD PTR [RSP+352],RCX
.L_4090ba:

            mov RCX,QWORD PTR [RAX-56]
            mov QWORD PTR [RSP+344],RCX
            mov QWORD PTR [RAX-64],RDX
            lea RDX,QWORD PTR [RBP+48]
            mov QWORD PTR [RAX-56],0
            mov BYTE PTR [RAX-48],0
            mov QWORD PTR [RSP+368],RDX
            mov RCX,QWORD PTR [RAX-32]
            lea RDX,QWORD PTR [RAX-16]
            cmp RCX,RDX
            je .L_409b4e

            mov QWORD PTR [RSP+368],RCX
            mov RCX,QWORD PTR [RAX-16]
            mov QWORD PTR [RSP+384],RCX
.L_409107:

            mov RCX,QWORD PTR [RAX-24]
            mov R14,QWORD PTR [RSP+8]
            lea R12,QWORD PTR [RSP+240]
            mov QWORD PTR [RSP+376],RCX
            mov QWORD PTR [RAX-32],RDX
            mov RSI,R14
            mov QWORD PTR [RAX-24],0
            mov BYTE PTR [RAX-16],0
            mov RAX,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RAX-64]
            call .L_401a50

            lea RSI,QWORD PTR [R14+32]
            mov EDX,2
            mov RDI,R12
.L_40914c:

            call .L_401580

            lea RSI,QWORD PTR [RIP+.L_41518a]
            mov RDI,R12
            call .L_401090

            mov RDI,QWORD PTR [RSP+240]
            mov R14D,EAX
            lea RAX,QWORD PTR [R12+16]
            cmp RDI,RAX
            je .L_40917a

            call free@PLT
.L_40917a:

            test R14D,R14D
            jne .L_40918d

            mov RAX,QWORD PTR [RSP+8]
            lea RDI,QWORD PTR [RAX+32]
            call .L_401410
.L_40918d:

            lea R14,QWORD PTR [RSP+144]
            lea RDX,QWORD PTR [RBP+32]
            mov RSI,RBP
            mov RDI,R14
            call .L_4024a0
.L_4091a4:

            lea RAX,QWORD PTR [RSP+176]
            lea RSI,QWORD PTR [RIP+.L_41518a]
            mov RDX,R14
            mov RDI,RAX
            mov QWORD PTR [RSP+24],RAX
.L_4091be:

            call .L_402420
.L_4091c3:

            mov RSI,QWORD PTR [RSP+24]
            lea RDX,QWORD PTR [RIP+.L_41518f]
            mov RDI,R12
.L_4091d2:

            call .L_4028e0
.L_4091d7:

            mov RSI,QWORD PTR [RSP+8]
            lea RAX,QWORD PTR [RSP+208]
            mov RDI,RAX
            mov QWORD PTR [RSP+16],RAX
            lea RDX,QWORD PTR [RSI+32]
            mov RSI,R12
.L_4091f3:

            call .L_4024a0
.L_4091f8:

            mov RSI,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RSI-32]
            mov RSI,QWORD PTR [RSP+16]
            call .L_401a50

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_409225

            call free@PLT
.L_409225:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            cmp RDI,R12
            je .L_40923b

            call free@PLT
.L_40923b:

            mov RAX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_409256

            call free@PLT
.L_409256:

            mov RDI,QWORD PTR [RSP+144]
            add R14,16
            cmp RDI,R14
            je .L_4088d9
.L_40926b:

            call free@PLT

            jmp .L_4088d9
.L_409275:

            lea RBP,QWORD PTR [R15+2]
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_409282:

            call .L_4073b0

            cmp RBP,RAX
            mov RBX,RAX
            je .L_407660

            mov RAX,QWORD PTR [R13+16]
            cmp RAX,QWORD PTR [R13+8]
            je .L_407660

            lea RBP,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RAX-32]
            mov EDX,2
            mov RDI,RBP
            call .L_401580

            lea RSI,QWORD PTR [RIP+.L_41518a]
            mov RDI,RBP
            add RBP,16
            call .L_401090

            mov RDI,QWORD PTR [RSP+336]
            mov R12D,EAX
            cmp RDI,RBP
            je .L_4092e2

            call free@PLT
.L_4092e2:

            test R12D,R12D
            je .L_409581
.L_4092eb:

            mov RAX,QWORD PTR [R13+16]
            lea RDX,QWORD PTR [RIP+.L_41518d]
            xor ESI,ESI
            lea RDI,QWORD PTR [RAX-32]
            call .L_401e90
.L_409301:

            jmp .L_4083b1
.L_409306:

            lea R14,QWORD PTR [RSP+144]
            mov RDI,R14
.L_409311:

            call .L_4024a0
.L_409316:

            mov RAX,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R13+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RSP+144]
            mov RSI,QWORD PTR [RSP+152]
            mov RDX,R13
            lea RDI,QWORD PTR [RAX+9]
            add RSI,RAX
.L_409341:

            call .L_4038c0

            mov RSI,QWORD PTR [RSP+144]
            lea RDX,QWORD PTR [RSI+9]
            cmp RAX,RDX
            je .L_4098d4

            mov RCX,QWORD PTR [R13+16]
            lea RAX,QWORD PTR [RSP+208]
            mov RDI,RAX
            mov QWORD PTR [RSP+16],RAX
            lea RSI,QWORD PTR [RCX-64]
            lea RDX,QWORD PTR [RSI+32]
            call .L_4024a0
.L_40937c:

            lea RSI,QWORD PTR [RSP+176]
            lea RDX,QWORD PTR [RIP+.L_4152e2]
            mov RCX,RSI
            mov RSI,R15
            mov RDI,RCX
            mov QWORD PTR [RSP+24],RCX
.L_409399:

            call .L_402a80
.L_40939e:

            lea R12,QWORD PTR [RSP+240]
            mov RDX,QWORD PTR [RSP+16]
            mov RSI,QWORD PTR [RSP+24]
            mov RDI,R12
.L_4093b3:

            call .L_4024a0
.L_4093b8:

            lea RAX,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RIP+.L_4153f7]
            mov RSI,R12
            mov RDI,RAX
            mov QWORD PTR [RSP+8],RAX
.L_4093d2:

            call .L_4028e0
.L_4093d7:

            lea RAX,QWORD PTR [RBP+16]
            mov RSI,QWORD PTR [RSP+8]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RSI+16]
            cmp RAX,RDX
            je .L_4098be

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+288]
            mov QWORD PTR [RSP+352],RAX
.L_409415:

            mov RAX,QWORD PTR [RSP+280]
            mov RCX,QWORD PTR [RSP+8]
            mov RSI,RBP
            mov QWORD PTR [RSP+280],0
            mov BYTE PTR [RSP+288],0
            mov QWORD PTR [RSP+376],0
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [RBP+48]
            add RCX,16
            mov QWORD PTR [RSP+272],RCX
            mov QWORD PTR [RSP+32],RCX
            mov QWORD PTR [RSP+368],RAX
            mov RAX,QWORD PTR [R13+16]
            lea RDX,QWORD PTR [RAX-64]
            mov RDI,RDX
            mov QWORD PTR [RSP+8],RDX
            call .L_401a50

            mov RDX,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RBP+32]
            lea RDI,QWORD PTR [RDX+32]
            call .L_401a50

            mov RDI,RBP
            call .L_401050

            mov RDI,QWORD PTR [RSP+272]
            mov RCX,QWORD PTR [RSP+32]
            cmp RDI,RCX
            je .L_4094b8

            call free@PLT
.L_4094b8:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            cmp RDI,R12
            je .L_4094ce

            call free@PLT
.L_4094ce:

            mov RAX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_4094e9

            call free@PLT
.L_4094e9:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_409504
.L_4094ff:

            call free@PLT
.L_409504:

            mov RDI,QWORD PTR [RSP+144]
            add R14,16
            cmp RDI,R14
            jne .L_407c7a

            jmp .L_407c7f
.L_40951e:

            call __stack_chk_fail@PLT
.L_409523:

            mov RDI,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RIP+.L_415168]
.L_40952f:

            call .L_401860
.L_409534:

            jmp .L_408c91
.L_409539:

            movdqu XMM0,XMMWORD PTR [RAX-16]
            movaps XMMWORD PTR [RSP+384],XMM0
            jmp .L_4087a8
.L_40954b:

            movdqu XMM0,XMMWORD PTR [RAX-48]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_40875b
.L_40955d:

            movdqu XMM0,XMMWORD PTR [RAX-16]
            movaps XMMWORD PTR [RSP+320],XMM0
            jmp .L_4086f1
.L_40956f:

            movdqu XMM0,XMMWORD PTR [RAX-48]
            movaps XMMWORD PTR [RSP+288],XMM0
            jmp .L_40869f
.L_409581:

            mov RBP,QWORD PTR [R13+16]
            mov RAX,QWORD PTR [RBP-24]
            cmp RAX,1
            mov RDX,RAX
            jbe .L_4095b6

            lea RDX,QWORD PTR [RAX-1]
            mov RDI,QWORD PTR [RBP-32]
            cmp RDX,1
            lea RSI,QWORD PTR [RDI+1]
            je .L_40a060

            call memmove@PLT

            mov RAX,QWORD PTR [RBP-24]
            mov EDX,1
.L_4095b6:

            sub RAX,RDX
            mov RDX,QWORD PTR [RBP-32]
            mov QWORD PTR [RBP-24],RAX
            mov BYTE PTR [RDX+RAX*1],0
            jmp .L_4092eb
.L_4095ca:

            lea RAX,QWORD PTR [RSP+176]
            lea RDX,QWORD PTR [RBP+32]
            mov RSI,RBP
            mov RDI,RAX
            mov QWORD PTR [RSP+24],RAX
.L_4095e1:

            call .L_4024a0
.L_4095e6:

            lea R14,QWORD PTR [RSP+144]
            mov RSI,QWORD PTR [RSP+8]
            lea RDX,QWORD PTR [RIP+.L_415458]
            mov RDI,R14
.L_4095fd:

            call .L_4028e0
.L_409602:

            lea RAX,QWORD PTR [RSP+208]
            mov RDX,QWORD PTR [RSP+24]
            mov RSI,R14
            mov RDI,RAX
            mov QWORD PTR [RSP+16],RAX
.L_40961a:

            call .L_4024a0
.L_40961f:

            lea R12,QWORD PTR [RSP+240]
            mov RSI,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RIP+.L_4151a5]
            mov RDI,R12
.L_409636:

            call .L_4028e0
.L_40963b:

            mov RAX,QWORD PTR [R13+16]
            mov RSI,R12
            add R12,16
            lea RDI,QWORD PTR [RAX-64]
            call .L_401a50

            mov RDI,QWORD PTR [RSP+240]
            cmp RDI,R12
            je .L_409661

            call free@PLT
.L_409661:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_40967c

            call free@PLT
.L_40967c:

            mov RDI,QWORD PTR [RSP+144]
            add R14,16
            cmp RDI,R14
            je .L_409692

            call free@PLT
.L_409692:

            mov RAX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_4096ad

            call free@PLT
.L_4096ad:

            mov RAX,QWORD PTR [RSP+8]
            mov R14,QWORD PTR [RSP+16]
            lea RSI,QWORD PTR [RIP+.L_415221]
            lea RDX,QWORD PTR [RAX+32]
            mov RDI,R14
.L_4096c5:

            call .L_402420
.L_4096ca:

            mov RAX,QWORD PTR [R13+16]
            mov RSI,R14
            lea RDI,QWORD PTR [RAX-32]
            call .L_401a50

            mov RDI,QWORD PTR [RSP+208]
            mov RAX,R14
            add RAX,16
            cmp RDI,RAX
            jne .L_40926b

            jmp .L_4088d9
.L_4096f7:

            lea R12,QWORD PTR [RSP+240]
            cmp AL,95
            mov QWORD PTR [RSP+248],0
            mov BYTE PTR [RSP+256],0
            lea RDX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+240],RDX
            je .L_4097ce

            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_409731:

            call .L_40d570

            cmp RBP,RAX
            mov QWORD PTR [RSP+8],RAX
            je .L_409798

            mov RSI,QWORD PTR [R13+16]
            cmp RSI,QWORD PTR [R13+8]
            je .L_409bc4

            lea RBP,QWORD PTR [RSP+336]
            sub RSI,64
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,RBP
            call .L_4024a0

            mov RSI,RBP
            mov RDI,R12
            add RBP,16
            call .L_401a50

            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,RBP
            je .L_409787

            call free@PLT
.L_409787:

            mov RAX,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R13+16],RDI
            call .L_401050
.L_409798:

            mov RAX,QWORD PTR [RSP+8]
            mov RBX,R15
            cmp R14,RAX
            je .L_4097aa

            cmp BYTE PTR [RAX],95
            je .L_4097dc
.L_4097aa:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            cmp RDI,R12
            je .L_4097c0
.L_4097bb:

            call free@PLT
.L_4097c0:

            cmp R15,RBX
            jne .L_407f5e

            jmp .L_407f28
.L_4097ce:

            cmp R14,RBP
            je .L_409ccf

            mov QWORD PTR [RSP+8],RBP
.L_4097dc:

            mov RBP,QWORD PTR [RSP+8]
            add RBP,1
            cmp R14,RBP
            je .L_409bbc

            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
            call .L_4073b0

            cmp RBP,RAX
            mov RBX,RAX
            je .L_409bbc

            mov RAX,QWORD PTR [R13+8]
            cmp QWORD PTR [R13+16],RAX
            je .L_409bc4

            lea RAX,QWORD PTR [RSP+272]
            lea RSI,QWORD PTR [RIP+.L_4151c5]
            mov RDX,R12
            mov RDI,RAX
            mov QWORD PTR [RSP+8],RAX
            call .L_401910
.L_409835:

            lea RBP,QWORD PTR [RSP+336]
            mov RSI,QWORD PTR [RSP+8]
            lea RDX,QWORD PTR [RIP+.L_41518f]
            mov RDI,RBP
.L_40984c:

            call .L_4028e0
.L_409851:

            mov RAX,QWORD PTR [R13+16]
            mov RDX,QWORD PTR [RSP+344]
            mov RSI,QWORD PTR [RSP+336]
            lea RDI,QWORD PTR [RAX-64]
.L_409869:

            call .L_4017e0
.L_40986e:

            mov RDI,QWORD PTR [RSP+336]
            add RBP,16
            cmp RDI,RBP
            je .L_409884

            call free@PLT
.L_409884:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+272]
            add RAX,16
            cmp RDI,RAX
            je .L_4097aa

            call free@PLT

            jmp .L_4097aa
.L_4098a8:

            movdqa XMM0,XMMWORD PTR [RSP+256]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_407bbf
.L_4098be:

            movdqa XMM0,XMMWORD PTR [RSP+288]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_409415
.L_4098d4:

            lea R12,QWORD PTR [RSP+240]
            lea RDX,QWORD PTR [RIP+.L_4152d7]
            mov RSI,R15
            mov RDI,R12
.L_4098e9:

            call .L_402a80
.L_4098ee:

            lea RAX,QWORD PTR [RSP+272]
            mov RDX,R14
            mov RSI,R12
            mov RDI,RAX
            mov QWORD PTR [RSP+8],RAX
.L_409904:

            call .L_4018b0
.L_409909:

            lea RAX,QWORD PTR [RBP+16]
            mov RSI,QWORD PTR [RSP+8]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RSI+16]
            cmp RAX,RDX
            je .L_4099e5

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+288]
            mov QWORD PTR [RSP+352],RAX
.L_409947:

            mov RAX,QWORD PTR [RSP+280]
            mov RDX,QWORD PTR [RSP+8]
            mov RSI,RBP
            mov RDI,R13
            mov QWORD PTR [RSP+280],0
            mov BYTE PTR [RSP+288],0
            mov QWORD PTR [RSP+376],0
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [RBP+48]
            add RDX,16
            mov QWORD PTR [RSP+272],RDX
            mov QWORD PTR [RSP+8],RDX
            mov QWORD PTR [RSP+368],RAX
            call .L_401ee0

            mov RDI,RBP
            call .L_401050

            mov RDI,QWORD PTR [RSP+272]
            mov RDX,QWORD PTR [RSP+8]
            cmp RDI,RDX
            je .L_4099cb

            call free@PLT
.L_4099cb:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            cmp RDI,R12
            jne .L_4094ff

            jmp .L_409504
.L_4099e5:

            movdqa XMM0,XMMWORD PTR [RSP+288]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_409947
.L_4099fb:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_409a14
.L_409a0f:

            call free@PLT
.L_409a14:

            mov RDI,QWORD PTR [RSP+144]
            add R14,16
            cmp RDI,R14
            je .L_409a2a
.L_409a25:

            call free@PLT
.L_409a2a:

            mov RDI,QWORD PTR [RSP+112]
            lea RAX,QWORD PTR [R15+16]
            cmp RDI,RAX
            je .L_409a3d
.L_409a38:

            call free@PLT
.L_409a3d:

            mov RDI,RBX
.L_409a40:

            call _Unwind_Resume@PLT
.L_409a45:

            mov RBX,RAX
.L_409a48:

            mov RAX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_409a63

            call free@PLT
.L_409a63:

            mov R13,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add R13,16
            cmp RDI,R13
            jne .L_409a0f

            jmp .L_409a14
.L_409a7b:

            mov RBX,RAX
            jmp .L_409a63
.L_409a80:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_409a48

            call free@PLT

            jmp .L_409a48
.L_409a9b:

            mov RBX,RAX
            jmp .L_409a14
.L_409aa3:

            mov RBX,RAX
.L_409aa6:

            mov R15,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+176]
            add R15,16
            cmp RDI,R15
            je .L_409ac1

            call free@PLT
.L_409ac1:

            mov RDI,QWORD PTR [RSP+144]
            add R14,16
            cmp RDI,R14
            je .L_409ad7
.L_409ad2:

            call free@PLT
.L_409ad7:

            mov RDI,RBP
            call .L_401050

            mov RDI,QWORD PTR [RSP+8]
            call .L_401050

            jmp .L_409a3d
.L_409aee:

            mov RBX,RAX
            jmp .L_409ac1
.L_409af3:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_409aa6

            call free@PLT

            jmp .L_409aa6
.L_409b0e:

            mov RDI,QWORD PTR [R12]
            cmp QWORD PTR [RSP+48],RDI
            mov RBX,RAX
            jne .L_409a38

            jmp .L_409a3d
.L_409b25:

            movdqu XMM0,XMMWORD PTR [RAX-48]
            movaps XMMWORD PTR [RSP+288],XMM0
            jmp .L_408ffe
.L_409b37:

            mov RAX,QWORD PTR [R13+16]
            lea RDI,QWORD PTR [RAX-32]
            call .L_401410

            jmp .L_4082ec
.L_409b49:

            mov RBX,RAX
            jmp .L_409ad7
.L_409b4e:

            movdqu XMM0,XMMWORD PTR [RAX-16]
            movaps XMMWORD PTR [RSP+384],XMM0
            jmp .L_409107
.L_409b60:

            movdqu XMM0,XMMWORD PTR [RAX-48]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_4090ba
.L_409b72:

            movdqu XMM0,XMMWORD PTR [RAX-16]
            movaps XMMWORD PTR [RSP+320],XMM0
            jmp .L_409050
.L_409b84:

            mov RBX,RAX
.L_409b87:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+272]
            add RAX,16
            cmp RDI,RAX
            je .L_409ba2

            call free@PLT
.L_409ba2:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            cmp RDI,R12
            jne .L_409a38

            jmp .L_409a3d
.L_409bbc:

            mov RBX,R15
            jmp .L_4097aa
.L_409bc4:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            cmp RDI,R12
            je .L_407f28

            call free@PLT

            jmp .L_407f28
.L_409be3:

            mov RBX,RAX
            jmp .L_409ba2
.L_409be8:

            mov RDI,QWORD PTR [RBP]
            cmp QWORD PTR [RSP+24],RDI
            mov RBX,RAX
            jne .L_409a38

            jmp .L_409a3d
.L_409bff:

            jmp .L_409be8
.L_409c01:

            lea R12,QWORD PTR [RAX+1]
            mov RCX,RAX
            sub RCX,RBP
            cmp R14,R12
            je .L_407f28

            cmp BYTE PTR [RAX+1],112
            je .L_409d03

            mov RDX,R13
            mov RDI,R12
            mov QWORD PTR [RSP+8],RCX
            call .L_4073b0

            cmp R12,RAX
            mov RBX,RAX
            je .L_407f28

            mov RAX,QWORD PTR [R13+8]
            cmp QWORD PTR [R13+16],RAX
            je .L_407f28

            mov RCX,QWORD PTR [RSP+8]
            lea R12,QWORD PTR [RSP+240]
            mov RSI,RBP
            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            lea RDX,QWORD PTR [RBP+RCX*1]
            mov QWORD PTR [RSP+240],RAX
            call .L_401470
.L_409c72:

            lea RAX,QWORD PTR [RSP+272]
            lea RSI,QWORD PTR [RIP+.L_4151c5]
            mov RDX,R12
            mov RDI,RAX
            mov QWORD PTR [RSP+8],RAX
.L_409c8c:

            call .L_402420
.L_409c91:

            lea RBP,QWORD PTR [RSP+336]
            mov RSI,QWORD PTR [RSP+8]
            lea RDX,QWORD PTR [RIP+.L_41518f]
            mov RDI,RBP
.L_409ca8:

            call .L_4028e0
.L_409cad:

            mov RAX,QWORD PTR [R13+16]
            mov RDX,QWORD PTR [RSP+344]
            mov RSI,QWORD PTR [RSP+336]
            lea RDI,QWORD PTR [RAX-64]
.L_409cc5:

            call .L_4017e0
.L_409cca:

            jmp .L_40986e
.L_409ccf:

            mov RBX,R15
            jmp .L_4097c0
.L_409cd7:

            mov RDI,QWORD PTR [RSP+336]
            add RBP,16
            mov RBX,RAX
            cmp RDI,RBP
            je .L_409b87

            call free@PLT

            jmp .L_409b87
.L_409cf9:

            jmp .L_409b84
.L_409cfe:

            jmp .L_409be3
.L_409d03:

            lea RDI,QWORD PTR [RSP+208]
            lea RDX,QWORD PTR [RBP+RCX*1]
            lea RBX,QWORD PTR [RAX+2]
            mov RSI,RBP
            lea R12,QWORD PTR [RSP+240]
            lea RAX,QWORD PTR [RDI+16]
            mov RBP,RDI
            mov QWORD PTR [RSP+16],RDI
            mov QWORD PTR [RSP+208],RAX
.L_409d33:

            call .L_401470
.L_409d38:

            lea RSI,QWORD PTR [RIP+.L_4151c0]
            mov RDX,RBP
            mov RDI,R12
.L_409d45:

            call .L_402420
.L_409d4a:

            lea RAX,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RIP+.L_41518f]
            mov RSI,R12
            mov RDI,RAX
            mov QWORD PTR [RSP+8],RAX
.L_409d64:

            call .L_4028e0
.L_409d69:

            lea RBP,QWORD PTR [RSP+336]
            mov RSI,QWORD PTR [RSP+8]
            lea RAX,QWORD PTR [RBP+16]
            lea RDX,QWORD PTR [RSI+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+272]
            cmp RAX,RDX
            je .L_409e68

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+288]
            mov QWORD PTR [RSP+352],RAX
.L_409daf:

            mov RAX,QWORD PTR [RSP+280]
            mov RDX,QWORD PTR [RSP+8]
            mov RSI,RBP
            mov RDI,R13
            mov QWORD PTR [RSP+280],0
            mov BYTE PTR [RSP+288],0
            mov QWORD PTR [RSP+376],0
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [RBP+48]
            add RDX,16
            mov QWORD PTR [RSP+272],RDX
            mov QWORD PTR [RSP+8],RDX
            mov QWORD PTR [RSP+368],RAX
            call .L_401ee0

            mov RDI,RBP
            call .L_401050

            mov RDI,QWORD PTR [RSP+272]
            mov RDX,QWORD PTR [RSP+8]
            cmp RDI,RDX
            je .L_409e33

            call free@PLT
.L_409e33:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            cmp RDI,R12
            je .L_409e49

            call free@PLT
.L_409e49:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            jne .L_4097bb

            jmp .L_4097c0
.L_409e68:

            movdqa XMM0,XMMWORD PTR [RSP+288]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_409daf
.L_409e7e:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_409e97

            call free@PLT
.L_409e97:

            mov R13,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add R13,16
            cmp RDI,R13
            jne .L_409a38

            jmp .L_409a3d
.L_409eb6:

            mov RBX,RAX
            jmp .L_409e97
.L_409ebb:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_409ed4

            call free@PLT
.L_409ed4:

            mov RDI,QWORD PTR [RSP+144]
            add R14,16
            cmp RDI,R14
            je .L_409eea

            call free@PLT
.L_409eea:

            mov R13,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add R13,16
            cmp RDI,R13
            jne .L_409ad2

            jmp .L_409ad7
.L_409f09:

            mov RDI,QWORD PTR [RBX]
            cmp QWORD PTR [RSP+40],RDI
            mov RBP,RAX
            je .L_409f1b

            call free@PLT
.L_409f1b:

            mov RDI,RBP
.L_409f1e:

            call _Unwind_Resume@PLT
.L_409f23:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
            call _ZSt20__throw_length_errorPKc@PLT
.L_409f2f:

            mov RDI,QWORD PTR [R12]
            cmp QWORD PTR [RSP+40],RDI
            mov RBX,RAX
            jne .L_409a38

            jmp .L_409a3d
.L_409f46:

            mov RBX,RAX
            mov RAX,QWORD PTR [RSP+56]
            mov RDI,QWORD PTR [RSP+336]
            add RAX,16
            cmp RDI,RAX
            je .L_409f64

            call free@PLT
.L_409f64:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+272]
            add RAX,16
            cmp RDI,RAX
            jne .L_409a38

            jmp .L_409a3d
.L_409f83:

            jmp .L_409f2f
.L_409f85:

            mov RDI,QWORD PTR [RSP+336]
            add RBP,16
            mov RBX,RAX
            cmp RDI,RBP
            jne .L_409a38

            jmp .L_409a3d
.L_409fa2:

            mov RBX,RAX
            jmp .L_409a2a
.L_409faa:

            jmp .L_409cd7
.L_409faf:

            mov R13,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            mov RBX,RAX
            add R13,16
            cmp RDI,R13
            je .L_409fcd

            call free@PLT
.L_409fcd:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+272]
            add RAX,16
            cmp RDI,RAX
            jne .L_409a25

            jmp .L_409a2a
.L_409fec:

            jmp .L_409b84
.L_409ff1:

            jmp .L_409be3
.L_409ff6:

            mov R13,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            mov RBX,RAX
            add R13,16
            cmp RDI,R13
            je .L_40a014

            call free@PLT
.L_40a014:

            mov RDI,QWORD PTR [RSP+144]
            add R14,16
            cmp RDI,R14
            je .L_40a02a

            call free@PLT
.L_40a02a:

            mov R15,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+176]
            add R15,16
            cmp RDI,R15
            jne .L_409ad2

            jmp .L_409ad7
.L_40a049:

            mov RBX,RAX
            jmp .L_40a014
.L_40a04e:

            mov RBX,RAX
            jmp .L_40a02a
.L_40a053:

            jmp .L_409b49
.L_40a058:

            mov RBX,RAX
            jmp .L_409fcd
.L_40a060:

            movzx EAX,BYTE PTR [RDI+1]
            mov BYTE PTR [RDI],AL
            mov RAX,QWORD PTR [RBP-24]
            jmp .L_4095b6
.L_40a06f:

            mov RBX,RAX
            jmp .L_409ed4
.L_40a077:

            mov RBX,RAX
            jmp .L_409eea
.L_40a07f:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
.L_40a086:

            call _ZSt20__throw_length_errorPKc@PLT
.L_40a08b:

            mov RBX,RAX
            jmp .L_409f64
.L_40a093:

            jmp .L_409f85
.L_40a098:

            jmp .L_409cd7
.L_40a09d:

            nop
            nop
            nop
.L_40a0a0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,312
.L_40a0b4:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+296],RAX
            xor EAX,EAX
            mov RAX,RSI
            sub RAX,RDI
            cmp RAX,3
            jle .L_40a0d8

            cmp BYTE PTR [RDI],76
            je .L_40a108
.L_40a0d8:

            mov RAX,RBX
.L_40a0db:

            mov RCX,QWORD PTR [RSP+296]
            xor RCX,QWORD PTR FS:[40]
            jne .L_40acdf

            add RSP,312
.L_40a0f9:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40a108:

            movzx EAX,BYTE PTR [RDI+1]
            mov R14,RSI
            mov R12,RDX
            sub EAX,84
            cmp AL,37
            ja .L_40a97d

            lea RDX,QWORD PTR [RIP+.L_4158c8]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
.L_40a130:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_4151de]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
.L_40a146:

            call .L_401540
.L_40a14b:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a157:

            call .L_4035d0
.L_40a15c:

            nop
            nop
            nop
            nop
.L_40a160:

            mov RDI,QWORD PTR [RSP+192]
            add R13,16
            cmp RDI,R13
            je .L_40a180

            mov QWORD PTR [RSP+8],RAX
            call free@PLT

            mov RAX,QWORD PTR [RSP+8]
.L_40a180:

            cmp RBP,RAX
            jne .L_40a0db

            jmp .L_40a0d8
.L_40a18e:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_4151df]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
.L_40a1a4:

            call .L_401540
.L_40a1a9:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a1b5:

            call .L_4035d0
.L_40a1ba:

            jmp .L_40a160
.L_40a1bc:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_414fb8]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
.L_40a1d2:

            call .L_401540
.L_40a1d7:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a1e3:

            call .L_4035d0
.L_40a1e8:

            jmp .L_40a160
.L_40a1ed:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_414fd3]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
.L_40a203:

            call .L_401540
.L_40a208:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a214:

            call .L_4035d0
.L_40a219:

            jmp .L_40a160
.L_40a21e:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_414fdc]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
.L_40a234:

            call .L_401540
.L_40a239:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a245:

            call .L_4035d0
.L_40a24a:

            jmp .L_40a160
.L_40a24f:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_415010]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
.L_40a265:

            call .L_401540
.L_40a26a:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a276:

            call .L_4035d0
.L_40a27b:

            jmp .L_40a160
.L_40a280:

            lea RAX,QWORD PTR [RDI+2]
            sub R14,RAX
            mov QWORD PTR [RSP+16],RAX
            cmp R14,20
            jbe .L_40a0d8

            lea RSI,QWORD PTR [RDI+22]
            cmp RAX,RSI
            mov QWORD PTR [RSP+8],RSI
            je .L_40acc6

            lea R14,QWORD PTR [RSP+128]
            mov RBP,RAX
            mov R15,R14
            jmp .L_40a2c6
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a2c0:

            mov R15,RDX
            mov RBP,RAX
.L_40a2c6:

            movsx R13D,BYTE PTR [RBP]
            mov EDI,R13D
            call isxdigit@PLT

            test EAX,EAX
            je .L_40a0d8

            lea EDX,DWORD PTR [R13-48]
            lea EAX,DWORD PTR [R13-87]
            cmp EDX,9
            cmovbe EAX,EDX
            movsx EDX,BYTE PTR [RBP+1]
            lea EDI,DWORD PTR [RDX-48]
            sub EDX,87
            cmp EDI,9
            cmovbe EDX,EDI
            shl EAX,4
            add EAX,EDX
            lea RDX,QWORD PTR [R15+1]
            mov BYTE PTR [R15],AL
            lea RAX,QWORD PTR [RBP+2]
            cmp RAX,QWORD PTR [RSP+8]
            jne .L_40a2c0

            cmp BYTE PTR [RBP+2],69
            jne .L_40a0d8

            cmp RDX,R14
            je .L_40a341

            cmp R15,R14
            jbe .L_40a341
.L_40a324:

            movzx EAX,BYTE PTR [R14]
            movzx EDX,BYTE PTR [R15]
            add R14,1
            sub R15,1
            mov BYTE PTR [R14-1],DL
            mov BYTE PTR [R15+1],AL
            cmp R14,R15
            jb .L_40a324
.L_40a341:

            pxor XMM0,XMM0
            lea R13,QWORD PTR [RSP+256]
            mov QWORD PTR [RSP+288],0
            lea R8,QWORD PTR [RIP+.L_4151e9]
            mov ECX,40
            mov EDX,1
            mov RDI,R13
            mov ESI,40
            xor EAX,EAX
            movaps XMMWORD PTR [RSP+256],XMM0
            movaps XMMWORD PTR [RSP+272],XMM0
            push QWORD PTR [RSP+136]
.L_40a38b:

            push QWORD PTR [RSP+136]
            call __snprintf_chk@PLT

            lea RDI,QWORD PTR [RSP+176]
            lea R14,QWORD PTR [RDI+16]
            mov QWORD PTR [RSP+40],RDI
            mov QWORD PTR [RSP+176],R14
            pop RDX
            pop RCX
            movsxd RDX,EAX
.L_40a3b5:

            add RDX,R13
            mov RSI,R13
            lea R13,QWORD PTR [RSP+192]
.L_40a3c3:

            call .L_401470

            lea RAX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+192],RAX
            mov RAX,QWORD PTR [RSP+160]
            cmp RAX,R14
            je .L_40ace4

            mov QWORD PTR [RSP+192],RAX
            mov RAX,QWORD PTR [RSP+176]
            mov QWORD PTR [RSP+208],RAX
.L_40a3fd:

            mov RAX,QWORD PTR [RSP+168]
            mov R14,QWORD PTR [RSP+24]
            mov RSI,R13
            mov RDI,R12
            mov QWORD PTR [RSP+168],0
            mov BYTE PTR [RSP+176],0
            mov QWORD PTR [RSP+232],0
            mov BYTE PTR [RSP+240],0
            mov QWORD PTR [RSP+200],RAX
            lea RAX,QWORD PTR [R13+48]
            add R14,16
            mov QWORD PTR [RSP+160],R14
            mov QWORD PTR [RSP+224],RAX
            call .L_401ee0

            mov RDI,R13
            call .L_401050

            mov RDI,QWORD PTR [RSP+160]
            cmp RDI,R14
            je .L_40a477

            call free@PLT
.L_40a477:

            mov RAX,QWORD PTR [RSP+8]
            add RAX,1
            cmp QWORD PTR [RSP+16],RAX
            jne .L_40a0db

            jmp .L_40a0d8
.L_40a490:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_4151d9]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
            call .L_401540
.L_40a4ab:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a4b7:

            call .L_4035d0
.L_40a4bc:

            jmp .L_40a160
.L_40a4c1:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_414ea5]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
.L_40a4d7:

            call .L_401540
.L_40a4dc:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a4e8:

            call .L_4035d0
.L_40a4ed:

            jmp .L_40a160
.L_40a4f2:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_414fc7]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
.L_40a508:

            call .L_401540
.L_40a50d:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a519:

            call .L_4035d0
.L_40a51e:

            jmp .L_40a160
.L_40a523:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_4151db]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
.L_40a539:

            call .L_401540
.L_40a53e:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a54a:

            call .L_4035d0
.L_40a54f:

            jmp .L_40a160
.L_40a554:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_414fce]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
.L_40a56a:

            call .L_401540
.L_40a56f:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a57b:

            call .L_4035d0
.L_40a580:

            jmp .L_40a160
.L_40a585:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_414fc5]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
.L_40a59b:

            call .L_401540
.L_40a5a0:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a5ac:

            call .L_4035d0
.L_40a5b1:

            jmp .L_40a160
.L_40a5b6:

            cmp BYTE PTR [RDI+2],90
            jne .L_40a0d8

            lea RBP,QWORD PTR [RDI+3]
            mov RDX,R12
            mov RDI,RBP
.L_40a5ca:

            call .L_404bc0

            cmp R14,RAX
            je .L_40a0d8

            cmp RBP,RAX
            je .L_40a0d8

            cmp BYTE PTR [RAX],69
            jne .L_40a0d8
.L_40a5ea:

            add RAX,1
            jmp .L_40a0db
.L_40a5f3:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_415019]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
            call .L_401540
.L_40a60e:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a61a:

            call .L_4035d0
.L_40a61f:

            jmp .L_40a160
.L_40a624:

            lea R13,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RIP+.L_415182]
            lea RBP,QWORD PTR [RBX+2]
            mov RDI,R13
.L_40a63a:

            call .L_401540
.L_40a63f:

            mov RCX,R12
            mov RDX,R13
            mov RSI,R14
            mov RDI,RBP
.L_40a64b:

            call .L_4035d0
.L_40a650:

            jmp .L_40a160
.L_40a655:

            lea RAX,QWORD PTR [RDI+2]
            sub R14,RAX
            mov QWORD PTR [RSP+16],RAX
            cmp R14,16
            jbe .L_40a0d8

            lea RCX,QWORD PTR [RDI+18]
            cmp RAX,RCX
            mov QWORD PTR [RSP+8],RCX
            je .L_40acb7

            lea R14,QWORD PTR [RSP+128]
            mov R13,RAX
            mov R15,R14
            jmp .L_40a693
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40a690:

            mov R15,RAX
.L_40a693:

            movsx EBP,BYTE PTR [R13]
            mov EDI,EBP
            call isxdigit@PLT

            test EAX,EAX
            je .L_40a0d8

            lea EDX,DWORD PTR [RBP-48]
            lea EAX,DWORD PTR [RBP-87]
            cmp EDX,9
            cmovbe EAX,EDX
            movsx EDX,BYTE PTR [R13+1]
            lea EDI,DWORD PTR [RDX-48]
            sub EDX,87
            cmp EDI,9
            cmovbe EDX,EDI
            shl EAX,4
            add R13,2
            add EAX,EDX
            cmp R13,QWORD PTR [RSP+8]
            mov BYTE PTR [R15],AL
            lea RAX,QWORD PTR [R15+1]
            jne .L_40a690

            cmp BYTE PTR [RBX+18],69
            jne .L_40a0d8

            cmp RAX,R14
            je .L_40a70c

            cmp R15,R14
            jbe .L_40a70c
.L_40a6ef:

            movzx EAX,BYTE PTR [R14]
            movzx EDX,BYTE PTR [R15]
            add R14,1
            sub R15,1
            mov BYTE PTR [R14-1],DL
            mov BYTE PTR [R15+1],AL
            cmp R14,R15
            jb .L_40a6ef
.L_40a70c:

            pxor XMM0,XMM0
            lea RBP,QWORD PTR [RSP+256]
            lea R8,QWORD PTR [RIP+.L_4151e6]
            mov ECX,32
            mov EDX,1
            mov ESI,32
            mov RDI,RBP
            mov EAX,1
            lea R13,QWORD PTR [RSP+192]
            movaps XMMWORD PTR [RSP+256],XMM0
            movaps XMMWORD PTR [RSP+272],XMM0
            movsd XMM0,QWORD PTR [RSP+128]
            call __snprintf_chk@PLT

            lea RDI,QWORD PTR [RSP+160]
            movsxd RDX,EAX
            mov RSI,RBP
            add RDX,RBP
            lea R14,QWORD PTR [RDI+16]
            mov QWORD PTR [RSP+24],RDI
            mov QWORD PTR [RSP+160],R14
.L_40a77e:

            call .L_401470

            lea RAX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+192],RAX
            mov RAX,QWORD PTR [RSP+160]
            cmp RAX,R14
            je .L_40acfa

            mov QWORD PTR [RSP+192],RAX
            mov RAX,QWORD PTR [RSP+176]
            mov QWORD PTR [RSP+208],RAX
.L_40a7b8:

            mov RAX,QWORD PTR [RSP+168]
            mov RBP,QWORD PTR [RSP+24]
            mov RSI,R13
            mov RDI,R12
            mov QWORD PTR [RSP+168],0
            mov BYTE PTR [RSP+176],0
            mov QWORD PTR [RSP+232],0
            mov BYTE PTR [RSP+240],0
            mov QWORD PTR [RSP+200],RAX
            lea RAX,QWORD PTR [R13+48]
            add RBP,16
            mov QWORD PTR [RSP+160],RBP
            mov QWORD PTR [RSP+224],RAX
            call .L_401ee0

            mov RDI,R13
            call .L_401050

            mov RDI,QWORD PTR [RSP+160]
            cmp RDI,RBP
            je .L_40a832

            call free@PLT
.L_40a832:

            lea RAX,QWORD PTR [RBX+19]
            cmp QWORD PTR [RSP+16],RAX
            jne .L_40a0db

            jmp .L_40a0d8
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a850:

            lea RAX,QWORD PTR [RDI+2]
            sub R14,RAX
            mov QWORD PTR [RSP+16],RAX
            cmp R14,8
            jbe .L_40a0d8

            mov R15,QWORD PTR [RSP+16]
            lea RAX,QWORD PTR [RDI+10]
            mov QWORD PTR [RSP+8],RAX
            cmp R15,RAX
            je .L_40ac9e

            movsx R13D,BYTE PTR [R15]
            lea R14,QWORD PTR [RSP+128]
            mov RBP,R14
            mov EDI,R13D
            call isxdigit@PLT

            test EAX,EAX
            je .L_40a0d8
.L_40a89c:

            lea EDX,DWORD PTR [R13-48]
            lea EAX,DWORD PTR [R13-87]
            cmp EDX,9
            cmovbe EAX,EDX
            movsx EDX,BYTE PTR [R15+1]
            lea EDI,DWORD PTR [RDX-48]
            sub EDX,87
            cmp EDI,9
            cmovbe EDX,EDI
            shl EAX,4
            add EAX,EDX
            lea RDX,QWORD PTR [RBP+1]
            mov BYTE PTR [RBP],AL
            lea RAX,QWORD PTR [R15+2]
            cmp RAX,QWORD PTR [RSP+8]
            je .L_40a9e3

            mov R15,RAX
            mov RBP,RDX
            movsx R13D,BYTE PTR [R15]
            mov EDI,R13D
            call isxdigit@PLT

            test EAX,EAX
            jne .L_40a89c

            jmp .L_40a0d8
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a8f8:

            cmp BYTE PTR [RDI+3],69
            jne .L_40a0d8

            movzx EAX,BYTE PTR [RDI+2]
            cmp AL,48
            je .L_40ac76

            cmp AL,49
            jne .L_40a0d8

            lea RDX,QWORD PTR [RIP+.L_4151d8]
            lea RAX,QWORD PTR [RSP+208]
            lea RBP,QWORD PTR [RSP+192]
            lea RSI,QWORD PTR [RDX-4]
            mov QWORD PTR [RSP+192],RAX
.L_40a939:

            mov RDI,RBP
            call .L_401470

            lea RAX,QWORD PTR [RBP+48]
            mov RSI,RBP
            mov RDI,R12
            mov QWORD PTR [RSP+232],0
            mov BYTE PTR [RSP+240],0
            mov QWORD PTR [RSP+224],RAX
            call .L_401ee0

            mov RDI,RBP
            call .L_401050

            lea RAX,QWORD PTR [RBX+4]
            jmp .L_40a0db
.L_40a97d:

            lea RBP,QWORD PTR [RBX+1]
            mov RDX,R12
            mov RSI,R14
            mov RDI,RBP
            call .L_4073b0

            cmp R14,RAX
            je .L_40a0d8

            cmp RBP,RAX
            je .L_40a0d8

            movsx EDX,BYTE PTR [RAX]
            cmp DL,69
            je .L_40a5ea

            sub EDX,48
            mov RBP,RAX
            cmp EDX,9
            jbe .L_40a9d5

            jmp .L_40a0d8
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40a9c0:

            movsx ECX,BYTE PTR [RBP+1]
            mov EDI,ECX
            sub ECX,48
            cmp ECX,9
            ja .L_40aa8e

            mov RBP,RDX
.L_40a9d5:

            lea RDX,QWORD PTR [RBP+1]
            cmp R14,RDX
            jne .L_40a9c0

            jmp .L_40a0d8
.L_40a9e3:

            cmp BYTE PTR [R15+2],69
            jne .L_40a0d8

            cmp RDX,R14
            je .L_40aa14

            cmp RBP,R14
            jbe .L_40aa14
.L_40a9f8:

            movzx EAX,BYTE PTR [R14]
            movzx EDX,BYTE PTR [RBP]
            add R14,1
            sub RBP,1
            mov BYTE PTR [R14-1],DL
            mov BYTE PTR [RBP+1],AL
            cmp R14,RBP
            jb .L_40a9f8
.L_40aa14:

            pxor XMM0,XMM0
            lea R13,QWORD PTR [RSP+256]
            lea R8,QWORD PTR [RIP+.L_4151e2]
            mov EDX,1
            mov ECX,24
            mov ESI,24
            mov RDI,R13
            mov EAX,1
            mov QWORD PTR [RSP+272],0
            movaps XMMWORD PTR [RSP+256],XMM0
            pxor XMM0,XMM0
            cvtss2sd XMM0,DWORD PTR [RSP+128]
            call __snprintf_chk@PLT

            cmp EAX,23
            movsxd RDX,EAX
            jg .L_40a0d8

            lea RDI,QWORD PTR [RSP+160]
            lea R14,QWORD PTR [RDI+16]
            mov QWORD PTR [RSP+24],RDI
            mov QWORD PTR [RSP+160],R14
            jmp .L_40a3b5
.L_40aa8e:

            cmp RAX,RDX
            je .L_40a0d8

            cmp DIL,69
            jne .L_40a0d8

            mov RCX,QWORD PTR [R12+8]
            cmp QWORD PTR [R12+16],RCX
            je .L_40a0d8

            lea R14,QWORD PTR [RSP+128]
            mov RSI,RAX
            lea RBX,QWORD PTR [RSP+32]
            lea RCX,QWORD PTR [R14+16]
            mov RDI,R14
            mov QWORD PTR [RSP+128],RCX
            call .L_401470
.L_40aad5:

            mov RCX,QWORD PTR [R12+16]
            mov RDI,RBX
            mov QWORD PTR [RSP+8],RBX
            lea RSI,QWORD PTR [RCX-64]
            lea RDX,QWORD PTR [RSI+32]
.L_40aaea:

            call .L_4024a0
.L_40aaef:

            lea R15,QWORD PTR [RSP+64]
            lea RSI,QWORD PTR [RIP+.L_415458]
            mov RDX,RBX
            mov RDI,R15
.L_40ab01:

            call .L_402420
.L_40ab06:

            lea RBX,QWORD PTR [RSP+96]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R15
            mov RDI,RBX
.L_40ab18:

            call .L_4028e0
.L_40ab1d:

            lea RAX,QWORD PTR [RSP+160]
            mov RDX,R14
            mov RSI,RBX
            mov RDI,RAX
            mov QWORD PTR [RSP+24],RAX
.L_40ab33:

            call .L_4024a0
.L_40ab38:

            lea R13,QWORD PTR [RSP+192]
            mov RCX,QWORD PTR [RSP+24]
            lea RAX,QWORD PTR [R13+16]
            lea RDX,QWORD PTR [RCX+16]
            mov QWORD PTR [RSP+192],RAX
            mov RAX,QWORD PTR [RSP+160]
            cmp RAX,RDX
            je .L_40ad10

            mov QWORD PTR [RSP+192],RAX
            mov RAX,QWORD PTR [RSP+176]
            mov QWORD PTR [RSP+208],RAX
.L_40ab7e:

            mov RAX,QWORD PTR [RSP+168]
            mov R12,QWORD PTR [R12+16]
            mov RSI,R13
            mov RDX,QWORD PTR [RSP+24]
            mov QWORD PTR [RSP+168],0
            mov BYTE PTR [RSP+176],0
            mov QWORD PTR [RSP+232],0
            sub R12,64
            mov QWORD PTR [RSP+200],RAX
            lea RAX,QWORD PTR [R13+48]
            add RDX,16
            mov RDI,R12
            mov BYTE PTR [RSP+240],0
            mov QWORD PTR [RSP+160],RDX
            mov QWORD PTR [RSP+16],RDX
            mov QWORD PTR [RSP+224],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R13+32]
            lea RDI,QWORD PTR [R12+32]
            call .L_401a50

            mov RDI,R13
            call .L_401050

            mov RDI,QWORD PTR [RSP+160]
            mov RDX,QWORD PTR [RSP+16]
            cmp RDI,RDX
            je .L_40ac19

            call free@PLT
.L_40ac19:

            mov RDI,QWORD PTR [RSP+96]
            add RBX,16
            cmp RDI,RBX
            je .L_40ac2c

            call free@PLT
.L_40ac2c:

            mov RDI,QWORD PTR [RSP+64]
            add R15,16
            cmp RDI,R15
            je .L_40ac3f

            call free@PLT
.L_40ac3f:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+32]
            add RAX,16
            cmp RDI,RAX
            je .L_40ac57

            call free@PLT
.L_40ac57:

            mov RDI,QWORD PTR [RSP+128]
            add R14,16
            cmp RDI,R14
            je .L_40ac6d

            call free@PLT
.L_40ac6d:

            lea RAX,QWORD PTR [RBP+2]
            jmp .L_40a0db
.L_40ac76:

            lea RAX,QWORD PTR [RSP+208]
            lea RDX,QWORD PTR [RIP+.L_4151d3]
            lea RBP,QWORD PTR [RSP+192]
            mov QWORD PTR [RSP+192],RAX
            lea RSI,QWORD PTR [RDX-5]
            jmp .L_40a939
.L_40ac9e:

            cmp BYTE PTR [RDI+10],69
            jne .L_40a0d8

            mov RAX,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+8],RAX
            jmp .L_40aa14
.L_40acb7:

            cmp BYTE PTR [RDI+18],69
            jne .L_40a0d8

            jmp .L_40a70c
.L_40acc6:

            cmp BYTE PTR [RDI+22],69
            jne .L_40a0d8

            mov RAX,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+8],RAX
            jmp .L_40a341
.L_40acdf:

            call __stack_chk_fail@PLT
.L_40ace4:

            movdqa XMM0,XMMWORD PTR [RSP+176]
            movaps XMMWORD PTR [RSP+208],XMM0
            jmp .L_40a3fd
.L_40acfa:

            movdqa XMM0,XMMWORD PTR [RSP+176]
            movaps XMMWORD PTR [RSP+208],XMM0
            jmp .L_40a7b8
.L_40ad10:

            movdqa XMM0,XMMWORD PTR [RSP+176]
            movaps XMMWORD PTR [RSP+208],XMM0
            jmp .L_40ab7e
.L_40ad26:

            mov RDI,QWORD PTR [RSP+192]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_40ad3f
.L_40ad3a:

            call free@PLT
.L_40ad3f:

            mov RDI,RBX
.L_40ad42:

            call _Unwind_Resume@PLT
.L_40ad47:

            jmp .L_40ad26
.L_40ad49:

            mov RBX,RAX
.L_40ad4c:

            mov RDI,QWORD PTR [RSP+128]
            add R14,16
            cmp RDI,R14
            jne .L_40ad3a

            jmp .L_40ad3f
.L_40ad5f:

            mov RDI,QWORD PTR [RSP+96]
            add RBX,16
            mov RBP,RAX
            cmp RDI,RBX
            je .L_40ad75

            call free@PLT
.L_40ad75:

            mov RBX,RBP
.L_40ad78:

            mov RDI,QWORD PTR [RSP+64]
            add R15,16
            cmp RDI,R15
            je .L_40ad8b

            call free@PLT
.L_40ad8b:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+32]
            add RAX,16
            cmp RDI,RAX
            je .L_40ad4c

            call free@PLT

            jmp .L_40ad4c
.L_40ada5:

            jmp .L_40ad26
.L_40adaa:

            jmp .L_40ad26
.L_40adaf:

            mov RBX,RAX
            jmp .L_40ad78
.L_40adb4:

            mov RBX,RAX
            jmp .L_40ad8b
.L_40adb9:

            jmp .L_40ad26
.L_40adbe:

            jmp .L_40ad26
.L_40adc3:

            jmp .L_40ad26
.L_40adc8:

            jmp .L_40ad26
.L_40adcd:

            jmp .L_40ad26
.L_40add2:

            jmp .L_40ad26
.L_40add7:

            jmp .L_40ad26
.L_40addc:

            jmp .L_40ad26
.L_40ade1:

            jmp .L_40ad26
.L_40ade6:

            jmp .L_40ad26
.L_40adeb:

            nop
            nop
            nop
            nop
            nop
.L_40adf0:

            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,80
.L_40adff:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+72],RAX
            xor EAX,EAX
            mov RAX,RSI
            sub RAX,RDI
            cmp RAX,1
            jle .L_40ae40

            movzx EAX,BYTE PTR [RDI]
            sub EAX,97
            cmp AL,21
            ja .L_40ae40

            mov R12,RDX
            lea RDX,QWORD PTR [RIP+.L_415960]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40ae40:

            mov RBP,RBX
.L_40ae43:

            mov RCX,QWORD PTR [RSP+72]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBP
            jne .L_40b5f3

            add RSP,80
.L_40ae5e:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40ae70:

            movsx EAX,BYTE PTR [RDI+1]
            sub EAX,48
            cmp EAX,9
            ja .L_40ae40

            lea R13,QWORD PTR [RDI+2]
            mov RDX,R12
            mov RDI,R13
            call .L_4038c0

            cmp R13,RAX
            mov RBP,RAX
            je .L_40ae40

            mov RAX,QWORD PTR [R12+16]
            cmp RAX,QWORD PTR [R12+8]
            je .L_40ae40

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_415237]
            xor ESI,ESI
            call .L_401e90

            jmp .L_40ae43
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40aeb8:

            movzx EAX,BYTE PTR [RDI+1]
            cmp AL,83
            je .L_40b5c1

            jle .L_40b4c0

            cmp AL,109
            je .L_40b5a6

            cmp AL,115
            jne .L_40ae40

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4153d6]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
.L_40aef0:

            mov RDI,RBP
            call .L_401470

            lea RAX,QWORD PTR [RBP+48]
            mov RSI,RBP
            mov RDI,R12
            mov QWORD PTR [RSP+40],0
            mov BYTE PTR [RSP+48],0
            mov QWORD PTR [RSP+32],RAX
            call .L_401ee0

            mov RDI,RBP
            lea RBP,QWORD PTR [RBX+2]
            call .L_401050

            jmp .L_40ae43
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40af30:

            cmp BYTE PTR [RDI+1],117
            jne .L_40ae40

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4153b6]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40af58:

            movzx EAX,BYTE PTR [RDI+1]
            cmp AL,111
            je .L_40b530

            cmp AL,114
            je .L_40b510

            cmp AL,82
            jne .L_40ae40

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415375]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0x90
.L_40af90:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,97
            cmp AL,22
            ja .L_40ae40

            lea RDX,QWORD PTR [RIP+.L_4159b8]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40afb8:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,76
            cmp AL,40
            ja .L_40ae40

            lea RDX,QWORD PTR [RIP+.L_415a14]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40afe0:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,73
            cmp AL,36
            ja .L_40ae40

            lea RDX,QWORD PTR [RIP+.L_415ab8]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b008:

            movzx EAX,BYTE PTR [RDI+1]
            cmp AL,111
            je .L_40b570

            cmp AL,113
            je .L_40b550

            cmp AL,79
            jne .L_40ae40

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415296]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0x90
.L_40b040:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,86
            cmp AL,32
            ja .L_40ae40

            lea RDX,QWORD PTR [RIP+.L_415b4c]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b068:

            movzx EAX,BYTE PTR [RDI+1]
            cmp AL,109
            je .L_40b58b

            jle .L_40b4e8

            cmp AL,111
            je .L_40b5d8

            cmp AL,118
            jne .L_40ae40

            movzx R14D,BYTE PTR [R12+111]
            lea R13,QWORD PTR [RDI+2]
            mov BYTE PTR [R12+111],0
            mov RDX,R12
            mov RDI,R13
            call .L_4073b0

            cmp R13,RAX
            mov RBP,RAX
            mov BYTE PTR [R12+111],R14B
            je .L_40ae40

            mov RAX,QWORD PTR [R12+16]
            cmp RAX,QWORD PTR [R12+8]
            je .L_40ae40

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_415237]
            xor ESI,ESI
            call .L_401e90

            mov BYTE PTR [R12+108],1
            jmp .L_40ae43
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b0e8:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,78
            cmp AL,32
            ja .L_40ae40

            lea RDX,QWORD PTR [RIP+.L_415bd0]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b110:

            cmp BYTE PTR [RDI+1],120
            jne .L_40ae40

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4152c1]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40b138:

            movzx EAX,BYTE PTR [RDI+1]
            cmp AL,101
            je .L_40b4a0

            cmp AL,116
            jne .L_40ae40

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4152b6]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b170:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,83
            cmp AL,33
            ja .L_40ae40

            lea RDX,QWORD PTR [RIP+.L_415c54]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b198:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_41538b]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b1b3:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415202]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b1ce:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4151f8]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b1e9:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415217]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b204:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_41520d]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0x90
.L_40b220:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415303]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b240:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_41525c]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b25b:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415348]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b276:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415324]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b291:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415319]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b2ac:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_41530e]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b2c7:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415276]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b2e2:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_41526c]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-15]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b2fd:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415252]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-17]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b318:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415281]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b333:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4152f9]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b34e:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_41533e]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b369:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415333]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-14]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b384:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415355]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-12]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b39f:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4152e3]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b3ba:

            lea R13,QWORD PTR [RDI+2]
            mov RDX,R12
            mov RDI,R13
            call .L_4038c0

            cmp R13,RAX
            mov RBP,RAX
            je .L_40ae40

            mov RAX,QWORD PTR [R12+16]
            cmp RAX,QWORD PTR [R12+8]
            je .L_40ae40

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_4152cd]
            xor ESI,ESI
            call .L_401e90

            jmp .L_40ae43
.L_40b3fc:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4152cc]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b417:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4152ef]
            lea RAX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP],RAX
.L_40b429:

            lea RSI,QWORD PTR [RDX-11]
            jmp .L_40aef0
.L_40b432:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4153a1]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b44d:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415381]
            lea RAX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP],RAX
            jmp .L_40b429
.L_40b461:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4153ac]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b47c:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415396]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b4a0:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4152ac]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b4c0:

            cmp AL,77
            jne .L_40ae40

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4153cb]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b4e8:

            cmp AL,108
            jne .L_40ae40

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415222]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b510:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_41536a]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b530:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415360]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b550:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4152a1]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-10]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b570:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_41528b]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b58b:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_41522c]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b5a6:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4153c0]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b5c1:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_4153e2]
            lea RAX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP],RAX
            jmp .L_40b429
.L_40b5d8:

            mov RBP,RSP
            lea RDX,QWORD PTR [RIP+.L_415236]
            lea RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RDX-9]
            mov QWORD PTR [RSP],RAX
            jmp .L_40aef0
.L_40b5f3:

            call __stack_chk_fail@PLT
.L_40b5f8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40b600:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,168
.L_40b614:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+152],RAX
            xor EAX,EAX
            cmp RDI,RSI
            je .L_40b858

            movzx ECX,BYTE PTR [RDI]
            mov RBP,RSI
            mov R12,RDX
            lea EAX,DWORD PTR [RCX-49]
            cmp AL,36
            ja .L_40b9c0

            lea RDX,QWORD PTR [RIP+.L_415cdc]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b660:

            mov RAX,RSI
            sub RAX,RDI
            cmp RAX,2
            jle .L_40b858

            movzx EAX,BYTE PTR [RDI+1]
            cmp AL,108
            je .L_40bac0

            cmp AL,116
            jne .L_40b858

            lea R14,QWORD PTR [RSP+48]
            lea RDX,QWORD PTR [RIP+.L_4153eb]
            lea R13,QWORD PTR [RSP+80]
            lea R15,QWORD PTR [R14+16]
            lea RSI,QWORD PTR [RDX-8]
            mov RDI,R14
            mov QWORD PTR [RSP+48],R15
.L_40b6a5:

            call .L_401470

            lea RAX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+80],RAX
            mov RAX,QWORD PTR [RSP+48]
            cmp RAX,R15
            je .L_40bf44

            mov QWORD PTR [RSP+80],RAX
            mov RAX,QWORD PTR [RSP+64]
            mov QWORD PTR [RSP+96],RAX
.L_40b6d0:

            mov RAX,QWORD PTR [RSP+56]
            lea R15,QWORD PTR [R13+48]
            mov RDI,R12
            mov RSI,R13
            mov QWORD PTR [RSP+56],0
            mov BYTE PTR [RSP+64],0
            mov QWORD PTR [RSP+112],R15
            mov QWORD PTR [RSP+120],0
            mov QWORD PTR [RSP+88],RAX
            lea RAX,QWORD PTR [R14+16]
            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+48],RAX
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+112]
            cmp RDI,R15
            je .L_40b725

            call free@PLT
.L_40b725:

            mov RDI,QWORD PTR [RSP+80]
            add R13,16
            cmp RDI,R13
            je .L_40b738

            call free@PLT
.L_40b738:

            mov RDI,QWORD PTR [RSP+48]
            add R14,16
            cmp RDI,R14
            je .L_40b74b

            call free@PLT
.L_40b74b:

            lea R15,QWORD PTR [RBX+2]
            mov R14,QWORD PTR [R12+16]
            cmp RBP,R15
            je .L_40bf92

            movsx EAX,BYTE PTR [RBX+2]
            sub EAX,48
            cmp EAX,9
            ja .L_40b7b9

            lea R13,QWORD PTR [RBX+3]
            cmp RBP,R13
            je .L_40b799

            movsx EAX,BYTE PTR [RBX+3]
            sub EAX,48
            cmp EAX,9
            jbe .L_40b78d

            jmp .L_40b799
.L_40b780:

            movsx EAX,BYTE PTR [R13]
            sub EAX,48
            cmp EAX,9
            ja .L_40b799
.L_40b78d:

            add R13,1
            cmp RBP,R13
            jne .L_40b780

            mov R13,RBP
.L_40b799:

            mov RSI,QWORD PTR [R14-56]
            lea RDI,QWORD PTR [R14-64]
            mov R8,R13
            sub R8,R15
            mov RCX,R15
            xor EDX,EDX
            mov R15,R13
            call .L_401b90

            mov R14,QWORD PTR [R12+16]
.L_40b7b9:

            lea RDI,QWORD PTR [R14-64]
            mov RAX,QWORD PTR [R14-64]
            mov R13,QWORD PTR [R14-56]
            mov EDX,15
            lea RCX,QWORD PTR [RDI+16]
            lea R9,QWORD PTR [R13+1]
            cmp RAX,RCX
            je .L_40b7db

            mov RDX,QWORD PTR [R14-48]
.L_40b7db:

            cmp R9,RDX
            jbe .L_40b7fe

            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,R13
            mov QWORD PTR [RSP],R9
            call .L_401690

            mov RAX,QWORD PTR [R14-64]
            mov R9,QWORD PTR [RSP]
.L_40b7fe:

            mov BYTE PTR [RAX+R13*1],39
            mov RAX,QWORD PTR [R14-64]
            cmp RBP,R15
            mov QWORD PTR [R14-56],R9
            mov BYTE PTR [RAX+R13*1+1],0
            je .L_40b820

            cmp BYTE PTR [R15],95
            je .L_40bf54
.L_40b820:

            mov R13,QWORD PTR [R12+16]
            lea RBP,QWORD PTR [R13-64]
            lea RAX,QWORD PTR [R13-16]
            mov QWORD PTR [R12+16],RBP
            mov RDI,QWORD PTR [R13-32]
            cmp RDI,RAX
            je .L_40b840

            call free@PLT
.L_40b840:

            mov RDI,QWORD PTR [R13-64]
            add RBP,16
            cmp RDI,RBP
            je .L_40b858
.L_40b84d:

            call free@PLT

            nop
            nop
            nop
            nop
            nop
            nop
.L_40b858:

            mov RAX,RBX
.L_40b85b:

            mov RSI,QWORD PTR [RSP+152]
            xor RSI,QWORD PTR FS:[40]
            jne .L_40c0c0

            add RSP,168
.L_40b879:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40b888:

            mov RDX,R12
            call .L_4038c0

            jmp .L_40b85b
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b898:

            sub RBP,RDI
            cmp RBP,1
            jle .L_40b858

            mov RAX,QWORD PTR [R12+16]
            cmp RAX,QWORD PTR [R12+8]
            je .L_40b858

            cmp CL,68
            movzx EDX,BYTE PTR [RDI+1]
            jne .L_40b9d8

            cmp DL,53
            ja .L_40b858

            movabs RCX,10977524091715584
            bt RCX,RDX
            jae .L_40b858

            lea RBP,QWORD PTR [RSP+16]
            lea RSI,QWORD PTR [RAX-64]
            lea R14,QWORD PTR [RSP+48]
            mov RDI,RBP
            call .L_403370
.L_40b8e5:

            lea RSI,QWORD PTR [RIP+.L_415235]
            mov RDX,RBP
            mov RDI,R14
.L_40b8f2:

            call .L_402420
.L_40b8f7:

            lea R13,QWORD PTR [RSP+80]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+80],RAX
            mov RAX,QWORD PTR [RSP+48]
            cmp RAX,RDX
            je .L_40bfb5

            mov QWORD PTR [RSP+80],RAX
            mov RAX,QWORD PTR [RSP+64]
            mov QWORD PTR [RSP+96],RAX
.L_40b926:

            mov RAX,QWORD PTR [RSP+56]
            lea R15,QWORD PTR [R13+48]
            mov RDI,R12
            mov RSI,R13
            mov QWORD PTR [RSP+56],0
            mov BYTE PTR [RSP+64],0
            mov QWORD PTR [RSP+112],R15
            mov QWORD PTR [RSP+120],0
            mov QWORD PTR [RSP+88],RAX
            lea RAX,QWORD PTR [R14+16]
            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+48],RAX
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+112]
            cmp RDI,R15
            je .L_40b97b

            call free@PLT
.L_40b97b:

            mov RDI,QWORD PTR [RSP+80]
            add R13,16
            cmp RDI,R13
            je .L_40b98e

            call free@PLT
.L_40b98e:

            mov RDI,QWORD PTR [RSP+48]
            add R14,16
            cmp RDI,R14
            je .L_40b9a1

            call free@PLT
.L_40b9a1:

            mov RDI,QWORD PTR [RSP+16]
            add RBP,16
            cmp RDI,RBP
            jne .L_40baab

            jmp .L_40bab0
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b9c0:

            mov RDX,R12
            mov RSI,RBP
            mov RDI,RBX
.L_40b9c9:

            call .L_40adf0

            jmp .L_40b85b
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b9d8:

            cmp DL,53
            ja .L_40b858

            movabs RCX,12947848928690176
            bt RCX,RDX
            jae .L_40b858

            lea R14,QWORD PTR [RSP+48]
            lea RSI,QWORD PTR [RAX-64]
            lea R13,QWORD PTR [RSP+80]
            mov RDI,R14
            call .L_403370

            lea RAX,QWORD PTR [R13+16]
            lea RDX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+80],RAX
            mov RAX,QWORD PTR [RSP+48]
            cmp RAX,RDX
            je .L_40bfa5

            mov QWORD PTR [RSP+80],RAX
            mov RAX,QWORD PTR [RSP+64]
            mov QWORD PTR [RSP+96],RAX
.L_40ba35:

            mov RAX,QWORD PTR [RSP+56]
            lea RBP,QWORD PTR [R13+48]
            mov RDI,R12
            mov RSI,R13
            mov QWORD PTR [RSP+56],0
            mov BYTE PTR [RSP+64],0
            mov QWORD PTR [RSP+112],RBP
            mov QWORD PTR [RSP+120],0
            mov QWORD PTR [RSP+88],RAX
            lea RAX,QWORD PTR [R14+16]
            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+48],RAX
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+112]
            cmp RDI,RBP
            je .L_40ba8a

            call free@PLT
.L_40ba8a:

            mov RDI,QWORD PTR [RSP+80]
            add R13,16
            cmp RDI,R13
            je .L_40ba9d

            call free@PLT
.L_40ba9d:

            mov RDI,QWORD PTR [RSP+48]
            add R14,16
            cmp RDI,R14
            je .L_40bab0
.L_40baab:

            call free@PLT
.L_40bab0:

            lea RAX,QWORD PTR [RBX+2]
            mov BYTE PTR [R12+108],1
            jmp .L_40b85b
          .byte 0x90
.L_40bac0:

            lea R14,QWORD PTR [RSP+48]
            lea RDX,QWORD PTR [RIP+.L_4153f5]
            lea R13,QWORD PTR [RSP+80]
            lea R15,QWORD PTR [R14+16]
            lea RSI,QWORD PTR [RDX-9]
            mov RDI,R14
            mov QWORD PTR [RSP+48],R15
            call .L_401470

            lea RAX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+80],RAX
            mov RAX,QWORD PTR [RSP+48]
            cmp RAX,R15
            je .L_40bf34

            mov QWORD PTR [RSP+80],RAX
            mov RAX,QWORD PTR [RSP+64]
            mov QWORD PTR [RSP+96],RAX
.L_40bb0c:

            mov RAX,QWORD PTR [RSP+56]
            lea R15,QWORD PTR [R13+48]
            mov RDI,R12
            mov RSI,R13
            mov QWORD PTR [RSP+56],0
            mov BYTE PTR [RSP+64],0
            mov QWORD PTR [RSP+112],R15
            mov QWORD PTR [RSP+120],0
            mov QWORD PTR [RSP+88],RAX
            lea RAX,QWORD PTR [R14+16]
            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+48],RAX
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+112]
            cmp RDI,R15
            je .L_40bb61

            call free@PLT
.L_40bb61:

            mov RDI,QWORD PTR [RSP+80]
            lea RAX,QWORD PTR [R13+16]
            cmp RDI,RAX
            je .L_40bb74

            call free@PLT
.L_40bb74:

            mov RDI,QWORD PTR [RSP+48]
            lea RAX,QWORD PTR [R14+16]
            cmp RDI,RAX
            je .L_40bb87

            call free@PLT
.L_40bb87:

            cmp BYTE PTR [RBX+2],118
            je .L_40be5c

            lea RCX,QWORD PTR [RBX+2]
            mov RDX,R12
            mov RSI,RBP
            mov RDI,RCX
            mov QWORD PTR [RSP],RCX
            call .L_4073b0

            mov RCX,QWORD PTR [RSP]
            mov R15,RAX
            mov RAX,QWORD PTR [R12+16]
            cmp RCX,R15
            je .L_40bf5d

            mov RDX,RAX
            sub RDX,QWORD PTR [R12+8]
            cmp RDX,127
            jbe .L_40b858

            lea RSI,QWORD PTR [RAX-64]
            mov RDI,R14
            lea RDX,QWORD PTR [RSI+32]
            call .L_4024a0
.L_40bbde:

            mov RDX,QWORD PTR [R12+16]
            lea RAX,QWORD PTR [RDX-64]
            lea RCX,QWORD PTR [RDX-16]
            mov QWORD PTR [R12+16],RAX
            mov RDI,QWORD PTR [RDX-32]
            cmp RDI,RCX
            je .L_40bc10

            mov QWORD PTR [RSP+8],RAX
            mov QWORD PTR [RSP],RDX
            call free@PLT

            mov RAX,QWORD PTR [RSP+8]
            mov RDX,QWORD PTR [RSP]
.L_40bc10:

            mov RDI,QWORD PTR [RDX-64]
            add RAX,16
            cmp RDI,RAX
            je .L_40bc22

            call free@PLT
.L_40bc22:

            mov RAX,QWORD PTR [R12+16]
            mov RDX,QWORD PTR [RSP+56]
            mov RSI,QWORD PTR [RSP+48]
            lea RDI,QWORD PTR [RAX-64]
.L_40bc35:

            call .L_4017e0

            jmp .L_40bc44
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40bc40:

            mov R15,QWORD PTR [RSP]
.L_40bc44:

            mov RDX,R12
            mov RSI,RBP
            mov RDI,R15
            call .L_4073b0

            mov RCX,RAX
            mov QWORD PTR [RSP],RAX
            mov RDX,QWORD PTR [R12+8]
            cmp R15,RCX
            mov RAX,QWORD PTR [R12+16]
            je .L_40bfc5

            mov RCX,RAX
            sub RCX,RDX
            cmp RCX,127
            jbe .L_40bf7b

            lea RDI,QWORD PTR [RAX-64]
            mov RCX,QWORD PTR [RAX-64]
            mov R8,QWORD PTR [RAX-56]
            mov RDX,QWORD PTR [RAX-24]
            mov R9D,15
            lea RSI,QWORD PTR [RDI+16]
            cmp RCX,RSI
            lea R10,QWORD PTR [R8+RDX*1]
            je .L_40bca3

            mov R9,QWORD PTR [RAX-48]
.L_40bca3:

            cmp R10,R9
            mov RSI,QWORD PTR [RAX-32]
            jbe .L_40bcc8

            lea R11,QWORD PTR [RAX-16]
            mov R9D,15
            cmp RSI,R11
            je .L_40bcbf

            mov R9,QWORD PTR [RAX-16]
.L_40bcbf:

            cmp R10,R9
            jbe .L_40bf22
.L_40bcc8:

            call .L_4017e0
.L_40bccd:

            lea RDX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+80],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40be4d

            mov QWORD PTR [RSP+80],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+96],RCX
.L_40bcf4:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+88],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            lea RAX,QWORD PTR [R13+16]
            mov RSI,QWORD PTR [RSP+80]
            mov RDI,QWORD PTR [RSP+48]
            cmp RSI,RAX
            je .L_40be17

            lea RAX,QWORD PTR [R14+16]
            mov RCX,QWORD PTR [RSP+88]
            mov RDX,QWORD PTR [RSP+96]
            cmp RDI,RAX
            je .L_40bf05

            test RDI,RDI
            mov RAX,QWORD PTR [RSP+64]
            mov QWORD PTR [RSP+48],RSI
            mov QWORD PTR [RSP+56],RCX
            mov QWORD PTR [RSP+64],RDX
            je .L_40bf14

            mov QWORD PTR [RSP+80],RDI
            mov QWORD PTR [RSP+96],RAX
.L_40bd61:

            mov QWORD PTR [RSP+88],0
            mov BYTE PTR [RDI],0
            lea RAX,QWORD PTR [R13+16]
            mov RDI,QWORD PTR [RSP+80]
            cmp RDI,RAX
            je .L_40bd80

            call free@PLT
.L_40bd80:

            mov RAX,QWORD PTR [R12+16]
            lea R15,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RAX-16]
            mov QWORD PTR [R12+16],R15
            mov RDI,QWORD PTR [RAX-32]
            cmp RDI,RDX
            je .L_40bdaa

            mov QWORD PTR [RSP+8],RAX
            call free@PLT

            mov RAX,QWORD PTR [RSP+8]
.L_40bdaa:

            mov RDI,QWORD PTR [RAX-64]
            add R15,16
            cmp RDI,R15
            je .L_40bdbc

            call free@PLT
.L_40bdbc:

            cmp QWORD PTR [RSP+56],0
            je .L_40bc40

            mov RAX,QWORD PTR [R12+16]
            movabs RCX,9223372036854775807
            sub RCX,QWORD PTR [RAX-56]
            lea RDI,QWORD PTR [RAX-64]
            cmp RCX,1
            jbe .L_40c0c5

            lea RSI,QWORD PTR [RIP+.L_41514a]
            mov EDX,2
            call .L_4017e0

            mov RAX,QWORD PTR [R12+16]
            mov RDX,QWORD PTR [RSP+56]
            mov RSI,QWORD PTR [RSP+48]
            lea RDI,QWORD PTR [RAX-64]
            call .L_4017e0
.L_40be12:

            jmp .L_40bc40
.L_40be17:

            mov RDX,QWORD PTR [RSP+88]
            test RDX,RDX
            je .L_40be3a

            cmp RDX,1
            je .L_40bff6

            call memcpy@PLT

            mov RDX,QWORD PTR [RSP+88]
            mov RDI,QWORD PTR [RSP+48]
.L_40be3a:

            mov QWORD PTR [RSP+56],RDX
            mov BYTE PTR [RDI+RDX*1],0
            mov RDI,QWORD PTR [RSP+80]
            jmp .L_40bd61
.L_40be4d:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+96],XMM0
            jmp .L_40bcf4
.L_40be5c:

            mov R13,QWORD PTR [R12+16]
            mov EDX,15
            lea RDI,QWORD PTR [R13-64]
            mov RAX,QWORD PTR [R13-64]
            mov R14,QWORD PTR [R13-56]
            lea RCX,QWORD PTR [RDI+16]
            lea R15,QWORD PTR [R14+1]
            cmp RAX,RCX
            je .L_40be83

            mov RDX,QWORD PTR [R13-48]
.L_40be83:

            cmp R15,RDX
            jbe .L_40be9e

            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,R14
.L_40be95:

            call .L_401690
.L_40be9a:

            mov RAX,QWORD PTR [R13-64]
.L_40be9e:

            mov BYTE PTR [RAX+R14*1],41
            mov RAX,QWORD PTR [R13-64]
            mov QWORD PTR [R13-56],R15
            lea R15,QWORD PTR [RBX+3]
            mov BYTE PTR [RAX+R14*1+1],0
.L_40beb5:

            cmp RBP,R15
            je .L_40bec4

            cmp BYTE PTR [R15],69
            je .L_40c00c
.L_40bec4:

            mov RBP,QWORD PTR [R12+16]
            cmp RBP,QWORD PTR [R12+8]
            je .L_40b858

            lea R13,QWORD PTR [RBP-64]
            lea RAX,QWORD PTR [RBP-16]
            mov QWORD PTR [R12+16],R13
            mov RDI,QWORD PTR [RBP-32]
            cmp RDI,RAX
            je .L_40beef

            call free@PLT
.L_40beef:

            mov RDI,QWORD PTR [RBP-64]
            add R13,16
            cmp RDI,R13
            jne .L_40b84d

            jmp .L_40b858
.L_40bf05:

            mov QWORD PTR [RSP+48],RSI
            mov QWORD PTR [RSP+56],RCX
            mov QWORD PTR [RSP+64],RDX
.L_40bf14:

            lea RDI,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+80],RDI
            jmp .L_40bd61
.L_40bf22:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
.L_40bf2a:

            call .L_401b90

            jmp .L_40bccd
.L_40bf34:

            movdqa XMM0,XMMWORD PTR [RSP+64]
            movaps XMMWORD PTR [RSP+96],XMM0
            jmp .L_40bb0c
.L_40bf44:

            movdqa XMM0,XMMWORD PTR [RSP+64]
            movaps XMMWORD PTR [RSP+96],XMM0
            jmp .L_40b6d0
.L_40bf54:

            lea RBX,QWORD PTR [R15+1]
            jmp .L_40b858
.L_40bf5d:

            cmp RAX,QWORD PTR [R12+8]
            je .L_40b858

            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R12+16],RDI
            call .L_401050

            jmp .L_40b858
.L_40bf7b:

            mov RDI,QWORD PTR [RSP+48]
            add R14,16
            cmp RDI,R14
            jne .L_40b84d

            jmp .L_40b858
.L_40bf92:

            lea RDI,QWORD PTR [R14-64]
            mov QWORD PTR [R12+16],RDI
            call .L_401050

            jmp .L_40b858
.L_40bfa5:

            movdqa XMM0,XMMWORD PTR [RSP+64]
            movaps XMMWORD PTR [RSP+96],XMM0
            jmp .L_40ba35
.L_40bfb5:

            movdqa XMM0,XMMWORD PTR [RSP+64]
            movaps XMMWORD PTR [RSP+96],XMM0
            jmp .L_40b926
.L_40bfc5:

            cmp RAX,RDX
            je .L_40bf7b

            lea RDI,QWORD PTR [RAX-64]
            lea RSI,QWORD PTR [RIP+.L_415221]
            call .L_401860
.L_40bfda:

            mov RDI,QWORD PTR [RSP+48]
            add R14,16
            cmp RDI,R14
            je .L_40beb5

            call free@PLT

            jmp .L_40beb5
.L_40bff6:

            movzx EAX,BYTE PTR [RSP+96]
            mov BYTE PTR [RDI],AL
            mov RDX,QWORD PTR [RSP+88]
            mov RDI,QWORD PTR [RSP+48]
            jmp .L_40be3a
.L_40c00c:

            lea RCX,QWORD PTR [R15+1]
            cmp RBP,RCX
            je .L_40c071

            movsx EAX,BYTE PTR [R15+1]
            sub EAX,48
            cmp EAX,9
            ja .L_40c0b2

            lea R13,QWORD PTR [R15+2]
            cmp RBP,R13
            je .L_40c056

            movsx EAX,BYTE PTR [R15+2]
            sub EAX,48
            cmp EAX,9
            jbe .L_40c04d

            jmp .L_40c094
          .byte 0x66
          .byte 0x90
.L_40c040:

            movsx EAX,BYTE PTR [R13]
            sub EAX,48
            cmp EAX,9
            ja .L_40c094
.L_40c04d:

            add R13,1
            cmp RBP,R13
            jne .L_40c040
.L_40c056:

            mov RAX,QWORD PTR [R12+16]
            mov R8,R13
            xor EDX,EDX
            sub R8,RCX
            mov ESI,7
            lea RDI,QWORD PTR [RAX-64]
.L_40c06c:

            call .L_401e50
.L_40c071:

            mov RDI,QWORD PTR [R12+16]
            cmp RDI,QWORD PTR [R12+8]
            je .L_40b858

            sub RDI,64
            mov QWORD PTR [R12+16],RDI
            call .L_401050

            jmp .L_40b858
.L_40c094:

            mov RAX,QWORD PTR [R12+16]
            mov R8,R13
            xor EDX,EDX
            sub R8,RCX
            mov ESI,7
            lea RDI,QWORD PTR [RAX-64]
            call .L_401e50
.L_40c0af:

            mov RCX,R13
.L_40c0b2:

            cmp BYTE PTR [RCX],95
            jne .L_40c071

            lea RBX,QWORD PTR [RCX+1]
            jmp .L_40b858
.L_40c0c0:

            call __stack_chk_fail@PLT
.L_40c0c5:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
.L_40c0cc:

            call _ZSt20__throw_length_errorPKc@PLT
.L_40c0d1:

            mov RDI,QWORD PTR [RSP+16]
            add RBP,16
            mov RBX,RAX
            cmp RDI,RBP
            je .L_40c0e7
.L_40c0e2:

            call free@PLT
.L_40c0e7:

            mov RDI,RBX
.L_40c0ea:

            call _Unwind_Resume@PLT
.L_40c0ef:

            mov RDI,QWORD PTR [RSP+48]
            add R14,16
            mov RBX,RAX
            cmp RDI,R14
            jne .L_40c0e2

            jmp .L_40c0e7
.L_40c102:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40c110:

            cmp RDI,RSI
            je .L_40c150

            push R13
            push R12
            mov R12,RSI
            push RBP
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,8
            movzx EAX,BYTE PTR [RDI]
            cmp AL,76
            je .L_40c1c0

            cmp AL,88
            je .L_40c158

            cmp AL,74
            je .L_40c188

            add RSP,8
            pop RBX
            pop RBP
            pop R12
            pop R13
            jmp .L_4073b0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c150:

            mov RAX,RDI
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40c158:

            lea R13,QWORD PTR [RDI+1]
            mov RDI,R13
            call .L_40d570

            cmp R12,RAX
            je .L_40c173

            cmp R13,RAX
            je .L_40c173
.L_40c16e:

            cmp BYTE PTR [RAX],69
            je .L_40c1f0
.L_40c173:

            mov RAX,RBX
.L_40c176:

            add RSP,8
            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c188:

            lea R13,QWORD PTR [RDI+1]
            cmp RSI,R13
            je .L_40c173

            cmp BYTE PTR [R13],69
            je .L_40c1b5
.L_40c198:

            mov RDX,RBP
            mov RSI,R12
            mov RDI,R13
            call .L_40c110

            cmp R13,RAX
            je .L_40c173

            mov R13,RAX
            cmp BYTE PTR [R13],69
            jne .L_40c198
.L_40c1b5:

            lea RAX,QWORD PTR [R13+1]
            jmp .L_40c176
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c1c0:

            lea RAX,QWORD PTR [RDI+1]
            cmp RSI,RAX
            je .L_40c1cf

            cmp BYTE PTR [RDI+1],90
            je .L_40c200
.L_40c1cf:

            add RSP,8
.L_40c1d3:

            mov RDX,RBP
            mov RSI,R12
            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            jmp .L_40a0a0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c1f0:

            add RAX,1
            jmp .L_40c176
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c200:

            lea R13,QWORD PTR [RDI+2]
            mov RDI,R13
            call .L_404bc0

            cmp R13,RAX
            je .L_40c173

            cmp R12,RAX
            jne .L_40c16e

            jmp .L_40c173
.L_40c223:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40c230:

            push R15
            push R14
            mov RAX,RSI
            push R13
            push R12
            sub RAX,RDI
            push RBP
            push RBX
            sub RSP,248
.L_40c247:

            mov QWORD PTR [RSP+40],RSI
            mov QWORD PTR [RSP+48],RDI
            mov RSI,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+232],RSI
            xor ESI,ESI
            cmp RAX,1
            jle .L_40c26f

            cmp BYTE PTR [RDI],73
            je .L_40c29d
.L_40c26f:

            mov RCX,QWORD PTR [RSP+232]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,QWORD PTR [RSP+48]
            jne .L_40cbbf

            add RSP,248
.L_40c292:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_40c29d:

            cmp BYTE PTR [RDX+109],0
            mov RBX,RDX
            jne .L_40c886
.L_40c2aa:

            mov RAX,QWORD PTR [RSP+48]
            lea RDI,QWORD PTR [RSP+96]
            lea RDX,QWORD PTR [RIP+.L_4152e3]
            lea R15,QWORD PTR [RSP+176]
            lea RSI,QWORD PTR [RDX-1]
            mov QWORD PTR [RSP],RDI
            add RAX,1
            mov QWORD PTR [RSP+16],RAX
            lea RAX,QWORD PTR [RDI+16]
            mov QWORD PTR [RSP+96],RAX
.L_40c2dd:

            call .L_401470
.L_40c2e2:

            lea RAX,QWORD PTR [RSP+160]
            mov QWORD PTR [RSP+72],RAX
            mov RAX,QWORD PTR [RSP+16]
            cmp BYTE PTR [RAX],69
            je .L_40c553

            nop
            nop
            nop
.L_40c300:

            cmp BYTE PTR [RBX+109],0
            je .L_40c340

            mov RBP,QWORD PTR [RBX+80]
            cmp RBP,QWORD PTR [RBX+88]
            mov R12,QWORD PTR [RBX]
            je .L_40c911

            test RBP,RBP
            je .L_40c338

            mov QWORD PTR [RBP],R12
            mov QWORD PTR [RBP+8],0
            mov QWORD PTR [RBP+16],0
            mov QWORD PTR [RBP+24],0
.L_40c338:

            add RBP,32
            mov QWORD PTR [RBX+80],RBP
.L_40c340:

            mov RAX,QWORD PTR [RBX+16]
            sub RAX,QWORD PTR [RBX+8]
            mov RDX,RBX
            mov RSI,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+16]
            sar RAX,6
            mov QWORD PTR [RSP+24],RAX
.L_40c35e:

            call .L_40c110
.L_40c363:

            mov QWORD PTR [RSP+32],RAX
            mov RAX,QWORD PTR [RBX+16]
            sub RAX,QWORD PTR [RBX+8]
            sar RAX,6
            cmp BYTE PTR [RBX+109],0
            mov QWORD PTR [RSP+8],RAX
            mov RBP,RAX
            jne .L_40c6c8

            mov RAX,QWORD PTR [RSP+32]
            cmp QWORD PTR [RSP+40],RAX
            je .L_40c6a5

            cmp QWORD PTR [RSP+16],RAX
            je .L_40c6a5
.L_40c3a1:

            mov RCX,QWORD PTR [RSP+8]
            cmp QWORD PTR [RSP+24],RCX
            jae .L_40c53b
.L_40c3b1:

            mov R12,QWORD PTR [RSP+24]
            movabs R13,9223372036854775807
            jmp .L_40c431
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c3c8:

            mov QWORD PTR [RSP+160],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+176],RCX
.L_40c3dc:

            mov RCX,QWORD PTR [RAX+8]
            mov RDI,QWORD PTR [RSP]
            mov QWORD PTR [RSP+168],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RDX,QWORD PTR [RSP+168]
            mov RSI,QWORD PTR [RSP+160]
.L_40c40b:

            call .L_4017e0
.L_40c410:

            mov RDI,QWORD PTR [RSP+160]
            cmp RDI,R15
            je .L_40c422

            call free@PLT
.L_40c422:

            add R12,1
            cmp R12,QWORD PTR [RSP+8]
            jae .L_40c4f0
.L_40c431:

            mov RAX,QWORD PTR [RSP+104]
            cmp RAX,1
            jbe .L_40c461

            mov RCX,R13
            sub RCX,RAX
            cmp RCX,1
            jbe .L_40cb91

            mov RDI,QWORD PTR [RSP]
            lea RSI,QWORD PTR [RIP+.L_41514a]
            mov EDX,2
.L_40c45c:

            call .L_4017e0
.L_40c461:

            mov RDI,R12
            mov EAX,15
            shl RDI,6
            add RDI,QWORD PTR [RBX+8]
            mov RCX,QWORD PTR [RDI]
            mov R8,QWORD PTR [RDI+8]
            lea RSI,QWORD PTR [RDI+16]
            mov RDX,QWORD PTR [RDI+40]
            cmp RCX,RSI
            lea R9,QWORD PTR [R8+RDX*1]
            je .L_40c48d

            mov RAX,QWORD PTR [RDI+16]
.L_40c48d:

            cmp R9,RAX
            mov RSI,QWORD PTR [RDI+32]
            jbe .L_40c4ad

            lea R10,QWORD PTR [RDI+48]
            mov EAX,15
            cmp RSI,R10
            je .L_40c4a8

            mov RAX,QWORD PTR [RDI+48]
.L_40c4a8:

            cmp R9,RAX
            jbe .L_40c4e0
.L_40c4ad:

            call .L_4017e0
.L_40c4b2:

            mov QWORD PTR [RSP+160],R15
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            jne .L_40c3c8

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+176],XMM0
            jmp .L_40c3dc
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40c4e0:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
            call .L_401b90

            jmp .L_40c4b2
          .byte 0x90
.L_40c4f0:

            mov R14,QWORD PTR [RSP+24]
            nop
            nop
            nop
.L_40c4f8:

            mov R12,QWORD PTR [RBX+16]
            cmp R12,QWORD PTR [RBX+8]
            je .L_40c532

            lea R13,QWORD PTR [R12-64]
            lea RAX,QWORD PTR [R12-16]
            mov QWORD PTR [RBX+16],R13
            mov RDI,QWORD PTR [R12-32]
            cmp RDI,RAX
            je .L_40c51f

            call free@PLT
.L_40c51f:

            mov RDI,QWORD PTR [R12-64]
            add R13,16
            cmp RDI,R13
            je .L_40c532

            call free@PLT
.L_40c532:

            sub RBP,1
            cmp RBP,R14
            ja .L_40c4f8
.L_40c53b:

            mov RAX,QWORD PTR [RSP+32]
            mov QWORD PTR [RSP+16],RAX
            mov RAX,QWORD PTR [RSP+16]
            cmp BYTE PTR [RAX],69
            jne .L_40c300
.L_40c553:

            mov RAX,QWORD PTR [RSP+16]
            mov RDX,QWORD PTR [RSP+96]
            add RAX,1
            mov QWORD PTR [RSP+48],RAX
            mov RAX,QWORD PTR [RSP+104]
            cmp BYTE PTR [RDX+RAX*1-1],62
            movabs RDX,9223372036854775807
            je .L_40cb1f

            cmp RAX,RDX
            je .L_40cbf4

            mov RDI,QWORD PTR [RSP]
            lea RSI,QWORD PTR [RIP+.L_4153f7]
            mov EDX,1
            call .L_4017e0
.L_40c59e:

            mov RCX,QWORD PTR [RSP]
            mov RAX,QWORD PTR [RSP+96]
            lea R12,QWORD PTR [RSP+128]
            lea RDI,QWORD PTR [R12+16]
            lea RDX,QWORD PTR [RCX+16]
            cmp RAX,RDX
            je .L_40cb46

            lea RBP,QWORD PTR [RSP+160]
            mov RCX,QWORD PTR [RSP+112]
            mov QWORD PTR [RSP+96],RDX
            cmp RAX,RDI
            mov RSI,QWORD PTR [RSP+104]
            mov BYTE PTR [RSP+112],0
            lea RDX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+104],0
            mov QWORD PTR [RSP+144],RCX
            mov QWORD PTR [RSP+160],RDX
            je .L_40cb7b

            mov QWORD PTR [RSP+160],RAX
            mov QWORD PTR [RSP+176],RCX
.L_40c613:

            lea RAX,QWORD PTR [R12+16]
            lea R13,QWORD PTR [RBP+48]
            mov QWORD PTR [RSP+168],RSI
            mov RDI,RBX
            mov RSI,RBP
            mov QWORD PTR [RSP+136],0
            mov QWORD PTR [RSP+128],RAX
            mov BYTE PTR [RSP+144],0
            mov QWORD PTR [RSP+192],R13
            mov QWORD PTR [RSP+200],0
            mov BYTE PTR [RSP+208],0
            call .L_401ee0

            mov RDI,QWORD PTR [RSP+192]
            cmp RDI,R13
            je .L_40c679

            call free@PLT
.L_40c679:

            mov RDI,QWORD PTR [RSP+160]
            add RBP,16
            cmp RDI,RBP
            je .L_40c68f

            call free@PLT
.L_40c68f:

            mov RDI,QWORD PTR [RSP+128]
            add R12,16
            cmp RDI,R12
            je .L_40c6a5

            call free@PLT
.L_40c6a5:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+96]
            add RAX,16
            cmp RDI,RAX
            je .L_40c26f

            call free@PLT

            jmp .L_40c26f
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40c6c8:

            mov RSI,QWORD PTR [RBX+80]
            mov RCX,QWORD PTR [RSI-16]
            mov R12,QWORD PTR [RSI-24]
            lea RAX,QWORD PTR [RSI-32]
            mov QWORD PTR [RSP+56],RSI
            mov QWORD PTR [RBX+80],RAX
            cmp RCX,R12
            je .L_40c761

            mov R14,RCX
            mov QWORD PTR [RSP+64],RBX
            nop
            nop
.L_40c6f0:

            mov R13,QWORD PTR [R12+16]
            mov RBX,QWORD PTR [R12+8]
            cmp R13,RBX
            je .L_40c731

            nop
.L_40c700:

            mov RDI,QWORD PTR [RBX+32]
            lea RAX,QWORD PTR [RBX+48]
            cmp RDI,RAX
            je .L_40c712

            call free@PLT
.L_40c712:

            mov RDI,QWORD PTR [RBX]
            lea RAX,QWORD PTR [RBX+16]
            cmp RDI,RAX
            je .L_40c723

            call free@PLT
.L_40c723:

            add RBX,64
            cmp R13,RBX
            jne .L_40c700

            mov RBX,QWORD PTR [R12+8]
.L_40c731:

            test RBX,RBX
            je .L_40c74a

            mov RDX,QWORD PTR [R12+24]
            mov RDI,QWORD PTR [R12]
            mov RSI,RBX
            sub RDX,RBX
            call .L_4012a0
.L_40c74a:

            add R12,32
            cmp R14,R12
            jne .L_40c6f0

            mov RAX,QWORD PTR [RSP+56]
            mov RBX,QWORD PTR [RSP+64]
            mov R12,QWORD PTR [RAX-24]
.L_40c761:

            test R12,R12
            je .L_40c786

            mov RAX,QWORD PTR [RSP+56]
            mov RSI,QWORD PTR [RAX-8]
            mov RDI,QWORD PTR [RAX-32]
            mov RDX,RSI
            mov QWORD PTR [RSP+56],RSI
            mov RSI,R12
            sub RDX,R12
            call .L_4012a0
.L_40c786:

            mov RAX,QWORD PTR [RSP+32]
            cmp QWORD PTR [RSP+16],RAX
            je .L_40c6a5

            cmp QWORD PTR [RSP+40],RAX
            je .L_40c6a5

            cmp BYTE PTR [RBX+109],0
            je .L_40c3a1

            mov RAX,QWORD PTR [RBX+80]
            lea RSI,QWORD PTR [RSP+88]
            lea RDI,QWORD PTR [RAX-32]
            mov RAX,QWORD PTR [RBX]
            mov QWORD PTR [RSP+88],RAX
            call .L_402b00

            mov RAX,QWORD PTR [RSP+24]
            mov RSI,QWORD PTR [RSP+8]
            cmp RAX,RSI
            jae .L_40c53b

            mov R14,RAX
            jmp .L_40c84a
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40c7e0:

            test R12,R12
            je .L_40c82e

            lea RSI,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [R12],RSI
            mov QWORD PTR [RSP+56],RSI
            mov RDX,QWORD PTR [R13+8]
            mov RSI,QWORD PTR [R13]
            add RDX,RSI
            call .L_401470
.L_40c806:

            lea RAX,QWORD PTR [R12+48]
            lea RDI,QWORD PTR [R12+32]
            mov QWORD PTR [R12+32],RAX
            mov RSI,QWORD PTR [R13+32]
            mov RDX,QWORD PTR [R13+40]
            add RDX,RSI
.L_40c820:

            call .L_401470
.L_40c825:

            mov RAX,QWORD PTR [RSP+16]
            mov R12,QWORD PTR [RAX-16]
.L_40c82e:

            mov RAX,QWORD PTR [RSP+16]
            add R12,64
            mov QWORD PTR [RAX-16],R12
.L_40c83b:

            add R14,1
            cmp R14,QWORD PTR [RSP+8]
            jae .L_40c3b1
.L_40c84a:

            mov RAX,QWORD PTR [RBX+80]
            mov R13,R14
            shl R13,6
            add R13,QWORD PTR [RBX+8]
            mov RAX,QWORD PTR [RAX-16]
            mov R12,QWORD PTR [RAX-16]
            cmp R12,QWORD PTR [RAX-8]
            mov QWORD PTR [RSP+16],RAX
            jne .L_40c7e0

            mov RDI,QWORD PTR [RSP+16]
            mov RDX,R13
            mov RSI,R12
            sub RDI,32
.L_40c87f:

            call .L_402d20

            jmp .L_40c83b
.L_40c886:

            mov R14,QWORD PTR [RDX+80]
            mov RAX,QWORD PTR [R14-24]
            mov R13,QWORD PTR [R14-16]
            cmp R13,RAX
            mov QWORD PTR [RSP],RAX
            je .L_40c904

            mov R12,RAX
            nop
            nop
.L_40c8a0:

            mov R15,QWORD PTR [R12+16]
            mov RBP,QWORD PTR [R12+8]
            cmp R15,RBP
            je .L_40c8e2

            nop
.L_40c8b0:

            mov RDI,QWORD PTR [RBP+32]
            lea RAX,QWORD PTR [RBP+48]
            cmp RDI,RAX
            je .L_40c8c2

            call free@PLT
.L_40c8c2:

            mov RDI,QWORD PTR [RBP]
            lea RAX,QWORD PTR [RBP+16]
            cmp RDI,RAX
            je .L_40c8d4

            call free@PLT
.L_40c8d4:

            add RBP,64
            cmp R15,RBP
            jne .L_40c8b0

            mov RBP,QWORD PTR [R12+8]
.L_40c8e2:

            test RBP,RBP
            je .L_40c8fb

            mov RDX,QWORD PTR [R12+24]
            mov RDI,QWORD PTR [R12]
            mov RSI,RBP
            sub RDX,RBP
            call .L_4012a0
.L_40c8fb:

            add R12,32
            cmp R12,R13
            jne .L_40c8a0
.L_40c904:

            mov RAX,QWORD PTR [RSP]
            mov QWORD PTR [R14-16],RAX
            jmp .L_40c2aa
.L_40c911:

            mov R14,QWORD PTR [RBX+72]
            mov R13,RBP
            sub R13,R14
            mov RAX,R13
            sar RAX,5
            test RAX,RAX
            je .L_40cac4

            lea RSI,QWORD PTR [RAX+RAX*1]
            cmp RAX,RSI
            mov QWORD PTR [RSP+24],RSI
            jbe .L_40cad7
.L_40c93d:

            mov RDI,-32
            mov QWORD PTR [RSP+24],RDI
.L_40c949:

            mov RAX,QWORD PTR [RBX+64]
            mov RCX,QWORD PTR [RAX+4096]
            lea RDX,QWORD PTR [RAX+4096]
            sub RDX,RCX
            mov QWORD PTR [RSP+8],RCX
            cmp RDX,RDI
            jb .L_40cb10

            add RDI,RCX
            mov QWORD PTR [RAX+4096],RDI
            mov R14,QWORD PTR [RBX+72]
.L_40c97a:

            add R13,QWORD PTR [RSP+8]
            je .L_40c99d

            mov QWORD PTR [R13],R12
            mov QWORD PTR [R13+8],0
            mov QWORD PTR [R13+16],0
            mov QWORD PTR [R13+24],0
.L_40c99d:

            mov RDX,QWORD PTR [RSP+8]
            mov RSI,RBP
            mov RDI,R14
            call .L_4012f0

            mov RSI,QWORD PTR [RBX+80]
            lea RDX,QWORD PTR [RAX+32]
            mov RDI,RBP
            call .L_4012f0

            mov R13,QWORD PTR [RBX+72]
            mov QWORD PTR [RSP+32],RAX
            mov RAX,QWORD PTR [RBX+80]
            cmp RAX,R13
            je .L_40ca8c

            mov QWORD PTR [RSP+56],RBX
            mov QWORD PTR [RSP+64],R15
            mov RBX,RAX
.L_40c9e0:

            mov R14,QWORD PTR [R13+16]
            mov RBP,QWORD PTR [R13+8]
            cmp R14,RBP
            je .L_40ca59

            nop
            nop
            nop
.L_40c9f0:

            mov R15,QWORD PTR [RBP+16]
            mov R12,QWORD PTR [RBP+8]
            cmp R15,R12
            je .L_40ca34

            nop
            nop
            nop
.L_40ca00:

            mov RDI,QWORD PTR [R12+32]
            lea RAX,QWORD PTR [R12+48]
            cmp RDI,RAX
            je .L_40ca14

            call free@PLT
.L_40ca14:

            mov RDI,QWORD PTR [R12]
            lea RAX,QWORD PTR [R12+16]
            cmp RDI,RAX
            je .L_40ca27

            call free@PLT
.L_40ca27:

            add R12,64
            cmp R15,R12
            jne .L_40ca00

            mov R12,QWORD PTR [RBP+8]
.L_40ca34:

            test R12,R12
            je .L_40ca4c

            mov RDX,QWORD PTR [RBP+24]
            mov RDI,QWORD PTR [RBP]
            mov RSI,R12
            sub RDX,R12
            call .L_4012a0
.L_40ca4c:

            add RBP,32
            cmp R14,RBP
            jne .L_40c9f0

            mov RBP,QWORD PTR [R13+8]
.L_40ca59:

            test RBP,RBP
            je .L_40ca71

            mov RDX,QWORD PTR [R13+24]
            mov RDI,QWORD PTR [R13]
            mov RSI,RBP
            sub RDX,RBP
            call .L_4012a0
.L_40ca71:

            add R13,32
            cmp RBX,R13
            jne .L_40c9e0

            mov RBX,QWORD PTR [RSP+56]
            mov R15,QWORD PTR [RSP+64]
            mov R13,QWORD PTR [RBX+72]
.L_40ca8c:

            test R13,R13
            je .L_40caa4

            mov RDX,QWORD PTR [RBX+88]
            mov RDI,QWORD PTR [RBX+64]
            mov RSI,R13
            sub RDX,R13
            call .L_4012a0
.L_40caa4:

            mov RAX,QWORD PTR [RSP+8]
            mov RCX,QWORD PTR [RSP+32]
            mov QWORD PTR [RBX+72],RAX
            add RAX,QWORD PTR [RSP+24]
            mov QWORD PTR [RBX+80],RCX
            mov QWORD PTR [RBX+88],RAX
            jmp .L_40c340
.L_40cac4:

            mov EDI,32
            mov QWORD PTR [RSP+24],32
            jmp .L_40c949
.L_40cad7:

            movabs RCX,576460752303423487
            cmp RSI,RCX
            ja .L_40c93d

            test RSI,RSI
            mov QWORD PTR [RSP+8],0
            je .L_40c97a

            shl RAX,6
            mov QWORD PTR [RSP+24],RAX
            mov RDI,RAX
            jmp .L_40c949
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40cb10:

            call malloc@PLT

            mov QWORD PTR [RSP+8],RAX
            jmp .L_40c97a
.L_40cb1f:

            sub RDX,RAX
            cmp RDX,1
            jbe .L_40cc00

            mov RDI,QWORD PTR [RSP]
            lea RSI,QWORD PTR [RIP+.L_4153f6]
            mov EDX,2
            call .L_4017e0

            jmp .L_40c59e
.L_40cb46:

            movdqa XMM0,XMMWORD PTR [RSP+112]
            lea RBP,QWORD PTR [RSP+160]
            mov RSI,QWORD PTR [RSP+104]
            mov BYTE PTR [RSP+112],0
            lea RAX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+104],0
            movaps XMMWORD PTR [RSP+144],XMM0
            mov QWORD PTR [RSP+160],RAX
.L_40cb7b:

            movdqa XMM0,XMMWORD PTR [RSP+144]
            movaps XMMWORD PTR [RSP+176],XMM0
            jmp .L_40c613
.L_40cb91:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
            call _ZSt20__throw_length_errorPKc@PLT
.L_40cb9d:

            mov RBX,RAX
.L_40cba0:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+96]
            add RAX,16
            cmp RDI,RAX
            je .L_40cbb7

            call free@PLT
.L_40cbb7:

            mov RDI,RBX
.L_40cbba:

            call _Unwind_Resume@PLT
.L_40cbbf:

            call __stack_chk_fail@PLT
.L_40cbc4:

            mov RBX,RAX
            mov RAX,QWORD PTR [RSP+72]
            mov RDI,QWORD PTR [RSP+160]
            add RAX,16
            cmp RDI,RAX
            je .L_40cba0
.L_40cbdd:

            call free@PLT

            jmp .L_40cba0
.L_40cbe4:

            mov RDI,QWORD PTR [R12]
            cmp QWORD PTR [RSP+56],RDI
            mov RBX,RAX
            jne .L_40cbdd

            jmp .L_40cba0
.L_40cbf4:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
.L_40cbfb:

            call _ZSt20__throw_length_errorPKc@PLT
.L_40cc00:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
            call _ZSt20__throw_length_errorPKc@PLT
.L_40cc0c:

            nop
            nop
            nop
            nop
.L_40cc10:

            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,48
.L_40cc1f:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+40],RAX
            xor EAX,EAX
            cmp RDI,RSI
            je .L_40cd90

            mov R12,RSI
            mov R13,RDX
.L_40cc3e:

            call .L_4038c0

            cmp RBX,RAX
            mov RBP,RAX
            je .L_40cd70

            mov RSI,R12
            mov RDX,R13
            mov RDI,RAX
            call .L_40c230

            cmp RBP,RAX
            mov R12,RAX
            je .L_40cd70

            mov RAX,QWORD PTR [R13+16]
            mov RDX,RAX
            sub RDX,QWORD PTR [R13+8]
            cmp RDX,127
            jbe .L_40cd90

            lea RDI,QWORD PTR [RAX-64]
            mov RCX,QWORD PTR [RAX-64]
            mov R8,QWORD PTR [RAX-56]
            mov RDX,QWORD PTR [RAX-24]
            mov R9D,15
            lea RSI,QWORD PTR [RDI+16]
            cmp RCX,RSI
            lea R10,QWORD PTR [R8+RDX*1]
            je .L_40cca5

            mov R9,QWORD PTR [RAX-48]
.L_40cca5:

            cmp R10,R9
            mov RSI,QWORD PTR [RAX-32]
            jbe .L_40ccca

            lea R11,QWORD PTR [RAX-16]
            mov R9D,15
            cmp RSI,R11
            je .L_40ccc1

            mov R9,QWORD PTR [RAX-16]
.L_40ccc1:

            cmp R10,R9
            jbe .L_40cdb0
.L_40ccca:

            call .L_4017e0
.L_40cccf:

            mov RBX,RSP
            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40cd98

            mov QWORD PTR [RSP],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+16],RCX
.L_40ccf7:

            mov BYTE PTR [RAX+16],0
            mov R14,QWORD PTR [R13+16]
            mov RCX,QWORD PTR [RAX+8]
            lea RBP,QWORD PTR [R14-64]
            mov QWORD PTR [RSP+8],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov QWORD PTR [R13+16],RBP
            lea RAX,QWORD PTR [R14-16]
            mov RDI,QWORD PTR [R14-32]
            cmp RDI,RAX
            je .L_40cd2d

            call free@PLT
.L_40cd2d:

            mov RDI,QWORD PTR [R14-64]
            add RBP,16
            cmp RDI,RBP
            je .L_40cd3f

            call free@PLT
.L_40cd3f:

            mov RDI,QWORD PTR [R13+16]
            mov RDX,QWORD PTR [RSP+8]
            mov RSI,QWORD PTR [RSP]
            sub RDI,64
.L_40cd50:

            call .L_4017e0
.L_40cd55:

            mov RDI,QWORD PTR [RSP]
            add RBX,16
            cmp RDI,RBX
            je .L_40cd67

            call free@PLT
.L_40cd67:

            mov RBP,R12
            nop
            nop
            nop
            nop
            nop
            nop
.L_40cd70:

            mov RCX,QWORD PTR [RSP+40]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBP
            jne .L_40cdc2

            add RSP,48
.L_40cd87:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
.L_40cd90:

            mov RBP,RBX
            jmp .L_40cd70
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40cd98:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+16],XMM0
            jmp .L_40ccf7
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40cdb0:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
.L_40cdb8:

            call .L_401b90

            jmp .L_40cccf
.L_40cdc2:

            call __stack_chk_fail@PLT
.L_40cdc7:

            mov RDI,QWORD PTR [RSP]
            add RBX,16
            mov RBP,RAX
            cmp RDI,RBX
            je .L_40cddc

            call free@PLT
.L_40cddc:

            mov RDI,RBP
            call _Unwind_Resume@PLT
.L_40cde4:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40cdf0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,120
.L_40ce01:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+104],RAX
            xor EAX,EAX
            mov RAX,RSI
            sub RAX,RDI
            cmp RAX,2
            jle .L_40ce50

            cmp BYTE PTR [RDI],103
            mov RBP,RSI
            mov R12,RDX
            je .L_40ce80
.L_40ce28:

            mov RDX,R12
            mov RSI,RBP
            mov RDI,RBX
.L_40ce31:

            call .L_412b40

            xor R13D,R13D
            cmp RBX,RAX
            mov R14,RAX
            jne .L_40ce53
.L_40ce41:

            cmp BYTE PTR [R14],115
            je .L_40ced0

            nop
            nop
            nop
            nop
            nop
.L_40ce50:

            mov R14,RBX
.L_40ce53:

            mov RCX,QWORD PTR [RSP+104]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,R14
            jne .L_40d326

            add RSP,120
.L_40ce6e:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40ce80:

            cmp BYTE PTR [RDI+1],115
            jne .L_40ce28

            lea R13,QWORD PTR [RDI+2]
            mov RDI,R13
            call .L_412b40

            cmp R13,RAX
            mov R14,RAX
            je .L_40d496

            mov RDI,QWORD PTR [R12+16]
            cmp QWORD PTR [R12+8],RDI
            je .L_40ce50

            lea RCX,QWORD PTR [RIP+.L_415187]
            sub RDI,64
            mov R8D,2
            xor EDX,EDX
            xor ESI,ESI
            call .L_401b90

            jmp .L_40ce53

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ced0:

            cmp BYTE PTR [R14+1],114
            jne .L_40ce50

            cmp BYTE PTR [R14+2],78
            je .L_40d03b

            add R14,2
            mov RDX,R12
            mov RSI,RBP
            mov RDI,R14
            call .L_412770

            cmp R14,RAX
            mov R15,RAX
            mov RDX,R12
            mov RSI,RBP
            je .L_40d1d7

            mov RDI,RAX
            call .L_40c230

            cmp R15,RAX
            mov R13,RAX
            je .L_40cf84

            mov RAX,QWORD PTR [R12+16]
            mov RDX,RAX
            sub RDX,QWORD PTR [R12+8]
            cmp RDX,127
            jbe .L_40ce50

            lea RSI,QWORD PTR [RAX-64]
            lea R15,QWORD PTR [RSP+64]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            call .L_4024a0
.L_40cf46:

            mov RAX,QWORD PTR [R12+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R12+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [R12+16]
            mov RDX,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RSP+64]
            lea RDI,QWORD PTR [RAX-64]
.L_40cf6c:

            call .L_4017e0
.L_40cf71:

            mov RDI,QWORD PTR [RSP+64]
            add R15,16
            cmp RDI,R15
            je .L_40cf84

            call free@PLT
.L_40cf84:

            mov RDX,R12
            mov RSI,RBP
            mov RDI,R13
.L_40cf8d:

            call .L_412b40

            cmp R13,RAX
            mov R14,RAX
            je .L_40d303

            mov RAX,QWORD PTR [R12+16]
            mov RDX,RAX
            sub RDX,QWORD PTR [R12+8]
            cmp RDX,127
            jbe .L_40ce50

            lea RSI,QWORD PTR [RAX-64]
            lea RBX,QWORD PTR [RSP+32]
            lea R15,QWORD PTR [RSP+64]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,RBX
            call .L_4024a0
.L_40cfcf:

            mov RAX,QWORD PTR [R12+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R12+16],RDI
            call .L_401050

            lea RSI,QWORD PTR [RIP+.L_415187]
            mov RDX,RBX
            mov RDI,R15
.L_40cfef:

            call .L_402420
.L_40cff4:

            mov RDI,QWORD PTR [R12+16]
            mov RDX,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RSP+64]
            sub RDI,64
.L_40d007:

            call .L_4017e0
.L_40d00c:

            mov RDI,QWORD PTR [RSP+64]
            add R15,16
            cmp RDI,R15
            je .L_40d01f

            call free@PLT
.L_40d01f:

            mov RDI,QWORD PTR [RSP+32]
            add RBX,16
            cmp RDI,RBX
            je .L_40ce53

            call free@PLT

            jmp .L_40ce53
.L_40d03b:

            add R14,3
            mov RDX,R12
            mov RSI,RBP
            mov RDI,R14
.L_40d048:

            call .L_412770

            cmp R14,RAX
            mov R15,RAX
            je .L_40ce50

            cmp RBP,RAX
            je .L_40ce50

            mov RDX,R12
            mov RSI,RBP
            mov RDI,RAX
            call .L_40c230

            cmp R15,RAX
            mov R13,RAX
            je .L_40d0eb

            mov RSI,QWORD PTR [R12+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [R12+8]
            cmp RAX,127
            jbe .L_40ce50

            sub RSI,64
            lea R15,QWORD PTR [RSP+64]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            call .L_4024a0
.L_40d0a4:

            mov RAX,QWORD PTR [R12+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R12+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [R12+16]
            mov RDX,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RSP+64]
            lea RDI,QWORD PTR [RAX-64]
.L_40d0ca:

            call .L_4017e0
.L_40d0cf:

            cmp RBP,R13
            je .L_40d449

            mov RDI,QWORD PTR [RSP+64]
            add R15,16
            cmp RDI,R15
            je .L_40d0eb

            call free@PLT
.L_40d0eb:

            cmp BYTE PTR [R13],69
            je .L_40d3b8

            lea RAX,QWORD PTR [RSP+64]
            lea R15,QWORD PTR [RSP+32]
            mov QWORD PTR [RSP+8],RAX
            lea RAX,QWORD PTR [RSP+80]
            mov QWORD PTR [RSP+16],RAX
            lea RAX,QWORD PTR [R15+16]
            mov QWORD PTR [RSP+24],RAX
            jmp .L_40d198
.L_40d11a:

            sub RSI,64
            mov RDI,R15
            lea RDX,QWORD PTR [RSI+32]
.L_40d125:

            call .L_4024a0
.L_40d12a:

            mov RAX,QWORD PTR [R12+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R12+16],RDI
            call .L_401050

            mov RDI,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RIP+.L_415187]
            mov RDX,R15
.L_40d14c:

            call .L_402420
.L_40d151:

            mov RAX,QWORD PTR [R12+16]
            mov RDX,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RSP+64]
            lea RDI,QWORD PTR [RAX-64]
.L_40d164:

            call .L_4017e0
.L_40d169:

            mov RDI,QWORD PTR [RSP+64]
            cmp RDI,QWORD PTR [RSP+16]
            je .L_40d17a

            call free@PLT
.L_40d17a:

            mov RDI,QWORD PTR [RSP+32]
            cmp RDI,QWORD PTR [RSP+24]
            je .L_40d18b

            call free@PLT
.L_40d18b:

            cmp BYTE PTR [R14],69
            mov R13,R14
            je .L_40d3b8
.L_40d198:

            mov RDX,R12
            mov RSI,RBP
            mov RDI,R13
.L_40d1a1:

            call .L_40cc10

            cmp RAX,R13
            mov R14,RAX
            je .L_40ce50

            cmp RBP,RAX
            je .L_40ce50

            mov RSI,QWORD PTR [R12+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [R12+8]
            cmp RAX,127
            ja .L_40d11a

            jmp .L_40ce50
.L_40d1d7:

            mov RDI,R14
            call .L_40cc10

            cmp R14,RAX
            mov R15,RAX
            je .L_40ce50

            cmp RBP,RAX
            je .L_40ce50

            test R13B,R13B
            je .L_40d21b

            mov RAX,QWORD PTR [R12+16]
            cmp RAX,QWORD PTR [R12+8]
            je .L_40ce50

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_415187]
            xor ESI,ESI
            call .L_401e90
.L_40d21b:

            cmp BYTE PTR [R15],69
            je .L_40d32b

            lea RAX,QWORD PTR [RSP+64]
            lea R14,QWORD PTR [RSP+32]
            mov QWORD PTR [RSP+8],RAX
            lea RAX,QWORD PTR [RSP+80]
            mov QWORD PTR [RSP+16],RAX
            lea RAX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+24],RAX
            jmp .L_40d2c4
.L_40d249:

            lea RSI,QWORD PTR [RAX-64]
            mov RDI,R14
            lea RDX,QWORD PTR [RSI+32]
            call .L_4024a0
.L_40d259:

            mov RAX,QWORD PTR [R12+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R12+16],RDI
            call .L_401050

            mov RDI,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RIP+.L_415187]
            mov RDX,R14
.L_40d27b:

            call .L_402420
.L_40d280:

            mov RAX,QWORD PTR [R12+16]
            mov RDX,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RSP+64]
            lea RDI,QWORD PTR [RAX-64]
.L_40d293:

            call .L_4017e0
.L_40d298:

            mov RDI,QWORD PTR [RSP+64]
            cmp RDI,QWORD PTR [RSP+16]
            je .L_40d2a9

            call free@PLT
.L_40d2a9:

            mov RDI,QWORD PTR [RSP+32]
            cmp RDI,QWORD PTR [RSP+24]
            je .L_40d2ba

            call free@PLT
.L_40d2ba:

            cmp BYTE PTR [R13],69
            mov R15,R13
            je .L_40d32b
.L_40d2c4:

            mov RDX,R12
            mov RSI,RBP
            mov RDI,R15
.L_40d2cd:

            call .L_40cc10

            cmp R15,RAX
            mov R13,RAX
            je .L_40ce50

            cmp RBP,RAX
            je .L_40ce50

            mov RAX,QWORD PTR [R12+16]
            mov RDX,RAX
            sub RDX,QWORD PTR [R12+8]
            cmp RDX,127
            ja .L_40d249

            jmp .L_40ce50
.L_40d303:

            mov RDI,QWORD PTR [R12+16]
            cmp RDI,QWORD PTR [R12+8]
            je .L_40ce50

            sub RDI,64
            mov QWORD PTR [R12+16],RDI
            call .L_401050

            jmp .L_40ce50
.L_40d326:

            call __stack_chk_fail@PLT
.L_40d32b:

            lea R13,QWORD PTR [R15+1]
            mov RDX,R12
            mov RSI,RBP
            mov RDI,R13
            call .L_412b40

            cmp R13,RAX
            mov R14,RAX
            je .L_40d303

            mov RSI,QWORD PTR [R12+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [R12+8]
            cmp RAX,127
            jbe .L_40ce50

            sub RSI,64
            lea RBX,QWORD PTR [RSP+32]
            lea R15,QWORD PTR [RSP+64]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,RBX
            call .L_4024a0
.L_40d376:

            mov RAX,QWORD PTR [R12+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R12+16],RDI
            call .L_401050

            lea RSI,QWORD PTR [RIP+.L_415187]
            mov RDX,RBX
            mov RDI,R15
.L_40d396:

            call .L_402420
.L_40d39b:

            mov RDI,QWORD PTR [R12+16]
            mov RDX,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RSP+64]
            sub RDI,64
.L_40d3ae:

            call .L_4017e0
.L_40d3b3:

            jmp .L_40d00c
.L_40d3b8:

            add R13,1
            mov RDX,R12
            mov RSI,RBP
            mov RDI,R13
.L_40d3c5:

            call .L_412b40

            cmp R13,RAX
            mov R14,RAX
            je .L_40d303

            mov RSI,QWORD PTR [R12+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [R12+8]
            cmp RAX,127
            jbe .L_40ce50

            sub RSI,64
            lea RBX,QWORD PTR [RSP+32]
            lea R15,QWORD PTR [RSP+64]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,RBX
            call .L_4024a0
.L_40d407:

            mov RAX,QWORD PTR [R12+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R12+16],RDI
            call .L_401050

            lea RSI,QWORD PTR [RIP+.L_415187]
            mov RDX,RBX
            mov RDI,R15
.L_40d427:

            call .L_402420
.L_40d42c:

            mov RDI,QWORD PTR [R12+16]
            mov RDX,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RSP+64]
            sub RDI,64
.L_40d43f:

            call .L_4017e0
.L_40d444:

            jmp .L_40d00c
.L_40d449:

            mov RAX,QWORD PTR [R12+16]
            add R15,16
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [R12+16],RDI
            call .L_401050

            mov RDI,QWORD PTR [RSP+64]
            cmp RDI,R15
            je .L_40ce50

            call free@PLT

            jmp .L_40ce50
.L_40d478:

            mov RDI,QWORD PTR [RSP+64]
            add R15,16
            mov RBX,RAX
            cmp RDI,R15
            je .L_40d48e
.L_40d489:

            call free@PLT
.L_40d48e:

            mov RDI,RBX
.L_40d491:

            call _Unwind_Resume@PLT
.L_40d496:

            mov RAX,RBP
            sub RAX,R14
            cmp RAX,2
            jle .L_40ce50

            mov R13D,1
            jmp .L_40ce41
.L_40d4b1:

            jmp .L_40d478
.L_40d4b3:

            mov RDI,QWORD PTR [RSP+64]
            add R15,16
            mov RBP,RAX
            cmp RDI,R15
            je .L_40d4c9

            call free@PLT
.L_40d4c9:

            mov RDI,QWORD PTR [RSP+32]
            add RBX,16
            cmp RDI,RBX
            je .L_40d4dc

            call free@PLT
.L_40d4dc:

            mov RDI,RBP
            call _Unwind_Resume@PLT
.L_40d4e4:

            mov RBP,RAX
            jmp .L_40d4c9
.L_40d4e9:

            mov R15,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+64]
            mov RBX,RAX
            add R15,16
            cmp RDI,R15
            je .L_40d504

            call free@PLT
.L_40d504:

            mov RDI,QWORD PTR [RSP+32]
            add R14,16
            cmp RDI,R14
            jne .L_40d489

            jmp .L_40d48e
.L_40d51b:

            mov RBX,RAX
            jmp .L_40d504
.L_40d520:

            jmp .L_40d4b3
.L_40d522:

            jmp .L_40d4e4
.L_40d524:

            mov RDX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+64]
            mov RBX,RAX
            add RDX,16
            cmp RDI,RDX
            je .L_40d53f

            call free@PLT
.L_40d53f:

            mov RDI,QWORD PTR [RSP+32]
            add R15,16
            cmp RDI,R15
            jne .L_40d489

            jmp .L_40d48e
.L_40d556:

            mov RBX,RAX
            jmp .L_40d53f
.L_40d55b:

            jmp .L_40d4b3
.L_40d560:

            jmp .L_40d4e4
.L_40d562:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d570:

            push R15
            push R14
            push R13
            push R12
            mov R13,RDI
            push RBP
            push RBX
            mov RBP,RDX
            mov RDX,RSI
            sub RSP,424
.L_40d58a:

            sub RDX,RDI
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+408],RAX
            xor EAX,EAX
            cmp RDX,1
            jle .L_40d650

            cmp RDX,3
            mov R14,RSI
            movzx ESI,BYTE PTR [RDI]
            jg .L_40d680
.L_40d5ba:

            mov EAX,ESI
            mov RDI,R13
            xor R12D,R12D
.L_40d5c2:

            sub EAX,49
            cmp AL,67
            ja .L_40dc10

            lea RCX,QWORD PTR [RIP+.L_415d70]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RCX+RAX*4]
            add RAX,RCX
            jmp RAX
.L_40d5e0:

            movzx EAX,BYTE PTR [RDI+1]
            cmp AL,101
            je .L_40fd4a

            jle .L_40fa20

            cmp AL,115
            je .L_40fe00

            cmp AL,116
            jne .L_40fdf8

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_4152e2]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40d618:

            call .L_401540
.L_40d61d:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40d629:

            call .L_413250
.L_40d62e:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40d647

            call free@PLT
.L_40d647:

            cmp R15,RBX
            jne .L_40d653

            nop
            nop
            nop
            nop
.L_40d650:

            mov RBX,R13
.L_40d653:

            mov RCX,QWORD PTR [RSP+408]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBX
            jne .L_41015d

            add RSP,424
.L_40d674:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x90
.L_40d680:

            cmp SIL,103
            jne .L_40d5ba

            movzx EAX,BYTE PTR [RDI+1]
            cmp AL,115
            je .L_40f998
.L_40d696:

            cmp AL,101
            je .L_40dc20

            cmp AL,116
            jne .L_40f9b0

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_4153f7]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40d6bc:

            call .L_401540
.L_40d6c1:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40d6cd:

            call .L_413250
.L_40d6d2:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40d6eb

            call free@PLT
.L_40d6eb:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d700:

            mov RDX,RBP
            mov RSI,R14
            mov RDI,R13
.L_40d709:

            call .L_40cdf0

            mov RBX,RAX
            jmp .L_40d653
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d720:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,86
            cmp AL,32
            ja .L_40f98c

            lea RCX,QWORD PTR [RIP+.L_415e80]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RCX+RAX*4]
            add RAX,RCX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d748:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,99
            cmp AL,19
            ja .L_40f96c

            lea RCX,QWORD PTR [RIP+.L_415f04]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RCX+RAX*4]
            add RAX,RCX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d770:

            mov RDX,RBP
            mov RSI,R14
            mov RDI,R13
            call .L_4047e0

            mov RBX,RAX
            jmp .L_40d653
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d790:

            mov RDX,RBP
            mov RSI,R14
            mov RDI,R13
            call .L_40a0a0

            mov RBX,RAX
            jmp .L_40d653
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d7b0:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,77
            cmp AL,38
            ja .L_40f964

            lea RCX,QWORD PTR [RIP+.L_415f54]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RCX+RAX*4]
            add RAX,RCX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d7d8:

            movzx EAX,BYTE PTR [RDI+1]
            cmp AL,105
            je .L_40fad6

            jle .L_40face

            cmp AL,114
            je .L_40fc90

            cmp AL,119
            jne .L_40fc88

            cmp RDX,2
            je .L_40d650

            cmp SIL,116
            jne .L_40d650

            cmp BYTE PTR [R13+1],119
            jne .L_40d650

            lea R12,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,R12
            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            cmp RSI,QWORD PTR [RBP+8]
            je .L_40d650

            sub RSI,64
            lea R13,QWORD PTR [RSP+272]
            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R13
            call .L_4024a0
.L_40d865:

            lea RSI,QWORD PTR [RIP+.L_41549b]
            mov RDX,R13
            mov RDI,R14
.L_40d872:

            call .L_402420
.L_40d877:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_4122a2

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_40d8b9:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_40d945

            call free@PLT
.L_40d945:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40d653

            call free@PLT

            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40d968:

            cmp BYTE PTR [RDI+1],120
            jne .L_40d650

            lea RBX,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,RBX
.L_40d97f:

            call .L_40d570

            cmp RBX,RAX
            mov R12,RAX
            je .L_40d650

            mov RDX,RBP
            mov RSI,R14
            mov RDI,RAX
            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_4103a8

            mov RSI,QWORD PTR [RBP+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [RBP+8]
            cmp RAX,127
            ja .L_41019b

            mov RBX,R13
            jmp .L_40d653
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d9d0:

            mov RDX,RBP
            mov RSI,R14
            mov RDI,R13
            call .L_403fb0

            mov RBX,RAX
            jmp .L_40d653
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d9f0:

            movzx EAX,BYTE PTR [RDI+1]
            cmp AL,111
            je .L_40fcf7

            cmp AL,113
            je .L_40fa7b

            cmp AL,79
            mov RBX,R13
            jne .L_40d653

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415294]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
            call .L_401540
.L_40da2a:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40da36:

            call .L_413250
.L_40da3b:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40da54

            call free@PLT
.L_40da54:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40da68:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,90
            cmp AL,32
            ja .L_40f97c

            lea RCX,QWORD PTR [RIP+.L_415ff0]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RCX+RAX*4]
            add RAX,RCX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40da90:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,97
            cmp AL,23
            ja .L_40f954

            lea RDX,QWORD PTR [RIP+.L_416074]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40dab8:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,73
            cmp AL,36
            ja .L_40f95c

            lea RDX,QWORD PTR [RIP+.L_4160d4]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40dae0:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,76
            cmp AL,40
            ja .L_40f974

            lea RCX,QWORD PTR [RIP+.L_416168]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RCX+RAX*4]
            add RAX,RCX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40db08:

            movzx EAX,BYTE PTR [RDI+1]
            cmp AL,110
            je .L_40d700

            jle .L_40f9c0

            cmp AL,111
            je .L_40fda5

            cmp AL,114
            jne .L_40fd9d

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415369]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40db40:

            call .L_401540
.L_40db45:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40db51:

            call .L_413250
.L_40db56:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40db6f

            call free@PLT
.L_40db6f:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40db80:

            movzx EAX,BYTE PTR [RDI+1]
            sub EAX,78
            cmp AL,44
            ja .L_40f984

            lea RCX,QWORD PTR [RIP+.L_41620c]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RCX+RAX*4]
            add RAX,RCX
            jmp RAX
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40dba8:

            cmp BYTE PTR [RDI+1],117
            jne .L_40d650

            lea RBX,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,RBX
.L_40dbbf:

            call .L_40d570

            cmp RBX,RAX
            mov R12,RAX
            je .L_40d650

            mov RDX,RBP
            mov RSI,R14
            mov RDI,RAX
            call .L_40d570

            cmp R12,RAX
            mov R15,RAX
            jne .L_4103cb

            mov RDI,QWORD PTR [RBP+16]
            cmp RDI,QWORD PTR [RBP+8]
            je .L_40d650

            sub RDI,64
            mov RBX,R13
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40dc10:

            mov RBX,R13
            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40dc20:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_4153e0]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
            call .L_401540
.L_40dc3b:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40dc47:

            call .L_413250
.L_40dc4c:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40dc65

            call free@PLT
.L_40dc65:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40dc73:

            lea R12,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,R12
.L_40dc80:

            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RAX,QWORD PTR [RBP+16]
            cmp RAX,QWORD PTR [RBP+8]
            je .L_40d650

            lea RDI,QWORD PTR [RAX-64]
            mov RCX,QWORD PTR [RAX-64]
            mov R8,QWORD PTR [RAX-56]
            mov RDX,QWORD PTR [RAX-24]
            mov ESI,15
            lea R10,QWORD PTR [RDI+16]
            cmp RCX,R10
            lea R9,QWORD PTR [R8+RDX*1]
            je .L_40dcc5

            mov RSI,QWORD PTR [RAX-48]
.L_40dcc5:

            cmp R9,RSI
            mov RSI,QWORD PTR [RAX-32]
            jbe .L_40dcea

            lea R11,QWORD PTR [RAX-16]
            mov R10D,15
            cmp RSI,R11
            je .L_40dce1

            mov R10,QWORD PTR [RAX-16]
.L_40dce1:

            cmp R9,R10
            jbe .L_410123
.L_40dcea:

            call .L_4017e0
.L_40dcef:

            lea R13,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+272],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_410111

            mov QWORD PTR [RSP+272],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+288],RCX
.L_40dd27:

            mov RCX,QWORD PTR [RAX+8]
            mov R8D,10
            xor ESI,ESI
            mov RDI,R13
            mov QWORD PTR [RSP+280],RCX
            lea RCX,QWORD PTR [RIP+.L_41543f]
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            xor EDX,EDX
.L_40dd56:

            call .L_401b90
.L_40dd5b:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+304],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_4100ff

            mov QWORD PTR [RSP+304],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+320],RCX
.L_40dd93:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+312],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+312],RAX
            je .L_411f2b

            lea RSI,QWORD PTR [RIP+.L_415221]
            mov EDX,1
            mov RDI,R14
.L_40ddd5:

            call .L_4017e0
.L_40ddda:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_4100ed

            mov QWORD PTR [RSP+336],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+352],RCX
.L_40de13:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+344],RCX
            mov BYTE PTR [RAX+16],0
            mov RBP,QWORD PTR [RBP+16]
            mov QWORD PTR [RAX],RDX
            lea RDX,QWORD PTR [R12+16]
            mov QWORD PTR [RAX+8],0
            mov RSI,QWORD PTR [RSP+336]
            mov RDI,QWORD PTR [RBP-64]
            cmp RSI,RDX
            mov RAX,RDI
            je .L_410082

            lea RDX,QWORD PTR [RBP-48]
            cmp RDI,RDX
            je .L_4100bf

            mov QWORD PTR [RBP-64],RSI
            mov RCX,QWORD PTR [RSP+344]
            test RDI,RDI
            mov RDX,QWORD PTR [RBP-48]
            mov QWORD PTR [RBP-56],RCX
            mov RCX,QWORD PTR [RSP+352]
            mov QWORD PTR [RBP-48],RCX
            je .L_4100db

            mov QWORD PTR [RSP+336],RDI
            mov QWORD PTR [RSP+352],RDX
.L_40de95:

            mov QWORD PTR [RSP+344],0
            mov BYTE PTR [RAX],0
            add R12,16
            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,R12
            je .L_40deba

            call free@PLT
.L_40deba:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_40ded0

            call free@PLT
.L_40ded0:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_40deef:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415347]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40df05:

            call .L_401540
.L_40df0a:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40df16:

            call .L_412df0
.L_40df1b:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40df34

            call free@PLT
.L_40df34:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40df42:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41522b]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40df58:

            call .L_401540
.L_40df5d:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40df69:

            call .L_413250
.L_40df6e:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40df87

            call free@PLT
.L_40df87:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40df95:

            cmp RDX,3
            jle .L_40d650

            cmp SIL,99
            jne .L_40d650

            cmp BYTE PTR [R13+1],108
            jne .L_40d650

            lea R12,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,R12
.L_40dfc1:

            call .L_40d570

            cmp R14,RAX
            mov RBX,RAX
            je .L_40d650

            cmp R12,RAX
            je .L_40d650

            mov RAX,QWORD PTR [RBP+16]
            cmp RAX,QWORD PTR [RBP+8]
            je .L_40d650

            mov RDX,QWORD PTR [RAX-24]
            mov RSI,QWORD PTR [RAX-32]
            lea RDI,QWORD PTR [RAX-64]
            lea R12,QWORD PTR [RSP+336]
            call .L_4017e0

            mov RAX,QWORD PTR [RBP+16]
            lea R15,QWORD PTR [R12+16]
            mov RSI,R12
            mov QWORD PTR [RSP+344],0
            mov BYTE PTR [RSP+352],0
            mov QWORD PTR [RSP+336],R15
            lea RDI,QWORD PTR [RAX-32]
            call .L_401a50

            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,R15
            je .L_40e045

            call free@PLT
.L_40e045:

            mov RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RIP+.L_415458]
            lea RDI,QWORD PTR [RAX-64]
            call .L_401860

            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP],RAX
            jmp .L_40e124
.L_40e067:

            mov RDX,RBP
            mov RSI,R14
            mov RDI,RBX
            call .L_40d570

            cmp RBX,RAX
            mov R15,RAX
            je .L_41088c

            cmp R14,RAX
            je .L_41088c

            mov RSI,QWORD PTR [RBP+16]
            cmp RSI,QWORD PTR [RBP+8]
            je .L_41088c

            sub RSI,64
            mov RDI,R12
            lea RDX,QWORD PTR [RSI+32]
            call .L_4024a0
.L_40e0a8:

            mov RAX,QWORD PTR [RBP+16]
            lea RBX,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RAX-16]
            mov QWORD PTR [RBP+16],RBX
            mov RDI,QWORD PTR [RAX-32]
            cmp RDI,RDX
            je .L_40e0d0

            mov QWORD PTR [RSP+8],RAX
            call free@PLT

            mov RAX,QWORD PTR [RSP+8]
.L_40e0d0:

            mov RDI,QWORD PTR [RAX-64]
            add RBX,16
            cmp RDI,RBX
            je .L_40e0e2

            call free@PLT
.L_40e0e2:

            mov RDX,QWORD PTR [RSP+344]
            test RDX,RDX
            je .L_40e10e

            mov RAX,QWORD PTR [RBP+16]
            cmp RAX,QWORD PTR [RBP+8]
            mov RSI,QWORD PTR [RSP+336]
            je .L_41087b

            lea RDI,QWORD PTR [RAX-64]
.L_40e109:

            call .L_4017e0
.L_40e10e:

            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,QWORD PTR [RSP]
            je .L_40e121

            call free@PLT
.L_40e121:

            mov RBX,R15
.L_40e124:

            cmp BYTE PTR [RBX],69
            jne .L_40e067

            add RBX,1
            mov RAX,QWORD PTR [RBP+16]
            cmp RAX,QWORD PTR [RBP+8]
            je .L_40d650

            lea RDI,QWORD PTR [RAX-64]
            lea RSI,QWORD PTR [RIP+.L_415221]
.L_40e14a:

            call .L_401860

            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40e158:

            cmp RDX,2
            je .L_40d650

            cmp SIL,99
            jne .L_40d650

            cmp BYTE PTR [R13+1],99
            jne .L_40d650

            lea RBX,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,RBX
            call .L_4073b0

            cmp RBX,RAX
            mov R12,RAX
            je .L_40d650

            mov RDX,RBP
            mov RSI,R14
            mov RDI,RAX
            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [RBP+8]
            cmp RAX,127
            ja .L_410435
.L_40e1c4:

            mov RBX,R13
            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40e1d0:

            lea R12,QWORD PTR [R13+2]
            cmp R12,R14
            je .L_40e1e4

            cmp BYTE PTR [R13+2],95
            je .L_40fe53
.L_40e1e4:

            mov RDX,RBP
            mov RSI,R14
            mov RDI,R12
            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RAX,QWORD PTR [RBP+16]
            cmp RAX,QWORD PTR [RBP+8]
            je .L_40d650

            lea RSI,QWORD PTR [RAX-64]
            lea R15,QWORD PTR [RSP+240]
            lea R13,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            call .L_4024a0
.L_40e22c:

            lea RSI,QWORD PTR [RIP+.L_415458]
            mov RDX,R15
            mov RDI,R13
.L_40e239:

            call .L_402420
.L_40e23e:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_41543b]
            mov RSI,R13
            mov RDI,R14
.L_40e253:

            call .L_4028e0
.L_40e258:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_410178

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_40e29a:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_40e326

            call free@PLT
.L_40e326:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40e33c

            call free@PLT
.L_40e33c:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_40e35b:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41543d]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40e371:

            call .L_401540
.L_40e376:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40e382:

            call .L_412df0
.L_40e387:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40e3a0

            call free@PLT
.L_40e3a0:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40e3ae:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41533c]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40e3c4:

            call .L_401540
.L_40e3c9:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40e3d5:

            call .L_413250
.L_40e3da:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40e3f3

            call free@PLT
.L_40e3f3:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40e401:

            mov RDX,RBP
            mov RSI,R14
            mov RDI,R13
.L_40e40a:

            call .L_413b00

            mov RBX,RAX
            jmp .L_40d653
.L_40e417:

            cmp RDX,2
            je .L_40d650

            cmp SIL,99
            jne .L_40d650

            cmp BYTE PTR [R13+1],118
            jne .L_40d650

            movzx R15D,BYTE PTR [RBP+111]
            lea RBX,QWORD PTR [R13+2]
            mov BYTE PTR [RBP+111],0
            mov RDX,RBP
            mov RSI,R14
            mov RDI,RBX
            call .L_4073b0

            cmp RBX,RAX
            mov R12,RAX
            mov BYTE PTR [RBP+111],R15B
            je .L_40d650

            cmp R14,RAX
            je .L_40d650

            cmp BYTE PTR [RAX],95
            je .L_410894

            mov RDX,RBP
            mov RSI,R14
            mov RDI,RAX
            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40e49e
.L_40e489:

            mov RSI,QWORD PTR [RBP+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [RBP+8]
            cmp RAX,127
            ja .L_410cc5
.L_40e49e:

            mov RBX,R13
            jmp .L_40d653
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e4b0:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415235]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
            call .L_401540
.L_40e4cb:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40e4d7:

            call .L_412df0
.L_40e4dc:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40e4f5

            call free@PLT
.L_40e4f5:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40e503:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_4153d4]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40e519:

            call .L_401540
.L_40e51e:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40e52a:

            call .L_413250
.L_40e52f:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40e548

            call free@PLT
.L_40e548:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40e556:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_4153bf]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40e56c:

            call .L_401540
.L_40e571:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40e57d:

            call .L_413250
.L_40e582:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40e59b

            call free@PLT
.L_40e59b:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40e5a9:

            cmp RDX,2
            je .L_40d650

            cmp SIL,114
            jne .L_40d650

            cmp BYTE PTR [R13+1],99
            jne .L_40d650

            lea RBX,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,RBX
.L_40e5d5:

            call .L_4073b0

            cmp RBX,RAX
            mov R12,RAX
            je .L_40d650

            mov RDX,RBP
            mov RSI,R14
            mov RDI,RAX
            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [RBP+8]
            cmp RAX,127
            ja .L_41064d
.L_40e615:

            mov RBX,R13
            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40e620:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_4153df]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
            call .L_401540
.L_40e63b:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40e647:

            call .L_413250
.L_40e64c:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40e665

            call free@PLT
.L_40e665:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40e673:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_4153c9]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40e689:

            call .L_401540
.L_40e68e:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40e69a:

            call .L_413250
.L_40e69f:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40e6b8

            call free@PLT
.L_40e6b8:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40e6c6:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41543d]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40e6dc:

            call .L_401540
.L_40e6e1:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40e6ed:

            call .L_413250
.L_40e6f2:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40e70b

            call free@PLT
.L_40e70b:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40e719:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415317]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40e72f:

            call .L_401540
.L_40e734:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40e740:

            call .L_413250
.L_40e745:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40e75e

            call free@PLT
.L_40e75e:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40e76c:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41530c]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40e782:

            call .L_401540
.L_40e787:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40e793:

            call .L_413250
.L_40e798:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40e7b1

            call free@PLT
.L_40e7b1:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40e7bf:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415436]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40e7d5:

            call .L_401540
.L_40e7da:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40e7e6:

            call .L_413250
.L_40e7eb:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40e804

            call free@PLT
.L_40e804:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40e812:

            cmp RDX,2
            je .L_40d650

            cmp SIL,112
            jne .L_40d650

            cmp BYTE PTR [R13+1],116
            jne .L_40d650

            lea RBX,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,RBX
.L_40e83e:

            call .L_40d570

            cmp RBX,RAX
            mov R12,RAX
            je .L_40d650

            mov RDX,RBP
            mov RSI,R14
            mov RDI,RAX
            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [RBP+8]
            cmp RAX,127
            ja .L_412229

            mov RBX,R13
            jmp .L_40d653
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e890:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41544c]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
            call .L_401540
.L_40e8ab:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40e8b7:

            call .L_412df0
.L_40e8bc:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40e8d5

            call free@PLT
.L_40e8d5:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40e8e3:

            lea R12,QWORD PTR [R13+2]
            cmp R12,R14
            je .L_40e8f7

            cmp BYTE PTR [R13+2],95
            je .L_40fea6
.L_40e8f7:

            mov RDX,RBP
            mov RSI,R14
            mov RDI,R12
.L_40e900:

            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RAX,QWORD PTR [RBP+16]
            cmp RAX,QWORD PTR [RBP+8]
            je .L_40d650

            lea RSI,QWORD PTR [RAX-64]
            lea R15,QWORD PTR [RSP+240]
            lea R13,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            call .L_4024a0
.L_40e93f:

            lea RSI,QWORD PTR [RIP+.L_415458]
            mov RDX,R15
            mov RDI,R13
.L_40e94c:

            call .L_402420
.L_40e951:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_41544a]
            mov RSI,R13
            mov RDI,R14
.L_40e966:

            call .L_4028e0
.L_40e96b:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_410162

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_40e9ad:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_40ea39

            call free@PLT
.L_40ea39:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40ea4f

            call free@PLT
.L_40ea4f:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_40ea6e:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41537e]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40ea84:

            call .L_401540
.L_40ea89:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40ea95:

            call .L_413250
.L_40ea9a:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40eab3

            call free@PLT
.L_40eab3:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40eac1:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41544c]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40ead7:

            call .L_401540
.L_40eadc:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40eae8:

            call .L_413250
.L_40eaed:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40eb06

            call free@PLT
.L_40eb06:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40eb14:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415394]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40eb2a:

            call .L_401540
.L_40eb2f:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40eb3b:

            call .L_413250
.L_40eb40:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40eb59

            call free@PLT
.L_40eb59:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40eb67:

            cmp RDX,2
            je .L_40d650

            cmp SIL,115
            jne .L_40d650

            cmp BYTE PTR [R13+1],122
            jne .L_40d650

            lea R12,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,R12
.L_40eb93:

            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            cmp RSI,QWORD PTR [RBP+8]
            je .L_40d650

            sub RSI,64
            lea R15,QWORD PTR [RSP+240]
            lea R13,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            call .L_4024a0
.L_40ebd2:

            lea RSI,QWORD PTR [RIP+.L_415479]
            mov RDX,R15
            mov RDI,R13
.L_40ebdf:

            call .L_402420
.L_40ebe4:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R13
            mov RDI,R14
.L_40ebf9:

            call .L_4028e0
.L_40ebfe:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_411a88

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_40ec40:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_40eccc

            call free@PLT
.L_40eccc:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40ece2

            call free@PLT
.L_40ece2:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_40d653

            call free@PLT

            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40ed08:

            cmp RDX,2
            je .L_40d650

            cmp SIL,115
            jne .L_40d650

            cmp BYTE PTR [R13+1],116
            jne .L_40d650

            lea R12,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,R12
.L_40ed34:

            call .L_4073b0

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            cmp RSI,QWORD PTR [RBP+8]
            je .L_40d650

            sub RSI,64
            lea R15,QWORD PTR [RSP+240]
            lea R13,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            call .L_4024a0
.L_40ed73:

            lea RSI,QWORD PTR [RIP+.L_415479]
            mov RDX,R15
            mov RDI,R13
.L_40ed80:

            call .L_402420
.L_40ed85:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R13
            mov RDI,R14
.L_40ed9a:

            call .L_4028e0
.L_40ed9f:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_411d6a

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_40ede1:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_40ee6d

            call free@PLT
.L_40ee6d:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40ee83

            call free@PLT
.L_40ee83:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_40d653

            call free@PLT

            jmp .L_40d653
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40eea8:

            cmp RDX,2
            je .L_40d650

            cmp SIL,115
            jne .L_40d650

            cmp BYTE PTR [R13+1],112
            jne .L_40d650

            lea R12,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,R12
.L_40eed4:

            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            jne .L_40d653

            jmp .L_40d650
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40eef0:

            cmp RDX,2
            je .L_40d650

            cmp SIL,115
            jne .L_40d650

            cmp BYTE PTR [R13+1],99
            jne .L_40d650

            lea RBX,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,RBX
            call .L_4073b0

            cmp RBX,RAX
            mov R12,RAX
            je .L_40d650

            mov RDX,RBP
            mov RSI,R14
            mov RDI,RAX
            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [RBP+8]
            cmp RAX,127
            ja .L_411748

            mov RBX,R13
            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40ef68:

            mov RAX,R14
            sub RAX,RDI
            cmp RAX,2
            jle .L_40d650

            movzx EAX,BYTE PTR [RDI+2]
            cmp AL,84
            je .L_40ff01

            cmp AL,102
            jne .L_40fef9

            cmp RDX,2
            je .L_40d650

            cmp SIL,115
            jne .L_40d650

            cmp BYTE PTR [R13+1],90
            jne .L_40d650

            cmp BYTE PTR [R13+2],102
            jne .L_40d650

            lea R12,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,R12
            call .L_403fb0

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            cmp RSI,QWORD PTR [RBP+8]
            je .L_40d650

            sub RSI,64
            lea R15,QWORD PTR [RSP+240]
            lea R13,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            call .L_4024a0
.L_40f002:

            lea RSI,QWORD PTR [RIP+.L_415482]
            mov RDX,R15
            mov RDI,R13
.L_40f00f:

            call .L_402420
.L_40f014:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R13
            mov RDI,R14
.L_40f029:

            call .L_4028e0
.L_40f02e:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_411c5c

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_40f070:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_40f0fc

            call free@PLT
.L_40f0fc:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40f112

            call free@PLT
.L_40f112:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_40d653

            call free@PLT

            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f138:

            cmp RDX,2
            je .L_40d650

            cmp SIL,97
            jne .L_40d650

            cmp BYTE PTR [R13+1],122
            jne .L_40d650

            lea R12,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,R12
.L_40f164:

            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            cmp RSI,QWORD PTR [RBP+8]
            je .L_40d650

            sub RSI,64
            lea R13,QWORD PTR [RSP+272]
            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R13
            call .L_4024a0
.L_40f1a3:

            lea RSI,QWORD PTR [RIP+.L_4153f9]
            mov RDX,R13
            mov RDI,R14
.L_40f1b0:

            call .L_402420
.L_40f1b5:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R14
            mov RDI,R12
.L_40f1ca:

            call .L_4028e0
.L_40f1cf:

            mov RDI,QWORD PTR [RBP+16]
            mov RSI,R12
            add R12,16
            sub RDI,64
            call .L_401a50

            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,R12
            je .L_40f1f5

            call free@PLT
.L_40f1f5:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_40f20b

            call free@PLT
.L_40f20b:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40d653

            call free@PLT

            jmp .L_40d653
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40f230:

            cmp RDX,2
            je .L_40d650

            cmp SIL,97
            jne .L_40d650

            cmp BYTE PTR [R13+1],116
            jne .L_40d650

            lea R12,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,R12
.L_40f25c:

            call .L_4073b0

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            cmp RSI,QWORD PTR [RBP+8]
            je .L_40d650

            sub RSI,64
            lea R13,QWORD PTR [RSP+272]
            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R13
            call .L_4024a0
.L_40f29b:

            lea RSI,QWORD PTR [RIP+.L_4153f9]
            mov RDX,R13
            mov RDI,R14
.L_40f2a8:

            call .L_402420
.L_40f2ad:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R14
            mov RDI,R12
.L_40f2c2:

            call .L_4028e0
.L_40f2c7:

            mov RDI,QWORD PTR [RBP+16]
            mov RSI,R12
            add R12,16
            sub RDI,64
            call .L_401a50

            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,R12
            je .L_40f2ed

            call free@PLT
.L_40f2ed:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_40f303

            call free@PLT
.L_40f303:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40d653

            call free@PLT

            jmp .L_40d653
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40f328:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415169]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40f33e:

            call .L_401540
.L_40f343:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40f34f:

            call .L_413250
.L_40f354:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40f36d

            call free@PLT
.L_40f36d:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40f37b:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415169]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40f391:

            call .L_401540
.L_40f396:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40f3a2:

            call .L_412df0
.L_40f3a7:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40f3c0

            call free@PLT
.L_40f3c0:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40f3ce:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41516c]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40f3e4:

            call .L_401540
.L_40f3e9:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40f3f5:

            call .L_413250
.L_40f3fa:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40f413

            call free@PLT
.L_40f413:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40f421:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41533d]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40f437:

            call .L_401540
.L_40f43c:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40f448:

            call .L_413250
.L_40f44d:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40f466

            call free@PLT
.L_40f466:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40f474:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41520b]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40f48a:

            call .L_401540
.L_40f48f:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40f49b:

            call .L_413250
.L_40f4a0:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40f4b9

            call free@PLT
.L_40f4b9:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40f4c7:

            cmp RDX,2
            je .L_40d650

            cmp SIL,100
            jne .L_40d650

            cmp BYTE PTR [R13+1],116
            jne .L_40d650

            lea RBX,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,RBX
.L_40f4f3:

            call .L_40d570

            cmp RBX,RAX
            mov R12,RAX
            je .L_40d650

            mov RDX,RBP
            mov RSI,R14
            mov RDI,RAX
            call .L_40cdf0

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [RBP+8]
            cmp RAX,127
            ja .L_4123b3
.L_40f533:

            mov RBX,R13
            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40f540:

            cmp RDX,2
            je .L_40d650

            cmp SIL,100
            jne .L_40d650

            cmp BYTE PTR [R13+1],115
            jne .L_40d650

            lea RBX,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,RBX
            call .L_40d570

            cmp RBX,RAX
            mov R12,RAX
            je .L_40d650

            mov RDX,RBP
            mov RSI,R14
            mov RDI,RAX
            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [RBP+8]
            cmp RAX,127
            ja .L_411b46

            mov RBX,R13
            jmp .L_40d653

            nop
            nop
            nop
            nop
.L_40f5b8:

            lea R15,QWORD PTR [RDI+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,R15
            call .L_40d570

            cmp R15,RAX
            mov RBX,RAX
            je .L_40d650

            mov RAX,QWORD PTR [RBP+16]
            cmp RAX,QWORD PTR [RBP+8]
            je .L_40d650

            lea RSI,QWORD PTR [RAX-64]
            lea R14,QWORD PTR [RSP+304]
            lea R15,QWORD PTR [RSP+240]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R14
            call .L_4024a0
.L_40f604:

            test R12B,R12B
            jne .L_410149

            lea RAX,QWORD PTR [R15+16]
            mov QWORD PTR [RSP+248],0
            mov BYTE PTR [RSP+256],0
            mov QWORD PTR [RSP+240],RAX
.L_40f62d:

            lea R13,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RIP+.L_41542d]
            mov RSI,R15
            mov RDI,R13
.L_40f642:

            call .L_4028e0
.L_40f647:

            lea R12,QWORD PTR [RSP+336]
            mov RDX,R14
            mov RSI,R13
            mov RDI,R12
.L_40f658:

            call .L_4024a0
.L_40f65d:

            mov RDI,QWORD PTR [RBP+16]
            mov RSI,R12
            add R12,16
            sub RDI,64
            call .L_401a50

            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,R12
            je .L_40f683

            call free@PLT
.L_40f683:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40f699

            call free@PLT
.L_40f699:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_40f6af

            call free@PLT
.L_40f6af:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_40f6ce:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415436]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40f6e4:

            call .L_401540
.L_40f6e9:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40f6f5:

            call .L_412df0
.L_40f6fa:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40f713

            call free@PLT
.L_40f713:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40f721:

            cmp RDX,2
            je .L_40d650

            cmp SIL,100
            jne .L_40d650

            cmp BYTE PTR [R13+1],99
            jne .L_40d650

            lea RBX,QWORD PTR [R13+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,RBX
.L_40f74d:

            call .L_4073b0

            cmp RBX,RAX
            mov R12,RAX
            je .L_40d650

            mov RDX,RBP
            mov RSI,R14
            mov RDI,RAX
            call .L_40d570

            cmp R12,RAX
            mov RBX,RAX
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [RBP+8]
            cmp RAX,127
            ja .L_4112d3
.L_40f78d:

            mov RBX,R13
            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40f798:

            lea R15,QWORD PTR [RDI+2]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,R15
            call .L_40d570

            cmp R15,RAX
            mov RBX,RAX
            je .L_40d650

            mov RAX,QWORD PTR [RBP+16]
            cmp QWORD PTR [RBP+8],RAX
            je .L_40d650

            lea RSI,QWORD PTR [RAX-64]
            lea R14,QWORD PTR [RSP+304]
            lea R15,QWORD PTR [RSP+240]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R14
            call .L_4024a0
.L_40f7e4:

            test R12B,R12B
            jne .L_410135

            lea RAX,QWORD PTR [R15+16]
            mov QWORD PTR [RSP+248],0
            mov BYTE PTR [RSP+256],0
            mov QWORD PTR [RSP+240],RAX
.L_40f80d:

            lea R13,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RIP+.L_415415]
            mov RSI,R15
            mov RDI,R13
.L_40f822:

            call .L_4028e0
.L_40f827:

            lea R12,QWORD PTR [RSP+336]
            mov RDX,R14
            mov RSI,R13
            mov RDI,R12
.L_40f838:

            call .L_4024a0
.L_40f83d:

            mov RDI,QWORD PTR [RBP+16]
            mov RSI,R12
            add R12,16
            sub RDI,64
            call .L_401a50

            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,R12
            je .L_40f863

            call free@PLT
.L_40f863:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40f879

            call free@PLT
.L_40f879:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_40f88f

            call free@PLT
.L_40f88f:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_40f8ae:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41527f]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40f8c4:

            call .L_401540
.L_40f8c9:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40f8d5:

            call .L_413250
.L_40f8da:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40f8f3

            call free@PLT
.L_40f8f3:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40f901:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415275]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40f917:

            call .L_401540
.L_40f91c:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40f928:

            call .L_413250
.L_40f92d:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40f946

            call free@PLT
.L_40f946:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40f954:

            mov RBX,R13
            jmp .L_40d653
.L_40f95c:

            mov RBX,R13
            jmp .L_40d653
.L_40f964:

            mov RBX,R13
            jmp .L_40d653
.L_40f96c:

            mov RBX,R13
            jmp .L_40d653
.L_40f974:

            mov RBX,R13
            jmp .L_40d653
.L_40f97c:

            mov RBX,R13
            jmp .L_40d653
.L_40f984:

            mov RBX,R13
            jmp .L_40d653
.L_40f98c:

            mov RBX,R13
            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40f998:

            lea RDI,QWORD PTR [RDI+2]
            movzx EAX,BYTE PTR [R13+2]
            mov R12D,1
            jmp .L_40d5c2
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40f9b0:

            mov RBX,R13
            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f9c0:

            cmp AL,82
            jne .L_40fd9d

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415373]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40f9de:

            call .L_401540
.L_40f9e3:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40f9ef:

            call .L_413250
.L_40f9f4:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40fa0d

            call free@PLT
.L_40fa0d:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40fa20:

            cmp AL,83
            jne .L_40fdf8

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_4152ec]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40fa3e:

            call .L_401540
.L_40fa43:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40fa4f:

            call .L_413250
.L_40fa54:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40fa6d

            call free@PLT
.L_40fa6d:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40fa7b:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41529f]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40fa91:

            call .L_401540
.L_40fa96:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40faa2:

            call .L_413250
.L_40faa7:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40fac0

            call free@PLT
.L_40fac0:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40face:

            cmp AL,101
            jne .L_40fc88
.L_40fad6:

            cmp RDX,2
            je .L_40d650

            cmp SIL,116
            jne .L_40d650

            movzx EAX,BYTE PTR [R13+1]
            lea EDX,DWORD PTR [RAX-101]
            and EDX,251
            jne .L_40d650

            lea R12,QWORD PTR [R13+2]
            cmp AL,101
            mov RDX,RBP
            mov RSI,R14
            mov RDI,R12
            je .L_41018e
.L_40fb13:

            call .L_4073b0

            mov RBX,RAX
.L_40fb1b:

            cmp RBX,R12
            je .L_40d650

            mov RSI,QWORD PTR [RBP+16]
            cmp RSI,QWORD PTR [RBP+8]
            je .L_40d650

            sub RSI,64
            lea R15,QWORD PTR [RSP+240]
            lea R13,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            call .L_4024a0
.L_40fb52:

            lea RSI,QWORD PTR [RIP+.L_41548d]
            mov RDX,R15
            mov RDI,R13
.L_40fb5f:

            call .L_402420
.L_40fb64:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R13
            mov RDI,R14
.L_40fb79:

            call .L_4028e0
.L_40fb7e:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_410865

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_40fbc0:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_40fc4c

            call free@PLT
.L_40fc4c:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40fc62

            call free@PLT
.L_40fc62:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_40d653

            call free@PLT

            jmp .L_40d653
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40fc88:

            mov RBX,R13
            jmp .L_40d653
.L_40fc90:

            lea RDX,QWORD PTR [RIP+.L_41549a]
            lea RBX,QWORD PTR [RSP+336]
            lea RAX,QWORD PTR [RSP+352]
            lea RSI,QWORD PTR [RDX-5]
            mov RDI,RBX
            mov QWORD PTR [RSP+336],RAX
.L_40fcb6:

            call .L_401470

            lea RAX,QWORD PTR [RBX+48]
            mov RSI,RBX
            mov RDI,RBP
            mov QWORD PTR [RSP+376],0
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401ee0

            mov RDI,RBX
            lea RBX,QWORD PTR [R13+2]
            call .L_401050

            jmp .L_40d653
.L_40fcf7:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41528a]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
            call .L_401540
.L_40fd12:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40fd1e:

            call .L_413250
.L_40fd23:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40fd3c

            call free@PLT
.L_40fd3c:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40fd4a:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_4152ed]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40fd60:

            call .L_401540
.L_40fd65:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40fd71:

            call .L_413250
.L_40fd76:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40fd8f

            call free@PLT
.L_40fd8f:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40fd9d:

            mov RBX,R13
            jmp .L_40d653
.L_40fda5:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41535e]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40fdbb:

            call .L_401540
.L_40fdc0:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40fdcc:

            call .L_413250
.L_40fdd1:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40fdea

            call free@PLT
.L_40fdea:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40fdf8:

            mov RBX,R13
            jmp .L_40d653
.L_40fe00:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_4152e1]
            lea R15,QWORD PTR [R13+2]
            mov RDI,R12
.L_40fe16:

            call .L_401540
.L_40fe1b:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40fe27:

            call .L_413250
.L_40fe2c:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40fe45

            call free@PLT
.L_40fe45:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40fe53:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41543c]
            lea R15,QWORD PTR [R13+3]
            mov RDI,R12
.L_40fe69:

            call .L_401540
.L_40fe6e:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40fe7a:

            call .L_412df0
.L_40fe7f:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40fe98

            call free@PLT
.L_40fe98:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40fea6:

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_41544b]
            lea R15,QWORD PTR [R13+3]
            mov RDI,R12
.L_40febc:

            call .L_401540
.L_40fec1:

            mov RCX,RBP
            mov RDX,R12
            mov RSI,R14
            mov RDI,R15
.L_40fecd:

            call .L_412df0
.L_40fed2:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40feeb

            call free@PLT
.L_40feeb:

            cmp R15,RBX
            jne .L_40d653

            jmp .L_40d650
.L_40fef9:

            mov RBX,R13
            jmp .L_40d653
.L_40ff01:

            cmp RDX,2
            je .L_40d650

            cmp SIL,115
            jne .L_40d650

            cmp BYTE PTR [R13+1],90
            jne .L_40d650

            cmp BYTE PTR [R13+2],84
            jne .L_40d650

            mov R12,QWORD PTR [RBP+16]
            sub R12,QWORD PTR [RBP+8]
            lea R15,QWORD PTR [R13+2]
            mov RSI,R14
            mov RDX,RBP
            mov RDI,R15
            mov RAX,R12
            sar RAX,6
            mov QWORD PTR [RSP],RAX
.L_40ff4b:

            call .L_4047e0

            mov RBX,RAX
            mov RAX,QWORD PTR [RBP+16]
            sub RAX,QWORD PTR [RBP+8]
            sar RAX,6
            cmp R15,RBX
            mov R14,RAX
            mov QWORD PTR [RSP+24],RAX
            mov QWORD PTR [RSP+8],RAX
            je .L_40d650

            lea R13,QWORD PTR [RSP+272]
            lea RSI,QWORD PTR [RIP+.L_415482]
            mov RDI,R13
            call .L_401540
.L_40ff8c:

            cmp QWORD PTR [RSP],R14
            je .L_411d2c

            mov RSI,QWORD PTR [RBP+8]
            add RSI,R12
            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R12
.L_40ffac:

            call .L_4024a0
.L_40ffb1:

            mov RDX,QWORD PTR [RSP+344]
            mov RSI,QWORD PTR [RSP+336]
            mov RDI,R13
.L_40ffc4:

            call .L_4017e0
.L_40ffc9:

            mov RDI,QWORD PTR [RSP+336]
            lea RAX,QWORD PTR [R12+16]
            cmp RDI,RAX
            je .L_40ffe0

            call free@PLT
.L_40ffe0:

            mov RAX,QWORD PTR [RSP]
            lea R14,QWORD PTR [RSP+304]
            lea R15,QWORD PTR [RAX+1]
            mov RAX,R15
            shl RAX,6
            mov QWORD PTR [RSP+16],RAX
.L_40fffc:

            cmp QWORD PTR [RSP+24],R15
            je .L_411d2c

            mov RSI,QWORD PTR [RSP+16]
            add RSI,QWORD PTR [RBP+8]
            mov RDI,R14
            lea RDX,QWORD PTR [RSI+32]
.L_410017:

            call .L_4024a0
.L_41001c:

            lea RSI,QWORD PTR [RIP+.L_41514a]
            mov RDX,R14
            mov RDI,R12
.L_410029:

            call .L_402420
.L_41002e:

            mov RDX,QWORD PTR [RSP+344]
            mov RSI,QWORD PTR [RSP+336]
            mov RDI,R13
.L_410041:

            call .L_4017e0
.L_410046:

            mov RDI,QWORD PTR [RSP+336]
            lea RAX,QWORD PTR [R12+16]
            cmp RDI,RAX
            je .L_41005d

            call free@PLT
.L_41005d:

            mov RDI,QWORD PTR [RSP+304]
            lea RAX,QWORD PTR [R14+16]
            cmp RDI,RAX
            je .L_410073

            call free@PLT
.L_410073:

            add R15,1
            add QWORD PTR [RSP+16],64
            jmp .L_40fffc
.L_410082:

            mov RDX,QWORD PTR [RSP+344]
            test RDX,RDX
            je .L_4100aa

            cmp RDX,1
            je .L_410404

            call memcpy@PLT

            mov RDI,QWORD PTR [RBP-64]
            mov RDX,QWORD PTR [RSP+344]
.L_4100aa:

            mov QWORD PTR [RBP-56],RDX
            mov BYTE PTR [RDI+RDX*1],0
            mov RAX,QWORD PTR [RSP+336]
            jmp .L_40de95
.L_4100bf:

            mov QWORD PTR [RBP-64],RSI
            mov RAX,QWORD PTR [RSP+344]
            mov QWORD PTR [RBP-56],RAX
            mov RAX,QWORD PTR [RSP+352]
            mov QWORD PTR [RBP-48],RAX
.L_4100db:

            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            jmp .L_40de95
.L_4100ed:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_40de13
.L_4100ff:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+320],XMM0
            jmp .L_40dd93
.L_410111:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+288],XMM0
            jmp .L_40dd27
.L_410123:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
.L_41012b:

            call .L_401b90
.L_410130:

            jmp .L_40dcef
.L_410135:

            lea RSI,QWORD PTR [RIP+.L_415187]
            mov RDI,R15
.L_41013f:

            call .L_401540
.L_410144:

            jmp .L_40f80d
.L_410149:

            lea RSI,QWORD PTR [RIP+.L_415187]
            mov RDI,R15
.L_410153:

            call .L_401540
.L_410158:

            jmp .L_40f62d
.L_41015d:

            call __stack_chk_fail@PLT
.L_410162:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_40e9ad
.L_410178:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_40e29a
.L_41018e:

            call .L_40d570

            mov RBX,RAX
            jmp .L_40fb1b
.L_41019b:

            sub RSI,64
            lea R14,QWORD PTR [RSP+144]
            lea R15,QWORD PTR [RSP+176]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R14
            mov QWORD PTR [RSP],R14
            call .L_4024a0
.L_4101bf:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBP+16]
            mov RDI,R15
            mov QWORD PTR [RSP+8],R15
            lea RSI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RSI+32]
.L_4101e4:

            call .L_4024a0
.L_4101e9:

            lea RAX,QWORD PTR [RSP+208]
            lea RSI,QWORD PTR [RIP+.L_415458]
            mov RDX,R15
            mov RDI,RAX
            mov R12,RAX
            mov QWORD PTR [RSP+16],RAX
.L_410206:

            call .L_401910
.L_41020b:

            lea R15,QWORD PTR [RSP+240]
            lea RDX,QWORD PTR [RIP+.L_415438]
            mov RSI,R12
            mov RDI,R15
.L_410220:

            call .L_4028e0
.L_410225:

            lea R13,QWORD PTR [RSP+272]
            mov RDX,R14
            mov RSI,R15
            mov RDI,R13
.L_410236:

            call .L_4018b0
.L_41023b:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_41518f]
            mov RSI,R13
            mov RDI,R14
.L_410250:

            call .L_4028e0
.L_410255:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_41041f

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_410297:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_410323

            call free@PLT
.L_410323:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_410339

            call free@PLT
.L_410339:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_41034f

            call free@PLT
.L_41034f:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_41036a

            call free@PLT
.L_41036a:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_410385

            call free@PLT
.L_410385:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_4103a8:

            mov RDI,QWORD PTR [RBP+16]
            cmp RDI,QWORD PTR [RBP+8]
            je .L_40d650

            sub RDI,64
            mov RBX,R13
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            jmp .L_40d653
.L_4103cb:

            mov RDX,RBP
            mov RSI,R14
            mov RDI,RAX
.L_4103d4:

            call .L_40d570

            cmp R15,RAX
            mov RBX,RAX
            je .L_410b9d

            mov RSI,QWORD PTR [RBP+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [RBP+8]
            cmp RAX,191
            ja .L_4108df

            mov RBX,R13
            jmp .L_40d653
.L_410404:

            movzx EAX,BYTE PTR [RSP+352]
            mov BYTE PTR [RDI],AL
            mov RDI,QWORD PTR [RBP-64]
            mov RDX,QWORD PTR [RSP+344]
            jmp .L_4100aa
.L_41041f:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_410297
.L_410435:

            sub RSI,64
            lea R15,QWORD PTR [RSP+144]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            mov QWORD PTR [RSP],R15
            call .L_4024a0
.L_410451:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov RSI,QWORD PTR [RBP+16]
            cmp RSI,QWORD PTR [RBP+8]
            je .L_4111c3

            lea R15,QWORD PTR [RSP+176]
            sub RSI,64
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            mov QWORD PTR [RSP+8],R15
.L_410488:

            call .L_4024a0
.L_41048d:

            lea RAX,QWORD PTR [RSP+208]
            lea RSI,QWORD PTR [RIP+.L_415403]
            mov RDX,R15
            mov RDI,RAX
            mov R14,RAX
            mov QWORD PTR [RSP+16],RAX
.L_4104aa:

            call .L_402420
.L_4104af:

            lea R15,QWORD PTR [RSP+240]
            lea RDX,QWORD PTR [RIP+.L_41540f]
            mov RSI,R14
            mov RDI,R15
.L_4104c4:

            call .L_4028e0
.L_4104c9:

            lea R13,QWORD PTR [RSP+272]
            mov RDX,QWORD PTR [RSP]
            mov RSI,R15
            mov RDI,R13
.L_4104db:

            call .L_4018b0
.L_4104e0:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R13
            mov RDI,R14
.L_4104f5:

            call .L_4028e0
.L_4104fa:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_4110bf

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_41053c:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_4105c8

            call free@PLT
.L_4105c8:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_4105de

            call free@PLT
.L_4105de:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_4105f4

            call free@PLT
.L_4105f4:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_41060f

            call free@PLT
.L_41060f:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_41062a

            call free@PLT
.L_41062a:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_41064d:

            sub RSI,64
            lea R15,QWORD PTR [RSP+144]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            mov QWORD PTR [RSP],R15
.L_410664:

            call .L_4024a0
.L_410669:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov RSI,QWORD PTR [RBP+16]
            cmp RSI,QWORD PTR [RBP+8]
            je .L_410ffa

            lea R15,QWORD PTR [RSP+176]
            sub RSI,64
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            mov QWORD PTR [RSP+8],R15
.L_4106a0:

            call .L_4024a0
.L_4106a5:

            lea RAX,QWORD PTR [RSP+208]
            lea RSI,QWORD PTR [RIP+.L_41545a]
            mov RDX,R15
            mov RDI,RAX
            mov R14,RAX
            mov QWORD PTR [RSP+16],RAX
.L_4106c2:

            call .L_402420
.L_4106c7:

            lea R15,QWORD PTR [RSP+240]
            lea RDX,QWORD PTR [RIP+.L_41540f]
            mov RSI,R14
            mov RDI,R15
.L_4106dc:

            call .L_4028e0
.L_4106e1:

            lea R13,QWORD PTR [RSP+272]
            mov RDX,QWORD PTR [RSP]
            mov RSI,R15
            mov RDI,R13
.L_4106f3:

            call .L_4018b0
.L_4106f8:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R13
            mov RDI,R14
.L_41070d:

            call .L_4028e0
.L_410712:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_412194

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_410754:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_4107e0

            call free@PLT
.L_4107e0:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_4107f6

            call free@PLT
.L_4107f6:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_41080c

            call free@PLT
.L_41080c:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_410827

            call free@PLT
.L_410827:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_410842

            call free@PLT
.L_410842:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_410865:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_40fbc0
.L_41087b:

            add R12,16
            cmp RSI,R12
            je .L_41088c

            mov RDI,RSI
            call free@PLT
.L_41088c:

            mov RBX,R13
            jmp .L_40d653
.L_410894:

            lea RBX,QWORD PTR [RAX+1]
            cmp R14,RBX
            je .L_40e49e

            cmp BYTE PTR [RAX+1],69
            jne .L_4108d1

            jmp .L_41250a
.L_4108ac:

            mov RDX,RBP
            mov RDI,RBX
            mov RSI,R14
.L_4108b5:

            call .L_40d570

            cmp RBX,RAX
            mov RBX,RAX
            sete CL
            cmp R14,RAX
            sete DL
            or CL,DL
            jne .L_40e49e
.L_4108d1:

            cmp BYTE PTR [RBX],69
            jne .L_4108ac
.L_4108d6:

            add RBX,1
            jmp .L_40e489
.L_4108df:

            sub RSI,64
            lea R12,QWORD PTR [RSP+48]
            lea R15,QWORD PTR [RSP+80]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R12
            mov QWORD PTR [RSP+24],R12
            call .L_4024a0
.L_4108fe:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBP+16]
            mov RDI,R15
            mov QWORD PTR [RSP+32],R15
            lea RSI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RSI+32]
.L_410923:

            call .L_4024a0
.L_410928:

            mov RAX,QWORD PTR [RBP+16]
            lea R14,QWORD PTR [RSP+112]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBP+16]
            mov RDI,R14
            mov QWORD PTR [RSP+40],R14
            lea RSI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RSI+32]
.L_410952:

            call .L_4024a0
.L_410957:

            lea RAX,QWORD PTR [RSP+144]
            lea RSI,QWORD PTR [RIP+.L_415458]
            mov RDX,R14
            mov RDI,RAX
            mov QWORD PTR [RSP],RAX
            mov R14,RAX
.L_410973:

            call .L_401910
.L_410978:

            lea RAX,QWORD PTR [RSP+176]
            lea RDX,QWORD PTR [RIP+.L_41544e]
            mov RSI,R14
            mov RDI,RAX
            mov QWORD PTR [RSP+8],RAX
            mov R14,RAX
.L_410995:

            call .L_4028e0
.L_41099a:

            lea RAX,QWORD PTR [RSP+208]
            mov RSI,R14
            mov RDX,R15
            mov RDI,RAX
            mov QWORD PTR [RSP+16],RAX
            mov R14,RAX
.L_4109b3:

            call .L_4018b0
.L_4109b8:

            lea R15,QWORD PTR [RSP+240]
            lea RDX,QWORD PTR [RIP+.L_415454]
            mov RSI,R14
            mov RDI,R15
.L_4109cd:

            call .L_4028e0
.L_4109d2:

            lea R13,QWORD PTR [RSP+272]
            mov RDX,R12
            mov RSI,R15
            mov RDI,R13
.L_4109e3:

            call .L_4018b0
.L_4109e8:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R13
            mov RDI,R14
.L_4109fd:

            call .L_4028e0
.L_410a02:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_410caf

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_410a44:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_410ad0

            call free@PLT
.L_410ad0:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_410ae6

            call free@PLT
.L_410ae6:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_410afc

            call free@PLT
.L_410afc:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_410b17

            call free@PLT
.L_410b17:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_410b32

            call free@PLT
.L_410b32:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_410b4c

            call free@PLT
.L_410b4c:

            mov RAX,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+112]
            add RAX,16
            cmp RDI,RAX
            je .L_410b64

            call free@PLT
.L_410b64:

            mov RAX,QWORD PTR [RSP+32]
            mov RDI,QWORD PTR [RSP+80]
            add RAX,16
            cmp RDI,RAX
            je .L_410b7c

            call free@PLT
.L_410b7c:

            mov RAX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+48]
            add RAX,16
            cmp RDI,RAX
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_410b9d:

            mov RDI,QWORD PTR [RBP+16]
            mov RAX,RDI
            sub RAX,QWORD PTR [RBP+8]
            cmp RAX,127
            jbe .L_40d650

            sub RDI,64
            mov RBX,R13
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            jmp .L_40d653
.L_410bd8:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_410bf1

            call free@PLT
.L_410bf1:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_410c07

            call free@PLT
.L_410c07:

            mov RDX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RDX,16
            cmp RDI,RDX
            je .L_410c22

            call free@PLT
.L_410c22:

            mov RDX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RDX,16
            cmp RDI,RDX
            je .L_410c3d

            call free@PLT
.L_410c3d:

            mov RDX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RDX,16
            cmp RDI,RDX
            je .L_410c57

            call free@PLT
.L_410c57:

            mov RAX,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+112]
            add RAX,16
            cmp RDI,RAX
            je .L_410c6f

            call free@PLT
.L_410c6f:

            mov RAX,QWORD PTR [RSP+32]
            mov RDI,QWORD PTR [RSP+80]
            add RAX,16
            cmp RDI,RAX
            je .L_410c87

            call free@PLT
.L_410c87:

            mov RAX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+48]
            add RAX,16
            cmp RDI,RAX
            je .L_410c9f

            call free@PLT
.L_410c9f:

            mov RDI,RBX
.L_410ca2:

            call _Unwind_Resume@PLT
.L_410ca7:

            mov RBX,RAX
            jmp .L_410bf1
.L_410caf:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_410a44
.L_410cc5:

            sub RSI,64
            lea R14,QWORD PTR [RSP+144]
            lea R15,QWORD PTR [RSP+176]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R14
            mov QWORD PTR [RSP],R14
            call .L_4024a0
.L_410ce9:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBP+16]
            mov RDI,R15
            mov QWORD PTR [RSP+8],R15
            lea RSI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RSI+32]
.L_410d0e:

            call .L_4024a0
.L_410d13:

            lea RAX,QWORD PTR [RSP+208]
            lea RSI,QWORD PTR [RIP+.L_415458]
            mov RDX,R15
            mov RDI,RAX
            mov R12,RAX
            mov QWORD PTR [RSP+16],RAX
.L_410d30:

            call .L_402420
.L_410d35:

            lea R15,QWORD PTR [RSP+240]
            lea RDX,QWORD PTR [RIP+.L_415412]
            mov RSI,R12
            mov RDI,R15
.L_410d4a:

            call .L_4028e0
.L_410d4f:

            lea R13,QWORD PTR [RSP+272]
            mov RDX,R14
            mov RSI,R15
            mov RDI,R13
.L_410d60:

            call .L_4018b0
.L_410d65:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R13
            mov RDI,R14
.L_410d7a:

            call .L_4028e0
.L_410d7f:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_410ed2

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_410dc1:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_410e4d

            call free@PLT
.L_410e4d:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_410e63

            call free@PLT
.L_410e63:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_410e79

            call free@PLT
.L_410e79:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_410e94

            call free@PLT
.L_410e94:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_410eaf

            call free@PLT
.L_410eaf:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_410ed2:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_410dc1
.L_410ee8:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_410f01

            call free@PLT
.L_410f01:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_410f17

            call free@PLT
.L_410f17:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_410f32

            call free@PLT
.L_410f32:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_410f4d

            call free@PLT
.L_410f4d:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_410f70:

            mov RBX,RAX
            jmp .L_410f01
.L_410f75:

            mov RBX,RAX
            jmp .L_410f17
.L_410f7a:

            mov RBX,RAX
            jmp .L_410f32
.L_410f7f:

            mov RBX,RAX
            jmp .L_410f4d
.L_410f84:

            mov RBX,RAX
            jmp .L_410c6f
.L_410f8c:

            mov RBX,RAX
            jmp .L_410c87
.L_410f94:

            mov RBX,RAX
            jmp .L_410c07
.L_410f9c:

            mov RBX,RAX
            jmp .L_410c22
.L_410fa4:

            mov RBX,RAX
            jmp .L_410c3d
.L_410fac:

            mov RBX,RAX
            jmp .L_410c57
.L_410fb4:

            mov RBX,RAX
.L_410fb7:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_410fd2

            call free@PLT
.L_410fd2:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_410ff5:

            mov RBX,RAX
            jmp .L_410fd2
.L_410ffa:

            mov RDI,QWORD PTR [RSP+144]
            mov RAX,R15
            add RAX,16
            cmp RDI,RAX
            je .L_40e615

            call free@PLT

            jmp .L_40e615
.L_41101c:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_41103e:

            mov RBX,RAX
.L_411041:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_411057

            call free@PLT
.L_411057:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_411072

            call free@PLT
.L_411072:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_41108d

            call free@PLT
.L_41108d:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4110b0:

            mov RBX,RAX
            jmp .L_411057
.L_4110b5:

            mov RBX,RAX
            jmp .L_411072
.L_4110ba:

            mov RBX,RAX
            jmp .L_41108d
.L_4110bf:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_41053c
.L_4110d5:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_411041

            call free@PLT

            jmp .L_411041
.L_4110f7:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411119:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_41113b:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_41115d:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_41117f:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4111a1:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4111c3:

            mov RDI,QWORD PTR [RSP+144]
            mov RAX,R15
            add RAX,16
            cmp RDI,RAX
            je .L_40e1c4

            call free@PLT

            jmp .L_40e1c4
.L_4111e5:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411207:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411229:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_41124b:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_41126d:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_41128f:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4112b1:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4112d3:

            sub RSI,64
            lea R15,QWORD PTR [RSP+144]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            mov QWORD PTR [RSP],R15
.L_4112ea:

            call .L_4024a0
.L_4112ef:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov RSI,QWORD PTR [RBP+16]
            cmp RSI,QWORD PTR [RBP+8]
            je .L_41159d

            lea R15,QWORD PTR [RSP+176]
            sub RSI,64
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            mov QWORD PTR [RSP+8],R15
.L_411326:

            call .L_4024a0
.L_41132b:

            lea RAX,QWORD PTR [RSP+208]
            lea RSI,QWORD PTR [RIP+.L_41541f]
            mov RDX,R15
            mov RDI,RAX
            mov R14,RAX
            mov QWORD PTR [RSP+16],RAX
.L_411348:

            call .L_402420
.L_41134d:

            lea R15,QWORD PTR [RSP+240]
            lea RDX,QWORD PTR [RIP+.L_41540f]
            mov RSI,R14
            mov RDI,R15
.L_411362:

            call .L_4028e0
.L_411367:

            lea R13,QWORD PTR [RSP+272]
            mov RDX,QWORD PTR [RSP]
            mov RSI,R15
            mov RDI,R13
.L_411379:

            call .L_4018b0
.L_41137e:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R13
            mov RDI,R14
.L_411393:

            call .L_4028e0
.L_411398:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_4114eb

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_4113da:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_411466

            call free@PLT
.L_411466:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_41147c

            call free@PLT
.L_41147c:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_411492

            call free@PLT
.L_411492:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_4114ad

            call free@PLT
.L_4114ad:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_4114c8

            call free@PLT
.L_4114c8:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_4114eb:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_4113da
.L_411501:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_41151a

            call free@PLT
.L_41151a:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_411530

            call free@PLT
.L_411530:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_41154b

            call free@PLT
.L_41154b:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_411566

            call free@PLT
.L_411566:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411589:

            mov RBX,RAX
            jmp .L_41151a
.L_41158e:

            mov RBX,RAX
            jmp .L_411530
.L_411593:

            mov RBX,RAX
            jmp .L_41154b
.L_411598:

            mov RBX,RAX
            jmp .L_411566
.L_41159d:

            mov RDI,QWORD PTR [RSP+144]
            mov RAX,R15
            add RAX,16
            cmp RDI,RAX
            je .L_40f78d

            call free@PLT

            jmp .L_40f78d
.L_4115bf:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_4115d8

            call free@PLT
.L_4115d8:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_4115ee

            call free@PLT
.L_4115ee:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_411609

            call free@PLT
.L_411609:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_411624

            call free@PLT
.L_411624:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411647:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_411660

            call free@PLT
.L_411660:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_411676
.L_411671:

            call free@PLT
.L_411676:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411695:

            mov RBX,RAX
.L_411698:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4116b7:

            mov RBX,RAX
.L_4116ba:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4116d9:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4116fb:

            movzx EAX,BYTE PTR [RDI+1]
            jmp .L_40d696
.L_411704:

            mov RBX,RAX
.L_411707:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411726:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411748:

            sub RSI,64
            lea R14,QWORD PTR [RSP+144]
            lea R15,QWORD PTR [RSP+176]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R14
            mov QWORD PTR [RSP],R14
.L_411767:

            call .L_4024a0
.L_41176c:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBP+16]
            mov RDI,R15
            mov QWORD PTR [RSP+8],R15
            lea RSI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RSI+32]
.L_411791:

            call .L_4024a0
.L_411796:

            lea RAX,QWORD PTR [RSP+208]
            lea RSI,QWORD PTR [RIP+.L_41546c]
            mov RDX,R15
            mov RDI,RAX
            mov R12,RAX
            mov QWORD PTR [RSP+16],RAX
.L_4117b3:

            call .L_402420
.L_4117b8:

            lea R15,QWORD PTR [RSP+240]
            lea RDX,QWORD PTR [RIP+.L_41540f]
            mov RSI,R12
            mov RDI,R15
.L_4117cd:

            call .L_4028e0
.L_4117d2:

            lea R13,QWORD PTR [RSP+272]
            mov RDX,R14
            mov RSI,R15
            mov RDI,R13
.L_4117e3:

            call .L_4018b0
.L_4117e8:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R13
            mov RDI,R14
.L_4117fd:

            call .L_4028e0
.L_411802:

            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R14+16]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RDX
            je .L_411955

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_411844:

            mov RAX,QWORD PTR [RSP+312]
            mov RBP,QWORD PTR [RBP+16]
            add R14,16
            mov RSI,R12
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            sub RBP,64
            mov QWORD PTR [RSP+344],RAX
            lea RAX,QWORD PTR [R12+48]
            mov RDI,RBP
            mov BYTE PTR [RSP+384],0
            mov QWORD PTR [RSP+368],RAX
            call .L_401a50

            lea RSI,QWORD PTR [R12+32]
            lea RDI,QWORD PTR [RBP+32]
            call .L_401a50

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_4118d0

            call free@PLT
.L_4118d0:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_4118e6

            call free@PLT
.L_4118e6:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_4118fc

            call free@PLT
.L_4118fc:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_411917

            call free@PLT
.L_411917:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_411932

            call free@PLT
.L_411932:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_411955:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_411844
.L_41196b:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_411984

            call free@PLT
.L_411984:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_41199a

            call free@PLT
.L_41199a:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_4119b5

            call free@PLT
.L_4119b5:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+176]
            add RAX,16
            cmp RDI,RAX
            je .L_4119d0

            call free@PLT
.L_4119d0:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4119f3:

            mov RBX,RAX
            jmp .L_411984
.L_4119f8:

            mov RBX,RAX
            jmp .L_41199a
.L_4119fd:

            mov RBX,RAX
            jmp .L_4119b5
.L_411a02:

            mov RBX,RAX
            jmp .L_4119d0
.L_411a07:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_411a20

            call free@PLT
.L_411a20:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411a3f:

            mov RBX,RAX
            jmp .L_411a20
.L_411a44:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411a66:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411a88:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_40ec40
.L_411a9e:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411ac0:

            mov RBX,RAX
            jmp .L_4115d8
.L_411ac8:

            mov RBX,RAX
            jmp .L_4115ee
.L_411ad0:

            mov RBX,RAX
            jmp .L_411609
.L_411ad8:

            mov RBX,RAX
            jmp .L_411624
.L_411ae0:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411b02:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411b24:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411b46:

            sub RSI,64
            lea R14,QWORD PTR [RSP+304]
            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R14
.L_411b61:

            call .L_4024a0
.L_411b66:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            lea RSI,QWORD PTR [RIP+.L_415435]
            mov RDX,R14
            mov RDI,R12
.L_411b84:

            call .L_401910
.L_411b89:

            mov RDI,QWORD PTR [RBP+16]
            mov RDX,QWORD PTR [RSP+344]
            mov RSI,QWORD PTR [RSP+336]
            sub RDI,64
.L_411ba1:

            call .L_4017e0
.L_411ba6:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            cmp RDI,R12
            je .L_411bbc

            call free@PLT
.L_411bbc:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_411bdb:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_411bf4

            call free@PLT
.L_411bf4:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411c13:

            mov RBX,RAX
            jmp .L_411bf4
.L_411c18:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411c3a:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411c5c:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_40f070
.L_411c72:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_411c8b

            call free@PLT
.L_411c8b:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411caa:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            mov RBX,RAX
            cmp RDI,R14
            je .L_411cc3

            call free@PLT
.L_411cc3:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411ce2:

            mov RBX,RAX
            jmp .L_411cc3
.L_411ce7:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            mov RBX,RAX
            cmp RDI,R14
            je .L_411d00

            call free@PLT
.L_411d00:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411d1f:

            mov RBX,RAX
            jmp .L_411d00
.L_411d24:

            mov RBX,RAX
            jmp .L_411676
.L_411d2c:

            lea RSI,QWORD PTR [RIP+.L_415221]
            mov RDI,R13
.L_411d36:

            call .L_401860
.L_411d3b:

            mov R15,QWORD PTR [RSP+8]
            cmp QWORD PTR [RSP],R15
            je .L_411d80

            mov RAX,QWORD PTR [RBP+16]
            sub R15,1
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov QWORD PTR [RSP+8],R15
            jmp .L_411d3b
.L_411d62:

            mov RBX,RAX
            jmp .L_411c8b
.L_411d6a:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_40ede1
.L_411d80:

            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [R13+16]
            lea RAX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+304],RAX
            mov RAX,QWORD PTR [RSP+272]
            cmp RAX,RDX
            je .L_411ece

            mov QWORD PTR [RSP+304],RAX
            mov RAX,QWORD PTR [RSP+288]
            mov QWORD PTR [RSP+320],RAX
.L_411dc1:

            lea RAX,QWORD PTR [R13+16]
            lea R12,QWORD PTR [RSP+336]
            lea RCX,QWORD PTR [R14+16]
            mov RDX,QWORD PTR [RSP+280]
            mov BYTE PTR [RSP+288],0
            mov QWORD PTR [RSP+272],RAX
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+280],0
            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+304]
            cmp RAX,RCX
            je .L_411eb8

            mov QWORD PTR [RSP+336],RAX
            mov RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+352],RAX
.L_411e2b:

            lea RAX,QWORD PTR [R12+48]
            add R14,16
            mov RSI,R12
            mov RDI,RBP
            mov QWORD PTR [RSP+344],RDX
            mov QWORD PTR [RSP+304],R14
            mov QWORD PTR [RSP+368],RAX
            mov QWORD PTR [RSP+312],0
            mov BYTE PTR [RSP+320],0
            mov QWORD PTR [RSP+376],0
            mov BYTE PTR [RSP+384],0
            call .L_401ee0

            mov RDI,R12
            call .L_401050

            mov RDI,QWORD PTR [RSP+304]
            cmp RDI,R14
            je .L_411e99

            call free@PLT
.L_411e99:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            cmp RDI,R13
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_411eb8:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_411e2b
.L_411ece:

            movdqa XMM0,XMMWORD PTR [RSP+288]
            movaps XMMWORD PTR [RSP+320],XMM0
            jmp .L_411dc1
.L_411ee4:

            mov RBX,RAX
            jmp .L_411660
.L_411eec:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            jne .L_411671

            jmp .L_411676
.L_411f09:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            mov RBX,RAX
            cmp RDI,R14
            je .L_411698

            call free@PLT

            jmp .L_411698
.L_411f2b:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
.L_411f32:

            call _ZSt20__throw_length_errorPKc@PLT
.L_411f37:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411f59:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411f7b:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411f9d:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411fbf:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_411fe1:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_412003:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_412025:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_412047:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_412069:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_41208b:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4120ad:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_4120c6

            call free@PLT
.L_4120c6:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4120e5:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_412107:

            mov RBX,RAX
            jmp .L_4120c6
.L_41210c:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_4116ba

            call free@PLT

            jmp .L_4116ba
.L_41212e:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_412150:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_412172:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_412194:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_410754
.L_4121aa:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_4121c3

            call free@PLT
.L_4121c3:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_4121d9

            call free@PLT
.L_4121d9:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_410fb7

            call free@PLT

            jmp .L_410fb7
.L_4121fd:

            mov RBX,RAX
            jmp .L_4121c3
.L_412202:

            mov RBX,RAX
            jmp .L_4121d9
.L_412207:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_412229:

            sub RSI,64
            lea R12,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R12
.L_41223c:

            call .L_4024a0
.L_412241:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RIP+.L_4153aa]
            lea RDI,QWORD PTR [RAX-64]
.L_412261:

            call .L_401860

            mov RDI,QWORD PTR [RBP+16]
            mov RDX,QWORD PTR [RSP+344]
            mov RSI,QWORD PTR [RSP+336]
            sub RDI,64
            call .L_4017e0
.L_412283:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            cmp RDI,R12
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_4122a2:

            movdqa XMM0,XMMWORD PTR [RSP+320]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_40d8b9
.L_4122b8:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4122da:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4122fc:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_412315

            call free@PLT
.L_412315:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_412334:

            mov RBX,RAX
            jmp .L_412315
.L_412339:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_412352

            call free@PLT
.L_412352:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_412371:

            mov RBX,RAX
            jmp .L_412352
.L_412376:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_41238f

            call free@PLT
.L_41238f:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_411707

            call free@PLT

            jmp .L_411707
.L_4123ae:

            mov RBX,RAX
            jmp .L_41238f
.L_4123b3:

            sub RSI,64
            lea R14,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R14
.L_4123c6:

            call .L_4024a0
.L_4123cb:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBP+8]
            cmp QWORD PTR [RBP+16],RAX
            je .L_412493

            lea R12,QWORD PTR [RSP+336]
            lea RSI,QWORD PTR [RIP+.L_415041]
            mov RDX,R14
            mov RDI,R12
.L_4123ff:

            call .L_401910
.L_412404:

            mov RDI,QWORD PTR [RBP+16]
            mov RDX,QWORD PTR [RSP+344]
            mov RSI,QWORD PTR [RSP+336]
            sub RDI,64
.L_41241c:

            call .L_4017e0
.L_412421:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            cmp RDI,R12
            je .L_412437

            call free@PLT
.L_412437:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_40d653

            call free@PLT

            jmp .L_40d653
.L_412456:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_41246f

            call free@PLT
.L_41246f:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_41248e:

            mov RBX,RAX
            jmp .L_41246f
.L_412493:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_40f533

            call free@PLT

            jmp .L_40f533
.L_4124b2:

            mov RBX,RAX
.L_4124b5:

            mov RDI,QWORD PTR [RSP+304]
            add R14,16
            cmp RDI,R14
            je .L_410c9f

            call free@PLT

            jmp .L_410c9f
.L_4124d4:

            mov RDI,QWORD PTR [RSP+272]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_4124ed

            call free@PLT
.L_4124ed:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_4124b5

            call free@PLT

            jmp .L_4124b5
.L_412505:

            mov RBX,RAX
            jmp .L_4124ed
.L_41250a:

            mov RDI,RBP
            call .L_402550

            jmp .L_4108d6
.L_412517:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_412520:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,200
.L_412534:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+184],RAX
            xor EAX,EAX
            mov RAX,RSI
            sub RAX,RDI
            cmp RAX,3
            jle .L_412558

            cmp BYTE PTR [RDI],68
            je .L_412588
.L_412558:

            mov RCX,QWORD PTR [RSP+184]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBX
            jne .L_412726

            add RSP,200
.L_412579:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_412588:

            movzx EAX,BYTE PTR [RDI+1]
            mov RBP,RSI
            mov R12,RDX
            cmp AL,84
            je .L_41259a

            cmp AL,116
            jne .L_412558
.L_41259a:

            lea R14,QWORD PTR [RBX+2]
            mov RDX,R12
            mov RSI,RBP
            mov RDI,R14
.L_4125a7:

            call .L_40d570

            cmp R14,RAX
            mov R13,RAX
            je .L_412558

            cmp RBP,RAX
            je .L_412558

            cmp BYTE PTR [RAX],69
            jne .L_412558

            mov RAX,QWORD PTR [R12+16]
            cmp QWORD PTR [R12+8],RAX
            je .L_412558

            lea RSI,QWORD PTR [RAX-64]
            lea R14,QWORD PTR [RSP+16]
            lea R15,QWORD PTR [RSP+48]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R14
            call .L_4024a0
.L_4125e4:

            lea RSI,QWORD PTR [RIP+.L_4154a2]
            mov RDX,R14
            mov RDI,R15
.L_4125f1:

            call .L_402420
.L_4125f6:

            lea RBP,QWORD PTR [RSP+80]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R15
            mov RDI,RBP
.L_412608:

            call .L_4028e0
.L_41260d:

            lea RBX,QWORD PTR [RSP+112]
            lea RDX,QWORD PTR [RBP+16]
            lea RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+112],RAX
            mov RAX,QWORD PTR [RSP+80]
            cmp RAX,RDX
            je .L_412713

            mov QWORD PTR [RSP+112],RAX
            mov RAX,QWORD PTR [RSP+96]
            mov QWORD PTR [RSP+128],RAX
.L_41263f:

            mov RAX,QWORD PTR [RSP+88]
            mov R12,QWORD PTR [R12+16]
            lea RDX,QWORD PTR [RBX+48]
            mov RSI,RBX
            mov QWORD PTR [RSP+88],0
            mov BYTE PTR [RSP+96],0
            mov QWORD PTR [RSP+144],RDX
            mov QWORD PTR [RSP+8],RDX
            sub R12,64
            mov QWORD PTR [RSP+120],RAX
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,R12
            mov QWORD PTR [RSP+152],0
            mov BYTE PTR [RSP+160],0
            mov QWORD PTR [RSP+80],RAX
            call .L_401a50

            lea RDI,QWORD PTR [R12+32]
            lea RSI,QWORD PTR [RBX+32]
            call .L_401a50

            mov RDI,QWORD PTR [RSP+144]
            mov RDX,QWORD PTR [RSP+8]
            cmp RDI,RDX
            je .L_4126be

            call free@PLT
.L_4126be:

            mov RDI,QWORD PTR [RSP+112]
            add RBX,16
            cmp RDI,RBX
            je .L_4126d1

            call free@PLT
.L_4126d1:

            mov RDI,QWORD PTR [RSP+80]
            add RBP,16
            cmp RDI,RBP
            je .L_4126e4

            call free@PLT
.L_4126e4:

            mov RDI,QWORD PTR [RSP+48]
            add R15,16
            cmp RDI,R15
            je .L_4126f7

            call free@PLT
.L_4126f7:

            mov RDI,QWORD PTR [RSP+16]
            add R14,16
            cmp RDI,R14
            je .L_41270a

            call free@PLT
.L_41270a:

            lea RBX,QWORD PTR [R13+1]
            jmp .L_412558
.L_412713:

            movdqa XMM0,XMMWORD PTR [RSP+96]
            movaps XMMWORD PTR [RSP+128],XMM0
            jmp .L_41263f
.L_412726:

            call __stack_chk_fail@PLT
.L_41272b:

            mov RDI,QWORD PTR [RSP+48]
            add R15,16
            mov RBX,RAX
            cmp RDI,R15
            je .L_412741

            call free@PLT
.L_412741:

            mov RDI,QWORD PTR [RSP+16]
            add R14,16
            cmp RDI,R14
            je .L_412754

            call free@PLT
.L_412754:

            mov RDI,RBX
.L_412757:

            call _Unwind_Resume@PLT
.L_41275c:

            mov RBX,RAX
            jmp .L_412741
.L_412761:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_412770:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBP,RDI
            sub RSP,72
.L_412781:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+56],RAX
            xor EAX,EAX
            cmp RDI,RSI
            je .L_4127b3

            movzx EAX,BYTE PTR [RDI]
            mov RBX,RSI
            mov R12,RDX
            cmp AL,83
            je .L_4129a8

            cmp AL,84
            je .L_4127e0

            cmp AL,68
            je .L_412870
.L_4127b3:

            mov R13,RBP
.L_4127b6:

            mov RCX,QWORD PTR [RSP+56]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,R13
            jne .L_412ae1

            add RSP,72
.L_4127d1:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4127e0:

            mov R14,QWORD PTR [RDX+16]
            sub R14,QWORD PTR [RDX+8]
.L_4127e8:

            call .L_4047e0

            mov RBX,QWORD PTR [R12+16]
            mov R13,RAX
            sar R14,6
            mov RAX,RBX
            sub RAX,QWORD PTR [R12+8]
            sar RAX,6
            cmp RBP,R13
            mov R15,RAX
            je .L_41281a

            lea RDX,QWORD PTR [R14+1]
            cmp RDX,RAX
            je .L_412a70
.L_41281a:

            cmp RAX,R14
            jne .L_41282d

            jmp .L_4127b3
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412828:

            mov RBX,QWORD PTR [R12+16]
.L_41282d:

            lea R13,QWORD PTR [RBX-64]
            lea RAX,QWORD PTR [RBX-16]
            mov QWORD PTR [R12+16],R13
            mov RDI,QWORD PTR [RBX-32]
            cmp RDI,RAX
            je .L_412848

            call free@PLT
.L_412848:

            mov RDI,QWORD PTR [RBX-64]
            add R13,16
            cmp RDI,R13
            je .L_41285a

            call free@PLT
.L_41285a:

            sub R15,1
            cmp R15,R14
            jne .L_412828

            jmp .L_4127b3
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412870:

            call .L_412520
.L_412875:

            cmp RBP,RAX
            mov R13,RAX
            je .L_4127b6

            mov R14,QWORD PTR [R12+16]
            cmp R14,QWORD PTR [R12+8]
            je .L_4127b3

            mov RAX,QWORD PTR [R12]
            mov QWORD PTR [RSP+24],0
            lea RBP,QWORD PTR [R12+32]
            mov QWORD PTR [RSP+32],0
            mov QWORD PTR [RSP+40],0
            mov QWORD PTR [RSP+16],RAX
            mov RBX,QWORD PTR [RAX+4096]
            lea RDX,QWORD PTR [RAX+4096]
            sub RDX,RBX
            cmp RDX,63
            jbe .L_412a58

            lea R12,QWORD PTR [RBX+64]
            mov QWORD PTR [RAX+4096],R12
.L_4128e0:

            test RBX,RBX
            mov QWORD PTR [RSP+24],RBX
            mov QWORD PTR [RSP+32],RBX
            mov QWORD PTR [RSP+40],R12
            je .L_41292a

            lea R15,QWORD PTR [RBX+16]
            mov RDI,RBX
            mov QWORD PTR [RBX],R15
            mov RSI,QWORD PTR [R14-64]
            mov RDX,QWORD PTR [R14-56]
            add RDX,RSI
.L_412909:

            call .L_401470
.L_41290e:

            lea RAX,QWORD PTR [RBX+48]
            lea RDI,QWORD PTR [RBX+32]
            mov QWORD PTR [RBX+32],RAX
            mov RSI,QWORD PTR [R14-32]
            mov RDX,QWORD PTR [R14-24]
            add RDX,RSI
.L_412925:

            call .L_401470
.L_41292a:

            lea RSI,QWORD PTR [RSP+16]
            mov RDI,RBP
            mov QWORD PTR [RSP+32],R12
            call .L_4030f0

            mov RBP,QWORD PTR [RSP+32]
            mov RBX,QWORD PTR [RSP+24]
            cmp RBP,RBX
            je .L_412981

            nop
            nop
            nop
            nop
            nop
.L_412950:

            mov RDI,QWORD PTR [RBX+32]
            lea RAX,QWORD PTR [RBX+48]
            cmp RDI,RAX
            je .L_412962

            call free@PLT
.L_412962:

            mov RDI,QWORD PTR [RBX]
            lea RAX,QWORD PTR [RBX+16]
            cmp RDI,RAX
            je .L_412973

            call free@PLT
.L_412973:

            add RBX,64
            cmp RBP,RBX
            jne .L_412950
.L_41297c:

            mov RBX,QWORD PTR [RSP+24]
.L_412981:

            test RBX,RBX
            je .L_4127b6

            mov RDX,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+16]
            mov RSI,RBX
            sub RDX,RBX
            call .L_4012a0

            jmp .L_4127b6
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4129a8:

            call .L_403bc0

            cmp RBP,RAX
            mov R13,RAX
            jne .L_4127b6

            mov RAX,RBX
            sub RAX,R13
            cmp RAX,2
            jle .L_4127b6

            cmp BYTE PTR [R13+1],116
            jne .L_4127b6

            lea R14,QWORD PTR [R13+2]
            mov RDX,R12
            mov RSI,RBX
            mov RDI,R14
            call .L_40b600

            cmp R14,RAX
            mov R13,RAX
            je .L_4127b3

            mov RAX,QWORD PTR [R12+16]
            cmp RAX,QWORD PTR [R12+8]
            je .L_4127b3

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_415184]
            xor ESI,ESI
            lea RBX,QWORD PTR [RSP+16]
            call .L_401e90

            mov RAX,QWORD PTR [R12]
            lea RDX,QWORD PTR [RSP+8]
            mov RDI,RBX
            mov QWORD PTR [RSP+8],RAX
            mov RAX,QWORD PTR [R12+16]
            lea RSI,QWORD PTR [RAX-64]
            call .L_402970

            lea RDI,QWORD PTR [R12+32]
            mov RSI,RBX
            call .L_4030f0

            mov RDI,RBX
            call .L_401b10

            jmp .L_4127b6
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_412a58:

            mov EDI,64
            call malloc@PLT

            mov RBX,RAX
            lea R12,QWORD PTR [RAX+64]
            jmp .L_4128e0
          .byte 0x66
          .byte 0x90
.L_412a70:

            mov RAX,QWORD PTR [R12]
            lea RSI,QWORD PTR [RBX-64]
            lea RBX,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RSP+8]
            mov RDI,RBX
            mov QWORD PTR [RSP+8],RAX
            call .L_402970
.L_412a8f:

            lea RDI,QWORD PTR [R12+32]
            mov RSI,RBX
            call .L_4030f0

            mov RBP,QWORD PTR [RSP+32]
            mov RBX,QWORD PTR [RSP+24]
            cmp RBP,RBX
            je .L_412981

            nop
.L_412ab0:

            mov RDI,QWORD PTR [RBX+32]
            lea RAX,QWORD PTR [RBX+48]
            cmp RDI,RAX
            je .L_412ac2

            call free@PLT
.L_412ac2:

            mov RDI,QWORD PTR [RBX]
            lea RAX,QWORD PTR [RBX+16]
            cmp RDI,RAX
            je .L_412ad3

            call free@PLT
.L_412ad3:

            add RBX,64
            cmp RBP,RBX
            jne .L_412ab0

            jmp .L_41297c
.L_412ae1:

            call __stack_chk_fail@PLT
.L_412ae6:

            mov RDI,QWORD PTR [RBX]
            mov RBP,RAX
            cmp R15,RDI
            je .L_412af6

            call free@PLT
.L_412af6:

            mov RAX,RBP
.L_412af9:

            mov RDI,RAX
            call __cxa_begin_catch@PLT
.L_412b01:

            call __cxa_rethrow@PLT
.L_412b06:

            jmp .L_412af9
.L_412b08:

            mov RBX,RAX
            call __cxa_end_catch@PLT

            mov RSI,QWORD PTR [RSP+24]
            mov RDX,QWORD PTR [RSP+40]
            sub RDX,RSI
            test RSI,RSI
            je .L_412b2c

            mov RDI,QWORD PTR [RSP+16]
            call .L_4012a0
.L_412b2c:

            mov RDI,RBX
.L_412b2f:

            call _Unwind_Resume@PLT
.L_412b34:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_412b40:

            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,48
.L_412b4f:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+40],RAX
            xor EAX,EAX
            mov RAX,RSI
            sub RAX,RDI
            cmp RAX,1
            jle .L_412c90

            movzx EAX,BYTE PTR [RDI]
            mov R12,RSI
            mov R13,RDX
            cmp AL,111
            je .L_412bc8

            cmp AL,100
            je .L_412c78
.L_412b84:

            mov RDX,R13
            mov RSI,R12
            mov RDI,RBX
.L_412b8d:

            call .L_40cc10

            cmp RBX,RAX
            mov RBP,RAX
            je .L_412ca0
.L_412b9e:

            mov RCX,QWORD PTR [RSP+40]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBP
            jne .L_412dbf

            add RSP,48
.L_412bb9:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_412bc8:

            cmp BYTE PTR [RDI+1],110
            jne .L_412b84

            lea RBP,QWORD PTR [RBX+2]
            mov RDX,R13
            mov RSI,R12
            mov RDI,RBP
            call .L_40adf0

            cmp RBP,RAX
            mov R14,RAX
            je .L_412c90

            mov RDX,R13
            mov RSI,R12
            mov RDI,RAX
            call .L_40c230

            cmp R14,RAX
            mov RBP,RAX
            je .L_412b9e

            mov RAX,QWORD PTR [R13+16]
            mov RDX,RAX
            sub RDX,QWORD PTR [R13+8]
            cmp RDX,127
            jbe .L_412b9e

            lea RSI,QWORD PTR [RAX-64]
            mov RBX,RSP
            mov RDI,RBX
            lea RDX,QWORD PTR [RSI+32]
            call .L_4024a0
.L_412c26:

            mov R14,QWORD PTR [R13+16]
            lea R12,QWORD PTR [R14-64]
            lea RAX,QWORD PTR [R14-16]
            mov QWORD PTR [R13+16],R12
            mov RDI,QWORD PTR [R14-32]
            cmp RDI,RAX
            je .L_412c44

            call free@PLT
.L_412c44:

            mov RDI,QWORD PTR [R14-64]
            add R12,16
            cmp RDI,R12
            je .L_412c56

            call free@PLT
.L_412c56:

            mov RDI,QWORD PTR [R13+16]
            mov RDX,QWORD PTR [RSP+8]
            mov RSI,QWORD PTR [RSP]
            sub RDI,64
.L_412c67:

            call .L_4017e0
.L_412c6c:

            jmp .L_412d42
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412c78:

            cmp BYTE PTR [RDI+1],110
            jne .L_412b84

            lea R14,QWORD PTR [RBX+2]
            cmp R14,R12
            jne .L_412d60

            nop
.L_412c90:

            mov RBP,RBX
            jmp .L_412b9e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412ca0:

            mov RDX,R13
            mov RSI,R12
            mov RDI,RAX
.L_412ca9:

            call .L_40adf0

            cmp RBP,RAX
            mov RBX,RAX
            je .L_412b9e

            mov RDX,R13
            mov RSI,R12
            mov RDI,RAX
            call .L_40c230

            cmp RBX,RAX
            mov RBP,RAX
            je .L_412b9e

            mov RSI,QWORD PTR [R13+16]
            mov RAX,RSI
            sub RAX,QWORD PTR [R13+8]
            cmp RAX,127
            jbe .L_412b9e

            sub RSI,64
            mov RBX,RSP
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,RBX
            call .L_4024a0
.L_412cfc:

            mov R14,QWORD PTR [R13+16]
            lea R12,QWORD PTR [R14-64]
            lea RAX,QWORD PTR [R14-16]
            mov QWORD PTR [R13+16],R12
            mov RDI,QWORD PTR [R14-32]
            cmp RDI,RAX
            je .L_412d1a

            call free@PLT
.L_412d1a:

            mov RDI,QWORD PTR [R14-64]
            add R12,16
            cmp RDI,R12
            je .L_412d2c

            call free@PLT
.L_412d2c:

            mov RDI,QWORD PTR [R13+16]
            mov RDX,QWORD PTR [RSP+8]
            mov RSI,QWORD PTR [RSP]
            sub RDI,64
.L_412d3d:

            call .L_4017e0
.L_412d42:

            mov RDI,QWORD PTR [RSP]
            add RBX,16
            cmp RDI,RBX
            je .L_412b9e

            call free@PLT

            jmp .L_412b9e
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_412d60:

            mov RDX,R13
            mov RSI,R12
            mov RDI,R14
.L_412d69:

            call .L_412770

            cmp R14,RAX
            mov RBP,RAX
            je .L_412da3
.L_412d76:

            mov RDI,QWORD PTR [R13+16]
            cmp RDI,QWORD PTR [R13+8]
            je .L_412c90

            lea RCX,QWORD PTR [RIP+.L_415235]
            sub RDI,64
            mov R8D,1
            xor EDX,EDX
            xor ESI,ESI
            call .L_401b90

            jmp .L_412b9e
.L_412da3:

            mov RDX,R13
            mov RSI,R12
            mov RDI,RAX
            call .L_40cc10

            cmp RBP,RAX
            je .L_412c90

            mov RBP,RAX
            jmp .L_412d76
.L_412dbf:

            call __stack_chk_fail@PLT
.L_412dc4:

            mov RDI,QWORD PTR [RSP]
            add RBX,16
            mov RBP,RAX
            cmp RDI,RBX
            je .L_412dd9

            call free@PLT
.L_412dd9:

            mov RDI,RBP
            call _Unwind_Resume@PLT
.L_412de1:

            jmp .L_412dc4
.L_412de3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_412df0:

            push R15
            push R14
            push R13
            push R12
            mov R13,RDX
            push RBP
            push RBX
            mov RBP,RDI
            mov RDX,RCX
            mov RBX,RCX
            sub RSP,152
.L_412e0d:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+136],RAX
            xor EAX,EAX
.L_412e20:

            call .L_40d570

            cmp RBP,RAX
            mov R12,RAX
            je .L_4130ca

            mov RAX,QWORD PTR [RBX+16]
            cmp QWORD PTR [RBX+8],RAX
            je .L_413100

            lea RDI,QWORD PTR [RAX-64]
            mov RCX,QWORD PTR [RAX-64]
            mov R8,QWORD PTR [RAX-56]
            mov RDX,QWORD PTR [RAX-24]
            mov R9D,15
            lea RSI,QWORD PTR [RDI+16]
            cmp RCX,RSI
            lea R10,QWORD PTR [R8+RDX*1]
            je .L_412e66

            mov R9,QWORD PTR [RAX-48]
.L_412e66:

            cmp R10,R9
            mov RSI,QWORD PTR [RAX-32]
            jbe .L_412e8b

            lea R11,QWORD PTR [RAX-16]
            mov R9D,15
            cmp RSI,R11
            je .L_412e82

            mov R9,QWORD PTR [RAX-16]
.L_412e82:

            cmp R10,R9
            jbe .L_413120
.L_412e8b:

            call .L_4017e0
.L_412e90:

            lea R14,QWORD PTR [RSP+32]
            lea RDX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+32],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_4131b0

            mov QWORD PTR [RSP+32],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+48],RCX
.L_412ebc:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov RBP,RSP
            mov RDI,RBP
            mov QWORD PTR [RSP+40],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov RSI,QWORD PTR [R13]
            lea RAX,QWORD PTR [RBP+16]
            mov RDX,QWORD PTR [R13+8]
            mov QWORD PTR [RSP],RAX
            add RDX,RSI
.L_412eed:

            call .L_401470
.L_412ef2:

            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+8],RAX
            je .L_4131e5

            lea RSI,QWORD PTR [RIP+.L_415458]
            mov EDX,1
            mov RDI,RBP
.L_412f16:

            call .L_4017e0
.L_412f1b:

            mov RCX,QWORD PTR [RSP]
            mov R8,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RBP+16]
            mov RDX,QWORD PTR [RSP+40]
            mov EAX,15
            cmp RCX,RSI
            lea RDI,QWORD PTR [R8+RDX*1]
            je .L_412f40

            mov RAX,QWORD PTR [RSP+16]
.L_412f40:

            cmp RDI,RAX
            mov RSI,QWORD PTR [RSP+32]
            jbe .L_412f66

            lea R9,QWORD PTR [R14+16]
            mov EAX,15
            cmp RSI,R9
            je .L_412f5d

            mov RAX,QWORD PTR [RSP+48]
.L_412f5d:

            cmp RDI,RAX
            jbe .L_413108
.L_412f66:

            mov RDI,RBP
.L_412f69:

            call .L_4017e0
.L_412f6e:

            lea R13,QWORD PTR [RSP+64]
            lea RDX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+64],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_413198

            mov QWORD PTR [RSP+64],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+80],RCX
.L_412f9a:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov QWORD PTR [RSP+72],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+72],RAX
            je .L_413221

            lea RSI,QWORD PTR [RIP+.L_415221]
            mov EDX,1
            mov RDI,R13
.L_412fd6:

            call .L_4017e0
.L_412fdb:

            lea R15,QWORD PTR [RSP+96]
            lea RDX,QWORD PTR [R15+16]
            mov QWORD PTR [RSP+96],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_4131c0

            mov QWORD PTR [RSP+96],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+112],RCX
.L_413007:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov RBX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+104],RCX
            mov QWORD PTR [RAX],RDX
            mov RSI,QWORD PTR [RSP+96]
            mov QWORD PTR [RAX+8],0
            lea RAX,QWORD PTR [R15+16]
            mov RDI,QWORD PTR [RBX-64]
            cmp RSI,RAX
            je .L_413160

            lea RAX,QWORD PTR [RBX-48]
            cmp RDI,RAX
            je .L_413138

            mov QWORD PTR [RBX-64],RSI
            mov RAX,QWORD PTR [RSP+104]
            test RDI,RDI
            mov RDX,QWORD PTR [RBX-48]
            mov QWORD PTR [RBX-56],RAX
            mov RAX,QWORD PTR [RSP+112]
            mov QWORD PTR [RBX-48],RAX
            je .L_41314e

            mov QWORD PTR [RSP+96],RDI
            mov QWORD PTR [RSP+112],RDX
.L_413073:

            mov QWORD PTR [RSP+104],0
            mov BYTE PTR [RDI],0
            add R15,16
            mov RDI,QWORD PTR [RSP+96]
            cmp RDI,R15
            je .L_413092

            call free@PLT
.L_413092:

            mov RDI,QWORD PTR [RSP+64]
            add R13,16
            cmp RDI,R13
            je .L_4130a5

            call free@PLT
.L_4130a5:

            mov RDI,QWORD PTR [RSP]
            add RBP,16
            cmp RDI,RBP
            je .L_4130b7

            call free@PLT
.L_4130b7:

            mov RDI,QWORD PTR [RSP+32]
            add R14,16
            cmp RDI,R14
            je .L_4130ca

            call free@PLT
.L_4130ca:

            mov RBX,QWORD PTR [RSP+136]
            xor RBX,QWORD PTR FS:[40]
            mov RAX,R12
            jne .L_4131e0

            add RSP,152
.L_4130eb:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x66
          .byte 0x2e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_413100:

            mov R12,RBP
            jmp .L_4130ca
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_413108:

            xor EDX,EDX
            xor ESI,ESI
            mov RDI,R14
.L_41310f:

            call .L_401b90
.L_413114:

            jmp .L_412f6e
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_413120:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
.L_413128:

            call .L_401b90
.L_41312d:

            jmp .L_412e90
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_413138:

            mov QWORD PTR [RBX-64],RSI
            mov RAX,QWORD PTR [RSP+104]
            mov QWORD PTR [RBX-56],RAX
            mov RAX,QWORD PTR [RSP+112]
            mov QWORD PTR [RBX-48],RAX
.L_41314e:

            lea RDI,QWORD PTR [R15+16]
            mov QWORD PTR [RSP+96],RDI
            jmp .L_413073
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_413160:

            mov RDX,QWORD PTR [RSP+104]
            test RDX,RDX
            je .L_413180

            cmp RDX,1
            jne .L_4131d0

            movzx EAX,BYTE PTR [RSP+112]
            mov BYTE PTR [RDI],AL
            mov RDX,QWORD PTR [RSP+104]
            mov RDI,QWORD PTR [RBX-64]
.L_413180:

            mov QWORD PTR [RBX-56],RDX
            mov BYTE PTR [RDI+RDX*1],0
            mov RDI,QWORD PTR [RSP+96]
            jmp .L_413073
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_413198:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+80],XMM0
            jmp .L_412f9a
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4131b0:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+48],XMM0
            jmp .L_412ebc
          .byte 0x90
.L_4131c0:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+112],XMM0
            jmp .L_413007
          .byte 0x90
.L_4131d0:

            call memcpy@PLT

            mov RDX,QWORD PTR [RSP+104]
            mov RDI,QWORD PTR [RBX-64]
            jmp .L_413180
.L_4131e0:

            call __stack_chk_fail@PLT
.L_4131e5:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
.L_4131ec:

            call _ZSt20__throw_length_errorPKc@PLT
.L_4131f1:

            mov RBX,RAX
.L_4131f4:

            mov RDI,QWORD PTR [RSP]
            add RBP,16
            cmp RDI,RBP
            je .L_413206

            call free@PLT
.L_413206:

            mov RDI,QWORD PTR [RSP+32]
            add R14,16
            cmp RDI,R14
            je .L_413219

            call free@PLT
.L_413219:

            mov RDI,RBX
.L_41321c:

            call _Unwind_Resume@PLT
.L_413221:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
.L_413228:

            call _ZSt20__throw_length_errorPKc@PLT
.L_41322d:

            mov RDI,QWORD PTR [RSP+64]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_4131f4

            call free@PLT

            jmp .L_4131f4
.L_413245:

            mov RBX,RAX
            jmp .L_413206
.L_41324a:

            jmp .L_4131f1
.L_41324c:

            nop
            nop
            nop
            nop
.L_413250:

            push R15
            push R14
            mov R14,RDI
            push R13
            push R12
            mov R13,RCX
            push RBP
            push RBX
            mov RBX,RDX
            mov RDX,RCX
            mov R12,RSI
            sub RSP,328
.L_413270:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+312],RAX
            xor EAX,EAX
.L_413283:

            call .L_40d570

            cmp R14,RAX
            mov RBP,RAX
            je .L_413804

            mov RSI,R12
            mov RDX,R13
            mov RDI,RAX
            call .L_40d570

            cmp RBP,RAX
            mov R12,RAX
            je .L_413830

            mov RAX,QWORD PTR [R13+16]
            mov RDX,RAX
            sub RDX,QWORD PTR [R13+8]
            cmp RDX,127
            jbe .L_413870

            lea RDI,QWORD PTR [RAX-64]
            mov RCX,QWORD PTR [RAX-64]
            mov R8,QWORD PTR [RAX-56]
            mov RDX,QWORD PTR [RAX-24]
            mov R9D,15
            lea RSI,QWORD PTR [RDI+16]
            cmp RCX,RSI
            lea R10,QWORD PTR [R8+RDX*1]
            je .L_4132ea

            mov R9,QWORD PTR [RAX-48]
.L_4132ea:

            cmp R10,R9
            mov RSI,QWORD PTR [RAX-32]
            jbe .L_41330f

            lea R11,QWORD PTR [RAX-16]
            mov R9D,15
            cmp RSI,R11
            je .L_413306

            mov R9,QWORD PTR [RAX-16]
.L_413306:

            cmp R10,R9
            jbe .L_413998
.L_41330f:

            call .L_4017e0
.L_413314:

            lea RDX,QWORD PTR [RSP+64]
            lea RSI,QWORD PTR [RSP+48]
            mov QWORD PTR [RSP+48],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+32],RSI
            cmp RCX,RDX
            je .L_413930

            mov QWORD PTR [RSP+48],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+64],RCX
.L_413346:

            mov BYTE PTR [RAX+16],0
            mov R14,QWORD PTR [R13+16]
            mov RCX,QWORD PTR [RAX+8]
            lea RBP,QWORD PTR [R14-64]
            mov QWORD PTR [RSP+56],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov QWORD PTR [R13+16],RBP
            lea RAX,QWORD PTR [R14-16]
            mov RDI,QWORD PTR [R14-32]
            cmp RDI,RAX
            je .L_41337c

            call free@PLT
.L_41337c:

            mov RDI,QWORD PTR [R14-64]
            add RBP,16
            cmp RDI,RBP
            je .L_41338e

            call free@PLT
.L_41338e:

            mov RAX,QWORD PTR [R13+16]
            mov R9D,15
            lea RDI,QWORD PTR [RAX-64]
            mov RCX,QWORD PTR [RAX-64]
            mov R8,QWORD PTR [RAX-56]
            mov RDX,QWORD PTR [RAX-24]
            lea RSI,QWORD PTR [RDI+16]
            cmp RCX,RSI
            lea R10,QWORD PTR [R8+RDX*1]
            je .L_4133b9

            mov R9,QWORD PTR [RAX-48]
.L_4133b9:

            cmp R10,R9
            mov RSI,QWORD PTR [RAX-32]
            jbe .L_4133de

            lea R11,QWORD PTR [RAX-16]
            mov R9D,15
            cmp RSI,R11
            je .L_4133d5

            mov R9,QWORD PTR [RAX-16]
.L_4133d5:

            cmp R10,R9
            jbe .L_413980
.L_4133de:

            call .L_4017e0
.L_4133e3:

            lea RDX,QWORD PTR [RSP+96]
            lea RSI,QWORD PTR [RSP+80]
            mov QWORD PTR [RSP+80],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+16],RSI
            cmp RCX,RDX
            je .L_413920

            mov QWORD PTR [RSP+80],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+96],RCX
.L_413415:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            lea RSI,QWORD PTR [RIP+.L_4153f7]
            mov RBP,QWORD PTR [R13+16]
            mov RDI,RBX
            mov QWORD PTR [RSP+88],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov RAX,QWORD PTR [RBP-64]
            lea R15,QWORD PTR [RBP-64]
            mov QWORD PTR [RBP-56],0
            mov QWORD PTR [RSP+24],R15
            mov BYTE PTR [RAX],0
            call .L_401090

            test EAX,EAX
            jne .L_413496

            mov RAX,QWORD PTR [RBP-64]
            mov R13,QWORD PTR [RBP-56]
            lea RCX,QWORD PTR [R15+16]
            mov EDX,15
            cmp RAX,RCX
            lea R14,QWORD PTR [R13+1]
            je .L_41347a

            mov RDX,QWORD PTR [RBP-48]
.L_41347a:

            cmp R14,RDX
            ja .L_4139b0
.L_413483:

            mov BYTE PTR [RAX+R13*1],40
            mov RAX,QWORD PTR [RBP-64]
            mov QWORD PTR [RBP-56],R14
            mov BYTE PTR [RAX+R13*1+1],0
.L_413496:

            lea RAX,QWORD PTR [RSP+112]
            mov RDX,QWORD PTR [RSP+16]
            lea RSI,QWORD PTR [RIP+.L_415458]
            mov RDI,RAX
            mov QWORD PTR [RSP],RAX
.L_4134ae:

            call .L_401910
.L_4134b3:

            movabs RAX,9223372036854775807
            sub RAX,QWORD PTR [RSP+120]
            cmp RAX,1
            jbe .L_4139d5

            mov RDI,QWORD PTR [RSP]
            lea RSI,QWORD PTR [RIP+.L_4154ac]
            mov EDX,2
.L_4134dc:

            call .L_4017e0
.L_4134e1:

            lea RDX,QWORD PTR [RSP+160]
            lea RSI,QWORD PTR [RSP+144]
            mov QWORD PTR [RSP+144],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+8],RSI
            cmp RCX,RDX
            je .L_413908

            mov QWORD PTR [RSP+144],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+160],RCX
.L_413522:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov RDI,QWORD PTR [RSP+8]
            mov QWORD PTR [RSP+152],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov RDX,QWORD PTR [RBX+8]
            mov RSI,QWORD PTR [RBX]
.L_413549:

            call .L_4017e0
.L_41354e:

            lea R13,QWORD PTR [RSP+176]
            lea RDX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+176],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_4138f0

            mov QWORD PTR [RSP+176],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+192],RCX
.L_413586:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov QWORD PTR [RSP+184],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            movabs RAX,9223372036854775807
            sub RAX,QWORD PTR [RSP+184]
            cmp RAX,1
            jbe .L_413aa8

            lea RSI,QWORD PTR [RIP+.L_415457]
            mov EDX,2
            mov RDI,R13
.L_4135cc:

            call .L_4017e0
.L_4135d1:

            lea R14,QWORD PTR [RSP+208]
            lea RDX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+208],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_4138d8

            mov QWORD PTR [RSP+208],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+224],RCX
.L_413609:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov RDI,R14
            mov QWORD PTR [RSP+216],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov RSI,QWORD PTR [RSP+48]
            mov RDX,QWORD PTR [RSP+56]
.L_413631:

            call .L_4017e0
.L_413636:

            lea R15,QWORD PTR [RSP+240]
            lea RDX,QWORD PTR [R15+16]
            mov QWORD PTR [RSP+240],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_4138c0

            mov QWORD PTR [RSP+240],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+256],RCX
.L_41366e:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov QWORD PTR [RSP+248],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+248],RAX
            je .L_413a33

            lea RSI,QWORD PTR [RIP+.L_415221]
            mov EDX,1
            mov RDI,R15
.L_4136b0:

            call .L_4017e0
.L_4136b5:

            lea RDX,QWORD PTR [RSP+288]
            lea RSI,QWORD PTR [RSP+272]
            mov QWORD PTR [RSP+272],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+40],RSI
            cmp RCX,RDX
            je .L_413940

            mov QWORD PTR [RSP+272],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+288],RCX
.L_4136f6:

            mov RCX,QWORD PTR [RAX+8]
            mov RDI,QWORD PTR [RSP+24]
            mov BYTE PTR [RAX+16],0
            mov QWORD PTR [RSP+280],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov RSI,QWORD PTR [RSP+272]
            mov RDX,QWORD PTR [RSP+280]
.L_413726:

            call .L_4017e0
.L_41372b:

            mov RAX,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+272]
            add RAX,16
            cmp RDI,RAX
            je .L_413746

            call free@PLT
.L_413746:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_41375c

            call free@PLT
.L_41375c:

            mov RDI,QWORD PTR [RSP+208]
            add R14,16
            cmp RDI,R14
            je .L_413772

            call free@PLT
.L_413772:

            mov RDI,QWORD PTR [RSP+176]
            add R13,16
            cmp RDI,R13
            je .L_413788

            call free@PLT
.L_413788:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+144]
            add RAX,16
            cmp RDI,RAX
            je .L_4137a3

            call free@PLT
.L_4137a3:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+112]
            add RAX,16
            cmp RDI,RAX
            je .L_4137ba

            call free@PLT
.L_4137ba:

            lea RSI,QWORD PTR [RIP+.L_4153f7]
            mov RDI,RBX
            call .L_401090

            test EAX,EAX
            je .L_413878
.L_4137d1:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+80]
            add RAX,16
            cmp RDI,RAX
            je .L_4137e9

            call free@PLT
.L_4137e9:

            mov RAX,QWORD PTR [RSP+32]
            mov RDI,QWORD PTR [RSP+48]
            add RAX,16
            cmp RDI,RAX
            je .L_413801

            call free@PLT
.L_413801:

            mov RBP,R12
.L_413804:

            mov RBX,QWORD PTR [RSP+312]
            xor RBX,QWORD PTR FS:[40]
            mov RAX,RBP
            jne .L_4139d0

            add RSP,328
.L_413825:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_413830:

            mov RBX,QWORD PTR [R13+16]
            cmp RBX,QWORD PTR [R13+8]
            mov RBP,R14
            je .L_413804

            lea RBP,QWORD PTR [RBX-64]
            lea RAX,QWORD PTR [RBX-16]
            mov QWORD PTR [R13+16],RBP
            mov RDI,QWORD PTR [RBX-32]
            cmp RDI,RAX
            je .L_413857

            call free@PLT
.L_413857:

            mov RDI,QWORD PTR [RBX-64]
            add RBP,16
            cmp RDI,RBP
            je .L_413870

            call free@PLT

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_413870:

            mov RBP,R14
            jmp .L_413804
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_413878:

            mov RCX,QWORD PTR [RSP+24]
            mov RAX,QWORD PTR [RBP-64]
            mov EDX,15
            mov RBX,QWORD PTR [RBP-56]
            add RCX,16
            cmp RAX,RCX
            lea R13,QWORD PTR [RBX+1]
            je .L_41389b

            mov RDX,QWORD PTR [RBP-48]
.L_41389b:

            cmp R13,RDX
            ja .L_413958
.L_4138a4:

            mov BYTE PTR [RAX+RBX*1],41
            mov RAX,QWORD PTR [RBP-64]
            mov QWORD PTR [RBP-56],R13
            mov BYTE PTR [RAX+RBX*1+1],0
            jmp .L_4137d1
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4138c0:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+256],XMM0
            jmp .L_41366e
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4138d8:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+224],XMM0
            jmp .L_413609
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4138f0:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+192],XMM0
            jmp .L_413586
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_413908:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+160],XMM0
            jmp .L_413522
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_413920:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+96],XMM0
            jmp .L_413415
          .byte 0x90
.L_413930:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+64],XMM0
            jmp .L_413346
          .byte 0x90
.L_413940:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+288],XMM0
            jmp .L_4136f6
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_413958:

            mov RDI,QWORD PTR [RSP+24]
            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,RBX
.L_41396a:

            call .L_401690
.L_41396f:

            mov RAX,QWORD PTR [RBP-64]
            jmp .L_4138a4
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_413980:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
.L_413988:

            call .L_401b90
.L_41398d:

            jmp .L_4133e3
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_413998:

            add RDI,32
            xor EDX,EDX
            xor ESI,ESI
.L_4139a0:

            call .L_401b90
.L_4139a5:

            jmp .L_413314
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4139b0:

            mov RDI,QWORD PTR [RSP+24]
            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,R13
.L_4139c2:

            call .L_401690
.L_4139c7:

            mov RAX,QWORD PTR [RBP-64]
            jmp .L_413483
.L_4139d0:

            call __stack_chk_fail@PLT
.L_4139d5:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
.L_4139dc:

            call _ZSt20__throw_length_errorPKc@PLT
.L_4139e1:

            mov RBX,RAX
.L_4139e4:

            mov RDX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+112]
            add RDX,16
            cmp RDI,RDX
            je .L_4139fb

            call free@PLT
.L_4139fb:

            mov RDX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+80]
            add RDX,16
            cmp RDI,RDX
            je .L_413a13

            call free@PLT
.L_413a13:

            mov RDX,QWORD PTR [RSP+32]
            mov RDI,QWORD PTR [RSP+48]
            add RDX,16
            cmp RDI,RDX
            je .L_413a2b

            call free@PLT
.L_413a2b:

            mov RDI,RBX
.L_413a2e:

            call _Unwind_Resume@PLT
.L_413a33:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
.L_413a3a:

            call _ZSt20__throw_length_errorPKc@PLT
.L_413a3f:

            mov RBX,RAX
.L_413a42:

            mov RDI,QWORD PTR [RSP+240]
            add R15,16
            cmp RDI,R15
            je .L_413a58

            call free@PLT
.L_413a58:

            mov RDI,QWORD PTR [RSP+208]
            add R14,16
            cmp RDI,R14
            je .L_413a6e

            call free@PLT
.L_413a6e:

            mov RDI,QWORD PTR [RSP+176]
            add R13,16
            cmp RDI,R13
            je .L_413a84

            call free@PLT
.L_413a84:

            mov RDX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+144]
            add RDX,16
            cmp RDI,RDX
            je .L_4139e4

            call free@PLT

            jmp .L_4139e4
.L_413aa8:

            lea RDI,QWORD PTR [RIP+.L_414ecb]
.L_413aaf:

            call _ZSt20__throw_length_errorPKc@PLT
.L_413ab4:

            mov RBX,RAX
            jmp .L_413a6e
.L_413ab9:

            mov RBX,RAX
            jmp .L_413a84
.L_413abe:

            mov RBX,RAX
            jmp .L_413a58
.L_413ac3:

            mov RBX,RAX
            jmp .L_413a13
.L_413acb:

            mov RBX,RAX
            mov RAX,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+272]
            add RAX,16
            cmp RDI,RAX
            je .L_413a42

            call free@PLT

            jmp .L_413a42
.L_413af2:

            mov RBX,RAX
            jmp .L_4139fb
.L_413afa:

            nop
            nop
            nop
            nop
            nop
            nop
.L_413b00:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,296
.L_413b14:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+280],RAX
            xor EAX,EAX
            mov RAX,RSI
            sub RAX,RDI
            cmp RAX,3
            jle .L_413f40

            movzx EAX,BYTE PTR [RDI]
            mov R14,RSI
            mov RBP,RDX
            mov RCX,RDI
            mov BYTE PTR [RSP+14],0
            cmp AL,103
            je .L_413f70
.L_413b50:

            cmp AL,110
            jne .L_413f40

            movzx EAX,BYTE PTR [RCX+1]
            cmp AL,97
            mov BYTE PTR [RSP+15],AL
            sete R12B
            cmp AL,119
            sete AL
            or R12B,AL
            je .L_413f40

            lea R15,QWORD PTR [RCX+2]
            xor R13D,R13D
            cmp R14,R15
            jne .L_413bb2

            jmp .L_413f40
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_413b88:

            mov RDX,RBP
            mov RSI,R14
            mov RDI,R15
.L_413b91:

            call .L_40d570

            cmp R15,RAX
            mov R13D,R12D
            mov R15,RAX
            sete SIL
            cmp R14,RAX
            sete DL
            or SIL,DL
            jne .L_413f40
.L_413bb2:

            cmp BYTE PTR [R15],95
            jne .L_413b88

            lea RCX,QWORD PTR [R15+1]
            mov RDX,RBP
            mov RSI,R14
            mov RDI,RCX
            mov QWORD PTR [RSP+16],RCX
            call .L_4073b0
.L_413bcf:

            mov RCX,QWORD PTR [RSP+16]
            mov RDI,RAX
            mov QWORD PTR [RSP+24],RAX
            cmp RCX,RAX
            sete DL
            cmp R14,RAX
            sete AL
            or DL,AL
            mov BYTE PTR [RSP+16],DL
            jne .L_413f40

            mov RDX,R14
            movzx EAX,BYTE PTR [RDI]
            sub RDX,RDI
            cmp RDX,2
            jle .L_413c0b

            cmp AL,112
            je .L_413f88
.L_413c0b:

            cmp AL,69
            jne .L_413f40

            lea RAX,QWORD PTR [RSP+48]
            mov QWORD PTR [RSP+56],0
            mov BYTE PTR [RSP+64],0
            mov QWORD PTR [RSP+32],RAX
            lea RAX,QWORD PTR [RSP+64]
            mov QWORD PTR [RSP+48],RAX
            mov RAX,QWORD PTR [RBP+16]
            cmp QWORD PTR [RBP+8],RAX
            je .L_413f40
.L_413c43:

            lea RSI,QWORD PTR [RAX-64]
            lea R15,QWORD PTR [RSP+80]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R15
            mov QWORD PTR [RSP+40],R15
.L_413c58:

            call .L_4024a0
.L_413c5d:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            lea RAX,QWORD PTR [RSP+112]
            test R13B,R13B
            mov QWORD PTR [RSP+120],0
            mov BYTE PTR [RSP+128],0
            mov R14,RAX
            lea RAX,QWORD PTR [RSP+128]
            mov QWORD PTR [RSP+112],RAX
            je .L_413cf1

            mov RSI,QWORD PTR [RBP+16]
            cmp RSI,QWORD PTR [RBP+8]
            je .L_414157

            lea RBX,QWORD PTR [RSP+208]
            sub RSI,64
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,RBX
.L_413cba:

            call .L_4024a0
.L_413cbf:

            mov RSI,RBX
            mov RDI,R14
            add RBX,16
            call .L_401a50

            mov RDI,QWORD PTR [RSP+208]
            cmp RDI,RBX
            je .L_413ce0

            call free@PLT
.L_413ce0:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050
.L_413cf1:

            lea R12,QWORD PTR [RSP+144]
            cmp BYTE PTR [RSP+14],0
            mov QWORD PTR [RSP+152],0
            mov BYTE PTR [RSP+160],0
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+144],RAX
            jne .L_41406c
.L_413d25:

            cmp BYTE PTR [RSP+15],97
            je .L_414058

            lea RSI,QWORD PTR [RIP+.L_4152d7]
            mov RDI,R12
.L_413d3a:

            call .L_401860
.L_413d3f:

            test R13B,R13B
            je .L_413dc2

            lea RAX,QWORD PTR [RSP+176]
            lea RSI,QWORD PTR [RIP+.L_415458]
            mov RDX,R14
            mov RDI,RAX
            mov R15,RAX
            call .L_401910
.L_413d61:

            lea RBX,QWORD PTR [RSP+208]
            lea RDX,QWORD PTR [RIP+.L_4154ac]
            mov RSI,R15
            mov RDI,RBX
.L_413d76:

            call .L_4028e0
.L_413d7b:

            mov RDX,QWORD PTR [RSP+216]
            mov RSI,QWORD PTR [RSP+208]
            mov RDI,R12
.L_413d8e:

            call .L_4017e0
.L_413d93:

            mov RDI,QWORD PTR [RSP+208]
            add RBX,16
            cmp RDI,RBX
            je .L_413da9

            call free@PLT
.L_413da9:

            mov RDI,QWORD PTR [RSP+176]
            mov RAX,R15
            add RAX,16
            cmp RDI,RAX
            je .L_413dc2

            call free@PLT
.L_413dc2:

            mov RDX,QWORD PTR [RSP+88]
            mov RSI,QWORD PTR [RSP+80]
            mov RDI,R12
.L_413dcf:

            call .L_4017e0
.L_413dd4:

            cmp BYTE PTR [RSP+16],0
            lea RAX,QWORD PTR [RSP+176]
            lea RBX,QWORD PTR [RSP+208]
            mov R15,RAX
            jne .L_4140d9
.L_413df2:

            mov RAX,QWORD PTR [RSP+144]
            lea RDX,QWORD PTR [R12+16]
            lea RDI,QWORD PTR [R15+16]
            cmp RAX,RDX
            je .L_41408a

            mov RSI,QWORD PTR [RSP+160]
            mov QWORD PTR [RSP+144],RDX
            lea RDX,QWORD PTR [RBX+16]
            cmp RAX,RDI
            mov RCX,QWORD PTR [RSP+152]
            mov BYTE PTR [RSP+160],0
            mov QWORD PTR [RSP+152],0
            mov QWORD PTR [RSP+208],RDX
            mov QWORD PTR [RSP+192],RSI
            je .L_4140c3

            mov QWORD PTR [RSP+208],RAX
            mov QWORD PTR [RSP+224],RSI
.L_413e65:

            lea RAX,QWORD PTR [RBX+48]
            mov R13,R15
            mov RSI,RBX
            add R13,16
            mov RDI,RBP
            mov QWORD PTR [RSP+216],RCX
            mov QWORD PTR [RSP+240],RAX
            mov QWORD PTR [RSP+176],R13
            mov QWORD PTR [RSP+184],0
            mov BYTE PTR [RSP+192],0
            mov QWORD PTR [RSP+248],0
            mov BYTE PTR [RSP+256],0
            call .L_401ee0

            mov RDI,RBX
            call .L_401050

            mov RDI,QWORD PTR [RSP+176]
            cmp RDI,R13
            je .L_413ed5

            call free@PLT
.L_413ed5:

            mov RBX,QWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RSP+144]
            add R12,16
            add RBX,1
            cmp RDI,R12
            je .L_413ef4

            call free@PLT
.L_413ef4:

            mov RDI,QWORD PTR [RSP+112]
            mov RAX,R14
            add RAX,16
            cmp RDI,RAX
            je .L_413f0a

            call free@PLT
.L_413f0a:

            mov RAX,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+80]
            add RAX,16
            cmp RDI,RAX
            je .L_413f22
.L_413f1d:

            call free@PLT
.L_413f22:

            mov RAX,QWORD PTR [RSP+32]
            mov RDI,QWORD PTR [RSP+48]
            add RAX,16
            cmp RDI,RAX
            je .L_413f40

            call free@PLT

            nop
            nop
            nop
            nop
            nop
            nop
.L_413f40:

            mov RCX,QWORD PTR [RSP+280]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBX
            jne .L_414171

            add RSP,296
.L_413f61:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_413f70:

            cmp BYTE PTR [RDI+1],115
            jne .L_413f40

            lea RCX,QWORD PTR [RDI+2]
            movzx EAX,BYTE PTR [RDI+2]
            mov BYTE PTR [RSP+14],1
            jmp .L_413b50
.L_413f88:

            cmp BYTE PTR [RDI+1],105
            jne .L_413f40

            add QWORD PTR [RSP+24],2
            jmp .L_413fb9
.L_413f96:

            mov RDX,RBP
            mov RSI,R14
            mov RDI,R15
.L_413f9f:

            call .L_40d570
.L_413fa4:

            cmp R15,RAX
            mov QWORD PTR [RSP+24],RAX
            sete CL
            cmp R14,RAX
            sete DL
            or CL,DL
            jne .L_413f40
.L_413fb9:

            mov R15,QWORD PTR [RSP+24]
            cmp BYTE PTR [R15],69
            jne .L_413f96

            lea R15,QWORD PTR [RSP+48]
            mov QWORD PTR [RSP+56],0
            mov BYTE PTR [RSP+64],0
            lea RAX,QWORD PTR [R15+16]
            mov QWORD PTR [RSP+32],R15
            mov QWORD PTR [RSP+48],RAX
            mov RAX,QWORD PTR [RBP+16]
            cmp RAX,QWORD PTR [RBP+8]
            je .L_413f40

            lea RSI,QWORD PTR [RAX-64]
            lea R14,QWORD PTR [RSP+176]
            lea RDX,QWORD PTR [RSI+32]
            mov RDI,R14
.L_414006:

            call .L_4024a0
.L_41400b:

            mov RDI,R15
            mov RSI,R14
            call .L_401a50

            mov RDI,QWORD PTR [RSP+176]
            mov RAX,R14
            add RAX,16
            cmp RDI,RAX
            je .L_41402f

            call free@PLT
.L_41402f:

            mov RAX,QWORD PTR [RBP+16]
            lea RDI,QWORD PTR [RAX-64]
            mov QWORD PTR [RBP+16],RDI
            call .L_401050

            mov RAX,QWORD PTR [RBP+16]
            cmp RAX,QWORD PTR [RBP+8]
            je .L_413f22

            mov BYTE PTR [RSP+16],R12B
            jmp .L_413c43
.L_414058:

            lea RSI,QWORD PTR [RIP+.L_41541b]
            mov RDI,R12
.L_414062:

            call .L_401860

            jmp .L_413d3f
.L_41406c:

            lea RCX,QWORD PTR [RIP+.L_415187]
            mov R8D,2
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,R12
            call .L_401b90

            jmp .L_413d25
.L_41408a:

            movdqa XMM0,XMMWORD PTR [RSP+160]
            lea RAX,QWORD PTR [RBX+16]
            mov RCX,QWORD PTR [RSP+152]
            mov BYTE PTR [RSP+160],0
            movaps XMMWORD PTR [RSP+192],XMM0
            mov QWORD PTR [RSP+152],0
            mov QWORD PTR [RSP+208],RAX
.L_4140c3:

            movdqa XMM0,XMMWORD PTR [RSP+192]
            movaps XMMWORD PTR [RSP+224],XMM0
            jmp .L_413e65
.L_4140d9:

            mov RDX,QWORD PTR [RSP+32]
            lea RSI,QWORD PTR [RIP+.L_415457]
            mov RDI,RAX
            call .L_401910
.L_4140ed:

            lea RBX,QWORD PTR [RSP+208]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R15
            mov RDI,RBX
.L_414102:

            call .L_4028e0
.L_414107:

            mov RDX,QWORD PTR [RSP+216]
            mov RSI,QWORD PTR [RSP+208]
            mov RDI,R12
.L_41411a:

            call .L_4017e0
.L_41411f:

            mov RDI,QWORD PTR [RSP+208]
            lea RAX,QWORD PTR [RBX+16]
            cmp RDI,RAX
            je .L_414135

            call free@PLT
.L_414135:

            mov RDI,QWORD PTR [RSP+176]
            mov RAX,R15
            add RAX,16
            cmp RDI,RAX
            je .L_413df2

            call free@PLT

            jmp .L_413df2
.L_414157:

            mov RDI,QWORD PTR [RSP+80]
            mov RAX,R15
            add RAX,16
            cmp RDI,RAX
            jne .L_413f1d

            jmp .L_413f22
.L_414171:

            call __stack_chk_fail@PLT
.L_414176:

            mov RBX,RAX
.L_414179:

            mov RDI,QWORD PTR [RSP+176]
            mov RDX,R15
            add RDX,16
            cmp RDI,RDX
            je .L_414192
.L_41418d:

            call free@PLT
.L_414192:

            mov RDI,QWORD PTR [RSP+144]
            add R12,16
            cmp RDI,R12
            je .L_4141a8

            call free@PLT
.L_4141a8:

            mov RDI,QWORD PTR [RSP+112]
            mov RAX,R14
            add RAX,16
            cmp RDI,RAX
            je .L_4141be

            call free@PLT
.L_4141be:

            mov RAX,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+80]
            add RAX,16
            cmp RDI,RAX
            je .L_4141d6

            call free@PLT
.L_4141d6:

            mov RDX,QWORD PTR [RSP+32]
            mov RDI,QWORD PTR [RSP+48]
            add RDX,16
            cmp RDI,RDX
            je .L_4141ee

            call free@PLT
.L_4141ee:

            mov RDI,RBX
.L_4141f1:

            call _Unwind_Resume@PLT
.L_4141f6:

            mov RDI,QWORD PTR [RSP+208]
            add RBX,16
            mov RBP,RAX
            cmp RDI,RBX
            je .L_41420f

            call free@PLT
.L_41420f:

            mov RBX,RBP
            jmp .L_414179
.L_414217:

            mov RBX,RAX
            jmp .L_4141a8
.L_41421c:

            mov RBX,RAX
            jmp .L_414192
.L_414224:

            mov RBX,RAX
            jmp .L_4141d6
.L_414229:

            mov RDI,QWORD PTR [RSP+208]
            add RBX,16
            mov RBP,RAX
            cmp RDI,RBX
            je .L_414242

            call free@PLT
.L_414242:

            mov RBX,RBP
.L_414245:

            mov RDI,QWORD PTR [RSP+176]
            mov RAX,R15
            add RAX,16
            cmp RDI,RAX
            jne .L_41418d

            jmp .L_414192
.L_414262:

            mov RBX,RAX
            jmp .L_414245
.L_414267:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414270:

            push R14
            push R13
            mov R13,RCX
            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDX
            add RSP,-128
.L_414285:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+120],RAX
            xor EAX,EAX
            cmp BYTE PTR [RDI],95
            jne .L_414370

            mov RAX,RSI
            sub RAX,RDI
            cmp RAX,3
            jg .L_4142d8
.L_4142aa:

            mov DWORD PTR [R13],4294967294
.L_4142b2:

            mov RAX,QWORD PTR [RSP+120]
            xor RAX,QWORD PTR FS:[40]
            jne .L_4144c9

            sub RSP,-128
.L_4142ca:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4142d8:

            movzx EAX,BYTE PTR [RDI+1]
            cmp AL,90
            je .L_4143a0

            cmp AL,95
            jne .L_4142aa

            movzx R14D,BYTE PTR [RDI+2]
            cmp R14B,95
            jne .L_4142aa

            cmp BYTE PTR [RDI+3],90
            jne .L_4142aa

            lea RBX,QWORD PTR [RDI+4]
            mov RDI,RBX
.L_414300:

            call .L_404bc0

            cmp RBX,RAX
            je .L_4142aa

            cmp R12,RAX
            je .L_4142aa

            mov RDX,R12
            sub RDX,RAX
            cmp RDX,12
            jle .L_4142aa

            mov EDX,101
            movabs RBX,7592905571585253983
            mov DWORD PTR [RSP+114],1802466926
            mov WORD PTR [RSP+118],DX
            mov QWORD PTR [RSP+106],RBX
            lea RDX,QWORD PTR [RSP+107]
            lea RSI,QWORD PTR [RSP+119]
            jmp .L_414360
.L_414348:

            cmp RDX,RSI
            lea RCX,QWORD PTR [RAX+1]
            je .L_41447e

            movzx R14D,BYTE PTR [RDX]
            mov RAX,RCX
            add RDX,1
.L_414360:

            cmp BYTE PTR [RAX],R14B
            je .L_414348

            jmp .L_4142aa
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_414370:

            call .L_4073b0

            cmp R12,RAX
            jne .L_4142aa
.L_41437e:

            mov EAX,DWORD PTR [R13]
            test EAX,EAX
            jne .L_4142b2

            mov RAX,QWORD PTR [RBP+8]
            cmp QWORD PTR [RBP+16],RAX
            jne .L_4142b2

            jmp .L_4142aa

            nop
            nop
            nop
.L_4143a0:

            lea RBX,QWORD PTR [RDI+2]
            mov RDI,RBX
            call .L_404bc0

            cmp RBX,RAX
            je .L_414470

            cmp R12,RAX
            je .L_41437e

            cmp BYTE PTR [RAX],46
            jne .L_4142aa

            mov RBX,QWORD PTR [RBP+8]
            cmp QWORD PTR [RBP+16],RBX
            je .L_4142aa

            mov RBX,RSP
            mov RSI,RAX
            lea RDX,QWORD PTR [RBX+16]
            mov RDI,RBX
            mov QWORD PTR [RSP],RDX
            mov RDX,R12
            lea R12,QWORD PTR [RSP+32]
            call .L_401470
.L_4143ef:

            lea RSI,QWORD PTR [RIP+.L_415457]
            mov RDX,RBX
            mov RDI,R12
.L_4143fc:

            call .L_402420
.L_414401:

            lea R14,QWORD PTR [RSP+64]
            lea RDX,QWORD PTR [RIP+.L_415221]
            mov RSI,R12
            mov RDI,R14
.L_414413:

            call .L_4028e0
.L_414418:

            mov RAX,QWORD PTR [RBP+16]
            mov RDX,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RSP+64]
            lea RDI,QWORD PTR [RAX-64]
.L_41442a:

            call .L_4017e0
.L_41442f:

            mov RDI,QWORD PTR [RSP+64]
            add R14,16
            cmp RDI,R14
            je .L_414442

            call free@PLT
.L_414442:

            mov RDI,QWORD PTR [RSP+32]
            add R12,16
            cmp RDI,R12
            je .L_414455

            call free@PLT
.L_414455:

            mov RDI,QWORD PTR [RSP]
            add RBX,16
            cmp RDI,RBX
            je .L_41437e

            call free@PLT

            jmp .L_41437e
.L_414470:

            cmp R12,RBX
            jne .L_4142aa

            jmp .L_41437e
.L_41447e:

            cmp R12,RCX
            je .L_4144f4

            cmp BYTE PTR [RCX],95
            jne .L_414499

            jmp .L_4144ce
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_414490:

            add RCX,1
            cmp R12,RCX
            je .L_4144f4
.L_414499:

            movsx EAX,BYTE PTR [RCX]
            sub EAX,48
            cmp EAX,9
            jbe .L_414490

            mov RAX,QWORD PTR [RBP+16]
            cmp QWORD PTR [RBP+8],RAX
            je .L_4142aa

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_415608]
            xor ESI,ESI
.L_4144bf:

            call .L_401e90

            jmp .L_4142aa
.L_4144c9:

            call __stack_chk_fail@PLT
.L_4144ce:

            lea RDX,QWORD PTR [RAX+2]
            cmp R12,RDX
            je .L_4142aa

            movsx EDX,BYTE PTR [RCX+1]
            sub EDX,48
            cmp EDX,9
            ja .L_4142aa

            lea RCX,QWORD PTR [RAX+3]
            cmp R12,RCX
            jne .L_414499
.L_4144f4:

            mov RAX,QWORD PTR [RBP+16]
            cmp QWORD PTR [RBP+8],RAX
            je .L_4142aa

            lea RDI,QWORD PTR [RAX-64]
            lea RDX,QWORD PTR [RIP+.L_415608]
            xor ESI,ESI
            call .L_401e90

            jmp .L_41437e
.L_414519:

            mov RBP,RAX
.L_41451c:

            mov RDI,QWORD PTR [RSP]
            add RBX,16
            cmp RDI,RBX
            je .L_41452e

            call free@PLT
.L_41452e:

            mov RDI,RBP
            call _Unwind_Resume@PLT
.L_414536:

            mov RDI,QWORD PTR [RSP+64]
            add R14,16
            mov RBP,RAX
            cmp RDI,R14
            je .L_41454c

            call free@PLT
.L_41454c:

            mov RDI,QWORD PTR [RSP+32]
            add R12,16
            cmp RDI,R12
            je .L_41451c

            call free@PLT

            jmp .L_41451c
.L_414561:

            mov RBP,RAX
            jmp .L_41454c
.L_414566:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
#-----------------------------------
.align 16
.globl __cxa_demangle
.type __cxa_demangle, @function
#-----------------------------------
__cxa_demangle:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,4328
.L_414581:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+4312],RAX
            xor EAX,EAX
            test RDI,RDI
            mov QWORD PTR [RSP+24],RSI
            mov QWORD PTR [RSP+32],RDX
            mov QWORD PTR [RSP+16],RCX
            je .L_4145b5

            test RSI,RSI
            mov R13,RDI
            je .L_4145fc

            test RDX,RDX
            jne .L_4145fc
.L_4145b5:

            mov RAX,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+8],0
            test RAX,RAX
            je .L_4145ce

            mov DWORD PTR [RAX],4294967293
.L_4145ce:

            mov RCX,QWORD PTR [RSP+4312]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,QWORD PTR [RSP+8]
            jne .L_414e0a

            add RSP,4328
.L_4145f1:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_4145fc:

            cmp QWORD PTR [RSP+24],0
            mov QWORD PTR [RSP+40],0
            je .L_41461a

            mov RAX,QWORD PTR [RSP+32]
            mov RAX,QWORD PTR [RAX]
            mov QWORD PTR [RSP+40],RAX
.L_41461a:

            lea R12,QWORD PTR [RSP+192]
            xor ESI,ESI
            xor EDI,EDI
            mov QWORD PTR [RSP+88],0
            mov QWORD PTR [RSP+96],0
            lea RAX,QWORD PTR [R12+32]
            mov RDX,R12
            mov QWORD PTR [RSP+80],R12
            mov QWORD PTR [RSP+104],0
            mov QWORD PTR [RSP+112],R12
            mov QWORD PTR [RSP+120],0
            mov QWORD PTR [RSP+128],0
            mov QWORD PTR [RSP+136],0
            mov QWORD PTR [RSP+144],R12
            mov QWORD PTR [RSP+152],0
            mov QWORD PTR [RSP+160],0
            mov QWORD PTR [RSP+168],0
            mov QWORD PTR [RSP+176],0
            mov DWORD PTR [RSP+184],0
            mov BYTE PTR [RSP+188],0
            mov BYTE PTR [RSP+189],1
            mov BYTE PTR [RSP+190],0
            mov BYTE PTR [RSP+191],1
            mov QWORD PTR [RSP+4288],RAX
            mov QWORD PTR [RSP+192],R12
            mov QWORD PTR [RSP+200],0
            mov QWORD PTR [RSP+208],0
            mov QWORD PTR [RSP+216],0
            call .L_4012f0

            mov RSI,QWORD PTR [RSP+160]
            lea RDX,QWORD PTR [RAX+32]
            xor EDI,EDI
            call .L_4012f0

            mov R14,QWORD PTR [RSP+152]
            mov QWORD PTR [RSP+48],RAX
            mov RAX,QWORD PTR [RSP+160]
            cmp RAX,R14
            mov QWORD PTR [RSP+56],RAX
            je .L_4147f4
.L_414746:

            mov RAX,QWORD PTR [R14+16]
            mov RBX,QWORD PTR [R14+8]
            cmp RAX,RBX
            mov QWORD PTR [RSP+8],RAX
            je .L_4147c6

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414760:

            mov RBP,QWORD PTR [RBX+16]
            mov R15,QWORD PTR [RBX+8]
            cmp RBP,R15
            je .L_4147a0

            nop
            nop
            nop
.L_414770:

            mov RDI,QWORD PTR [R15+32]
            lea RAX,QWORD PTR [R15+48]
            cmp RDI,RAX
            je .L_414782

            call free@PLT
.L_414782:

            mov RDI,QWORD PTR [R15]
            lea RAX,QWORD PTR [R15+16]
            cmp RDI,RAX
            je .L_414793

            call free@PLT
.L_414793:

            add R15,64
            cmp RBP,R15
            jne .L_414770

            mov R15,QWORD PTR [RBX+8]
.L_4147a0:

            test R15,R15
            je .L_4147b7

            mov RDX,QWORD PTR [RBX+24]
            mov RDI,QWORD PTR [RBX]
            mov RSI,R15
            sub RDX,R15
            call .L_4012a0
.L_4147b7:

            add RBX,32
            cmp QWORD PTR [RSP+8],RBX
            jne .L_414760

            mov RBX,QWORD PTR [R14+8]
.L_4147c6:

            test RBX,RBX
            je .L_4147dd

            mov RDX,QWORD PTR [R14+24]
            mov RDI,QWORD PTR [R14]
            mov RSI,RBX
            sub RDX,RBX
            call .L_4012a0
.L_4147dd:

            add R14,32
            cmp QWORD PTR [RSP+56],R14
            jne .L_414746

            mov R14,QWORD PTR [RSP+152]
.L_4147f4:

            test R14,R14
            je .L_414814

            mov RDX,QWORD PTR [RSP+168]
            mov RDI,QWORD PTR [RSP+144]
            mov RSI,R14
            sub RDX,R14
            call .L_4012a0
.L_414814:

            mov RAX,QWORD PTR [RSP+48]
            mov QWORD PTR [RSP+152],R12
            mov RDI,R13
            add R12,32
            mov DWORD PTR [RSP+76],0
            mov QWORD PTR [RSP+168],R12
            mov QWORD PTR [RSP+160],RAX
            call strlen@PLT

            lea R12,QWORD PTR [R13+RAX*1]
            cmp R12,R13
            ja .L_414a54
.L_414853:

            mov DWORD PTR [RSP+76],4294967294
.L_41485b:

            mov QWORD PTR [RSP+8],0
.L_414864:

            mov RCX,QWORD PTR [RSP+16]
            test RCX,RCX
            je .L_414874

            mov EAX,DWORD PTR [RSP+76]
            mov DWORD PTR [RCX],EAX
.L_414874:

            mov R15,QWORD PTR [RSP+160]
            mov R12,QWORD PTR [RSP+152]
            cmp R15,R12
            je .L_414933

            nop
            nop
            nop
.L_414890:

            mov R13,QWORD PTR [R12+16]
            mov RBX,QWORD PTR [R12+8]
            cmp R13,RBX
            je .L_414905

            nop
.L_4148a0:

            mov RBP,QWORD PTR [RBX+16]
            mov R14,QWORD PTR [RBX+8]
            cmp RBP,R14
            je .L_4148e0

            nop
            nop
            nop
.L_4148b0:

            mov RDI,QWORD PTR [R14+32]
            lea RAX,QWORD PTR [R14+48]
            cmp RDI,RAX
            je .L_4148c2

            call free@PLT
.L_4148c2:

            mov RDI,QWORD PTR [R14]
            lea RAX,QWORD PTR [R14+16]
            cmp RDI,RAX
            je .L_4148d3

            call free@PLT
.L_4148d3:

            add R14,64
            cmp RBP,R14
            jne .L_4148b0

            mov R14,QWORD PTR [RBX+8]
.L_4148e0:

            test R14,R14
            je .L_4148f7

            mov RDX,QWORD PTR [RBX+24]
            mov RDI,QWORD PTR [RBX]
            mov RSI,R14
            sub RDX,R14
            call .L_4012a0
.L_4148f7:

            add RBX,32
            cmp R13,RBX
            jne .L_4148a0

            mov RBX,QWORD PTR [R12+8]
.L_414905:

            test RBX,RBX
            je .L_41491e

            mov RDX,QWORD PTR [R12+24]
            mov RDI,QWORD PTR [R12]
            mov RSI,RBX
            sub RDX,RBX
            call .L_4012a0
.L_41491e:

            add R12,32
            cmp R15,R12
            jne .L_414890

            mov R12,QWORD PTR [RSP+152]
.L_414933:

            test R12,R12
            je .L_414953

            mov RDX,QWORD PTR [RSP+168]
            mov RDI,QWORD PTR [RSP+144]
            mov RSI,R12
            sub RDX,R12
            call .L_4012a0
.L_414953:

            mov R13,QWORD PTR [RSP+128]
            mov RBP,QWORD PTR [RSP+120]
            cmp R13,RBP
            je .L_4149ce

            nop
            nop
            nop
.L_414968:

            mov R12,QWORD PTR [RBP+16]
            mov RBX,QWORD PTR [RBP+8]
            cmp R12,RBX
            je .L_4149a8

            nop
            nop
            nop
.L_414978:

            mov RDI,QWORD PTR [RBX+32]
            lea RAX,QWORD PTR [RBX+48]
            cmp RDI,RAX
            je .L_41498a

            call free@PLT
.L_41498a:

            mov RDI,QWORD PTR [RBX]
            lea RAX,QWORD PTR [RBX+16]
            cmp RDI,RAX
            je .L_41499b

            call free@PLT
.L_41499b:

            add RBX,64
            cmp R12,RBX
            jne .L_414978

            mov RBX,QWORD PTR [RBP+8]
.L_4149a8:

            test RBX,RBX
            je .L_4149c0

            mov RDX,QWORD PTR [RBP+24]
            mov RDI,QWORD PTR [RBP]
            mov RSI,RBX
            sub RDX,RBX
            call .L_4012a0
.L_4149c0:

            add RBP,32
            cmp R13,RBP
            jne .L_414968

            mov RBP,QWORD PTR [RSP+120]
.L_4149ce:

            test RBP,RBP
            je .L_4149eb

            mov RDX,QWORD PTR [RSP+136]
            mov RDI,QWORD PTR [RSP+112]
            mov RSI,RBP
            sub RDX,RBP
            call .L_4012a0
.L_4149eb:

            mov RBP,QWORD PTR [RSP+96]
            mov RBX,QWORD PTR [RSP+88]
            cmp RBP,RBX
            je .L_414a31

            nop
            nop
            nop
            nop
            nop
            nop
.L_414a00:

            mov RDI,QWORD PTR [RBX+32]
            lea RAX,QWORD PTR [RBX+48]
            cmp RDI,RAX
            je .L_414a12

            call free@PLT
.L_414a12:

            mov RDI,QWORD PTR [RBX]
            lea RAX,QWORD PTR [RBX+16]
            cmp RDI,RAX
            je .L_414a23

            call free@PLT
.L_414a23:

            add RBX,64
            cmp RBP,RBX
            jne .L_414a00

            mov RBX,QWORD PTR [RSP+88]
.L_414a31:

            test RBX,RBX
            je .L_4145ce

            mov RDX,QWORD PTR [RSP+104]
            mov RDI,QWORD PTR [RSP+80]
            mov RSI,RBX
            sub RDX,RBX
            call .L_4012a0

            jmp .L_4145ce
.L_414a54:

            lea RAX,QWORD PTR [RSP+80]
            lea RCX,QWORD PTR [RSP+76]
            mov RSI,R12
            mov RDI,R13
            mov RDX,RAX
            mov QWORD PTR [RSP+48],RCX
            mov QWORD PTR [RSP+56],RAX
.L_414a71:

            call .L_414270

            mov EDX,DWORD PTR [RSP+76]
            test EDX,EDX
            jne .L_41485b

            cmp BYTE PTR [RSP+190],0
            mov R14,QWORD PTR [RSP+96]
            je .L_414bc2

            mov RAX,QWORD PTR [RSP+152]
            cmp RAX,QWORD PTR [RSP+160]
            je .L_414bc2

            mov RCX,QWORD PTR [RAX+16]
            cmp QWORD PTR [RAX+8],RCX
            je .L_414bc2

            mov RBX,QWORD PTR [RSP+88]
            mov BYTE PTR [RSP+190],0
            mov BYTE PTR [RSP+189],0
            cmp RBX,R14
            je .L_414b03

            mov RBP,RBX
.L_414ad6:

            mov RDI,QWORD PTR [RBP+32]
            lea RAX,QWORD PTR [RBP+48]
            cmp RDI,RAX
            je .L_414ae8

            call free@PLT
.L_414ae8:

            mov RDI,QWORD PTR [RBP]
            lea RAX,QWORD PTR [RBP+16]
            cmp RDI,RAX
            je .L_414afa

            call free@PLT
.L_414afa:

            add RBP,64
            cmp RBP,R14
            jne .L_414ad6
.L_414b03:

            mov RAX,QWORD PTR [RSP+120]
            mov R15,QWORD PTR [RSP+128]
            mov QWORD PTR [RSP+96],RBX
            cmp RAX,R15
            mov QWORD PTR [RSP+8],RAX
            je .L_414b81

            mov RBP,RAX
.L_414b22:

            mov RBX,QWORD PTR [RBP+16]
            mov R14,QWORD PTR [RBP+8]
            cmp RBX,R14
            je .L_414b60

            nop
.L_414b30:

            mov RDI,QWORD PTR [R14+32]
            lea RAX,QWORD PTR [R14+48]
            cmp RDI,RAX
            je .L_414b42

            call free@PLT
.L_414b42:

            mov RDI,QWORD PTR [R14]
            lea RAX,QWORD PTR [R14+16]
            cmp RDI,RAX
            je .L_414b53

            call free@PLT
.L_414b53:

            add R14,64
            cmp RBX,R14
            jne .L_414b30

            mov R14,QWORD PTR [RBP+8]
.L_414b60:

            test R14,R14
            je .L_414b78

            mov RDX,QWORD PTR [RBP+24]
            mov RDI,QWORD PTR [RBP]
            mov RSI,R14
            sub RDX,R14
            call .L_4012a0
.L_414b78:

            add RBP,32
            cmp R15,RBP
            jne .L_414b22
.L_414b81:

            mov RAX,QWORD PTR [RSP+8]
            mov RCX,QWORD PTR [RSP+48]
            mov RSI,R12
            mov RDX,QWORD PTR [RSP+56]
            mov RDI,R13
            mov QWORD PTR [RSP+128],RAX
            call .L_414270

            cmp BYTE PTR [RSP+190],0
            jne .L_414853

            mov EAX,DWORD PTR [RSP+76]
            test EAX,EAX
            jne .L_41485b

            mov R14,QWORD PTR [RSP+96]
.L_414bc2:

            mov RDX,QWORD PTR [R14-24]
            mov RBX,QWORD PTR [R14-56]
            add RBX,RDX
            lea RBP,QWORD PTR [RBX+1]
            cmp QWORD PTR [RSP+40],RBP
            jb .L_414c19

            cmp QWORD PTR [RSP+24],0
            je .L_41485b
.L_414be4:

            mov RSI,QWORD PTR [R14-32]
            lea RDI,QWORD PTR [R14-64]
            call .L_4017e0
.L_414bf1:

            mov RAX,QWORD PTR [RSP+96]
            mov R15,QWORD PTR [RSP+24]
            mov RDX,RBX
            mov RSI,QWORD PTR [RAX-64]
            mov RDI,R15
            call memcpy@PLT

            mov BYTE PTR [R15+RBX*1],0
            mov QWORD PTR [RSP+8],R15
            jmp .L_414864
.L_414c19:

            mov RDI,QWORD PTR [RSP+24]
            mov RSI,RBP
            call realloc@PLT

            test RAX,RAX
            mov QWORD PTR [RSP+24],RAX
            je .L_414c46

            cmp QWORD PTR [RSP+32],0
            je .L_414c40

            mov RAX,QWORD PTR [RSP+32]
            mov QWORD PTR [RAX],RBP
.L_414c40:

            mov RDX,QWORD PTR [R14-24]
            jmp .L_414be4
.L_414c46:

            mov DWORD PTR [RSP+76],4294967295
            mov QWORD PTR [RSP+8],0
            jmp .L_414864
.L_414c5c:

            mov R13,QWORD PTR [RSP+160]
            mov RBX,QWORD PTR [RSP+152]
            mov QWORD PTR [RSP+8],RAX
.L_414c71:

            cmp R13,RBX
            je .L_414d01

            mov R14,QWORD PTR [RBX+16]
            mov RBP,QWORD PTR [RBX+8]
.L_414c82:

            cmp R14,RBP
            je .L_414ce0

            mov R15,QWORD PTR [RBP+16]
            mov R12,QWORD PTR [RBP+8]
.L_414c8f:

            cmp R15,R12
            je .L_414cc1

            mov RDI,QWORD PTR [R12+32]
            lea RDX,QWORD PTR [R12+48]
            cmp RDI,RDX
            je .L_414ca8

            call free@PLT
.L_414ca8:

            mov RDI,QWORD PTR [R12]
            lea RDX,QWORD PTR [R12+16]
            cmp RDI,RDX
            je .L_414cbb

            call free@PLT
.L_414cbb:

            add R12,64
            jmp .L_414c8f
.L_414cc1:

            mov RSI,QWORD PTR [RBP+8]
            mov RDX,QWORD PTR [RBP+24]
            sub RDX,RSI
            test RSI,RSI
            je .L_414cda

            mov RDI,QWORD PTR [RBP]
            call .L_4012a0
.L_414cda:

            add RBP,32
            jmp .L_414c82
.L_414ce0:

            mov RSI,QWORD PTR [RBX+8]
            mov RDX,QWORD PTR [RBX+24]
            sub RDX,RSI
            test RSI,RSI
            je .L_414cf8

            mov RDI,QWORD PTR [RBX]
            call .L_4012a0
.L_414cf8:

            add RBX,32
            jmp .L_414c71
.L_414d01:

            mov RSI,QWORD PTR [RSP+152]
            mov RDX,QWORD PTR [RSP+168]
            sub RDX,RSI
            test RSI,RSI
            je .L_414d26

            mov RDI,QWORD PTR [RSP+144]
            call .L_4012a0
.L_414d26:

            mov R13,QWORD PTR [RSP+128]
            mov RBX,QWORD PTR [RSP+120]
.L_414d33:

            cmp R13,RBX
            je .L_414d8d

            mov R14,QWORD PTR [RBX+16]
            mov RBP,QWORD PTR [RBX+8]
.L_414d40:

            cmp R14,RBP
            je .L_414d6f

            mov RDI,QWORD PTR [RBP+32]
            lea RAX,QWORD PTR [RBP+48]
            cmp RDI,RAX
            je .L_414d57

            call free@PLT
.L_414d57:

            mov RDI,QWORD PTR [RBP]
            lea RAX,QWORD PTR [RBP+16]
            cmp RDI,RAX
            je .L_414d69

            call free@PLT
.L_414d69:

            add RBP,64
            jmp .L_414d40
.L_414d6f:

            mov RSI,QWORD PTR [RBX+8]
            mov RDX,QWORD PTR [RBX+24]
            sub RDX,RSI
            test RSI,RSI
            je .L_414d87

            mov RDI,QWORD PTR [RBX]
            call .L_4012a0
.L_414d87:

            add RBX,32
            jmp .L_414d33
.L_414d8d:

            mov RSI,QWORD PTR [RSP+120]
            mov RDX,QWORD PTR [RSP+136]
            sub RDX,RSI
            test RSI,RSI
            je .L_414dac

            mov RDI,QWORD PTR [RSP+112]
            call .L_4012a0
.L_414dac:

            mov RBP,QWORD PTR [RSP+96]
            mov RBX,QWORD PTR [RSP+88]
.L_414db6:

            cmp RBP,RBX
            je .L_414de4

            mov RDI,QWORD PTR [RBX+32]
            lea RAX,QWORD PTR [RBX+48]
            cmp RDI,RAX
            je .L_414dcd

            call free@PLT
.L_414dcd:

            mov RDI,QWORD PTR [RBX]
            lea RAX,QWORD PTR [RBX+16]
            cmp RDI,RAX
            je .L_414dde

            call free@PLT
.L_414dde:

            add RBX,64
            jmp .L_414db6
.L_414de4:

            mov RSI,QWORD PTR [RSP+88]
            mov RDX,QWORD PTR [RSP+104]
            sub RDX,RSI
            test RSI,RSI
            je .L_414e00

            mov RDI,QWORD PTR [RSP+80]
            call .L_4012a0
.L_414e00:

            mov RDI,QWORD PTR [RSP+8]
.L_414e05:

            call _Unwind_Resume@PLT
.L_414e0a:

            call __stack_chk_fail@PLT
.L_414e0f:

            nop
.L_414e10:

            push R15
            push R14
            mov R15,RDX
            push R13
            push R12
            lea R12,QWORD PTR [RIP+.L_618df0]
            push RBP
            lea RBP,QWORD PTR [RIP+.L_618df8]
            push RBX
            mov R13D,EDI
            mov R14,RSI
            sub RBP,R12
            sub RSP,8
            sar RBP,3
            call 4197312

            test RBP,RBP
            je .L_414e66

            xor EBX,EBX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414e50:

            mov RDX,R15
            mov RSI,R14
            mov EDI,R13D
            call QWORD PTR [R12+RBX*8]

            add RBX,1
            cmp RBP,RBX
            jne .L_414e50
.L_414e66:

            add RSP,8
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_414e75:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414e80:

            ret 
.L_414e82:
#===================================
# end section .text
#===================================

#===================================
.section .rodata ,"a",@progbits
.align 16
#===================================

          .byte 0x1
          .byte 0x0
          .byte 0x2
          .byte 0x0
.L_414e94:
          .string "rb"
.L_414e97:
          .byte 0x6d
          .byte 0x61
          .byte 0x6c
          .byte 0x6c
          .byte 0x6f
          .byte 0x63
          .byte 0x20
          .byte 0x65
          .byte 0x72
          .byte 0x72
          .byte 0x6f
          .byte 0x72
          .byte 0x21
          .byte 0xa
.L_414ea5:
          .zero 1
.L_414ea6:
          .string "read error!\n"
.L_414eb3:
          .string "basic_string::_M_create"
.L_414ecb:
          .string "basic_string::append"
.L_414ee0:
          .string "basic_string::_M_replace"
.L_414ef9:
          .string "basic_string::replace"
.L_414f0f:
          .byte 0x73
          .byte 0x74
          .byte 0x64
          .byte 0x3a
          .byte 0x3a
          .byte 0x73
          .byte 0x74
          .byte 0x72
          .byte 0x69
          .byte 0x6e
          .byte 0x67
.L_414f1a:
          .zero 1
.L_414f1b:
          .byte 0x73
          .byte 0x74
          .byte 0x64
          .byte 0x3a
          .byte 0x3a
          .byte 0x69
          .byte 0x73
          .byte 0x74
          .byte 0x72
          .byte 0x65
          .byte 0x61
          .byte 0x6d
.L_414f27:
          .byte 0x0
          .byte 0x62
          .byte 0x61
          .byte 0x73
          .byte 0x69
          .byte 0x63
          .byte 0x5f
          .byte 0x69
          .byte 0x73
          .byte 0x74
          .byte 0x72
          .byte 0x65
          .byte 0x61
          .byte 0x6d
.L_414f35:
          .zero 1
.L_414f36:
          .byte 0x73
          .byte 0x74
          .byte 0x64
          .byte 0x3a
          .byte 0x3a
          .byte 0x6f
          .byte 0x73
          .byte 0x74
          .byte 0x72
          .byte 0x65
          .byte 0x61
          .byte 0x6d
.L_414f42:
          .byte 0x0
          .byte 0x62
          .byte 0x61
          .byte 0x73
          .byte 0x69
          .byte 0x63
          .byte 0x5f
          .byte 0x6f
          .byte 0x73
          .byte 0x74
          .byte 0x72
          .byte 0x65
          .byte 0x61
          .byte 0x6d
.L_414f50:
          .zero 1
.L_414f51:
          .byte 0x73
          .byte 0x74
          .byte 0x64
          .byte 0x3a
          .byte 0x3a
          .byte 0x69
          .byte 0x6f
          .byte 0x73
          .byte 0x74
          .byte 0x72
          .byte 0x65
          .byte 0x61
          .byte 0x6d
.L_414f5e:
          .byte 0x0
          .byte 0x62
          .byte 0x61
          .byte 0x73
          .byte 0x69
          .byte 0x63
          .byte 0x5f
          .byte 0x69
          .byte 0x6f
          .byte 0x73
          .byte 0x74
          .byte 0x72
          .byte 0x65
          .byte 0x61
          .byte 0x6d
.L_414f6d:
          .zero 1
.L_414f6e:
          .string "_GLOBAL__N"
          .byte 0x28
          .byte 0x61
          .byte 0x6e
          .byte 0x6f
          .byte 0x6e
          .byte 0x79
          .byte 0x6d
          .byte 0x6f
          .byte 0x75
          .byte 0x73
          .byte 0x20
          .byte 0x6e
          .byte 0x61
          .byte 0x6d
          .byte 0x65
          .byte 0x73
          .byte 0x70
          .byte 0x61
          .byte 0x63
          .byte 0x65
          .byte 0x29
.L_414f8e:
          .byte 0x0
          .byte 0x73
          .byte 0x74
          .byte 0x64
          .byte 0x3a
          .byte 0x3a
          .byte 0x61
          .byte 0x6c
          .byte 0x6c
          .byte 0x6f
          .byte 0x63
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_414f9d:
          .byte 0x0
          .byte 0x73
          .byte 0x74
          .byte 0x64
          .byte 0x3a
          .byte 0x3a
          .byte 0x62
          .byte 0x61
          .byte 0x73
          .byte 0x69
          .byte 0x63
          .byte 0x5f
          .byte 0x73
          .byte 0x74
          .byte 0x72
          .byte 0x69
          .byte 0x6e
          .byte 0x67
.L_414faf:
          .zero 1
.L_414fb0:
          .string "fp"
          .byte 0x76
          .byte 0x6f
.L_414fb5:
          .byte 0x69
          .byte 0x64
.L_414fb7:
          .zero 1
.L_414fb8:
          .byte 0x77
          .byte 0x63
          .byte 0x68
          .byte 0x61
          .byte 0x72
          .byte 0x5f
          .byte 0x74
.L_414fbf:
          .byte 0x0
          .byte 0x62
          .byte 0x6f
          .byte 0x6f
          .byte 0x6c
.L_414fc4:
          .zero 1
.L_414fc5:
          .byte 0x75
          .byte 0x6e
.L_414fc7:
          .byte 0x73
          .byte 0x69
          .byte 0x67
          .byte 0x6e
          .byte 0x65
          .byte 0x64
          .byte 0x20
.L_414fce:
          .byte 0x63
          .byte 0x68
          .byte 0x61
          .byte 0x72
.L_414fd2:
          .zero 1
.L_414fd3:
          .byte 0x75
          .byte 0x6e
          .byte 0x73
          .byte 0x69
          .byte 0x67
          .byte 0x6e
          .byte 0x65
          .byte 0x64
          .byte 0x20
.L_414fdc:
          .byte 0x73
          .byte 0x68
          .byte 0x6f
          .byte 0x72
          .byte 0x74
.L_414fe1:
          .byte 0x0
          .byte 0x75
          .byte 0x6e
          .byte 0x73
          .byte 0x69
          .byte 0x67
          .byte 0x6e
          .byte 0x65
          .byte 0x64
          .byte 0x20
          .byte 0x69
          .byte 0x6e
          .byte 0x74
.L_414fee:
          .byte 0x0
          .byte 0x75
          .byte 0x6e
          .byte 0x73
          .byte 0x69
          .byte 0x67
          .byte 0x6e
          .byte 0x65
          .byte 0x64
          .byte 0x20
          .byte 0x6c
          .byte 0x6f
          .byte 0x6e
          .byte 0x67
.L_414ffc:
          .byte 0x0
          .byte 0x75
          .byte 0x6e
          .byte 0x73
          .byte 0x69
          .byte 0x67
          .byte 0x6e
          .byte 0x65
          .byte 0x64
          .byte 0x20
          .byte 0x6c
          .byte 0x6f
          .byte 0x6e
          .byte 0x67
          .byte 0x20
          .byte 0x6c
          .byte 0x6f
          .byte 0x6e
          .byte 0x67
.L_41500f:
          .zero 1
.L_415010:
          .byte 0x75
          .byte 0x6e
          .byte 0x73
          .byte 0x69
          .byte 0x67
          .byte 0x6e
          .byte 0x65
          .byte 0x64
          .byte 0x20
.L_415019:
          .byte 0x5f
          .byte 0x5f
          .byte 0x69
          .byte 0x6e
          .byte 0x74
          .byte 0x31
          .byte 0x32
          .byte 0x38
.L_415021:
          .byte 0x0
          .byte 0x66
          .byte 0x6c
          .byte 0x6f
          .byte 0x61
          .byte 0x74
.L_415027:
          .byte 0x0
          .byte 0x6c
          .byte 0x6f
          .byte 0x6e
          .byte 0x67
          .byte 0x20
          .byte 0x64
          .byte 0x6f
          .byte 0x75
          .byte 0x62
          .byte 0x6c
          .byte 0x65
.L_415033:
          .byte 0x0
          .byte 0x5f
          .byte 0x5f
          .byte 0x66
          .byte 0x6c
          .byte 0x6f
          .byte 0x61
          .byte 0x74
          .byte 0x31
          .byte 0x32
          .byte 0x38
.L_41503e:
          .byte 0x0
          .byte 0x2e
          .byte 0x2e
.L_415041:
          .byte 0x2e
.L_415042:
          .byte 0x0
          .byte 0x64
          .byte 0x65
          .byte 0x63
          .byte 0x69
          .byte 0x6d
          .byte 0x61
          .byte 0x6c
          .byte 0x36
          .byte 0x34
.L_41504c:
          .byte 0x0
          .byte 0x64
          .byte 0x65
          .byte 0x63
          .byte 0x69
          .byte 0x6d
          .byte 0x61
          .byte 0x6c
          .byte 0x31
          .byte 0x32
          .byte 0x38
.L_415057:
          .byte 0x0
          .byte 0x64
          .byte 0x65
          .byte 0x63
          .byte 0x69
          .byte 0x6d
          .byte 0x61
          .byte 0x6c
          .byte 0x33
          .byte 0x32
.L_415061:
          .byte 0x0
          .byte 0x64
          .byte 0x65
          .byte 0x63
          .byte 0x69
          .byte 0x6d
          .byte 0x61
          .byte 0x6c
          .byte 0x31
          .byte 0x36
.L_41506b:
          .byte 0x0
          .byte 0x63
          .byte 0x68
          .byte 0x61
          .byte 0x72
          .byte 0x33
          .byte 0x32
          .byte 0x5f
          .byte 0x74
.L_415074:
          .byte 0x0
          .byte 0x63
          .byte 0x68
          .byte 0x61
          .byte 0x72
          .byte 0x31
          .byte 0x36
          .byte 0x5f
          .byte 0x74
.L_41507d:
          .byte 0x0
          .byte 0x61
          .byte 0x75
          .byte 0x74
          .byte 0x6f
.L_415082:
          .byte 0x0
          .byte 0x64
          .byte 0x65
          .byte 0x63
          .byte 0x6c
          .byte 0x74
          .byte 0x79
          .byte 0x70
          .byte 0x65
          .byte 0x28
          .byte 0x61
          .byte 0x75
          .byte 0x74
          .byte 0x6f
          .byte 0x29
.L_415091:
          .byte 0x0
          .byte 0x73
          .byte 0x74
          .byte 0x64
          .byte 0x3a
          .byte 0x3a
          .byte 0x6e
          .byte 0x75
          .byte 0x6c
          .byte 0x6c
          .byte 0x70
          .byte 0x74
          .byte 0x72
          .byte 0x5f
          .byte 0x74
.L_4150a0:
          .byte 0x0
          .byte 0x54
          .byte 0x5f
.L_4150a3:
          .zero 1
.L_4150a4:
          .string "VTT for "
.L_4150ad:
          .string "typeinfo for "
.L_4150bb:
          .string "typeinfo name for "
.L_4150ce:
          .string "covariant return thunk to "
.L_4150e9:
          .byte 0x63
          .byte 0x6f
          .byte 0x6e
          .byte 0x73
          .byte 0x74
          .byte 0x72
          .byte 0x75
          .byte 0x63
          .byte 0x74
          .byte 0x69
          .byte 0x6f
          .byte 0x6e
          .byte 0x20
.L_4150f6:
          .string "vtable for "
.L_415102:
          .string "-in-"
.L_415107:
          .byte 0x6e
          .byte 0x6f
          .byte 0x6e
          .byte 0x2d
.L_41510b:
          .string "virtual thunk to "
.L_41511d:
          .string "guard variable for "
.L_415131:
          .string "reference temporary for "
.L_41514a:
          .string ", "
.L_41514d:
          .string " const"
.L_415154:
          .string " volatile"
.L_41515e:
          .string " restrict"
.L_415168:
          .byte 0x20
.L_415169:
          .string "&"
.L_41516b:
          .byte 0x20
.L_41516c:
          .string "&&"
.L_41516f:
          .string "std"
.L_415173:
          .byte 0x3a
          .byte 0x3a
          .byte 0x73
          .byte 0x74
          .byte 0x72
          .byte 0x69
          .byte 0x6e
          .byte 0x67
          .byte 0x20
          .byte 0x6c
          .byte 0x69
          .byte 0x74
          .byte 0x65
          .byte 0x72
          .byte 0x61
.L_415182:
          .string "l"
.L_415184:
          .byte 0x73
          .byte 0x74
          .byte 0x64
.L_415187:
          .string "::"
.L_41518a:
          .string " ["
.L_41518d:
          .byte 0x20
          .byte 0x5b
.L_41518f:
          .string "]"
.L_415191:
          .string " complex"
.L_41519a:
          .string " imaginary"
.L_4151a5:
          .string "::*"
.L_4151a9:
          .string "objc_object<"
.L_4151b6:
          .string "objcproto"
.L_4151c0:
          .byte 0x70
          .byte 0x69
          .byte 0x78
          .byte 0x65
          .byte 0x6c
.L_4151c5:
          .string " vector["
          .byte 0x66
          .byte 0x61
          .byte 0x6c
          .byte 0x73
          .byte 0x65
.L_4151d3:
          .byte 0x0
          .byte 0x74
          .byte 0x72
          .byte 0x75
          .byte 0x65
.L_4151d8:
          .zero 1
.L_4151d9:
          .string "u"
.L_4151db:
          .string "ul"
.L_4151de:
          .byte 0x75
.L_4151df:
          .string "ll"
.L_4151e2:
          .string "%af"
.L_4151e6:
          .string "%a"
.L_4151e9:
          .string "%LaL"
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x26
          .byte 0x26
.L_4151f8:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x26
.L_415202:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_41520b:
          .byte 0x26
          .byte 0x3d
.L_41520d:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x3d
.L_415217:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x28
.L_415221:
          .byte 0x29
.L_415222:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_41522b:
          .byte 0x2c
.L_41522c:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_415235:
          .byte 0x7e
.L_415236:
          .zero 1
.L_415237:
          .string "operator "
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x20
          .byte 0x64
          .byte 0x65
          .byte 0x6c
          .byte 0x65
          .byte 0x74
          .byte 0x65
          .byte 0x5b
          .byte 0x5d
.L_415252:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x2a
.L_41525c:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x20
          .byte 0x64
          .byte 0x65
          .byte 0x6c
          .byte 0x65
          .byte 0x74
          .byte 0x65
.L_41526c:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_415275:
          .byte 0x2f
.L_415276:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_41527f:
          .byte 0x2f
          .byte 0x3d
.L_415281:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_41528a:
          .byte 0x5e
.L_41528b:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_415294:
          .byte 0x5e
          .byte 0x3d
.L_415296:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_41529f:
          .byte 0x3d
          .byte 0x3d
.L_4152a1:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x3e
          .byte 0x3d
.L_4152ac:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x3e
.L_4152b6:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x5b
          .byte 0x5d
.L_4152c1:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x3c
          .byte 0x3d
.L_4152cc:
          .zero 1
.L_4152cd:
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x22
          .byte 0x22
.L_4152d7:
          .string " "
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_4152e1:
          .byte 0x3c
.L_4152e2:
          .byte 0x3c
.L_4152e3:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_4152ec:
          .byte 0x3c
.L_4152ed:
          .byte 0x3c
          .byte 0x3d
.L_4152ef:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x3c
.L_4152f9:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x2d
.L_415303:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_41530c:
          .byte 0x2d
          .byte 0x3d
.L_41530e:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_415317:
          .byte 0x2a
          .byte 0x3d
.L_415319:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x2d
          .byte 0x2d
.L_415324:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x20
          .byte 0x6e
          .byte 0x65
          .byte 0x77
          .byte 0x5b
          .byte 0x5d
.L_415333:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_41533c:
          .byte 0x21
.L_41533d:
          .byte 0x3d
.L_41533e:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_415347:
          .byte 0x21
.L_415348:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x20
          .byte 0x6e
          .byte 0x65
          .byte 0x77
.L_415355:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_41535e:
          .byte 0x7c
          .byte 0x7c
.L_415360:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_415369:
          .byte 0x7c
.L_41536a:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_415373:
          .byte 0x7c
          .byte 0x3d
.L_415375:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_41537e:
          .byte 0x2d
          .byte 0x3e
          .byte 0x2a
.L_415381:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x2b
.L_41538b:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_415394:
          .byte 0x2b
          .byte 0x3d
.L_415396:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x2b
          .byte 0x2b
.L_4153a1:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_4153aa:
          .byte 0x2d
          .byte 0x3e
.L_4153ac:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
          .byte 0x3f
.L_4153b6:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_4153bf:
          .byte 0x25
.L_4153c0:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_4153c9:
          .byte 0x25
          .byte 0x3d
.L_4153cb:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_4153d4:
          .byte 0x3e
          .byte 0x3e
.L_4153d6:
          .byte 0x0
          .byte 0x6f
          .byte 0x70
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x74
          .byte 0x6f
          .byte 0x72
.L_4153df:
          .byte 0x3e
.L_4153e0:
          .byte 0x3e
          .byte 0x3d
.L_4153e2:
          .byte 0x0
          .byte 0x27
          .byte 0x75
          .byte 0x6e
          .byte 0x6e
          .byte 0x61
          .byte 0x6d
          .byte 0x65
          .byte 0x64
.L_4153eb:
          .byte 0x0
          .byte 0x27
          .byte 0x6c
          .byte 0x61
          .byte 0x6d
          .byte 0x62
          .byte 0x64
          .byte 0x61
          .byte 0x27
          .byte 0x28
.L_4153f5:
          .zero 1
.L_4153f6:
          .byte 0x20
.L_4153f7:
          .string ">"
.L_4153f9:
          .string "alignof ("
.L_415403:
          .string "const_cast<"
.L_41540f:
          .string ">("
.L_415412:
          .string ")("
.L_415415:
          .byte 0x64
          .byte 0x65
          .byte 0x6c
          .byte 0x65
          .byte 0x74
          .byte 0x65
.L_41541b:
          .string "[] "
.L_41541f:
          .string "dynamic_cast<"
.L_41542d:
          .string "delete "
.L_415435:
          .byte 0x2e
.L_415436:
          .string "*"
.L_415438:
          .string ")["
.L_41543b:
          .byte 0x29
.L_41543c:
          .byte 0x2d
.L_41543d:
          .string "-"
.L_41543f:
          .string "noexcept ("
.L_41544a:
          .byte 0x29
.L_41544b:
          .byte 0x2b
.L_41544c:
          .string "+"
.L_41544e:
          .string ") ? ("
.L_415454:
          .byte 0x29
          .byte 0x20
          .byte 0x3a
.L_415457:
          .byte 0x20
.L_415458:
          .string "("
.L_41545a:
          .string "reinterpret_cast<"
.L_41546c:
          .string "static_cast<"
.L_415479:
          .string "sizeof ("
.L_415482:
          .string "sizeof...("
.L_41548d:
          .string "typeid("
          .byte 0x74
          .byte 0x68
          .byte 0x72
          .byte 0x6f
          .byte 0x77
.L_41549a:
          .zero 1
.L_41549b:
          .string "throw "
.L_4154a2:
          .string "decltype("
.L_4154ac:
          .string ") "
          .zero 1
.L_4154b0:
          .string "basic_string::_M_construct null not valid"
          .zero 6
.L_4154e0:
          .string "%s: __pos (which is %zu) > this->size() (which is %zu)"
          .zero 1
.L_415518:
          .string "std::basic_string<char, std::char_traits<char>, std::allocator<char> >"
          .zero 1
.L_415560:
          .string "std::basic_istream<char, std::char_traits<char> >"
          .zero 6
.L_415598:
          .string "std::basic_ostream<char, std::char_traits<char> >"
          .zero 6
.L_4155d0:
          .string "std::basic_iostream<char, std::char_traits<char> >"
          .zero 5
.L_415608:
          .string "invocation function for block in "
          .zero 6
.L_415630:
          .long .L_403cd0-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403df0-.L_415630
          .long .L_403d68-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403d90-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403db0-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403dd0-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403e10-.L_415630
          .long .L_403c50-.L_415630
.L_415684:
          .long .L_404680-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404660-.L_415684
          .long .L_404640-.L_415684
          .long .L_404620-.L_415684
          .long .L_404600-.L_415684
          .long .L_4045e0-.L_415684
          .long .L_4045c0-.L_415684
          .long .L_4045a0-.L_415684
          .long .L_404580-.L_415684
          .long .L_404560-.L_415684
          .long .L_404540-.L_415684
          .long .L_404470-.L_415684
          .long .L_404520-.L_415684
          .long .L_404500-.L_415684
          .long .L_4044e0-.L_415684
          .long .L_4044c0-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_404470-.L_415684
          .long .L_4044a0-.L_415684
          .long .L_404480-.L_415684
          .long .L_404450-.L_415684
          .long .L_404430-.L_415684
          .long .L_404410-.L_415684
          .long .L_4043f0-.L_415684
          .long .L_4043d0-.L_415684
          .long .L_404340-.L_415684
.L_415760:
          .long .L_4047b6-.L_415760
          .long .L_404470-.L_415760
          .long .L_40479f-.L_415760
          .long .L_404784-.L_415760
          .long .L_404769-.L_415760
          .long .L_40474e-.L_415760
          .long .L_404470-.L_415760
          .long .L_404733-.L_415760
          .long .L_40471b-.L_415760
          .long .L_404470-.L_415760
          .long .L_404470-.L_415760
          .long .L_404470-.L_415760
          .long .L_404470-.L_415760
          .long .L_404703-.L_415760
          .long .L_404470-.L_415760
          .long .L_404470-.L_415760
          .long .L_404470-.L_415760
          .long .L_404470-.L_415760
          .long .L_4046af-.L_415760
.L_4157ac:
          .long .L_4050c2-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_40507f-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_40503c-.L_4157ac
          .long .L_404ff9-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_404fb6-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_405270-.L_4157ac
          .long .L_404f45-.L_4157ac
.L_415830:
          .long .L_406780-.L_415830
          .long .L_406a28-.L_415830
          .long .L_406a28-.L_415830
          .long .L_406a28-.L_415830
          .long .L_406a28-.L_415830
          .long .L_4064e0-.L_415830
          .long .L_406a28-.L_415830
          .long .L_406a28-.L_415830
          .long .L_406760-.L_415830
          .long .L_406a28-.L_415830
          .long .L_406a28-.L_415830
          .long .L_406a28-.L_415830
          .long .L_406a28-.L_415830
          .long .L_406a28-.L_415830
          .long .L_406a28-.L_415830
          .long .L_406210-.L_415830
          .long .L_405f58-.L_415830
.L_415874:
          .long .L_408228-.L_415874
          .long .L_407f28-.L_415874
          .long .L_407f80-.L_415874
          .long .L_407ec0-.L_415874
          .long .L_407f28-.L_415874
          .long .L_4083d0-.L_415874
          .long .L_4078d0-.L_415874
          .long .L_407f28-.L_415874
          .long .L_407f28-.L_415874
          .long .L_407f28-.L_415874
          .long .L_407f28-.L_415874
          .long .L_407f28-.L_415874
          .long .L_408610-.L_415874
          .long .L_407f28-.L_415874
          .long .L_4076e8-.L_415874
          .long .L_408028-.L_415874
          .long .L_407f28-.L_415874
          .long .L_407ce0-.L_415874
          .long .L_407fc0-.L_415874
          .long .L_407950-.L_415874
          .long .L_407a60-.L_415874
.L_4158c8:
          .long .L_40a0d8-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a5b6-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a4f2-.L_4158c8
          .long .L_40a8f8-.L_4158c8
          .long .L_40a554-.L_4158c8
          .long .L_40a655-.L_4158c8
          .long .L_40a280-.L_4158c8
          .long .L_40a850-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a585-.L_4158c8
          .long .L_40a4c1-.L_4158c8
          .long .L_40a490-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a624-.L_4158c8
          .long .L_40a523-.L_4158c8
          .long .L_40a5f3-.L_4158c8
          .long .L_40a24f-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a21e-.L_4158c8
          .long .L_40a1ed-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a97d-.L_4158c8
          .long .L_40a1bc-.L_4158c8
          .long .L_40a18e-.L_4158c8
          .long .L_40a130-.L_4158c8
.L_415960:
          .long .L_40b0e8-.L_415960
          .long .L_40ae40-.L_415960
          .long .L_40b068-.L_415960
          .long .L_40b040-.L_415960
          .long .L_40b008-.L_415960
          .long .L_40ae40-.L_415960
          .long .L_40b138-.L_415960
          .long .L_40ae40-.L_415960
          .long .L_40b110-.L_415960
          .long .L_40ae40-.L_415960
          .long .L_40ae40-.L_415960
          .long .L_40b170-.L_415960
          .long .L_40afe0-.L_415960
          .long .L_40af90-.L_415960
          .long .L_40af58-.L_415960
          .long .L_40afb8-.L_415960
          .long .L_40af30-.L_415960
          .long .L_40aeb8-.L_415960
          .long .L_40ae40-.L_415960
          .long .L_40ae40-.L_415960
          .long .L_40ae40-.L_415960
          .long .L_40ae70-.L_415960
.L_4159b8:
          .long .L_40b369-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40b34e-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40b220-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40b25b-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40ae40-.L_4159b8
          .long .L_40b384-.L_4159b8
.L_415a14:
          .long .L_40b47c-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40b198-.L_415a14
          .long .L_40b44d-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40b432-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40ae40-.L_415a14
          .long .L_40b198-.L_415a14
          .long .L_40b461-.L_415a14
.L_415ab8:
          .long .L_40b2ac-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40b291-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40b220-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40ae40-.L_415ab8
          .long .L_40b240-.L_415ab8
          .long .L_40b276-.L_415ab8
.L_415b4c:
          .long .L_40b318-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40b2fd-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40b240-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40b2e2-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40ae40-.L_415b4c
          .long .L_40b2c7-.L_415b4c
.L_415bd0:
          .long .L_40b204-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40b1e9-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40b1ce-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40b1b3-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40ae40-.L_415bd0
          .long .L_40b1b3-.L_415bd0
.L_415c54:
          .long .L_40b417-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40b3fc-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40b3ba-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40ae40-.L_415c54
          .long .L_40b39f-.L_415c54
          .long .L_40b333-.L_415c54
.L_415cdc:
          .long .L_40b888-.L_415cdc
          .long .L_40b888-.L_415cdc
          .long .L_40b888-.L_415cdc
          .long .L_40b888-.L_415cdc
          .long .L_40b888-.L_415cdc
          .long .L_40b888-.L_415cdc
          .long .L_40b888-.L_415cdc
          .long .L_40b888-.L_415cdc
          .long .L_40b888-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b898-.L_415cdc
          .long .L_40b898-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b9c0-.L_415cdc
          .long .L_40b660-.L_415cdc
.L_415d70:
          .long .L_40d700-.L_415d70
          .long .L_40d700-.L_415d70
          .long .L_40d700-.L_415d70
          .long .L_40d700-.L_415d70
          .long .L_40d700-.L_415d70
          .long .L_40d700-.L_415d70
          .long .L_40d700-.L_415d70
          .long .L_40d700-.L_415d70
          .long .L_40d700-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40d790-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40d770-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40db80-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40d748-.L_415d70
          .long .L_40d720-.L_415d70
          .long .L_40d9f0-.L_415d70
          .long .L_40d9d0-.L_415d70
          .long .L_4116fb-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40d968-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40dc10-.L_415d70
          .long .L_40d5e0-.L_415d70
          .long .L_40dab8-.L_415d70
          .long .L_40da90-.L_415d70
          .long .L_40db08-.L_415d70
          .long .L_40dae0-.L_415d70
          .long .L_40dba8-.L_415d70
          .long .L_40d7b0-.L_415d70
          .long .L_40da68-.L_415d70
          .long .L_40d7d8-.L_415d70
.L_415e80:
          .long .L_40f8ae-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f798-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f721-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f6ce-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f5b8-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40d700-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f540-.L_415e80
          .long .L_40f4c7-.L_415e80
          .long .L_40f98c-.L_415e80
          .long .L_40f901-.L_415e80
.L_415f04:
          .long .L_40e158-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40df95-.L_415f04
          .long .L_40df42-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40e4b0-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40f96c-.L_415f04
          .long .L_40e417-.L_415f04
.L_415f54:
          .long .L_40e673-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40e620-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40e5a9-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40e556-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40f964-.L_415f54
          .long .L_40e503-.L_415f54
.L_415ff0:
          .long .L_40ef68-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40eef0-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40eea8-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40d700-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40ed08-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40f97c-.L_415ff0
          .long .L_40eb67-.L_415ff0
.L_416074:
          .long .L_40e401-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40e3ae-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40e35b-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40deef-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40f954-.L_416074
          .long .L_40e401-.L_416074
          .long .L_40dc73-.L_416074
.L_4160d4:
          .long .L_40e76c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40e719-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40e6c6-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40f95c-.L_4160d4
          .long .L_40e7bf-.L_4160d4
          .long .L_40e1d0-.L_4160d4
.L_416168:
          .long .L_40eb14-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40eac1-.L_416168
          .long .L_40ea6e-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40e8e3-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40f974-.L_416168
          .long .L_40e890-.L_416168
          .long .L_40e812-.L_416168
.L_41620c:
          .long .L_40f474-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f421-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f3ce-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f37b-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f328-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f230-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f984-.L_41620c
          .long .L_40f138-.L_41620c
#===================================
# end section .rodata
#===================================

#===================================
.section .gcc_except_table ,"a",@progbits
.align 8
#===================================

.L_4175a8:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_4175b7-.L_4175ac
.L_4175ac:
          .uleb128 .L_40196c-.L_401910
          .uleb128 .L_401a12-.L_40196c
          .uleb128 .L_401a2d-.L_401910
          .zero 1
          .uleb128 .L_401a40-.L_401910
          .uleb128 .L_401a45-.L_401a40
          .zero 2
.L_4175b7:
          .zero 1
.L_4175b8:
          .byte 0xff
          .byte 0x9b
          .uleb128 .L_4175dc-.L_4175bb
.L_4175bb:
          .byte 0x1
          .uleb128 .L_4175d3-.L_4175bd
.L_4175bd:
          .uleb128 .L_4029e5-.L_402970
          .uleb128 .L_4029ea-.L_4029e5
          .uleb128 .L_402a4b-.L_402970
          .byte 0x1
          .uleb128 .L_402a03-.L_402970
          .uleb128 .L_402a08-.L_402a03
          .uleb128 .L_402a2b-.L_402970
          .byte 0x1
          .uleb128 .L_402a46-.L_402970
          .uleb128 .L_402a4b-.L_402a46
          .uleb128 .L_402a4d-.L_402970
          .zero 1
          .uleb128 .L_402a71-.L_402970
          .uleb128 .L_402a76-.L_402a71
          .zero 2
.L_4175d3:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4175dc:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_4175ec-.L_4175e0
.L_4175e0:
          .uleb128 .L_402a9e-.L_402a80
          .uleb128 .L_402aa3-.L_402a9e
          .zero 2
          .uleb128 .L_402ac7-.L_402a80
          .uleb128 .L_402ae0-.L_402ac7
          .uleb128 .L_402ae0-.L_402a80
          .zero 1
          .uleb128 .L_402af3-.L_402a80
          .uleb128 .L_402af8-.L_402af3
          .zero 2
.L_4175ec:
          .byte 0xff
          .byte 0x9b
          .uleb128 .L_417610-.L_4175ef
.L_4175ef:
          .byte 0x1
          .uleb128 .L_417608-.L_4175f1
.L_4175f1:
          .uleb128 .L_402dc4-.L_402d20
          .uleb128 .L_402dc9-.L_402dc4
          .uleb128 .L_40308e-.L_402d20
          .byte 0x1
          .uleb128 .L_402de0-.L_402d20
          .uleb128 .L_402de5-.L_402de0
          .uleb128 .L_4030b3-.L_402d20
          .byte 0x3
          .uleb128 .L_4030ae-.L_402d20
          .uleb128 .L_4030b3-.L_4030ae
          .uleb128 .L_4030cb-.L_402d20
          .zero 1
          .uleb128 .L_4030d6-.L_402d20
          .uleb128 .L_4030db-.L_4030d6
          .zero 2
.L_417608:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x7d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_417610:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_41762b-.L_417614
.L_417614:
          .uleb128 .L_40365e-.L_4035d0
          .uleb128 .L_403663-.L_40365e
          .zero 2
          .uleb128 .L_403687-.L_4035d0
          .uleb128 .L_40368c-.L_403687
          .uleb128 .L_403894-.L_4035d0
          .zero 1
          .uleb128 .L_4037cf-.L_4035d0
          .uleb128 .L_4038b2-.L_4037cf
          .zero 2
          .uleb128 .L_4038b9-.L_4035d0
          .uleb128 .L_4038be-.L_4038b9
          .uleb128 .L_403894-.L_4035d0
          .zero 1
.L_41762b:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417640-.L_41762f
.L_41762f:
          .uleb128 .L_40398b-.L_4038c0
          .uleb128 .L_403990-.L_40398b
          .zero 2
          .uleb128 .L_4039b7-.L_4038c0
          .uleb128 .L_403b1d-.L_4039b7
          .uleb128 .L_403ba3-.L_4038c0
          .zero 1
          .uleb128 .L_403bbb-.L_4038c0
          .uleb128 .L_403bc0-.L_403bbb
          .zero 2
.L_417640:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417661-.L_417644
.L_417644:
          .uleb128 .L_403c78-.L_403bc0
          .uleb128 .L_403d11-.L_403c78
          .zero 2
          .uleb128 .L_403d2b-.L_403bc0
          .uleb128 .L_403d30-.L_403d2b
          .uleb128 .L_403f88-.L_403bc0
          .zero 1
          .uleb128 .L_403d5c-.L_403bc0
          .uleb128 .L_403ee8-.L_403d5c
          .zero 2
          .uleb128 .L_403f01-.L_403bc0
          .uleb128 .L_403f06-.L_403f01
          .uleb128 .L_403f70-.L_403bc0
          .zero 1
          .uleb128 .L_403f2e-.L_403bc0
          .uleb128 .L_403fa1-.L_403f2e
          .zero 2
.L_417661:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417680-.L_417665
.L_417665:
          .uleb128 .L_4040ae-.L_403fb0
          .uleb128 .L_4040b3-.L_4040ae
          .zero 2
          .uleb128 .L_4040c0-.L_403fb0
          .uleb128 .L_4040c5-.L_4040c0
          .uleb128 .L_4042c2-.L_403fb0
          .zero 1
          .uleb128 .L_4041db-.L_403fb0
          .uleb128 .L_4041e0-.L_4041db
          .zero 2
          .uleb128 .L_4041ed-.L_403fb0
          .uleb128 .L_4041f2-.L_4041ed
          .uleb128 .L_4042df-.L_403fb0
          .zero 1
          .uleb128 .L_4042da-.L_403fb0
          .uleb128 .L_4042df-.L_4042da
          .zero 2
.L_417680:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_4176a0-.L_417684
.L_417684:
          .uleb128 .L_40490c-.L_4047e0
          .uleb128 .L_404911-.L_40490c
          .zero 2
          .uleb128 .L_40492b-.L_4047e0
          .uleb128 .L_404930-.L_40492b
          .uleb128 .L_404b80-.L_4047e0
          .zero 1
          .uleb128 .L_404958-.L_4047e0
          .uleb128 .L_4049cf-.L_404958
          .zero 2
          .uleb128 .L_4049e6-.L_4047e0
          .uleb128 .L_4049eb-.L_4049e6
          .uleb128 .L_404b99-.L_4047e0
          .zero 1
          .uleb128 .L_404a13-.L_4047e0
          .uleb128 .L_404bb1-.L_404a13
          .zero 2
.L_4176a0:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417710-.L_4176a4
.L_4176a4:
          .uleb128 .L_404c3a-.L_404bc0
          .uleb128 .L_404c3f-.L_404c3a
          .uleb128 .L_4058dd-.L_404bc0
          .zero 1
          .uleb128 .L_404d75-.L_404bc0
          .uleb128 .L_404d7a-.L_404d75
          .uleb128 .L_4058d8-.L_404bc0
          .zero 1
          .uleb128 .L_404ebf-.L_404bc0
          .uleb128 .L_40514b-.L_404ebf
          .uleb128 .L_4058dd-.L_404bc0
          .zero 1
          .uleb128 .L_405182-.L_404bc0
          .uleb128 .L_405187-.L_405182
          .uleb128 .L_40599c-.L_404bc0
          .zero 1
          .uleb128 .L_40519c-.L_404bc0
          .uleb128 .L_4051a1-.L_40519c
          .uleb128 .L_405997-.L_404bc0
          .zero 1
          .uleb128 .L_4051bb-.L_404bc0
          .uleb128 .L_4051c0-.L_4051bb
          .uleb128 .L_405992-.L_404bc0
          .zero 1
          .uleb128 .L_4051d5-.L_404bc0
          .uleb128 .L_4051da-.L_4051d5
          .uleb128 .L_405929-.L_404bc0
          .zero 1
          .uleb128 .L_405294-.L_404bc0
          .uleb128 .L_4052cf-.L_405294
          .uleb128 .L_4058dd-.L_404bc0
          .zero 1
          .uleb128 .L_405364-.L_404bc0
          .uleb128 .L_405369-.L_405364
          .uleb128 .L_4058fd-.L_404bc0
          .zero 1
          .uleb128 .L_4053bb-.L_404bc0
          .uleb128 .L_405527-.L_4053bb
          .uleb128 .L_4058e2-.L_404bc0
          .zero 1
          .uleb128 .L_4055f2-.L_404bc0
          .uleb128 .L_405647-.L_4055f2
          .uleb128 .L_4058d8-.L_404bc0
          .zero 1
          .uleb128 .L_405773-.L_404bc0
          .uleb128 .L_405778-.L_405773
          .uleb128 .L_405890-.L_404bc0
          .zero 1
          .uleb128 .L_4057b2-.L_404bc0
          .uleb128 .L_405831-.L_4057b2
          .uleb128 .L_4058d8-.L_404bc0
          .zero 1
          .uleb128 .L_405847-.L_404bc0
          .uleb128 .L_40584c-.L_405847
          .uleb128 .L_4058dd-.L_404bc0
          .zero 1
          .uleb128 .L_405858-.L_404bc0
          .uleb128 .L_40585d-.L_405858
          .uleb128 .L_4058d8-.L_404bc0
          .zero 1
          .uleb128 .L_405881-.L_404bc0
          .uleb128 .L_405886-.L_405881
          .uleb128 .L_405890-.L_404bc0
          .zero 1
          .uleb128 .L_4058d3-.L_404bc0
          .uleb128 .L_4058d8-.L_4058d3
          .zero 2
          .uleb128 .L_405924-.L_404bc0
          .uleb128 .L_405929-.L_405924
          .uleb128 .L_4058e2-.L_404bc0
          .zero 1
.L_417710:
          .byte 0xff
          .byte 0x9b
          .uleb128 .L_417818-.L_417714
.L_417714:
          .byte 0x1
          .uleb128 .L_417811-.L_417717
.L_417717:
          .uleb128 .L_405a25-.L_4059b0
          .uleb128 .L_405bd7-.L_405a25
          .zero 2
          .uleb128 .L_405c0a-.L_4059b0
          .uleb128 .L_405c0f-.L_405c0a
          .uleb128 .L_40721b-.L_4059b0
          .zero 1
          .uleb128 .L_405d54-.L_4059b0
          .uleb128 .L_405e55-.L_405d54
          .zero 2
          .uleb128 .L_405ea7-.L_4059b0
          .uleb128 .L_405eac-.L_405ea7
          .uleb128 .L_407357-.L_4059b0
          .zero 1
          .uleb128 .L_405f0c-.L_4059b0
          .uleb128 .L_405fd8-.L_405f0c
          .zero 2
          .uleb128 .L_406089-.L_4059b0
          .uleb128 .L_40608e-.L_406089
          .uleb128 .L_407323-.L_4059b0
          .zero 1
          .uleb128 .L_4060a6-.L_4059b0
          .uleb128 .L_4060ab-.L_4060a6
          .uleb128 .L_4072fc-.L_4059b0
          .zero 1
          .uleb128 .L_406155-.L_4059b0
          .uleb128 .L_40615a-.L_406155
          .uleb128 .L_40734b-.L_4059b0
          .byte 0x1
          .uleb128 .L_406174-.L_4059b0
          .uleb128 .L_406179-.L_406174
          .uleb128 .L_407328-.L_4059b0
          .byte 0x1
          .uleb128 .L_40622f-.L_4059b0
          .uleb128 .L_4062a6-.L_40622f
          .zero 2
          .uleb128 .L_406357-.L_4059b0
          .uleb128 .L_40635c-.L_406357
          .uleb128 .L_40736d-.L_4059b0
          .zero 1
          .uleb128 .L_406374-.L_4059b0
          .uleb128 .L_406379-.L_406374
          .uleb128 .L_40736b-.L_4059b0
          .zero 1
          .uleb128 .L_406423-.L_4059b0
          .uleb128 .L_406428-.L_406423
          .uleb128 .L_407395-.L_4059b0
          .byte 0x1
          .uleb128 .L_406442-.L_4059b0
          .uleb128 .L_406447-.L_406442
          .uleb128 .L_407372-.L_4059b0
          .byte 0x1
          .uleb128 .L_4064e9-.L_4059b0
          .uleb128 .L_406560-.L_4064e9
          .zero 2
          .uleb128 .L_40660e-.L_4059b0
          .uleb128 .L_406613-.L_40660e
          .uleb128 .L_40735c-.L_4059b0
          .zero 1
          .uleb128 .L_4066a4-.L_4059b0
          .uleb128 .L_4066a9-.L_4066a4
          .uleb128 .L_40727f-.L_4059b0
          .byte 0x1
          .uleb128 .L_4066c3-.L_4059b0
          .uleb128 .L_4066c8-.L_4066c3
          .uleb128 .L_40725c-.L_4059b0
          .byte 0x1
          .uleb128 .L_4067a4-.L_4059b0
          .uleb128 .L_40681b-.L_4067a4
          .zero 2
          .uleb128 .L_4068cc-.L_4059b0
          .uleb128 .L_4068d1-.L_4068cc
          .uleb128 .L_407238-.L_4059b0
          .zero 1
          .uleb128 .L_4068e9-.L_4059b0
          .uleb128 .L_4068ee-.L_4068e9
          .uleb128 .L_407361-.L_4059b0
          .zero 1
          .uleb128 .L_406998-.L_4059b0
          .uleb128 .L_40699d-.L_406998
          .uleb128 .L_4072cd-.L_4059b0
          .byte 0x1
          .uleb128 .L_4069b7-.L_4059b0
          .uleb128 .L_4069bc-.L_4069b7
          .uleb128 .L_4072aa-.L_4059b0
          .byte 0x1
          .uleb128 .L_406a31-.L_4059b0
          .uleb128 .L_406aa8-.L_406a31
          .zero 2
          .uleb128 .L_406b59-.L_4059b0
          .uleb128 .L_406b5e-.L_406b59
          .uleb128 .L_407363-.L_4059b0
          .zero 1
          .uleb128 .L_406b76-.L_4059b0
          .uleb128 .L_406b7b-.L_406b76
          .uleb128 .L_40718f-.L_4059b0
          .zero 1
          .uleb128 .L_406c25-.L_4059b0
          .uleb128 .L_406c2a-.L_406c25
          .uleb128 .L_4071f3-.L_4059b0
          .byte 0x1
          .uleb128 .L_406c44-.L_4059b0
          .uleb128 .L_406c49-.L_406c44
          .uleb128 .L_4071d0-.L_4059b0
          .byte 0x1
          .uleb128 .L_406cb9-.L_4059b0
          .uleb128 .L_406cbe-.L_406cb9
          .uleb128 .L_407363-.L_4059b0
          .zero 1
          .uleb128 .L_406cf1-.L_4059b0
          .uleb128 .L_406cf6-.L_406cf1
          .uleb128 .L_407323-.L_4059b0
          .zero 1
          .uleb128 .L_406d20-.L_4059b0
          .uleb128 .L_406d25-.L_406d20
          .zero 2
          .uleb128 .L_406d79-.L_4059b0
          .uleb128 .L_406d7e-.L_406d79
          .uleb128 .L_40736d-.L_4059b0
          .zero 1
          .uleb128 .L_406d91-.L_4059b0
          .uleb128 .L_406d96-.L_406d91
          .uleb128 .L_407238-.L_4059b0
          .zero 1
          .uleb128 .L_406e28-.L_4059b0
          .uleb128 .L_406ffe-.L_406e28
          .zero 2
          .uleb128 .L_407028-.L_4059b0
          .uleb128 .L_40704a-.L_407028
          .uleb128 .L_40725a-.L_4059b0
          .zero 1
          .uleb128 .L_4070a3-.L_4059b0
          .uleb128 .L_4070e6-.L_4070a3
          .zero 2
          .uleb128 .L_40710c-.L_4059b0
          .uleb128 .L_40712e-.L_40710c
          .uleb128 .L_407236-.L_4059b0
          .zero 1
          .uleb128 .L_4071cb-.L_4059b0
          .uleb128 .L_4071d0-.L_4071cb
          .zero 2
          .uleb128 .L_4071ee-.L_4059b0
          .uleb128 .L_4071f3-.L_4071ee
          .uleb128 .L_4071f5-.L_4059b0
          .zero 1
          .uleb128 .L_40727a-.L_4059b0
          .uleb128 .L_40727f-.L_40727a
          .uleb128 .L_407281-.L_4059b0
          .zero 1
          .uleb128 .L_4072c8-.L_4059b0
          .uleb128 .L_4072cd-.L_4072c8
          .uleb128 .L_4072cf-.L_4059b0
          .zero 1
          .uleb128 .L_407346-.L_4059b0
          .uleb128 .L_40734b-.L_407346
          .uleb128 .L_40734d-.L_4059b0
          .zero 1
          .uleb128 .L_407390-.L_4059b0
          .uleb128 .L_407395-.L_407390
          .uleb128 .L_407397-.L_4059b0
          .zero 1
.L_417811:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_417818:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_4179a8-.L_41781d
.L_41781d:
          .uleb128 .L_40744d-.L_4073b0
          .uleb128 .L_40751b-.L_40744d
          .zero 2
          .uleb128 .L_407537-.L_4073b0
          .uleb128 .L_40753c-.L_407537
          .uleb128 .L_409f09-.L_4073b0
          .zero 1
          .uleb128 .L_4075c3-.L_4073b0
          .uleb128 .L_4077e3-.L_4075c3
          .zero 2
          .uleb128 .L_407802-.L_4073b0
          .uleb128 .L_407807-.L_407802
          .uleb128 .L_409f83-.L_4073b0
          .zero 1
          .uleb128 .L_40785d-.L_4073b0
          .uleb128 .L_4079f1-.L_40785d
          .zero 2
          .uleb128 .L_407a0d-.L_4073b0
          .uleb128 .L_407a12-.L_407a0d
          .uleb128 .L_409be8-.L_4073b0
          .zero 1
          .uleb128 .L_407a59-.L_4073b0
          .uleb128 .L_407ad6-.L_407a59
          .zero 2
          .uleb128 .L_407af7-.L_4073b0
          .uleb128 .L_407b4e-.L_407af7
          .uleb128 .L_409fa2-.L_4073b0
          .zero 1
          .uleb128 .L_407b68-.L_4073b0
          .uleb128 .L_407b6d-.L_407b68
          .uleb128 .L_40a058-.L_4073b0
          .zero 1
          .uleb128 .L_407b80-.L_4073b0
          .uleb128 .L_407b85-.L_407b80
          .uleb128 .L_409faf-.L_4073b0
          .zero 1
          .uleb128 .L_407ca4-.L_4073b0
          .uleb128 .L_407ca9-.L_407ca4
          .uleb128 .L_409fa2-.L_4073b0
          .zero 1
          .uleb128 .L_407cfa-.L_4073b0
          .uleb128 .L_407dd3-.L_407cfa
          .zero 2
          .uleb128 .L_407df2-.L_4073b0
          .uleb128 .L_407df7-.L_407df2
          .uleb128 .L_409f2f-.L_4073b0
          .zero 1
          .uleb128 .L_407e4d-.L_4073b0
          .uleb128 .L_408133-.L_407e4d
          .zero 2
          .uleb128 .L_408152-.L_4073b0
          .uleb128 .L_408157-.L_408152
          .uleb128 .L_409b0e-.L_4073b0
          .zero 1
          .uleb128 .L_4081b7-.L_4073b0
          .uleb128 .L_40831b-.L_4081b7
          .zero 2
          .uleb128 .L_408335-.L_4073b0
          .uleb128 .L_40833a-.L_408335
          .uleb128 .L_409ff1-.L_4073b0
          .zero 1
          .uleb128 .L_408349-.L_4073b0
          .uleb128 .L_40834e-.L_408349
          .uleb128 .L_409fec-.L_4073b0
          .zero 1
          .uleb128 .L_408365-.L_4073b0
          .uleb128 .L_40836a-.L_408365
          .uleb128 .L_40a098-.L_4073b0
          .zero 1
          .uleb128 .L_4083fa-.L_4073b0
          .uleb128 .L_408427-.L_4083fa
          .zero 2
          .uleb128 .L_40849c-.L_4073b0
          .uleb128 .L_4084a1-.L_40849c
          .uleb128 .L_40a08b-.L_4073b0
          .zero 1
          .uleb128 .L_408524-.L_4073b0
          .uleb128 .L_408529-.L_408524
          .uleb128 .L_409f46-.L_4073b0
          .zero 1
          .uleb128 .L_408582-.L_4073b0
          .uleb128 .L_4085dc-.L_408582
          .uleb128 .L_40a08b-.L_4073b0
          .zero 1
          .uleb128 .L_40861d-.L_4073b0
          .uleb128 .L_40863c-.L_40861d
          .zero 2
          .uleb128 .L_4087f7-.L_4073b0
          .uleb128 .L_4087fc-.L_4087f7
          .uleb128 .L_40a053-.L_4073b0
          .zero 1
          .uleb128 .L_408813-.L_4073b0
          .uleb128 .L_408818-.L_408813
          .uleb128 .L_40a077-.L_4073b0
          .zero 1
          .uleb128 .L_40882b-.L_4073b0
          .uleb128 .L_408830-.L_40882b
          .uleb128 .L_40a06f-.L_4073b0
          .zero 1
          .uleb128 .L_40884a-.L_4073b0
          .uleb128 .L_40884f-.L_40884a
          .uleb128 .L_409ebb-.L_4073b0
          .zero 1
          .uleb128 .L_408937-.L_4073b0
          .uleb128 .L_408b1a-.L_408937
          .zero 2
          .uleb128 .L_408b43-.L_4073b0
          .uleb128 .L_408b6b-.L_408b43
          .uleb128 .L_409f85-.L_4073b0
          .zero 1
          .uleb128 .L_408baa-.L_4073b0
          .uleb128 .L_408bdc-.L_408baa
          .zero 2
          .uleb128 .L_408be9-.L_4073b0
          .uleb128 .L_408cd0-.L_408be9
          .uleb128 .L_40a08b-.L_4073b0
          .zero 1
          .uleb128 .L_408d6e-.L_4073b0
          .uleb128 .L_408d73-.L_408d6e
          .zero 2
          .uleb128 .L_408d9c-.L_4073b0
          .uleb128 .L_408dcb-.L_408d9c
          .uleb128 .L_40a093-.L_4073b0
          .zero 1
          .uleb128 .L_408e09-.L_4073b0
          .uleb128 .L_408eb8-.L_408e09
          .zero 2
          .uleb128 .L_408ed4-.L_4073b0
          .uleb128 .L_408ed9-.L_408ed4
          .uleb128 .L_409bff-.L_4073b0
          .zero 1
          .uleb128 .L_408f20-.L_4073b0
          .uleb128 .L_408f9b-.L_408f20
          .zero 2
          .uleb128 .L_40914c-.L_4073b0
          .uleb128 .L_4091a4-.L_40914c
          .uleb128 .L_409b49-.L_4073b0
          .zero 1
          .uleb128 .L_4091be-.L_4073b0
          .uleb128 .L_4091c3-.L_4091be
          .uleb128 .L_409aee-.L_4073b0
          .zero 1
          .uleb128 .L_4091d2-.L_4073b0
          .uleb128 .L_4091d7-.L_4091d2
          .uleb128 .L_409aa3-.L_4073b0
          .zero 1
          .uleb128 .L_4091f3-.L_4073b0
          .uleb128 .L_4091f8-.L_4091f3
          .uleb128 .L_409af3-.L_4073b0
          .zero 1
          .uleb128 .L_409282-.L_4073b0
          .uleb128 .L_409301-.L_409282
          .zero 2
          .uleb128 .L_409311-.L_4073b0
          .uleb128 .L_409316-.L_409311
          .uleb128 .L_409fa2-.L_4073b0
          .zero 1
          .uleb128 .L_409341-.L_4073b0
          .uleb128 .L_40937c-.L_409341
          .uleb128 .L_409a9b-.L_4073b0
          .zero 1
          .uleb128 .L_409399-.L_4073b0
          .uleb128 .L_40939e-.L_409399
          .uleb128 .L_409a7b-.L_4073b0
          .zero 1
          .uleb128 .L_4093b3-.L_4073b0
          .uleb128 .L_4093b8-.L_4093b3
          .uleb128 .L_409a45-.L_4073b0
          .zero 1
          .uleb128 .L_4093d2-.L_4073b0
          .uleb128 .L_4093d7-.L_4093d2
          .uleb128 .L_409a80-.L_4073b0
          .zero 1
          .uleb128 .L_40952f-.L_4073b0
          .uleb128 .L_409534-.L_40952f
          .uleb128 .L_40a08b-.L_4073b0
          .zero 1
          .uleb128 .L_4095e1-.L_4073b0
          .uleb128 .L_4095e6-.L_4095e1
          .uleb128 .L_40a053-.L_4073b0
          .zero 1
          .uleb128 .L_4095fd-.L_4073b0
          .uleb128 .L_409602-.L_4095fd
          .uleb128 .L_40a04e-.L_4073b0
          .zero 1
          .uleb128 .L_40961a-.L_4073b0
          .uleb128 .L_40961f-.L_40961a
          .uleb128 .L_40a049-.L_4073b0
          .zero 1
          .uleb128 .L_409636-.L_4073b0
          .uleb128 .L_40963b-.L_409636
          .uleb128 .L_409ff6-.L_4073b0
          .zero 1
          .uleb128 .L_4096c5-.L_4073b0
          .uleb128 .L_4096ca-.L_4096c5
          .uleb128 .L_40a053-.L_4073b0
          .zero 1
          .uleb128 .L_409731-.L_4073b0
          .uleb128 .L_409835-.L_409731
          .uleb128 .L_409be3-.L_4073b0
          .zero 1
          .uleb128 .L_40984c-.L_4073b0
          .uleb128 .L_409851-.L_40984c
          .uleb128 .L_409b84-.L_4073b0
          .zero 1
          .uleb128 .L_409869-.L_4073b0
          .uleb128 .L_40986e-.L_409869
          .uleb128 .L_409faa-.L_4073b0
          .zero 1
          .uleb128 .L_4098e9-.L_4073b0
          .uleb128 .L_4098ee-.L_4098e9
          .uleb128 .L_409a9b-.L_4073b0
          .zero 1
          .uleb128 .L_409904-.L_4073b0
          .uleb128 .L_409909-.L_409904
          .uleb128 .L_4099fb-.L_4073b0
          .zero 1
          .uleb128 .L_409a40-.L_4073b0
          .uleb128 .L_409c72-.L_409a40
          .zero 2
          .uleb128 .L_409c8c-.L_4073b0
          .uleb128 .L_409c91-.L_409c8c
          .uleb128 .L_409cfe-.L_4073b0
          .zero 1
          .uleb128 .L_409ca8-.L_4073b0
          .uleb128 .L_409cad-.L_409ca8
          .uleb128 .L_409cf9-.L_4073b0
          .zero 1
          .uleb128 .L_409cc5-.L_4073b0
          .uleb128 .L_409cca-.L_409cc5
          .uleb128 .L_409cd7-.L_4073b0
          .zero 1
          .uleb128 .L_409d33-.L_4073b0
          .uleb128 .L_409d38-.L_409d33
          .zero 2
          .uleb128 .L_409d45-.L_4073b0
          .uleb128 .L_409d4a-.L_409d45
          .uleb128 .L_409eb6-.L_4073b0
          .zero 1
          .uleb128 .L_409d64-.L_4073b0
          .uleb128 .L_409d69-.L_409d64
          .uleb128 .L_409e7e-.L_4073b0
          .zero 1
          .uleb128 .L_409f1e-.L_4073b0
          .uleb128 .L_409f2f-.L_409f1e
          .zero 2
          .uleb128 .L_40a086-.L_4073b0
          .uleb128 .L_40a08b-.L_40a086
          .uleb128 .L_40a08b-.L_4073b0
          .zero 1
.L_4179a8:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417a6b-.L_4179ad
.L_4179ad:
          .uleb128 .L_40a146-.L_40a0a0
          .uleb128 .L_40a14b-.L_40a146
          .zero 2
          .uleb128 .L_40a157-.L_40a0a0
          .uleb128 .L_40a15c-.L_40a157
          .uleb128 .L_40adc3-.L_40a0a0
          .zero 1
          .uleb128 .L_40a1a4-.L_40a0a0
          .uleb128 .L_40a1a9-.L_40a1a4
          .zero 2
          .uleb128 .L_40a1b5-.L_40a0a0
          .uleb128 .L_40a1ba-.L_40a1b5
          .uleb128 .L_40adc8-.L_40a0a0
          .zero 1
          .uleb128 .L_40a1d2-.L_40a0a0
          .uleb128 .L_40a1d7-.L_40a1d2
          .zero 2
          .uleb128 .L_40a1e3-.L_40a0a0
          .uleb128 .L_40a1e8-.L_40a1e3
          .uleb128 .L_40adcd-.L_40a0a0
          .zero 1
          .uleb128 .L_40a203-.L_40a0a0
          .uleb128 .L_40a208-.L_40a203
          .zero 2
          .uleb128 .L_40a214-.L_40a0a0
          .uleb128 .L_40a219-.L_40a214
          .uleb128 .L_40add2-.L_40a0a0
          .zero 1
          .uleb128 .L_40a234-.L_40a0a0
          .uleb128 .L_40a239-.L_40a234
          .zero 2
          .uleb128 .L_40a245-.L_40a0a0
          .uleb128 .L_40a24a-.L_40a245
          .uleb128 .L_40addc-.L_40a0a0
          .zero 1
          .uleb128 .L_40a265-.L_40a0a0
          .uleb128 .L_40a26a-.L_40a265
          .zero 2
          .uleb128 .L_40a276-.L_40a0a0
          .uleb128 .L_40a27b-.L_40a276
          .uleb128 .L_40adb9-.L_40a0a0
          .zero 1
          .uleb128 .L_40a3c3-.L_40a0a0
          .uleb128 .L_40a4ab-.L_40a3c3
          .zero 2
          .uleb128 .L_40a4b7-.L_40a0a0
          .uleb128 .L_40a4bc-.L_40a4b7
          .uleb128 .L_40add7-.L_40a0a0
          .zero 1
          .uleb128 .L_40a4d7-.L_40a0a0
          .uleb128 .L_40a4dc-.L_40a4d7
          .zero 2
          .uleb128 .L_40a4e8-.L_40a0a0
          .uleb128 .L_40a4ed-.L_40a4e8
          .uleb128 .L_40ada5-.L_40a0a0
          .zero 1
          .uleb128 .L_40a508-.L_40a0a0
          .uleb128 .L_40a50d-.L_40a508
          .zero 2
          .uleb128 .L_40a519-.L_40a0a0
          .uleb128 .L_40a51e-.L_40a519
          .uleb128 .L_40ade1-.L_40a0a0
          .zero 1
          .uleb128 .L_40a539-.L_40a0a0
          .uleb128 .L_40a53e-.L_40a539
          .zero 2
          .uleb128 .L_40a54a-.L_40a0a0
          .uleb128 .L_40a54f-.L_40a54a
          .uleb128 .L_40ad47-.L_40a0a0
          .zero 1
          .uleb128 .L_40a56a-.L_40a0a0
          .uleb128 .L_40a56f-.L_40a56a
          .zero 2
          .uleb128 .L_40a57b-.L_40a0a0
          .uleb128 .L_40a580-.L_40a57b
          .uleb128 .L_40ad26-.L_40a0a0
          .zero 1
          .uleb128 .L_40a59b-.L_40a0a0
          .uleb128 .L_40a5a0-.L_40a59b
          .zero 2
          .uleb128 .L_40a5ac-.L_40a0a0
          .uleb128 .L_40a5b1-.L_40a5ac
          .uleb128 .L_40adaa-.L_40a0a0
          .zero 1
          .uleb128 .L_40a5ca-.L_40a0a0
          .uleb128 .L_40a60e-.L_40a5ca
          .zero 2
          .uleb128 .L_40a61a-.L_40a0a0
          .uleb128 .L_40a61f-.L_40a61a
          .uleb128 .L_40ade6-.L_40a0a0
          .zero 1
          .uleb128 .L_40a63a-.L_40a0a0
          .uleb128 .L_40a63f-.L_40a63a
          .zero 2
          .uleb128 .L_40a64b-.L_40a0a0
          .uleb128 .L_40a650-.L_40a64b
          .uleb128 .L_40adbe-.L_40a0a0
          .zero 1
          .uleb128 .L_40a77e-.L_40a0a0
          .uleb128 .L_40aad5-.L_40a77e
          .zero 2
          .uleb128 .L_40aaea-.L_40a0a0
          .uleb128 .L_40aaef-.L_40aaea
          .uleb128 .L_40ad49-.L_40a0a0
          .zero 1
          .uleb128 .L_40ab01-.L_40a0a0
          .uleb128 .L_40ab06-.L_40ab01
          .uleb128 .L_40adb4-.L_40a0a0
          .zero 1
          .uleb128 .L_40ab18-.L_40a0a0
          .uleb128 .L_40ab1d-.L_40ab18
          .uleb128 .L_40adaf-.L_40a0a0
          .zero 1
          .uleb128 .L_40ab33-.L_40a0a0
          .uleb128 .L_40ab38-.L_40ab33
          .uleb128 .L_40ad5f-.L_40a0a0
          .zero 1
          .uleb128 .L_40ad42-.L_40a0a0
          .uleb128 .L_40ad47-.L_40ad42
          .zero 2
.L_417a6b:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417aa4-.L_417a6f
.L_417a6f:
          .uleb128 .L_40b6a5-.L_40b600
          .uleb128 .L_40b8e5-.L_40b6a5
          .zero 2
          .uleb128 .L_40b8f2-.L_40b600
          .uleb128 .L_40b8f7-.L_40b8f2
          .uleb128 .L_40c0d1-.L_40b600
          .zero 1
          .uleb128 .L_40b9c9-.L_40b600
          .uleb128 .L_40bbde-.L_40b9c9
          .zero 2
          .uleb128 .L_40bc35-.L_40b600
          .uleb128 .L_40be12-.L_40bc35
          .uleb128 .L_40c0ef-.L_40b600
          .zero 1
          .uleb128 .L_40be95-.L_40b600
          .uleb128 .L_40be9a-.L_40be95
          .zero 2
          .uleb128 .L_40bf2a-.L_40b600
          .uleb128 .L_40bfda-.L_40bf2a
          .uleb128 .L_40c0ef-.L_40b600
          .zero 1
          .uleb128 .L_40c06c-.L_40b600
          .uleb128 .L_40c0af-.L_40c06c
          .zero 2
          .uleb128 .L_40c0cc-.L_40b600
          .uleb128 .L_40c0d1-.L_40c0cc
          .uleb128 .L_40c0ef-.L_40b600
          .zero 1
          .uleb128 .L_40c0ea-.L_40b600
          .uleb128 .L_40c0ef-.L_40c0ea
          .zero 2
.L_417aa4:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417ad8-.L_417aa8
.L_417aa8:
          .uleb128 .L_40c2dd-.L_40c230
          .uleb128 .L_40c2e2-.L_40c2dd
          .zero 2
          .uleb128 .L_40c35e-.L_40c230
          .uleb128 .L_40c363-.L_40c35e
          .uleb128 .L_40cb9d-.L_40c230
          .zero 1
          .uleb128 .L_40c40b-.L_40c230
          .uleb128 .L_40c410-.L_40c40b
          .uleb128 .L_40cbc4-.L_40c230
          .zero 1
          .uleb128 .L_40c45c-.L_40c230
          .uleb128 .L_40c806-.L_40c45c
          .uleb128 .L_40cb9d-.L_40c230
          .zero 1
          .uleb128 .L_40c820-.L_40c230
          .uleb128 .L_40c825-.L_40c820
          .uleb128 .L_40cbe4-.L_40c230
          .zero 1
          .uleb128 .L_40c87f-.L_40c230
          .uleb128 .L_40cb9d-.L_40c87f
          .uleb128 .L_40cb9d-.L_40c230
          .zero 1
          .uleb128 .L_40cbba-.L_40c230
          .uleb128 .L_40cbbf-.L_40cbba
          .zero 2
          .uleb128 .L_40cbfb-.L_40c230
          .uleb128 .L_40cc0c-.L_40cbfb
          .uleb128 .L_40cb9d-.L_40c230
          .zero 1
.L_417ad8:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417aec-.L_417adc
.L_417adc:
          .uleb128 .L_40cc3e-.L_40cc10
          .uleb128 .L_40cccf-.L_40cc3e
          .zero 2
          .uleb128 .L_40cd50-.L_40cc10
          .uleb128 .L_40cd55-.L_40cd50
          .uleb128 .L_40cdc7-.L_40cc10
          .zero 1
          .uleb128 .L_40cdb8-.L_40cc10
          .uleb128 .L_40cde4-.L_40cdb8
          .zero 2
.L_417aec:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417b62-.L_417af0
.L_417af0:
          .uleb128 .L_40ce31-.L_40cdf0
          .uleb128 .L_40cf46-.L_40ce31
          .zero 2
          .uleb128 .L_40cf6c-.L_40cdf0
          .uleb128 .L_40cf71-.L_40cf6c
          .uleb128 .L_40d4b1-.L_40cdf0
          .zero 1
          .uleb128 .L_40cf8d-.L_40cdf0
          .uleb128 .L_40cfcf-.L_40cf8d
          .zero 2
          .uleb128 .L_40cfef-.L_40cdf0
          .uleb128 .L_40cff4-.L_40cfef
          .uleb128 .L_40d522-.L_40cdf0
          .zero 1
          .uleb128 .L_40d007-.L_40cdf0
          .uleb128 .L_40d00c-.L_40d007
          .uleb128 .L_40d520-.L_40cdf0
          .zero 1
          .uleb128 .L_40d048-.L_40cdf0
          .uleb128 .L_40d0a4-.L_40d048
          .zero 2
          .uleb128 .L_40d0ca-.L_40cdf0
          .uleb128 .L_40d0cf-.L_40d0ca
          .uleb128 .L_40d478-.L_40cdf0
          .zero 1
          .uleb128 .L_40d125-.L_40cdf0
          .uleb128 .L_40d12a-.L_40d125
          .zero 2
          .uleb128 .L_40d14c-.L_40cdf0
          .uleb128 .L_40d151-.L_40d14c
          .uleb128 .L_40d556-.L_40cdf0
          .zero 1
          .uleb128 .L_40d164-.L_40cdf0
          .uleb128 .L_40d169-.L_40d164
          .uleb128 .L_40d524-.L_40cdf0
          .zero 1
          .uleb128 .L_40d1a1-.L_40cdf0
          .uleb128 .L_40d259-.L_40d1a1
          .zero 2
          .uleb128 .L_40d27b-.L_40cdf0
          .uleb128 .L_40d280-.L_40d27b
          .uleb128 .L_40d51b-.L_40cdf0
          .zero 1
          .uleb128 .L_40d293-.L_40cdf0
          .uleb128 .L_40d298-.L_40d293
          .uleb128 .L_40d4e9-.L_40cdf0
          .zero 1
          .uleb128 .L_40d2cd-.L_40cdf0
          .uleb128 .L_40d376-.L_40d2cd
          .zero 2
          .uleb128 .L_40d396-.L_40cdf0
          .uleb128 .L_40d39b-.L_40d396
          .uleb128 .L_40d560-.L_40cdf0
          .zero 1
          .uleb128 .L_40d3ae-.L_40cdf0
          .uleb128 .L_40d3b3-.L_40d3ae
          .uleb128 .L_40d55b-.L_40cdf0
          .zero 1
          .uleb128 .L_40d3c5-.L_40cdf0
          .uleb128 .L_40d407-.L_40d3c5
          .zero 2
          .uleb128 .L_40d427-.L_40cdf0
          .uleb128 .L_40d42c-.L_40d427
          .uleb128 .L_40d4e4-.L_40cdf0
          .zero 1
          .uleb128 .L_40d43f-.L_40cdf0
          .uleb128 .L_40d444-.L_40d43f
          .uleb128 .L_40d4b3-.L_40cdf0
          .zero 1
          .uleb128 .L_40d491-.L_40cdf0
          .uleb128 .L_40d4e4-.L_40d491
          .zero 2
.L_417b62:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417fc1-.L_417b67
.L_417b67:
          .uleb128 .L_40d618-.L_40d570
          .uleb128 .L_40d61d-.L_40d618
          .zero 2
          .uleb128 .L_40d629-.L_40d570
          .uleb128 .L_40d62e-.L_40d629
          .uleb128 .L_411a66-.L_40d570
          .zero 1
          .uleb128 .L_40d6bc-.L_40d570
          .uleb128 .L_40d6c1-.L_40d6bc
          .zero 2
          .uleb128 .L_40d6cd-.L_40d570
          .uleb128 .L_40d6d2-.L_40d6cd
          .uleb128 .L_4116d9-.L_40d570
          .zero 1
          .uleb128 .L_40d709-.L_40d570
          .uleb128 .L_40d865-.L_40d709
          .zero 2
          .uleb128 .L_40d872-.L_40d570
          .uleb128 .L_40d877-.L_40d872
          .uleb128 .L_4122b8-.L_40d570
          .zero 1
          .uleb128 .L_40d97f-.L_40d570
          .uleb128 .L_40da2a-.L_40d97f
          .zero 2
          .uleb128 .L_40da36-.L_40d570
          .uleb128 .L_40da3b-.L_40da36
          .uleb128 .L_41115d-.L_40d570
          .zero 1
          .uleb128 .L_40db40-.L_40d570
          .uleb128 .L_40db45-.L_40db40
          .zero 2
          .uleb128 .L_40db51-.L_40d570
          .uleb128 .L_40db56-.L_40db51
          .uleb128 .L_411f7b-.L_40d570
          .zero 1
          .uleb128 .L_40dbbf-.L_40d570
          .uleb128 .L_40dc3b-.L_40dbbf
          .zero 2
          .uleb128 .L_40dc47-.L_40d570
          .uleb128 .L_40dc4c-.L_40dc47
          .uleb128 .L_412172-.L_40d570
          .zero 1
          .uleb128 .L_40dc80-.L_40d570
          .uleb128 .L_40dcef-.L_40dc80
          .zero 2
          .uleb128 .L_40dd56-.L_40d570
          .uleb128 .L_40dd5b-.L_40dd56
          .uleb128 .L_411695-.L_40d570
          .zero 1
          .uleb128 .L_40ddd5-.L_40d570
          .uleb128 .L_40ddda-.L_40ddd5
          .uleb128 .L_411f09-.L_40d570
          .zero 1
          .uleb128 .L_40df05-.L_40d570
          .uleb128 .L_40df0a-.L_40df05
          .zero 2
          .uleb128 .L_40df16-.L_40d570
          .uleb128 .L_40df1b-.L_40df16
          .uleb128 .L_412150-.L_40d570
          .zero 1
          .uleb128 .L_40df58-.L_40d570
          .uleb128 .L_40df5d-.L_40df58
          .zero 2
          .uleb128 .L_40df69-.L_40d570
          .uleb128 .L_40df6e-.L_40df69
          .uleb128 .L_411fbf-.L_40d570
          .zero 1
          .uleb128 .L_40dfc1-.L_40d570
          .uleb128 .L_40e0a8-.L_40dfc1
          .zero 2
          .uleb128 .L_40e109-.L_40d570
          .uleb128 .L_40e10e-.L_40e109
          .uleb128 .L_411fe1-.L_40d570
          .zero 1
          .uleb128 .L_40e14a-.L_40d570
          .uleb128 .L_40e22c-.L_40e14a
          .zero 2
          .uleb128 .L_40e239-.L_40d570
          .uleb128 .L_40e23e-.L_40e239
          .uleb128 .L_412107-.L_40d570
          .zero 1
          .uleb128 .L_40e253-.L_40d570
          .uleb128 .L_40e258-.L_40e253
          .uleb128 .L_4120ad-.L_40d570
          .zero 1
          .uleb128 .L_40e371-.L_40d570
          .uleb128 .L_40e376-.L_40e371
          .zero 2
          .uleb128 .L_40e382-.L_40d570
          .uleb128 .L_40e387-.L_40e382
          .uleb128 .L_412069-.L_40d570
          .zero 1
          .uleb128 .L_40e3c4-.L_40d570
          .uleb128 .L_40e3c9-.L_40e3c4
          .zero 2
          .uleb128 .L_40e3d5-.L_40d570
          .uleb128 .L_40e3da-.L_40e3d5
          .uleb128 .L_412047-.L_40d570
          .zero 1
          .uleb128 .L_40e40a-.L_40d570
          .uleb128 .L_40e4cb-.L_40e40a
          .zero 2
          .uleb128 .L_40e4d7-.L_40d570
          .uleb128 .L_40e4dc-.L_40e4d7
          .uleb128 .L_41124b-.L_40d570
          .zero 1
          .uleb128 .L_40e519-.L_40d570
          .uleb128 .L_40e51e-.L_40e519
          .zero 2
          .uleb128 .L_40e52a-.L_40d570
          .uleb128 .L_40e52f-.L_40e52a
          .uleb128 .L_4111a1-.L_40d570
          .zero 1
          .uleb128 .L_40e56c-.L_40d570
          .uleb128 .L_40e571-.L_40e56c
          .zero 2
          .uleb128 .L_40e57d-.L_40d570
          .uleb128 .L_40e582-.L_40e57d
          .uleb128 .L_41117f-.L_40d570
          .zero 1
          .uleb128 .L_40e5d5-.L_40d570
          .uleb128 .L_40e63b-.L_40e5d5
          .zero 2
          .uleb128 .L_40e647-.L_40d570
          .uleb128 .L_40e64c-.L_40e647
          .uleb128 .L_41101c-.L_40d570
          .zero 1
          .uleb128 .L_40e689-.L_40d570
          .uleb128 .L_40e68e-.L_40e689
          .zero 2
          .uleb128 .L_40e69a-.L_40d570
          .uleb128 .L_40e69f-.L_40e69a
          .uleb128 .L_41212e-.L_40d570
          .zero 1
          .uleb128 .L_40e6dc-.L_40d570
          .uleb128 .L_40e6e1-.L_40e6dc
          .zero 2
          .uleb128 .L_40e6ed-.L_40d570
          .uleb128 .L_40e6f2-.L_40e6ed
          .uleb128 .L_4112b1-.L_40d570
          .zero 1
          .uleb128 .L_40e72f-.L_40d570
          .uleb128 .L_40e734-.L_40e72f
          .zero 2
          .uleb128 .L_40e740-.L_40d570
          .uleb128 .L_40e745-.L_40e740
          .uleb128 .L_41128f-.L_40d570
          .zero 1
          .uleb128 .L_40e782-.L_40d570
          .uleb128 .L_40e787-.L_40e782
          .zero 2
          .uleb128 .L_40e793-.L_40d570
          .uleb128 .L_40e798-.L_40e793
          .uleb128 .L_41126d-.L_40d570
          .zero 1
          .uleb128 .L_40e7d5-.L_40d570
          .uleb128 .L_40e7da-.L_40e7d5
          .zero 2
          .uleb128 .L_40e7e6-.L_40d570
          .uleb128 .L_40e7eb-.L_40e7e6
          .uleb128 .L_4111e5-.L_40d570
          .zero 1
          .uleb128 .L_40e83e-.L_40d570
          .uleb128 .L_40e8ab-.L_40e83e
          .zero 2
          .uleb128 .L_40e8b7-.L_40d570
          .uleb128 .L_40e8bc-.L_40e8b7
          .uleb128 .L_411119-.L_40d570
          .zero 1
          .uleb128 .L_40e900-.L_40d570
          .uleb128 .L_40e93f-.L_40e900
          .zero 2
          .uleb128 .L_40e94c-.L_40d570
          .uleb128 .L_40e951-.L_40e94c
          .uleb128 .L_412371-.L_40d570
          .zero 1
          .uleb128 .L_40e966-.L_40d570
          .uleb128 .L_40e96b-.L_40e966
          .uleb128 .L_412339-.L_40d570
          .zero 1
          .uleb128 .L_40ea84-.L_40d570
          .uleb128 .L_40ea89-.L_40ea84
          .zero 2
          .uleb128 .L_40ea95-.L_40d570
          .uleb128 .L_40ea9a-.L_40ea95
          .uleb128 .L_41208b-.L_40d570
          .zero 1
          .uleb128 .L_40ead7-.L_40d570
          .uleb128 .L_40eadc-.L_40ead7
          .zero 2
          .uleb128 .L_40eae8-.L_40d570
          .uleb128 .L_40eaed-.L_40eae8
          .uleb128 .L_411726-.L_40d570
          .zero 1
          .uleb128 .L_40eb2a-.L_40d570
          .uleb128 .L_40eb2f-.L_40eb2a
          .zero 2
          .uleb128 .L_40eb3b-.L_40d570
          .uleb128 .L_40eb40-.L_40eb3b
          .uleb128 .L_411a9e-.L_40d570
          .zero 1
          .uleb128 .L_40eb93-.L_40d570
          .uleb128 .L_40ebd2-.L_40eb93
          .zero 2
          .uleb128 .L_40ebdf-.L_40d570
          .uleb128 .L_40ebe4-.L_40ebdf
          .uleb128 .L_412334-.L_40d570
          .zero 1
          .uleb128 .L_40ebf9-.L_40d570
          .uleb128 .L_40ebfe-.L_40ebf9
          .uleb128 .L_4122fc-.L_40d570
          .zero 1
          .uleb128 .L_40ed34-.L_40d570
          .uleb128 .L_40ed73-.L_40ed34
          .zero 2
          .uleb128 .L_40ed80-.L_40d570
          .uleb128 .L_40ed85-.L_40ed80
          .uleb128 .L_411a3f-.L_40d570
          .zero 1
          .uleb128 .L_40ed9a-.L_40d570
          .uleb128 .L_40ed9f-.L_40ed9a
          .uleb128 .L_411a07-.L_40d570
          .zero 1
          .uleb128 .L_40eed4-.L_40d570
          .uleb128 .L_40f002-.L_40eed4
          .zero 2
          .uleb128 .L_40f00f-.L_40d570
          .uleb128 .L_40f014-.L_40f00f
          .uleb128 .L_411d62-.L_40d570
          .zero 1
          .uleb128 .L_40f029-.L_40d570
          .uleb128 .L_40f02e-.L_40f029
          .uleb128 .L_411c72-.L_40d570
          .zero 1
          .uleb128 .L_40f164-.L_40d570
          .uleb128 .L_40f1a3-.L_40f164
          .zero 2
          .uleb128 .L_40f1b0-.L_40d570
          .uleb128 .L_40f1b5-.L_40f1b0
          .uleb128 .L_411d1f-.L_40d570
          .zero 1
          .uleb128 .L_40f1ca-.L_40d570
          .uleb128 .L_40f1cf-.L_40f1ca
          .uleb128 .L_411ce7-.L_40d570
          .zero 1
          .uleb128 .L_40f25c-.L_40d570
          .uleb128 .L_40f29b-.L_40f25c
          .zero 2
          .uleb128 .L_40f2a8-.L_40d570
          .uleb128 .L_40f2ad-.L_40f2a8
          .uleb128 .L_411ce2-.L_40d570
          .zero 1
          .uleb128 .L_40f2c2-.L_40d570
          .uleb128 .L_40f2c7-.L_40f2c2
          .uleb128 .L_411caa-.L_40d570
          .zero 1
          .uleb128 .L_40f33e-.L_40d570
          .uleb128 .L_40f343-.L_40f33e
          .zero 2
          .uleb128 .L_40f34f-.L_40d570
          .uleb128 .L_40f354-.L_40f34f
          .uleb128 .L_411c3a-.L_40d570
          .zero 1
          .uleb128 .L_40f391-.L_40d570
          .uleb128 .L_40f396-.L_40f391
          .zero 2
          .uleb128 .L_40f3a2-.L_40d570
          .uleb128 .L_40f3a7-.L_40f3a2
          .uleb128 .L_411c18-.L_40d570
          .zero 1
          .uleb128 .L_40f3e4-.L_40d570
          .uleb128 .L_40f3e9-.L_40f3e4
          .zero 2
          .uleb128 .L_40f3f5-.L_40d570
          .uleb128 .L_40f3fa-.L_40f3f5
          .uleb128 .L_412025-.L_40d570
          .zero 1
          .uleb128 .L_40f437-.L_40d570
          .uleb128 .L_40f43c-.L_40f437
          .zero 2
          .uleb128 .L_40f448-.L_40d570
          .uleb128 .L_40f44d-.L_40f448
          .uleb128 .L_412003-.L_40d570
          .zero 1
          .uleb128 .L_40f48a-.L_40d570
          .uleb128 .L_40f48f-.L_40f48a
          .zero 2
          .uleb128 .L_40f49b-.L_40d570
          .uleb128 .L_40f4a0-.L_40f49b
          .uleb128 .L_411ae0-.L_40d570
          .zero 1
          .uleb128 .L_40f4f3-.L_40d570
          .uleb128 .L_40f604-.L_40f4f3
          .zero 2
          .uleb128 .L_40f642-.L_40d570
          .uleb128 .L_40f647-.L_40f642
          .uleb128 .L_4123ae-.L_40d570
          .zero 1
          .uleb128 .L_40f658-.L_40d570
          .uleb128 .L_40f65d-.L_40f658
          .uleb128 .L_412376-.L_40d570
          .zero 1
          .uleb128 .L_40f6e4-.L_40d570
          .uleb128 .L_40f6e9-.L_40f6e4
          .zero 2
          .uleb128 .L_40f6f5-.L_40d570
          .uleb128 .L_40f6fa-.L_40f6f5
          .uleb128 .L_411b24-.L_40d570
          .zero 1
          .uleb128 .L_40f74d-.L_40d570
          .uleb128 .L_40f7e4-.L_40f74d
          .zero 2
          .uleb128 .L_40f822-.L_40d570
          .uleb128 .L_40f827-.L_40f822
          .uleb128 .L_412505-.L_40d570
          .zero 1
          .uleb128 .L_40f838-.L_40d570
          .uleb128 .L_40f83d-.L_40f838
          .uleb128 .L_4124d4-.L_40d570
          .zero 1
          .uleb128 .L_40f8c4-.L_40d570
          .uleb128 .L_40f8c9-.L_40f8c4
          .zero 2
          .uleb128 .L_40f8d5-.L_40d570
          .uleb128 .L_40f8da-.L_40f8d5
          .uleb128 .L_411b02-.L_40d570
          .zero 1
          .uleb128 .L_40f917-.L_40d570
          .uleb128 .L_40f91c-.L_40f917
          .zero 2
          .uleb128 .L_40f928-.L_40d570
          .uleb128 .L_40f92d-.L_40f928
          .uleb128 .L_411a44-.L_40d570
          .zero 1
          .uleb128 .L_40f9de-.L_40d570
          .uleb128 .L_40f9e3-.L_40f9de
          .zero 2
          .uleb128 .L_40f9ef-.L_40d570
          .uleb128 .L_40f9f4-.L_40f9ef
          .uleb128 .L_411f9d-.L_40d570
          .zero 1
          .uleb128 .L_40fa3e-.L_40d570
          .uleb128 .L_40fa43-.L_40fa3e
          .zero 2
          .uleb128 .L_40fa4f-.L_40d570
          .uleb128 .L_40fa54-.L_40fa4f
          .uleb128 .L_411229-.L_40d570
          .zero 1
          .uleb128 .L_40fa91-.L_40d570
          .uleb128 .L_40fa96-.L_40fa91
          .zero 2
          .uleb128 .L_40faa2-.L_40d570
          .uleb128 .L_40faa7-.L_40faa2
          .uleb128 .L_41113b-.L_40d570
          .zero 1
          .uleb128 .L_40fb13-.L_40d570
          .uleb128 .L_40fb52-.L_40fb13
          .zero 2
          .uleb128 .L_40fb5f-.L_40d570
          .uleb128 .L_40fb64-.L_40fb5f
          .uleb128 .L_4116b7-.L_40d570
          .zero 1
          .uleb128 .L_40fb79-.L_40d570
          .uleb128 .L_40fb7e-.L_40fb79
          .uleb128 .L_41210c-.L_40d570
          .zero 1
          .uleb128 .L_40fcb6-.L_40d570
          .uleb128 .L_40fd12-.L_40fcb6
          .zero 2
          .uleb128 .L_40fd1e-.L_40d570
          .uleb128 .L_40fd23-.L_40fd1e
          .uleb128 .L_4110f7-.L_40d570
          .zero 1
          .uleb128 .L_40fd60-.L_40d570
          .uleb128 .L_40fd65-.L_40fd60
          .zero 2
          .uleb128 .L_40fd71-.L_40d570
          .uleb128 .L_40fd76-.L_40fd71
          .uleb128 .L_411207-.L_40d570
          .zero 1
          .uleb128 .L_40fdbb-.L_40d570
          .uleb128 .L_40fdc0-.L_40fdbb
          .zero 2
          .uleb128 .L_40fdcc-.L_40d570
          .uleb128 .L_40fdd1-.L_40fdcc
          .uleb128 .L_411f59-.L_40d570
          .zero 1
          .uleb128 .L_40fe16-.L_40d570
          .uleb128 .L_40fe1b-.L_40fe16
          .zero 2
          .uleb128 .L_40fe27-.L_40d570
          .uleb128 .L_40fe2c-.L_40fe27
          .uleb128 .L_411f37-.L_40d570
          .zero 1
          .uleb128 .L_40fe69-.L_40d570
          .uleb128 .L_40fe6e-.L_40fe69
          .zero 2
          .uleb128 .L_40fe7a-.L_40d570
          .uleb128 .L_40fe7f-.L_40fe7a
          .uleb128 .L_4120e5-.L_40d570
          .zero 1
          .uleb128 .L_40febc-.L_40d570
          .uleb128 .L_40fec1-.L_40febc
          .zero 2
          .uleb128 .L_40fecd-.L_40d570
          .uleb128 .L_40fed2-.L_40fecd
          .uleb128 .L_412207-.L_40d570
          .zero 1
          .uleb128 .L_40ff4b-.L_40d570
          .uleb128 .L_40ff8c-.L_40ff4b
          .zero 2
          .uleb128 .L_40ffac-.L_40d570
          .uleb128 .L_40ffb1-.L_40ffac
          .uleb128 .L_411d24-.L_40d570
          .zero 1
          .uleb128 .L_40ffc4-.L_40d570
          .uleb128 .L_40ffc9-.L_40ffc4
          .uleb128 .L_411eec-.L_40d570
          .zero 1
          .uleb128 .L_410017-.L_40d570
          .uleb128 .L_41001c-.L_410017
          .uleb128 .L_411d24-.L_40d570
          .zero 1
          .uleb128 .L_410029-.L_40d570
          .uleb128 .L_41002e-.L_410029
          .uleb128 .L_411ee4-.L_40d570
          .zero 1
          .uleb128 .L_410041-.L_40d570
          .uleb128 .L_410046-.L_410041
          .uleb128 .L_411647-.L_40d570
          .zero 1
          .uleb128 .L_41012b-.L_40d570
          .uleb128 .L_410130-.L_41012b
          .zero 2
          .uleb128 .L_41013f-.L_40d570
          .uleb128 .L_410144-.L_41013f
          .uleb128 .L_4124b2-.L_40d570
          .zero 1
          .uleb128 .L_410153-.L_40d570
          .uleb128 .L_410158-.L_410153
          .uleb128 .L_411704-.L_40d570
          .zero 1
          .uleb128 .L_41018e-.L_40d570
          .uleb128 .L_4101bf-.L_41018e
          .zero 2
          .uleb128 .L_4101e4-.L_40d570
          .uleb128 .L_4101e9-.L_4101e4
          .uleb128 .L_411ad8-.L_40d570
          .zero 1
          .uleb128 .L_410206-.L_40d570
          .uleb128 .L_41020b-.L_410206
          .uleb128 .L_411ad0-.L_40d570
          .zero 1
          .uleb128 .L_410220-.L_40d570
          .uleb128 .L_410225-.L_410220
          .uleb128 .L_411ac8-.L_40d570
          .zero 1
          .uleb128 .L_410236-.L_40d570
          .uleb128 .L_41023b-.L_410236
          .uleb128 .L_411ac0-.L_40d570
          .zero 1
          .uleb128 .L_410250-.L_40d570
          .uleb128 .L_410255-.L_410250
          .uleb128 .L_4115bf-.L_40d570
          .zero 1
          .uleb128 .L_4103d4-.L_40d570
          .uleb128 .L_410451-.L_4103d4
          .zero 2
          .uleb128 .L_410488-.L_40d570
          .uleb128 .L_41048d-.L_410488
          .uleb128 .L_4110ba-.L_40d570
          .zero 1
          .uleb128 .L_4104aa-.L_40d570
          .uleb128 .L_4104af-.L_4104aa
          .uleb128 .L_4110b5-.L_40d570
          .zero 1
          .uleb128 .L_4104c4-.L_40d570
          .uleb128 .L_4104c9-.L_4104c4
          .uleb128 .L_4110b0-.L_40d570
          .zero 1
          .uleb128 .L_4104db-.L_40d570
          .uleb128 .L_4104e0-.L_4104db
          .uleb128 .L_41103e-.L_40d570
          .zero 1
          .uleb128 .L_4104f5-.L_40d570
          .uleb128 .L_4104fa-.L_4104f5
          .uleb128 .L_4110d5-.L_40d570
          .zero 1
          .uleb128 .L_410664-.L_40d570
          .uleb128 .L_410669-.L_410664
          .zero 2
          .uleb128 .L_4106a0-.L_40d570
          .uleb128 .L_4106a5-.L_4106a0
          .uleb128 .L_410ff5-.L_40d570
          .zero 1
          .uleb128 .L_4106c2-.L_40d570
          .uleb128 .L_4106c7-.L_4106c2
          .uleb128 .L_410fb4-.L_40d570
          .zero 1
          .uleb128 .L_4106dc-.L_40d570
          .uleb128 .L_4106e1-.L_4106dc
          .uleb128 .L_412202-.L_40d570
          .zero 1
          .uleb128 .L_4106f3-.L_40d570
          .uleb128 .L_4106f8-.L_4106f3
          .uleb128 .L_4121fd-.L_40d570
          .zero 1
          .uleb128 .L_41070d-.L_40d570
          .uleb128 .L_410712-.L_41070d
          .uleb128 .L_4121aa-.L_40d570
          .zero 1
          .uleb128 .L_4108b5-.L_40d570
          .uleb128 .L_4108fe-.L_4108b5
          .zero 2
          .uleb128 .L_410923-.L_40d570
          .uleb128 .L_410928-.L_410923
          .uleb128 .L_410f8c-.L_40d570
          .zero 1
          .uleb128 .L_410952-.L_40d570
          .uleb128 .L_410957-.L_410952
          .uleb128 .L_410f84-.L_40d570
          .zero 1
          .uleb128 .L_410973-.L_40d570
          .uleb128 .L_410978-.L_410973
          .uleb128 .L_410fac-.L_40d570
          .zero 1
          .uleb128 .L_410995-.L_40d570
          .uleb128 .L_41099a-.L_410995
          .uleb128 .L_410fa4-.L_40d570
          .zero 1
          .uleb128 .L_4109b3-.L_40d570
          .uleb128 .L_4109b8-.L_4109b3
          .uleb128 .L_410f9c-.L_40d570
          .zero 1
          .uleb128 .L_4109cd-.L_40d570
          .uleb128 .L_4109d2-.L_4109cd
          .uleb128 .L_410f94-.L_40d570
          .zero 1
          .uleb128 .L_4109e3-.L_40d570
          .uleb128 .L_4109e8-.L_4109e3
          .uleb128 .L_410ca7-.L_40d570
          .zero 1
          .uleb128 .L_4109fd-.L_40d570
          .uleb128 .L_410a02-.L_4109fd
          .uleb128 .L_410bd8-.L_40d570
          .zero 1
          .uleb128 .L_410ca2-.L_40d570
          .uleb128 .L_410ce9-.L_410ca2
          .zero 2
          .uleb128 .L_410d0e-.L_40d570
          .uleb128 .L_410d13-.L_410d0e
          .uleb128 .L_410f7f-.L_40d570
          .zero 1
          .uleb128 .L_410d30-.L_40d570
          .uleb128 .L_410d35-.L_410d30
          .uleb128 .L_410f7a-.L_40d570
          .zero 1
          .uleb128 .L_410d4a-.L_40d570
          .uleb128 .L_410d4f-.L_410d4a
          .uleb128 .L_410f75-.L_40d570
          .zero 1
          .uleb128 .L_410d60-.L_40d570
          .uleb128 .L_410d65-.L_410d60
          .uleb128 .L_410f70-.L_40d570
          .zero 1
          .uleb128 .L_410d7a-.L_40d570
          .uleb128 .L_410d7f-.L_410d7a
          .uleb128 .L_410ee8-.L_40d570
          .zero 1
          .uleb128 .L_4112ea-.L_40d570
          .uleb128 .L_4112ef-.L_4112ea
          .zero 2
          .uleb128 .L_411326-.L_40d570
          .uleb128 .L_41132b-.L_411326
          .uleb128 .L_411598-.L_40d570
          .zero 1
          .uleb128 .L_411348-.L_40d570
          .uleb128 .L_41134d-.L_411348
          .uleb128 .L_411593-.L_40d570
          .zero 1
          .uleb128 .L_411362-.L_40d570
          .uleb128 .L_411367-.L_411362
          .uleb128 .L_41158e-.L_40d570
          .zero 1
          .uleb128 .L_411379-.L_40d570
          .uleb128 .L_41137e-.L_411379
          .uleb128 .L_411589-.L_40d570
          .zero 1
          .uleb128 .L_411393-.L_40d570
          .uleb128 .L_411398-.L_411393
          .uleb128 .L_411501-.L_40d570
          .zero 1
          .uleb128 .L_411767-.L_40d570
          .uleb128 .L_41176c-.L_411767
          .zero 2
          .uleb128 .L_411791-.L_40d570
          .uleb128 .L_411796-.L_411791
          .uleb128 .L_411a02-.L_40d570
          .zero 1
          .uleb128 .L_4117b3-.L_40d570
          .uleb128 .L_4117b8-.L_4117b3
          .uleb128 .L_4119fd-.L_40d570
          .zero 1
          .uleb128 .L_4117cd-.L_40d570
          .uleb128 .L_4117d2-.L_4117cd
          .uleb128 .L_4119f8-.L_40d570
          .zero 1
          .uleb128 .L_4117e3-.L_40d570
          .uleb128 .L_4117e8-.L_4117e3
          .uleb128 .L_4119f3-.L_40d570
          .zero 1
          .uleb128 .L_4117fd-.L_40d570
          .uleb128 .L_411802-.L_4117fd
          .uleb128 .L_41196b-.L_40d570
          .zero 1
          .uleb128 .L_411b61-.L_40d570
          .uleb128 .L_411b66-.L_411b61
          .zero 2
          .uleb128 .L_411b84-.L_40d570
          .uleb128 .L_411b89-.L_411b84
          .uleb128 .L_411c13-.L_40d570
          .zero 1
          .uleb128 .L_411ba1-.L_40d570
          .uleb128 .L_411ba6-.L_411ba1
          .uleb128 .L_411bdb-.L_40d570
          .zero 1
          .uleb128 .L_411d36-.L_40d570
          .uleb128 .L_411d3b-.L_411d36
          .uleb128 .L_411d24-.L_40d570
          .zero 1
          .uleb128 .L_411f32-.L_40d570
          .uleb128 .L_411f37-.L_411f32
          .uleb128 .L_411f09-.L_40d570
          .zero 1
          .uleb128 .L_41223c-.L_40d570
          .uleb128 .L_412241-.L_41223c
          .zero 2
          .uleb128 .L_412261-.L_40d570
          .uleb128 .L_412283-.L_412261
          .uleb128 .L_4122da-.L_40d570
          .zero 1
          .uleb128 .L_4123c6-.L_40d570
          .uleb128 .L_4123cb-.L_4123c6
          .zero 2
          .uleb128 .L_4123ff-.L_40d570
          .uleb128 .L_412404-.L_4123ff
          .uleb128 .L_41248e-.L_40d570
          .zero 1
          .uleb128 .L_41241c-.L_40d570
          .uleb128 .L_412421-.L_41241c
          .uleb128 .L_412456-.L_40d570
          .zero 1
.L_417fc1:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417fdb-.L_417fc5
.L_417fc5:
          .uleb128 .L_4125a7-.L_412520
          .uleb128 .L_4125e4-.L_4125a7
          .zero 2
          .uleb128 .L_4125f1-.L_412520
          .uleb128 .L_4125f6-.L_4125f1
          .uleb128 .L_41275c-.L_412520
          .zero 1
          .uleb128 .L_412608-.L_412520
          .uleb128 .L_41260d-.L_412608
          .uleb128 .L_41272b-.L_412520
          .zero 1
          .uleb128 .L_412757-.L_412520
          .uleb128 .L_41275c-.L_412757
          .zero 2
.L_417fdb:
          .zero 1
.L_417fdc:
          .byte 0xff
          .byte 0x9b
          .uleb128 .L_41800c-.L_417fdf
.L_417fdf:
          .byte 0x1
          .uleb128 .L_418003-.L_417fe1
.L_417fe1:
          .uleb128 .L_4127e8-.L_412770
          .uleb128 .L_412875-.L_4127e8
          .zero 2
          .uleb128 .L_412909-.L_412770
          .uleb128 .L_41290e-.L_412909
          .uleb128 .L_412b06-.L_412770
          .byte 0x1
          .uleb128 .L_412925-.L_412770
          .uleb128 .L_41292a-.L_412925
          .uleb128 .L_412ae6-.L_412770
          .byte 0x1
          .uleb128 .L_4129a8-.L_412770
          .uleb128 .L_412a8f-.L_4129a8
          .zero 2
          .uleb128 .L_412b01-.L_412770
          .uleb128 .L_412b06-.L_412b01
          .uleb128 .L_412b08-.L_412770
          .zero 1
          .uleb128 .L_412b2f-.L_412770
          .uleb128 .L_412b34-.L_412b2f
          .zero 2
.L_418003:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_41800c:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_41802b-.L_418010
.L_418010:
          .uleb128 .L_412b8d-.L_412b40
          .uleb128 .L_412c26-.L_412b8d
          .zero 2
          .uleb128 .L_412c67-.L_412b40
          .uleb128 .L_412c6c-.L_412c67
          .uleb128 .L_412de1-.L_412b40
          .zero 1
          .uleb128 .L_412ca9-.L_412b40
          .uleb128 .L_412cfc-.L_412ca9
          .zero 2
          .uleb128 .L_412d3d-.L_412b40
          .uleb128 .L_412d42-.L_412d3d
          .uleb128 .L_412dc4-.L_412b40
          .zero 1
          .uleb128 .L_412d69-.L_412b40
          .uleb128 .L_412de1-.L_412d69
          .zero 2
.L_41802b:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_418067-.L_41802f
.L_41802f:
          .uleb128 .L_412e20-.L_412df0
          .uleb128 .L_412e90-.L_412e20
          .zero 2
          .uleb128 .L_412eed-.L_412df0
          .uleb128 .L_412ef2-.L_412eed
          .uleb128 .L_413245-.L_412df0
          .zero 1
          .uleb128 .L_412f16-.L_412df0
          .uleb128 .L_412f1b-.L_412f16
          .uleb128 .L_4131f1-.L_412df0
          .zero 1
          .uleb128 .L_412f69-.L_412df0
          .uleb128 .L_412f6e-.L_412f69
          .uleb128 .L_41324a-.L_412df0
          .zero 1
          .uleb128 .L_412fd6-.L_412df0
          .uleb128 .L_412fdb-.L_412fd6
          .uleb128 .L_41322d-.L_412df0
          .zero 1
          .uleb128 .L_41310f-.L_412df0
          .uleb128 .L_413114-.L_41310f
          .uleb128 .L_41324a-.L_412df0
          .zero 1
          .uleb128 .L_413128-.L_412df0
          .uleb128 .L_41312d-.L_413128
          .zero 2
          .uleb128 .L_4131ec-.L_412df0
          .uleb128 .L_4131f1-.L_4131ec
          .uleb128 .L_4131f1-.L_412df0
          .zero 1
          .uleb128 .L_41321c-.L_412df0
          .uleb128 .L_413221-.L_41321c
          .zero 2
          .uleb128 .L_413228-.L_412df0
          .uleb128 .L_41322d-.L_413228
          .uleb128 .L_41322d-.L_412df0
          .zero 1
.L_418067:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_4180ce-.L_41806b
.L_41806b:
          .uleb128 .L_413283-.L_413250
          .uleb128 .L_413314-.L_413283
          .zero 2
          .uleb128 .L_4133de-.L_413250
          .uleb128 .L_4133e3-.L_4133de
          .uleb128 .L_413ac3-.L_413250
          .zero 1
          .uleb128 .L_4134ae-.L_413250
          .uleb128 .L_4134b3-.L_4134ae
          .uleb128 .L_413af2-.L_413250
          .zero 1
          .uleb128 .L_4134dc-.L_413250
          .uleb128 .L_4134e1-.L_4134dc
          .uleb128 .L_4139e1-.L_413250
          .zero 1
          .uleb128 .L_413549-.L_413250
          .uleb128 .L_41354e-.L_413549
          .uleb128 .L_413ab9-.L_413250
          .zero 1
          .uleb128 .L_4135cc-.L_413250
          .uleb128 .L_4135d1-.L_4135cc
          .uleb128 .L_413ab4-.L_413250
          .zero 1
          .uleb128 .L_413631-.L_413250
          .uleb128 .L_413636-.L_413631
          .uleb128 .L_413abe-.L_413250
          .zero 1
          .uleb128 .L_4136b0-.L_413250
          .uleb128 .L_4136b5-.L_4136b0
          .uleb128 .L_413a3f-.L_413250
          .zero 1
          .uleb128 .L_413726-.L_413250
          .uleb128 .L_41372b-.L_413726
          .uleb128 .L_413acb-.L_413250
          .zero 1
          .uleb128 .L_41396a-.L_413250
          .uleb128 .L_41396f-.L_41396a
          .uleb128 .L_413af2-.L_413250
          .zero 1
          .uleb128 .L_413988-.L_413250
          .uleb128 .L_41398d-.L_413988
          .uleb128 .L_413ac3-.L_413250
          .zero 1
          .uleb128 .L_4139a0-.L_413250
          .uleb128 .L_4139a5-.L_4139a0
          .zero 2
          .uleb128 .L_4139c2-.L_413250
          .uleb128 .L_4139c7-.L_4139c2
          .uleb128 .L_413af2-.L_413250
          .zero 1
          .uleb128 .L_4139dc-.L_413250
          .uleb128 .L_4139e1-.L_4139dc
          .uleb128 .L_4139e1-.L_413250
          .zero 1
          .uleb128 .L_413a2e-.L_413250
          .uleb128 .L_413a33-.L_413a2e
          .zero 2
          .uleb128 .L_413a3a-.L_413250
          .uleb128 .L_413a3f-.L_413a3a
          .uleb128 .L_413a3f-.L_413250
          .zero 1
          .uleb128 .L_413aaf-.L_413250
          .uleb128 .L_413ab4-.L_413aaf
          .uleb128 .L_413ab4-.L_413250
          .zero 1
.L_4180ce:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_41811e-.L_4180d2
.L_4180d2:
          .uleb128 .L_413b91-.L_413b00
          .uleb128 .L_413bcf-.L_413b91
          .zero 2
          .uleb128 .L_413c58-.L_413b00
          .uleb128 .L_413c5d-.L_413c58
          .uleb128 .L_414224-.L_413b00
          .zero 1
          .uleb128 .L_413cba-.L_413b00
          .uleb128 .L_413cbf-.L_413cba
          .uleb128 .L_414217-.L_413b00
          .zero 1
          .uleb128 .L_413d3a-.L_413b00
          .uleb128 .L_413d61-.L_413d3a
          .uleb128 .L_41421c-.L_413b00
          .zero 1
          .uleb128 .L_413d76-.L_413b00
          .uleb128 .L_413d7b-.L_413d76
          .uleb128 .L_414262-.L_413b00
          .zero 1
          .uleb128 .L_413d8e-.L_413b00
          .uleb128 .L_413d93-.L_413d8e
          .uleb128 .L_414229-.L_413b00
          .zero 1
          .uleb128 .L_413dcf-.L_413b00
          .uleb128 .L_413dd4-.L_413dcf
          .uleb128 .L_41421c-.L_413b00
          .zero 1
          .uleb128 .L_413f9f-.L_413b00
          .uleb128 .L_413fa4-.L_413f9f
          .zero 2
          .uleb128 .L_414006-.L_413b00
          .uleb128 .L_41400b-.L_414006
          .uleb128 .L_414224-.L_413b00
          .zero 1
          .uleb128 .L_414062-.L_413b00
          .uleb128 .L_4140ed-.L_414062
          .uleb128 .L_41421c-.L_413b00
          .zero 1
          .uleb128 .L_414102-.L_413b00
          .uleb128 .L_414107-.L_414102
          .uleb128 .L_414176-.L_413b00
          .zero 1
          .uleb128 .L_41411a-.L_413b00
          .uleb128 .L_41411f-.L_41411a
          .uleb128 .L_4141f6-.L_413b00
          .zero 1
          .uleb128 .L_4141f1-.L_413b00
          .uleb128 .L_4141f6-.L_4141f1
          .zero 2
.L_41811e:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_41813f-.L_418122
.L_418122:
          .uleb128 .L_414300-.L_414270
          .uleb128 .L_4143ef-.L_414300
          .zero 2
          .uleb128 .L_4143fc-.L_414270
          .uleb128 .L_414401-.L_4143fc
          .uleb128 .L_414519-.L_414270
          .zero 1
          .uleb128 .L_414413-.L_414270
          .uleb128 .L_414418-.L_414413
          .uleb128 .L_414561-.L_414270
          .zero 1
          .uleb128 .L_41442a-.L_414270
          .uleb128 .L_41442f-.L_41442a
          .uleb128 .L_414536-.L_414270
          .zero 1
          .uleb128 .L_4144bf-.L_414270
          .uleb128 .L_414536-.L_4144bf
          .zero 2
.L_41813f:
          .zero 1
.L_418140:
          .byte 0xff
          .byte 0x9b
          .uleb128 .L_418158-.L_418143
.L_418143:
          .byte 0x1
          .uleb128 .L_418151-.L_418145
.L_418145:
          .uleb128 .L_414a71-__cxa_demangle
          .uleb128 .L_414bf1-.L_414a71
          .uleb128 .L_414c5c-__cxa_demangle
          .zero 1
          .uleb128 .L_414e05-__cxa_demangle
          .uleb128 .L_414e0a-.L_414e05
          .zero 2
.L_418151:
          .zero 7
.L_418158:
#===================================
# end section .gcc_except_table
#===================================

#===================================
.section .init_array ,"wa"
.align 8
#===================================

.L_618df0:
          .quad .L_400f60
#===================================
# end section .init_array
#===================================

#===================================
.section .fini_array ,"wa"
.align 8
#===================================

.L_618df8:
#===================================
# end section .fini_array
#===================================

#===================================
.data
.align 8
#===================================

          .zero 16
.L_619108:
          .quad __gxx_personality_v0
#===================================
# end section .data
#===================================

#===================================
.bss
.align 16
#===================================

.L_619110:
          .zero 8
#===================================
# end section .bss
#===================================
