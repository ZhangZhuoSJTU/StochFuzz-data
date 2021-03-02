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
.L_400fb4:

            mov RDI,QWORD PTR [RSI+8]
            lea RSI,QWORD PTR [RIP+.L_412a31]
            call fopen@PLT

            test RAX,RAX
            je .L_401038

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
            je .L_40105f

            mov RCX,RBX
            mov RDX,RBP
            mov ESI,1
            mov RDI,RAX
            call fread@PLT

            cmp RBP,RAX
            jne .L_401042

            mov RSI,RBP
            mov RDI,R12
            call .L_401220

            mov RDI,R12
            call free@PLT

            mov RDI,RBX
            call fclose@PLT

            pop RBX
.L_401032:

            xor EAX,EAX
            pop RBP
            pop R12
            ret 
.L_401038:

            mov EDI,1
            call exit@PLT
.L_401042:

            lea RSI,QWORD PTR [RIP+.L_412a43]
            mov EDI,1
            xor EAX,EAX
            call __printf_chk@PLT

            mov EDI,3
            call exit@PLT
.L_40105f:

            lea RSI,QWORD PTR [RIP+.L_412a34]
            mov EDI,1
            xor EAX,EAX
            call __printf_chk@PLT

            mov EDI,2
            call exit@PLT
.L_40107c:

            nop
            nop
            nop
            nop
.L_4010b0:

            ret 
.L_4010b2:

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
.L_4010c0:

            push RBP
            mov EAX,6394296
            cmp RAX,6394296
            mov RBP,RSP
            je .L_4010e8

            mov EAX,0
            test RAX,RAX
            je .L_4010e8

            pop RBP
            mov EDI,6394296
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4010e8:

            pop RBP
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4010f0:

            mov ESI,6394296
            push RBP
            sub RSI,6394296
            mov RBP,RSP
            sar RSI,3
            mov RAX,RSI
            shr RAX,63
            add RSI,RAX
            sar RSI,1
            je .L_401128

            mov EAX,0
            test RAX,RAX
            je .L_401128

            pop RBP
            mov EDI,6394296
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401128:

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
.L_401160:

            push RBP
            mov RBP,RSP
            pop RBP
            jmp .L_4010f0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401170:

            push R13
            push R12
            mov R13,RSI
            push RBP
            push RBX
            mov RBP,RDX
            mov R12,RDI
            sub RSP,8
            call .L_401e60

            cmp QWORD PTR [RAX+8],RBP
            mov RBX,RAX
            jae .L_4011a0

            lea RSI,QWORD PTR [RIP+.L_412a04]
            mov RDI,R12
            call .L_40c520
.L_4011a0:

            mov RSI,QWORD PTR [RBX]
            mov RDX,RBP
            mov RDI,R13
            call memcpy@PLT

            sub QWORD PTR [RBX+8],RBP
            add QWORD PTR [RBX],RBP
            add RSP,8
            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
.L_4011c0:

            push RBP
            push RBX
            lea RDX,QWORD PTR [RIP+.L_414179]
            mov ECX,4
            mov RBX,RDI
            mov RBP,RSI
            sub RSP,8
            call memmem@PLT

            mov RDX,RAX
            xor EAX,EAX
            test RDX,RDX
            je .L_40120e

            lea RCX,QWORD PTR [RDX+12]
            add RBX,RBP
            cmp RCX,RBX
            ja .L_40120e

            mov EAX,DWORD PTR [RDX+4]
            mov EDX,DWORD PTR [RDX+8]
            bswap EAX
            bswap EDX
            mov EAX,EAX
            mov EDX,EDX
            imul RAX,RDX
            cmp RAX,100000
            seta AL
.L_40120e:

            add RSP,8
            pop RBX
            pop RBP
            ret 
.L_401215:

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
.L_401220:

            push RBP
            mov RBP,RSP
            push R14
            push R12
            push RBX
            sub RSP,136
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RBP-40],RAX
            xor EAX,EAX
            cmp RSI,7
            ja .L_401268
.L_401245:

            xor EAX,EAX
            mov RCX,QWORD PTR [RBP-40]
            xor RCX,QWORD PTR FS:[40]
            jne .L_4014a2

            lea RSP,QWORD PTR [RBP-24]
            pop RBX
            pop R12
            pop R14
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401268:

            mov RBX,RSI
            mov EDX,8
            xor ESI,ESI
            mov R12,RDI
            mov QWORD PTR [RBP-80],0
            mov QWORD PTR [RBP-72],0
            mov QWORD PTR [RBP-64],0
            mov QWORD PTR [RBP-56],0
.L_401295:

            call .L_401590
.L_40129a:

            test EAX,EAX
            je .L_4012e8
.L_40129e:

            mov RSI,QWORD PTR [RBP-72]
.L_4012a2:

            test RSI,RSI
            mov RDI,QWORD PTR [RBP-64]
            je .L_4012b9

            test RDI,RDI
            je .L_4012d4

            call .L_40c120

            mov RDI,QWORD PTR [RBP-64]
.L_4012b9:

            test RDI,RDI
            je .L_4012d4

            cmp QWORD PTR [RBP-80],0
            je .L_4012d4

            lea RSI,QWORD PTR [RBP-80]
            xor EDX,EDX
            lea RDI,QWORD PTR [RSI+16]
            call .L_405760
.L_4012d4:

            mov RDI,QWORD PTR [RBP-56]
            call _ZdlPv@PLT

            jmp .L_401245
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4012e8:

            lea RAX,QWORD PTR [RBP-80]
            lea RDI,QWORD PTR [RIP+.L_412a0f]
            xor ECX,ECX
            xor EDX,EDX
            xor ESI,ESI
            mov QWORD PTR [RBP-152],RAX
            add RAX,16
            mov QWORD PTR [RBP-136],RAX
.L_40130b:

            call .L_4046c0

            test RAX,RAX
            mov QWORD PTR [RBP-64],RAX
            je .L_40150e

            mov RDX,QWORD PTR [RAX+288]
            lea RCX,QWORD PTR [RBP-80]
            mov RDI,RAX
            mov QWORD PTR [RBP-144],RCX
            and DH,240
            or DH,10
            mov QWORD PTR [RAX+288],RDX
            call .L_401790

            test RAX,RAX
            mov QWORD PTR [RBP-80],RAX
            je .L_4014ef

            mov EDI,16
            call _Znwm@PLT

            mov RCX,R12
            mov RDI,QWORD PTR [RBP-64]
            sub RBX,8
            add RCX,8
            lea RDX,QWORD PTR [RIP+.L_401170]
            mov QWORD PTR [RAX+8],RBX
            mov QWORD PTR [RAX],RCX
            mov RSI,RAX
            mov QWORD PTR [RBP-56],RAX
            call .L_405c70

            mov RDI,QWORD PTR [RBP-64]
            mov ESI,8
            call .L_401530

            mov RDI,QWORD PTR [RBP-64]
            call _setjmp@PLT

            test EAX,EAX
            mov R14D,EAX
            jne .L_40129e

            mov RBX,QWORD PTR [RBP-144]
            mov R12,QWORD PTR [RBP-152]
            mov RSI,QWORD PTR [RBX]
            mov RDI,QWORD PTR [R12+16]
            call .L_404bb0

            lea RAX,QWORD PTR [RBP-100]
            sub RSP,8
            mov RSI,QWORD PTR [RBX]
            mov RDI,QWORD PTR [R12+16]
            lea RCX,QWORD PTR [RBP-88]
            lea RDX,QWORD PTR [RBP-96]
            push RAX
            lea RAX,QWORD PTR [RBP-104]
            lea R9,QWORD PTR [RBP-112]
            lea R8,QWORD PTR [RBP-116]
            push RAX
            lea RAX,QWORD PTR [RBP-108]
            push RAX
.L_4013ec:

            call .L_402e00

            add RSP,32
            test RAX,RAX
            je .L_40129e

            mov RAX,QWORD PTR [RBP-88]
            imul RAX,QWORD PTR [RBP-96]
            cmp RAX,2000000
            ja .L_40129e

            mov RBX,QWORD PTR [RBP-152]
            mov RDI,QWORD PTR [RBX+16]
            call .L_403390

            mov RDI,QWORD PTR [RBX+16]
            mov R12D,EAX
            call .L_404c30

            mov RAX,QWORD PTR [RBP-144]
            mov RDI,QWORD PTR [RBX+16]
            mov RSI,QWORD PTR [RAX]
            call .L_4026f0

            mov RDI,QWORD PTR [RBX+16]
            mov RSI,RAX
            call .L_40c040

            test R12D,R12D
            mov RSI,RAX
            mov QWORD PTR [RBP-72],RAX
            jle .L_4012a2

            nop
            nop
.L_401460:

            cmp QWORD PTR [RBP-88],0
            je .L_40148f

            xor EBX,EBX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401470:

            mov RAX,QWORD PTR [RBP-136]
            xor EDX,EDX
            mov RDI,QWORD PTR [RAX]
            call .L_404c50
.L_401481:

            add RBX,1
            cmp QWORD PTR [RBP-88],RBX
            mov RSI,QWORD PTR [RBP-72]
            ja .L_401470
.L_40148f:

            mov EAX,R14D
            add EAX,1
            cmp R12D,EAX
            mov R14D,EAX
            jne .L_401460

            jmp .L_4012a2
.L_4014a2:

            call __stack_chk_fail@PLT
.L_4014a7:

            mov RSI,QWORD PTR [RBP-72]
            mov RBX,RAX
            mov RDI,QWORD PTR [RBP-64]
            test RSI,RSI
            je .L_4014c1

            test RDI,RDI
            je .L_4014de

            call .L_40c120
.L_4014c1:

            cmp QWORD PTR [RBP-64],0
            je .L_4014de

            cmp QWORD PTR [RBP-80],0
            je .L_4014de

            lea RSI,QWORD PTR [RBP-80]
            xor EDX,EDX
            lea RDI,QWORD PTR [RSI+16]
            call .L_405760
.L_4014de:

            mov RDI,QWORD PTR [RBP-56]
            call _ZdlPv@PLT

            mov RDI,RBX
.L_4014ea:

            call _Unwind_Resume@PLT
.L_4014ef:

            lea RCX,QWORD PTR [RIP+.L_412a60]
            lea RSI,QWORD PTR [RIP+.L_412a16]
            lea RDI,QWORD PTR [RIP+.L_412a28]
            mov EDX,87
            call __assert_fail@PLT
.L_40150e:

            lea RCX,QWORD PTR [RIP+.L_412a60]
            lea RSI,QWORD PTR [RIP+.L_412a16]
            lea RDI,QWORD PTR [RIP+.L_412a20]
            mov EDX,77
            call __assert_fail@PLT
.L_40152d:

            nop
            nop
            nop
.L_401530:

            test RDI,RDI
            je .L_401580

            push RBP
            push RBX
            mov EBP,ESI
            mov RBX,RDI
            sub RSP,8
            cmp ESI,8
            jg .L_401560

            xor EAX,EAX
            test ESI,ESI
            jns .L_40156c

            mov BYTE PTR [RBX+636],AL
            add RSP,8
            pop RBX
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401560:

            lea RSI,QWORD PTR [RIP+.L_412a98]
            call .L_40c520
.L_40156c:

            mov EAX,EBP
            mov BYTE PTR [RBX+636],AL
            add RSP,8
            pop RBX
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401580:

            ret 
.L_401582:

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
.L_401590:

            sub RSP,24
.L_401594:

            mov RAX,RSI
            movabs RCX,727905341920923785
            mov RSI,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RSI
            xor ESI,ESI
            cmp RDX,8
            mov QWORD PTR [RSP],RCX
            ja .L_401600

            test RDX,RDX
            je .L_401610
.L_4015c0:

            cmp RAX,7
            ja .L_401610

            lea RSI,QWORD PTR [RDX+RAX*1]
            mov ECX,8
            sub RCX,RAX
            cmp RSI,8
            lea RSI,QWORD PTR [RSP+RAX*1]
            cmova RDX,RCX
            add RDI,RAX
            call memcmp@PLT
.L_4015e6:

            mov RCX,QWORD PTR [RSP+8]
            xor RCX,QWORD PTR FS:[40]
            jne .L_401617

            add RSP,24
.L_4015fa:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401600:

            mov EDX,8
            jmp .L_4015c0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401610:

            mov EAX,4294967295
            jmp .L_4015e6
.L_401617:

            call __stack_chk_fail@PLT
.L_40161c:

            nop
            nop
            nop
            nop
.L_401620:

            sub RSP,8
            movsxd RDX,ESI
            xor ESI,ESI
            call .L_401590

            test EAX,EAX
            sete AL
            add RSP,8
            movzx EAX,AL
            ret 
.L_40163b:

            nop
            nop
            nop
            nop
            nop
.L_401640:

            test RDI,RDI
            je .L_401680

            push RBP
            push RBX
            mov EDX,EDX
            mov ESI,ESI
            mov RBX,RDI
            sub RSP,8
            mov RBP,QWORD PTR [RDI+288]
            imul RSI,RDX
            mov RAX,RBP
            or RAX,1048576
            mov QWORD PTR [RDI+288],RAX
            call .L_40c040

            mov QWORD PTR [RBX+288],RBP
            add RSP,8
            pop RBX
            pop RBP
            ret 
.L_401680:

            xor EAX,EAX
            ret 
.L_401683:

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
.L_401690:

            jmp .L_40c120
.L_401695:

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
.L_4016a0:

            push RBX
            xor EDX,EDX
            mov RBX,RDI
            xor ESI,ESI
            xor EDI,EDI
            call crc32@PLT

            mov QWORD PTR [RBX+600],RAX
            pop RBX
            ret 
.L_4016b8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4016c0:

            test BYTE PTR [RDI+620],32
            mov RAX,QWORD PTR [RDI+288]
            je .L_401700

            and EAX,768
            cmp RAX,768
            je .L_401710
.L_4016dd:

            push RBX
            mov RBX,RDI
            mov RDI,QWORD PTR [RDI+600]
            call crc32@PLT

            mov QWORD PTR [RBX+600],RAX
            pop RBX
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
.L_401700:

            test AH,8
            je .L_4016dd

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
.L_401710:

            ret 
.L_401712:

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
.L_401720:

            mov RAX,QWORD PTR [RDI]
            test RAX,RAX
            je .L_401780

            cmp RSI,463
            push RBX

            ja .L_40174f

            mov RBX,RDI
            mov RDI,RAX
            call .L_40c030

            mov EDI,2
            call .L_40bfa0

            test RAX,RAX
            mov QWORD PTR [RBX],RAX
            je .L_40177a
.L_40174f:

            lea RDI,QWORD PTR [RAX+8]
            mov QWORD PTR [RAX],0
            mov QWORD PTR [RAX+456],0
            and RDI,-8
            sub RAX,RDI
            lea ECX,DWORD PTR [RAX+464]
            xor EAX,EAX
            shr ECX,3

            rep stosq QWORD PTR [RDI]
.L_40177a:

            pop RBX

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_401780:

            ret 
.L_401782:

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
.L_401790:

            sub RSP,24
.L_401794:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            test RDI,RDI
            je .L_4017f0

            mov RDX,QWORD PTR [RDI+1080]
            mov RSI,QWORD PTR [RDI+1088]
            mov EDI,2
            call .L_40bec0

            test RAX,RAX
            mov QWORD PTR [RSP],RAX
            je .L_4017db

            mov RDI,RSP
            mov ESI,464
            call .L_401720

            mov RAX,QWORD PTR [RSP]
.L_4017db:

            mov RCX,QWORD PTR [RSP+8]
            xor RCX,QWORD PTR FS:[40]
            jne .L_4017f4

            add RSP,24
.L_4017ef:

            ret 
.L_4017f0:

            xor EAX,EAX
            jmp .L_4017db
.L_4017f4:

            call __stack_chk_fail@PLT
.L_4017f9:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401800:

            sub RSP,24
            xor ESI,ESI
            mov QWORD PTR [RSP+8],RDI
            lea RDI,QWORD PTR [RSP+8]
            call .L_401720

            add RSP,24
            ret 
.L_40181a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_401820:

            test RDI,RDI
            je .L_401840

            test RSI,RSI
            je .L_401840

            cmp EDX,1
            je .L_401858

            cmp EDX,2
            je .L_401848

            lea RSI,QWORD PTR [RIP+.L_412ac0]
            jmp .L_40c5f0
.L_401840:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401848:

            not RCX
            and QWORD PTR [RSI+272],RCX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401858:

            or QWORD PTR [RSI+272],RCX
            ret 
.L_401860:

            test RDI,RDI
            je .L_401870

            test RSI,RSI
            je .L_401870

            jmp .L_401880
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_401870:

            ret 
.L_401872:

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
.L_401880:

            push R15
            push R14
            mov R14D,ECX
            push R13
            push R12
            mov R12,RDI
            push RBP
            push RBX
            mov RBP,RDX
            and EDX,16384
            mov RBX,RSI
            sub RSP,8
.L_4018a0:

            mov RAX,QWORD PTR [RSI+272]
            test RDX,RAX
            je .L_4018f0

            cmp ECX,-1
            je .L_401cc0

            mov RDX,QWORD PTR [RSI+80]
            test RDX,RDX
            je .L_4018f0

            movsxd R13,ECX
            shl R13,5
            mov RSI,QWORD PTR [RDX+R13*1+8]
            test RSI,RSI
            je .L_4018f0

            call .L_40c120

            mov RAX,QWORD PTR [RBX+80]
            mov QWORD PTR [RAX+R13*1+8],0
            mov RAX,QWORD PTR [RBX+272]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4018f0:

            mov RDX,RBP
            and EDX,8192
            test RDX,RAX
            jne .L_401c30
.L_401902:

            mov RDX,RBP
            and RDX,RAX
            test DH,1
            je .L_401915

            and QWORD PTR [RBX+16],-16385
.L_401915:

            and EDX,128
            jne .L_401b80
.L_401921:

            mov RDX,RBP
            and EDX,16
            test RDX,RAX
            jne .L_401b00
.L_401930:

            mov RDX,RBP
            and EDX,32
            test RDX,RAX
            je .L_401990

            cmp R14D,-1
            je .L_401c58

            mov RAX,QWORD PTR [RBX+328]
            test RAX,RAX
            je .L_401990

            movsxd R13,R14D
            mov RDI,R12
            shl R13,5
            mov RSI,QWORD PTR [RAX+R13*1]
            call .L_40c120

            mov RAX,QWORD PTR [RBX+328]
            mov RDI,R12
            mov RSI,QWORD PTR [RAX+R13*1+16]
            call .L_40c120

            add R13,QWORD PTR [RBX+328]
            mov QWORD PTR [R13],0
            mov QWORD PTR [R13+16],0
            nop
.L_401990:

            mov RSI,QWORD PTR [R12+1168]
            test RSI,RSI
            je .L_4019b1

            mov RDI,R12
            call .L_40c120

            mov QWORD PTR [R12+1168],0
.L_4019b1:

            mov RAX,QWORD PTR [RBX+272]
            mov RDX,RBP
            and EDX,512
            test RDX,RAX
            je .L_401a10

            cmp R14D,-1
            je .L_401d10

            mov RDX,QWORD PTR [RBX+280]
            test RDX,RDX
            je .L_401a10

            movsxd R13,R14D
            mov RDI,R12
            shl R13,5
            mov RSI,QWORD PTR [RDX+R13*1+8]
            call .L_40c120

            mov RAX,QWORD PTR [RBX+280]
            mov QWORD PTR [RAX+R13*1+8],0
            mov RAX,QWORD PTR [RBX+272]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401a10:

            mov RDX,RBP
            and EDX,8
            test RDX,RAX
            jne .L_401b50
.L_401a1f:

            mov RDX,RBP
            and EDX,4096
            test RDX,RAX
            jne .L_401ad0
.L_401a31:

            mov RDX,RBP
            and EDX,64
            test RDX,RAX
            je .L_401aa3

            mov RSI,QWORD PTR [RBX+384]
            test RSI,RSI
            je .L_401a9b

            mov EAX,DWORD PTR [RBX+8]
            test EAX,EAX
            jle .L_401a81

            xor R13D,R13D
            xor R15D,R15D
            nop
            nop
            nop
.L_401a58:

            mov RSI,QWORD PTR [RSI+R13*1]
            mov RDI,R12
            add R15D,1
            call .L_40c120

            mov RSI,QWORD PTR [RBX+384]
            mov QWORD PTR [RSI+R13*1],0
            add R13,8
            cmp R15D,DWORD PTR [RBX+8]
            jl .L_401a58
.L_401a81:

            mov RDI,R12
            call .L_40c120

            mov RAX,QWORD PTR [RBX+272]
            mov QWORD PTR [RBX+384],0
.L_401a9b:

            and QWORD PTR [RBX+16],-32769
.L_401aa3:

            cmp R14D,-1
            je .L_401ab0

            and RBP,-16929
.L_401ab0:

            not RBP
            and RBP,RAX
            mov QWORD PTR [RBX+272],RBP
            add RSP,8
.L_401ac1:

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
.L_401ad0:

            mov RSI,QWORD PTR [RBX+32]
            mov RDI,R12
            call .L_40c120

            xor EDX,EDX
            mov QWORD PTR [RBX+32],0
            and QWORD PTR [RBX+16],-9
            mov WORD PTR [RBX+40],DX
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401a31
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401b00:

            mov RSI,QWORD PTR [RBX+296]
            mov RDI,R12
            call .L_40c120

            mov RSI,QWORD PTR [RBX+304]
            mov RDI,R12
            call .L_40c120

            mov QWORD PTR [RBX+296],0
            mov QWORD PTR [RBX+304],0
            and QWORD PTR [RBX+16],-4097
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401930
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401b50:

            mov RSI,QWORD PTR [RBX+184]
            mov RDI,R12
            call .L_40c120

            mov QWORD PTR [RBX+184],0
            and QWORD PTR [RBX+16],-65
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401a1f
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401b80:

            mov RSI,QWORD PTR [RBX+224]
            mov RDI,R12
            call .L_40c120

            mov RSI,QWORD PTR [RBX+248]
            mov RDI,R12
            call .L_40c120

            mov RSI,QWORD PTR [RBX+256]
            mov QWORD PTR [RBX+224],0
            mov QWORD PTR [RBX+248],0
            test RSI,RSI
            je .L_401c12

            cmp BYTE PTR [RBX+265],0
            je .L_401bff

            xor R13D,R13D
            xor R15D,R15D
            nop
.L_401bd0:

            mov RSI,QWORD PTR [RSI+R13*1]
            mov RDI,R12
            add R15D,1
            call .L_40c120

            mov RSI,QWORD PTR [RBX+256]
            mov QWORD PTR [RSI+R13*1],0
            movzx EAX,BYTE PTR [RBX+265]
            add R13,8
            cmp R15D,EAX
            jl .L_401bd0
.L_401bff:

            mov RDI,R12
            call .L_40c120

            mov QWORD PTR [RBX+256],0
.L_401c12:

            and QWORD PTR [RBX+16],-1025
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401921
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
.L_401c30:

            mov RSI,QWORD PTR [RBX+104]
            mov RDI,R12
            call .L_40c120

            mov QWORD PTR [RBX+104],0
            and QWORD PTR [RBX+16],-17
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401902
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401c58:

            mov RAX,QWORD PTR [RBX+336]
            test RAX,RAX
            je .L_401cb0

            test EAX,EAX
            jle .L_401c8b

            xor R13D,R13D
.L_401c6b:

            mov ECX,R13D
            mov EDX,32
            mov RSI,RBX
            mov RDI,R12
            add R13D,1
            call .L_401860

            cmp R13D,DWORD PTR [RBX+336]
            jl .L_401c6b
.L_401c8b:

            mov RSI,QWORD PTR [RBX+328]
            mov RDI,R12
            call .L_40c120

            mov QWORD PTR [RBX+328],0
            mov QWORD PTR [RBX+336],0
.L_401cb0:

            and QWORD PTR [RBX+16],-8193
            jmp .L_401990
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401cc0:

            mov ECX,DWORD PTR [RSI+68]
            xor R13D,R13D
            test ECX,ECX
            jle .L_401ce7
.L_401cca:

            mov ECX,R13D
            mov EDX,16384
            mov RSI,RBX
            mov RDI,R12
            add R13D,1
            call .L_401860

            cmp R13D,DWORD PTR [RBX+68]
            jl .L_401cca
.L_401ce7:

            mov RSI,QWORD PTR [RBX+80]
            mov RDI,R12
            call .L_40c120

            mov QWORD PTR [RBX+80],0
            mov DWORD PTR [RBX+68],0
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_4018f0
          .byte 0x66
          .byte 0x90
.L_401d10:

            mov RDX,QWORD PTR [RBX+288]
            test RDX,RDX
            je .L_401a10

            test EDX,EDX
            jle .L_401d47

            xor R13D,R13D
.L_401d27:

            mov ECX,R13D
            mov EDX,512
            mov RSI,RBX
            mov RDI,R12
            add R13D,1
            call .L_401860

            cmp R13D,DWORD PTR [RBX+288]
            jl .L_401d27
.L_401d47:

            mov RSI,QWORD PTR [RBX+280]
            mov RDI,R12
            call .L_40c120

            mov QWORD PTR [RBX+280],0
            mov QWORD PTR [RBX+288],0
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401a10
.L_401d78:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401d80:

            push RBX
            mov RBX,RDI
            sub RSP,16
.L_401d88:

            test RDI,RDI
            mov QWORD PTR [RSP+8],RSI
            je .L_401d97

            test RSI,RSI
            jne .L_401de0
.L_401d97:

            mov EAX,DWORD PTR [RBX+1016]
            test EAX,EAX
            je .L_401dc5

            mov RSI,QWORD PTR [RBX+1024]
            mov RDI,RBX
            call .L_40c120

            mov QWORD PTR [RBX+1024],0
            mov DWORD PTR [RBX+1016],0
.L_401dc5:

            lea RDI,QWORD PTR [RSP+8]
            mov ESI,464
            call .L_401720

            add RSP,16
.L_401dd8:

            pop RBX
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401de0:

            mov ECX,4294967295
            mov EDX,32767
            call .L_401880

            jmp .L_401d97
.L_401df1:

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
.L_401e00:

            test RDI,RDI
            je .L_401e50

            test RSI,RSI
            je .L_401e50

            push R12
            push RBP
            push RBX
            mov R12,QWORD PTR [RSI]
            test R12,R12
            je .L_401e42

            mov RBX,RDI
            mov RBP,RSI
            mov RSI,R12
            call .L_401d80

            mov RDX,QWORD PTR [RBX+1080]
            mov RSI,QWORD PTR [RBX+1096]
            mov RDI,R12
            call .L_40bfb0

            mov QWORD PTR [RBP],0
.L_401e42:

            pop RBX
            pop RBP
            pop R12
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
.L_401e50:

            ret 
.L_401e52:

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
.L_401e60:

            test RDI,RDI
            je .L_401e70

            mov RAX,QWORD PTR [RDI+240]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401e70:

            xor EAX,EAX
            ret 
.L_401e73:

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
.L_401e80:

            test RDI,RDI
            je .L_401e8c

            mov QWORD PTR [RDI+240],RSI
.L_401e8c:

            ret 
.L_401e8e:

            nop
            nop
.L_401e90:

            test RDI,RDI
            je .L_401fb0

            push RBP
            push RBX
            mov RBX,RDI
            mov RBP,RSI
            sub RSP,8
            mov RDI,QWORD PTR [RDI+984]
            test RDI,RDI
            je .L_401f90
.L_401eb5:

            movzx ECX,BYTE PTR [RBP+6]
            sub RSP,8
            movzx R9D,BYTE PTR [RBP+3]
            lea R8,QWORD PTR [RIP+.L_412db1]
            mov ESI,29
            lea EAX,DWORD PTR [RCX+RCX*2]
            mov EDX,ECX
            and R9D,31
            lea EAX,DWORD PTR [RCX+RAX*4]
            shr AX,8
            mov ECX,EAX
            mov EAX,EDX
            sub EAX,ECX
            shr AL,1
            add EAX,ECX
            mov ECX,61
            shr AL,5
            imul EAX,ECX
            sub EDX,EAX
            movzx EDX,DL
            push RDX
            movzx ECX,BYTE PTR [RBP+5]
            mov EAX,ECX
            mov EDX,ECX
            shl EAX,4
            add EAX,ECX
            lea EAX,DWORD PTR [RCX+RAX*8]
            mov ECX,60
            shr AX,13
            imul EAX,ECX
            sub EDX,EAX
            movzx EDX,DL
            push RDX
            movzx ECX,BYTE PTR [RBP+4]
            lea EAX,DWORD PTR [RCX+RCX*8]
            mov EDX,ECX
            lea EAX,DWORD PTR [RCX+RAX*2]
            lea EAX,DWORD PTR [RAX+RAX*8]
            shr AX,12
            lea EAX,DWORD PTR [RAX+RAX*2]
            shl EAX,3
            sub EDX,EAX
            movzx EAX,WORD PTR [RBP]
            movzx EDX,DL
            push RDX
            mov EDX,2863311531
            push RAX
            movzx ECX,BYTE PTR [RBP+2]
            sub ECX,1
            mov EAX,ECX
            mul EDX
            shr EDX,3
            lea EAX,DWORD PTR [RDX+RDX*2]
            mov EDX,1
            shl EAX,2
            sub ECX,EAX
            lea RAX,QWORD PTR [RIP+.L_412f40]
            lea RAX,QWORD PTR [RAX+RCX*4]
            mov RCX,-1
            push RAX
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RAX,QWORD PTR [RBX+984]
            add RSP,56
            pop RBX
            pop RBP
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
.L_401f90:

            mov RDI,RBX
            mov ESI,29
            call .L_40c040

            mov RDI,RAX
            mov QWORD PTR [RBX+984],RAX
            jmp .L_401eb5
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_401fb0:

            xor EAX,EAX
            ret 
.L_401fb3:

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
.L_401fc0:

            lea RAX,QWORD PTR [RIP+.L_412af0]
            ret 
.L_401fc8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401fd0:

            lea RAX,QWORD PTR [RIP+.L_412a0f]
            ret 
.L_401fd8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401fe0:

            lea RAX,QWORD PTR [RIP+.L_412a0f]
            ret 
.L_401fe8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401ff0:

            lea RAX,QWORD PTR [RIP+.L_412bc0]
            ret 
.L_401ff8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402000:

            test RDI,RDI
            je .L_40204f

            test RSI,RSI
            je .L_40204f

            mov EDX,DWORD PTR [RDI+1016]
            xor EAX,EAX
            test EDX,EDX
            jle .L_402051

            lea EAX,DWORD PTR [RDX+RDX*4]
            mov RCX,QWORD PTR [RDI+1024]
            cdqe 
            lea RAX,QWORD PTR [RCX+RAX*1-5]
            lea ECX,DWORD PTR [RDX-1]
            add RCX,1
            mov RDX,RCX
            neg RDX
            lea RDX,QWORD PTR [RAX+RDX*4]
            sub RDX,RCX
            nop
            nop
            nop
            nop
            nop
.L_402040:

            mov ECX,DWORD PTR [RSI]
            cmp DWORD PTR [RAX],ECX
            je .L_402058

            sub RAX,5
            cmp RAX,RDX
            jne .L_402040
.L_40204f:

            xor EAX,EAX
.L_402051:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402058:

            movzx EAX,BYTE PTR [RAX+4]
            ret 
.L_40205d:

            nop
            nop
            nop
.L_402060:

            test RDI,RDI
            je .L_402078

            add RDI,304
            jmp inflateReset@PLT
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402078:

            mov EAX,4294967294
            ret 
.L_40207e:

            nop
            nop
.L_402080:

            mov EAX,10256
            ret 
.L_402086:

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
.L_402090:

            mov EAX,4294967295
            ret 
.L_402096:

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
.L_4020a0:

            mov R8D,EDI
            mov R10D,ESI
            movzx EDI,DI
            shr R8D,16
            shr R10D,16
            movzx ESI,SI
            mov R9D,EDI
            imul R9D,ESI
            imul EDI,R10D
            movsxd RAX,R9D
            movzx R9D,R9W
            imul ESI,R8D
            sar RAX,16
            imul R8D,R10D
            add ESI,EDI
            movsxd RSI,ESI
            movsxd R8,R8D
            add RAX,RSI
            mov RSI,RAX
            shl RAX,16
            sar RSI,16
            mov EAX,EAX
            add R8,RSI
            or RAX,R9
            mov QWORD PTR [RDX],R8
            mov QWORD PTR [RCX],RAX
            ret 
.L_4020f7:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402100:

            push R15
            push R14
            xor R11D,R11D
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,56
.L_402111:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+40],RAX
            xor EAX,EAX
            test RDI,RDI
            je .L_402295

            test RSI,RSI
            mov RBP,RDI
            mov R14,RSI
            mov R12,RDX
            mov R13,RCX
            mov R15,R8
            mov RBX,R9
            js .L_402180

            test RDX,RDX
            jle .L_402180

            test RCX,RCX
            js .L_402180

            test R8,R8
            js .L_402180

            test R9,R9
            js .L_402180

            cmp QWORD PTR [RSP+112],0
            js .L_402180

            cmp QWORD PTR [RSP+120],0
            js .L_402180

            cmp QWORD PTR [RSP+128],0
            mov R11D,1
            jns .L_402192

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
.L_402180:

            lea RSI,QWORD PTR [RIP+.L_412bf0]
            mov RDI,RBP
            call .L_40c5f0

            xor R11D,R11D
.L_402192:

            cmp R14,2147483647
            jg .L_4021e8

            cmp R12,2147483647
            jg .L_4021e8

            cmp R13,2147483647
            jg .L_4021e8

            cmp R15,2147483647
            jg .L_4021e8

            cmp RBX,2147483647
            jg .L_4021e8

            cmp QWORD PTR [RSP+112],2147483647
            jg .L_4021e8

            cmp QWORD PTR [RSP+120],2147483647
            jg .L_4021e8

            cmp QWORD PTR [RSP+128],2147483647
            jle .L_4021fa

            nop
            nop
            nop
            nop
            nop
.L_4021e8:

            lea RSI,QWORD PTR [RIP+.L_412c28]
            mov RDI,RBP
            call .L_40c5f0

            xor R11D,R11D
.L_4021fa:

            mov ECX,100000
            mov RDX,RCX
            sub RDX,R12
            cmp RDX,R14
            jl .L_402350

            mov EAX,100000
            sub RAX,R15
            cmp RAX,R13
            jl .L_402320
.L_40221f:

            mov EAX,100000
            sub RAX,QWORD PTR [RSP+112]
            cmp RAX,RBX
            jl .L_402300
.L_402232:

            mov EAX,100000
            sub RAX,QWORD PTR [RSP+128]
            cmp RAX,QWORD PTR [RSP+120]
            jl .L_4022e0
.L_40224a:

            mov RSI,QWORD PTR [RSP+128]
            lea RCX,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RSP+8]
            sub RBX,R13
            mov RDI,RBX
            sub RSI,R15
            call .L_4020a0

            mov RSI,QWORD PTR [RSP+120]
            mov RDI,QWORD PTR [RSP+112]
            lea RCX,QWORD PTR [RSP+32]
            lea RDX,QWORD PTR [RSP+24]
            sub RSI,R13
            sub RDI,R15
            call .L_4020a0

            mov RAX,QWORD PTR [RSP+24]
            cmp QWORD PTR [RSP+8],RAX
            je .L_4022c0
.L_402295:

            mov RBX,QWORD PTR [RSP+40]
            xor RBX,QWORD PTR FS:[40]
            mov EAX,R11D
            jne .L_402375

            add RSP,56
.L_4022b0:

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
.L_4022c0:

            mov RAX,QWORD PTR [RSP+32]
            cmp QWORD PTR [RSP+16],RAX
            jne .L_402295

            lea RSI,QWORD PTR [RIP+.L_412c68]
            mov RDI,RBP
            call .L_40c5f0

            xor R11D,R11D
            jmp .L_402295
.L_4022e0:

            lea RSI,QWORD PTR [RIP+.L_412e18]
            mov RDI,RBP
            call .L_40c5f0

            xor R11D,R11D
            jmp .L_40224a
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402300:

            lea RSI,QWORD PTR [RIP+.L_412dff]
            mov RDI,RBP
            call .L_40c5f0

            xor R11D,R11D
            jmp .L_402232
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402320:

            lea RSI,QWORD PTR [RIP+.L_412de8]
            mov RDI,RBP
            call .L_40c5f0

            mov EAX,100000
            sub RAX,QWORD PTR [RSP+112]
            xor R11D,R11D
            cmp RAX,RBX
            jge .L_402232

            jmp .L_402300
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402350:

            lea RSI,QWORD PTR [RIP+.L_412dcf]
            mov RDI,RBP
            call .L_40c5f0

            mov EAX,100000
            xor R11D,R11D
            sub RAX,R15
            cmp RAX,R13
            jge .L_40221f

            jmp .L_402320
.L_402375:

            call __stack_chk_fail@PLT
.L_40237a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_402380:

            push R15
            push R14
            mov R15,RSI
            push R13
            push R12
            mov R13,RDX
            push RBP
            push RBX
            mov R12D,ECX
            mov RBX,RDI
            mov EBP,R8D
            sub RSP,24
.L_40239d:

            test RSI,RSI
            mov EAX,DWORD PTR [RSP+80]
            mov DWORD PTR [RSP+4],R9D
            mov R14D,DWORD PTR [RSP+88]
            mov DWORD PTR [RSP+8],EAX
            je .L_402610

            cmp RSI,1000000
            seta AL
            test RDX,RDX
            je .L_402530

            cmp QWORD PTR [RDI+1144],RSI
            jb .L_4023dc

            test AL,AL
            je .L_4026a8
.L_4023dc:

            lea RSI,QWORD PTR [RIP+.L_412ca8]
            mov RDI,RBX
            call .L_40c5f0

            mov EAX,1
.L_4023f0:

            cmp QWORD PTR [RBX+1152],R13
            jb .L_402402

            cmp R13,1000000
            jbe .L_402416
.L_402402:

            lea RSI,QWORD PTR [RIP+.L_412cd0]
            mov RDI,RBX
            call .L_40c5f0

            mov EAX,1
.L_402416:

            cmp R15,2147483647
            ja .L_402688
.L_402423:

            cmp R13,2147483647
            ja .L_402668
.L_402430:

            cmp R12D,16
            jbe .L_4025d0
.L_40243a:

            lea RSI,QWORD PTR [RIP+.L_412ea2]
            mov RDI,RBX
            call .L_40c5f0

            mov EAX,1
.L_40244e:

            mov R13D,EBP
            and R13D,4294967291
            cmp R13D,1
            je .L_402460

            cmp EBP,6
            jbe .L_402474
.L_402460:

            lea RSI,QWORD PTR [RIP+.L_412ebc]
            mov RDI,RBX
            call .L_40c5f0

            mov EAX,1
.L_402474:

            cmp EBP,3
            jne .L_4025e8

            cmp R12D,8
            jle .L_4025e8
.L_402487:

            lea RSI,QWORD PTR [RIP+.L_412cf8]
            mov RDI,RBX
            call .L_40c5f0

            mov EAX,1
.L_40249b:

            cmp DWORD PTR [RSP+4],1
            jle .L_4024b6

            lea RSI,QWORD PTR [RIP+.L_412d30]
            mov RDI,RBX
            call .L_40c5f0

            mov EAX,1
.L_4024b6:

            mov EDX,DWORD PTR [RSP+8]
            test EDX,EDX
            jne .L_402648
.L_4024c2:

            test BYTE PTR [RBX+281],16
            je .L_40257f

            cmp QWORD PTR [RBX+1040],0
            jne .L_402568

            test R14D,R14D
            je .L_4025b8
.L_4024e6:

            lea RSI,QWORD PTR [RIP+.L_412ed7]
            mov RDI,RBX
            call .L_40c5f0

            test BYTE PTR [RBX+281],16
            je .L_40250d

            lea RSI,QWORD PTR [RIP+.L_412ef5]
            mov RDI,RBX
            call .L_40c5f0
.L_40250d:

            add RSP,24
.L_402511:

            mov RDI,RBX
            lea RSI,QWORD PTR [RIP+.L_412f13]
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40c520
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402530:

            lea RSI,QWORD PTR [RIP+.L_412e4c]
            mov BYTE PTR [RSP+15],AL
            call .L_40c5f0

            cmp R15,QWORD PTR [RBX+1144]
            ja .L_4023dc

            movzx EAX,BYTE PTR [RSP+15]
            test AL,AL
            jne .L_4023dc

            mov EAX,1
            jmp .L_402416
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_402568:

            lea RSI,QWORD PTR [RIP+.L_412d80]
            mov RDI,RBX
            mov DWORD PTR [RSP+4],EAX
            call .L_40c5f0

            mov EAX,DWORD PTR [RSP+4]
.L_40257f:

            test R14D,R14D
            je .L_4025b8

            test BYTE PTR [RBX+1040],4
            je .L_4024e6

            cmp R14D,64
            jne .L_4024e6

            test BYTE PTR [RBX+281],16
            jne .L_4024e6

            cmp R13D,2
            jne .L_4024e6

            nop
            nop
            nop
            nop
            nop
            nop
.L_4025b8:

            cmp EAX,1
            je .L_40250d

            add RSP,24
.L_4025c5:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_4025d0:

            mov EDX,65814
            bt RDX,R12
            jb .L_40244e

            jmp .L_40243a
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4025e8:

            cmp EBP,4
            je .L_4025f7

            cmp R13D,2
            jne .L_40249b
.L_4025f7:

            cmp R12D,7
            jg .L_40249b

            jmp .L_402487
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
.L_402610:

            lea RSI,QWORD PTR [RIP+.L_412e30]
            call .L_40c5f0

            test R13,R13
            je .L_4026b0

            cmp R13,QWORD PTR [RBX+1152]
            ja .L_402402

            cmp R13,1000000
            ja .L_402402

            jmp .L_402697
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402648:

            lea RSI,QWORD PTR [RIP+.L_412d58]
            mov RDI,RBX
            call .L_40c5f0

            mov EAX,1
            jmp .L_4024c2
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402668:

            lea RSI,QWORD PTR [RIP+.L_412e85]
            mov RDI,RBX
            call .L_40c5f0

            mov EAX,1
            jmp .L_402430
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402688:

            lea RSI,QWORD PTR [RIP+.L_412e69]
            mov RDI,RBX
            call .L_40c5f0
.L_402697:

            mov EAX,1
            jmp .L_402423
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4026a8:

            xor EAX,EAX
            jmp .L_4023f0
          .byte 0x90
.L_4026b0:

            lea RSI,QWORD PTR [RIP+.L_412e4c]
            mov RDI,RBX
            call .L_40c5f0

            mov EAX,1
            jmp .L_402430
.L_4026c9:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4026d0:

            test RDI,RDI
            je .L_4026e8

            test RSI,RSI
            je .L_4026e8

            mov RAX,QWORD PTR [RSI+16]
            and RAX,RDX
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4026e8:

            xor EAX,EAX
            ret 
.L_4026eb:

            nop
            nop
            nop
            nop
            nop
.L_4026f0:

            test RDI,RDI
            je .L_402700

            test RSI,RSI
            je .L_402700

            mov RAX,QWORD PTR [RSI+24]
            ret 
          .byte 0x90
.L_402700:

            xor EAX,EAX
            ret 
.L_402703:

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
.L_402710:

            test RDI,RDI
            je .L_402728

            test RSI,RSI
            je .L_402728

            mov RAX,QWORD PTR [RSI+384]
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402728:

            xor EAX,EAX
            ret 
.L_40272b:

            nop
            nop
            nop
            nop
            nop
.L_402730:

            test RDI,RDI
            je .L_402740

            test RSI,RSI
            je .L_402740

            mov RAX,QWORD PTR [RSI]
            ret 
          .byte 0x66
          .byte 0x90
.L_402740:

            xor EAX,EAX
            ret 
.L_402743:

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
.L_402750:

            test RDI,RDI
            je .L_402760

            test RSI,RSI
            je .L_402760

            mov RAX,QWORD PTR [RSI+8]
            ret 
          .byte 0x90
.L_402760:

            xor EAX,EAX
            ret 
.L_402763:

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
.L_402770:

            test RDI,RDI
            je .L_402780

            test RSI,RSI
            je .L_402780

            movzx EAX,BYTE PTR [RSI+44]
            ret 
          .byte 0x90
.L_402780:

            xor EAX,EAX
            ret 
.L_402783:

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
.L_402790:

            test RDI,RDI
            je .L_4027a0

            test RSI,RSI
            je .L_4027a0

            movzx EAX,BYTE PTR [RSI+45]
            ret 
          .byte 0x90
.L_4027a0:

            xor EAX,EAX
            ret 
.L_4027a3:

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
.L_4027b0:

            test RDI,RDI
            je .L_4027c0

            test RSI,RSI
            je .L_4027c0

            movzx EAX,BYTE PTR [RSI+47]
            ret 
          .byte 0x90
.L_4027c0:

            xor EAX,EAX
            ret 
.L_4027c3:

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
.L_4027d0:

            test RDI,RDI
            je .L_4027e0

            test RSI,RSI
            je .L_4027e0

            movzx EAX,BYTE PTR [RSI+48]
            ret 
          .byte 0x90
.L_4027e0:

            xor EAX,EAX
            ret 
.L_4027e3:

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
.L_4027f0:

            test RDI,RDI
            je .L_402800

            test RSI,RSI
            je .L_402800

            movzx EAX,BYTE PTR [RSI+46]
            ret 
          .byte 0x90
.L_402800:

            xor EAX,EAX
            ret 
.L_402803:

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
.L_402810:

            test RDI,RDI
            je .L_402838

            test RSI,RSI
            je .L_402838

            mov RAX,QWORD PTR [RSI+16]
            and EAX,128
            je .L_402830

            xor EAX,EAX
            cmp BYTE PTR [RSI+176],1
            je .L_402840
.L_402830:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402838:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402840:

            mov RAX,QWORD PTR [RSI+160]
            ret 
.L_402848:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402850:

            test RDI,RDI
            je .L_402878

            test RSI,RSI
            je .L_402878

            mov RAX,QWORD PTR [RSI+16]
            and EAX,128
            je .L_402870

            xor EAX,EAX
            cmp BYTE PTR [RSI+176],1
            je .L_402880
.L_402870:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402878:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402880:

            mov RAX,QWORD PTR [RSI+168]
            ret 
.L_402888:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402890:

            test RDI,RDI
            je .L_4028b8

            test RSI,RSI
            je .L_4028b8

            mov RAX,QWORD PTR [RSI+16]
            and EAX,128
            je .L_4028b0

            xor EAX,EAX
            cmp BYTE PTR [RSI+176],1
            je .L_4028c0
.L_4028b0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4028b8:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4028c0:

            mov RAX,QWORD PTR [RSI+168]
            cmp QWORD PTR [RSI+160],RAX
            mov EDX,0
            cmovne RAX,RDX
            ret 
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

            test RDI,RDI
            pxor XMM0,XMM0
            je .L_402930

            test RSI,RSI
            je .L_402930

            test BYTE PTR [RSI+16],128
            je .L_402930

            mov RDX,QWORD PTR [RSI+160]
            test RDX,RDX
            je .L_402930

            mov RAX,QWORD PTR [RSI+168]
            test RAX,RAX
            js .L_402938

            pxor XMM0,XMM0
            cvtsi2ss XMM0,RAX
.L_402915:

            test RDX,RDX
            js .L_402958

            pxor XMM1,XMM1
            cvtsi2ss XMM1,RDX
.L_402923:

            divss XMM0,XMM1
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402930:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402938:

            mov RCX,RAX
            pxor XMM0,XMM0
            shr RCX,1
            and EAX,1
            or RCX,RAX
            cvtsi2ss XMM0,RCX
            addss XMM0,XMM0
            jmp .L_402915
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402958:

            mov RAX,RDX
            pxor XMM1,XMM1
            shr RAX,1
            and EDX,1
            or RAX,RDX
            cvtsi2ss XMM1,RAX
            addss XMM1,XMM1
            jmp .L_402923
.L_402973:

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
.L_402980:

            xor EAX,EAX
            test RDI,RDI
            je .L_40299b

            test RSI,RSI
            je .L_40299b

            test BYTE PTR [RSI+17],1
            je .L_40299b

            cmp BYTE PTR [RSI+152],1
            je .L_4029a0
.L_40299b:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4029a0:

            mov RAX,QWORD PTR [RSI+136]
            ret 
.L_4029a8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4029b0:

            xor EAX,EAX
            test RDI,RDI
            je .L_4029cb

            test RSI,RSI
            je .L_4029cb

            test BYTE PTR [RSI+17],1
            je .L_4029cb

            cmp BYTE PTR [RSI+152],1
            je .L_4029d0
.L_4029cb:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4029d0:

            mov RAX,QWORD PTR [RSI+144]
            ret 
.L_4029d8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4029e0:

            xor EAX,EAX
            test RDI,RDI
            je .L_402a08

            test RSI,RSI
            je .L_402a08

            test BYTE PTR [RSI+17],1
            je .L_402a08

            cmp BYTE PTR [RSI+152],0
            jne .L_402a08

            mov RAX,QWORD PTR [RSI+136]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402a08:

            ret 
.L_402a0a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_402a10:

            xor EAX,EAX
            test RDI,RDI
            je .L_402a38

            test RSI,RSI
            je .L_402a38

            test BYTE PTR [RSI+17],1
            je .L_402a38

            cmp BYTE PTR [RSI+152],0
            jne .L_402a38

            mov RAX,QWORD PTR [RSI+144]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402a38:

            ret 
.L_402a3a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_402a40:

            test RDI,RDI
            je .L_402a50

            test RSI,RSI
            je .L_402a50

            movzx EAX,BYTE PTR [RSI+49]
            ret 
          .byte 0x90
.L_402a50:

            xor EAX,EAX
            ret 
.L_402a53:

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
.L_402a60:

            test RDI,RDI
            je .L_402a70

            test RSI,RSI
            je .L_402a70

            lea RAX,QWORD PTR [RSI+52]
            ret 
          .byte 0x90
.L_402a70:

            xor EAX,EAX
            ret 
.L_402a73:

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
.L_402a80:

            test RDI,RDI
            je .L_402a95

            test RSI,RSI
            je .L_402a95

            test BYTE PTR [RSI+16],32
            je .L_402a95

            test RDX,RDX
            jne .L_402aa0
.L_402a95:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402aa0:

            add RSI,122
            mov EAX,32
            mov QWORD PTR [RDX],RSI
            ret 
.L_402aad:

            nop
            nop
            nop
.L_402ab0:

            test RDI,RDI
            je .L_402ba0

            test RSI,RSI
            je .L_402ba0

            mov RAX,QWORD PTR [RSI+16]
            and EAX,4
            je .L_402ba2

            test RDX,RDX
            je .L_402ae4

            pxor XMM0,XMM0
            cvtss2sd XMM0,DWORD PTR [RSI+192]
            movsd QWORD PTR [RDX],XMM0
.L_402ae4:

            test RCX,RCX
            je .L_402af9

            pxor XMM0,XMM0
            cvtss2sd XMM0,DWORD PTR [RSI+196]
            movsd QWORD PTR [RCX],XMM0
.L_402af9:

            test R8,R8
            je .L_402b0f

            pxor XMM0,XMM0
            cvtss2sd XMM0,DWORD PTR [RSI+200]
            movsd QWORD PTR [R8],XMM0
.L_402b0f:

            test R9,R9
            je .L_402b25

            pxor XMM0,XMM0
            cvtss2sd XMM0,DWORD PTR [RSI+204]
            movsd QWORD PTR [R9],XMM0
.L_402b25:

            cmp QWORD PTR [RSP+8],0
            je .L_402b42

            pxor XMM0,XMM0
            mov RAX,QWORD PTR [RSP+8]
            cvtss2sd XMM0,DWORD PTR [RSI+208]
            movsd QWORD PTR [RAX],XMM0
.L_402b42:

            cmp QWORD PTR [RSP+16],0
            je .L_402b5f

            pxor XMM0,XMM0
            mov RAX,QWORD PTR [RSP+16]
            cvtss2sd XMM0,DWORD PTR [RSI+212]
            movsd QWORD PTR [RAX],XMM0
.L_402b5f:

            cmp QWORD PTR [RSP+24],0
            je .L_402b7c

            pxor XMM0,XMM0
            mov RAX,QWORD PTR [RSP+24]
            cvtss2sd XMM0,DWORD PTR [RSI+216]
            movsd QWORD PTR [RAX],XMM0
.L_402b7c:

            cmp QWORD PTR [RSP+32],0
            mov EAX,4
            je .L_402ba2

            pxor XMM0,XMM0
            mov RDX,QWORD PTR [RSP+32]
            cvtss2sd XMM0,DWORD PTR [RSI+220]
            movsd QWORD PTR [RDX],XMM0
            ret 
          .byte 0x90
.L_402ba0:

            xor EAX,EAX
.L_402ba2:

            ret 
.L_402ba4:

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
.L_402bb0:

            test RDI,RDI
            je .L_402c70

            test RSI,RSI
            je .L_402c70

            mov RAX,QWORD PTR [RSI+16]
            and EAX,4
            je .L_402c72

            test RDX,RDX
            je .L_402bde

            mov RAX,QWORD PTR [RSI+400]
            mov QWORD PTR [RDX],RAX
.L_402bde:

            test RCX,RCX
            je .L_402bed

            mov RAX,QWORD PTR [RSI+408]
            mov QWORD PTR [RCX],RAX
.L_402bed:

            test R8,R8
            je .L_402bfc

            mov RAX,QWORD PTR [RSI+416]
            mov QWORD PTR [R8],RAX
.L_402bfc:

            test R9,R9
            je .L_402c0b

            mov RAX,QWORD PTR [RSI+424]
            mov QWORD PTR [R9],RAX
.L_402c0b:

            cmp QWORD PTR [RSP+8],0
            je .L_402c22

            mov RAX,QWORD PTR [RSI+432]
            mov RCX,QWORD PTR [RSP+8]
            mov QWORD PTR [RCX],RAX
.L_402c22:

            cmp QWORD PTR [RSP+16],0
            je .L_402c39

            mov RAX,QWORD PTR [RSI+440]
            mov RDX,QWORD PTR [RSP+16]
            mov QWORD PTR [RDX],RAX
.L_402c39:

            cmp QWORD PTR [RSP+24],0
            je .L_402c50

            mov RAX,QWORD PTR [RSI+448]
            mov RCX,QWORD PTR [RSP+24]
            mov QWORD PTR [RCX],RAX
.L_402c50:

            cmp QWORD PTR [RSP+32],0
            mov EAX,4
            je .L_402c72

            mov RDX,QWORD PTR [RSI+456]
            mov RDI,QWORD PTR [RSP+32]
            mov QWORD PTR [RDI],RDX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_402c70:

            xor EAX,EAX
.L_402c72:

            ret 
.L_402c74:

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
.L_402c80:

            test RDI,RDI
            je .L_402cb0

            test RSI,RSI
            je .L_402cb0

            test BYTE PTR [RSI+16],1
            je .L_402cb0

            test RDX,RDX
            je .L_402cb0

            pxor XMM0,XMM0
            mov EAX,1
            cvtss2sd XMM0,DWORD PTR [RSI+60]
            movsd QWORD PTR [RDX],XMM0
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402cb0:

            xor EAX,EAX
            ret 
.L_402cb3:

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
.L_402cc0:

            test RDI,RDI
            je .L_402ce8

            test RSI,RSI
            je .L_402ce8

            test BYTE PTR [RSI+16],1
            je .L_402ce8

            test RDX,RDX
            je .L_402ce8

            mov RAX,QWORD PTR [RSI+392]
            mov QWORD PTR [RDX],RAX
            mov EAX,1
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_402ce8:

            xor EAX,EAX
            ret 
.L_402ceb:

            nop
            nop
            nop
            nop
            nop
.L_402cf0:

            test RDI,RDI
            je .L_402d05

            test RSI,RSI
            je .L_402d05

            test BYTE PTR [RSI+17],8
            je .L_402d05

            test RDX,RDX
            jne .L_402d10
.L_402d05:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402d10:

            movzx EAX,BYTE PTR [RSI+64]
            mov DWORD PTR [RDX],EAX
            mov EAX,2048
            ret 
.L_402d1c:

            nop
            nop
            nop
            nop
.L_402d20:

            test RDI,RDI
            je .L_402d80

            test RSI,RSI
            je .L_402d80

            mov RAX,QWORD PTR [RSI+16]
            and EAX,4096
            je .L_402d82

            test RDX,RDX
            setne DIL
            test R8,R8
            setne AL
            test DIL,AL
            je .L_402d80

            test R9,R9
            je .L_402d80

            mov RAX,QWORD PTR [RSI+296]
            mov QWORD PTR [RDX],RAX
            mov RAX,QWORD PTR [RSI+304]
            mov QWORD PTR [R8],RAX
            movsxd RAX,DWORD PTR [RSI+312]
            mov QWORD PTR [R9],RAX
            movzx EAX,BYTE PTR [RSI+320]
            mov DWORD PTR [RCX],EAX
            mov EAX,4096
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402d80:

            xor EAX,EAX
.L_402d82:

            ret 
.L_402d84:

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
.L_402d90:

            test RSI,RSI
            setne CL
            test RDX,RDX
            setne AL
            test CL,AL
            je .L_402dc0

            test RDI,RDI
            je .L_402dc0

            mov RAX,QWORD PTR [RSI+328]
            mov QWORD PTR [RDX],RAX
            mov RAX,QWORD PTR [RSI+336]
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
.L_402dc0:

            xor EAX,EAX
            ret 
.L_402dc3:

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
.L_402dd0:

            test RDI,RDI
            je .L_402de5

            test RSI,RSI
            je .L_402de5

            test BYTE PTR [RSI+16],64
            je .L_402de5

            test RDX,RDX
            jne .L_402df0
.L_402de5:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402df0:

            mov RAX,QWORD PTR [RSI+184]
            mov QWORD PTR [RDX],RAX
            mov EAX,64
            ret 
.L_402e00:

            test RDI,RDI
            je .L_402ec0

            test RSI,RSI
            je .L_402ec0

            test RDX,RDX
            je .L_402ec0

            test RCX,RCX
            je .L_402ec0

            test R8,R8
            je .L_402ec0

            test R9,R9
            je .L_402ec0

            sub RSP,8
.L_402e3a:

            mov RAX,QWORD PTR [RSI]
            cmp QWORD PTR [RSP+24],0
            mov QWORD PTR [RDX],RAX
            mov RAX,QWORD PTR [RSI+8]
            mov QWORD PTR [RCX],RAX
            movzx EAX,BYTE PTR [RSI+44]
            mov DWORD PTR [R8],EAX
            movzx EAX,BYTE PTR [RSI+45]
            mov DWORD PTR [R9],EAX
            je .L_402e68

            movzx EAX,BYTE PTR [RSI+46]
            mov RCX,QWORD PTR [RSP+24]
            mov DWORD PTR [RCX],EAX
.L_402e68:

            cmp QWORD PTR [RSP+32],0
            je .L_402e7b

            movzx EAX,BYTE PTR [RSI+47]
            mov RDX,QWORD PTR [RSP+32]
            mov DWORD PTR [RDX],EAX
.L_402e7b:

            cmp QWORD PTR [RSP+16],0
            movzx R9D,BYTE PTR [RSI+48]
            je .L_402e95

            mov RAX,QWORD PTR [RSP+16]
            mov DWORD PTR [RAX],R9D
            movzx R9D,BYTE PTR [RSI+48]
.L_402e95:

            movzx EAX,BYTE PTR [RSI+47]
            movzx ECX,BYTE PTR [RSI+44]
            mov RDX,QWORD PTR [RSI+8]
            push RAX
.L_402ea2:

            movzx EAX,BYTE PTR [RSI+46]
            push RAX
            movzx R8D,BYTE PTR [RSI+45]
            mov RSI,QWORD PTR [RSI]
            call .L_402380

            mov EAX,1
            add RSP,24
            ret 
          .byte 0x66
          .byte 0x90
.L_402ec0:

            xor EAX,EAX
            ret 
.L_402ec3:

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
.L_402ed0:

            test RDI,RDI
            je .L_402f20

            test RSI,RSI
            je .L_402f20

            mov RAX,QWORD PTR [RSI+16]
            and EAX,256
            je .L_402f22

            test RDX,RDX
            setne DIL
            test RCX,RCX
            setne AL
            test DIL,AL
            je .L_402f20

            test R8,R8
            je .L_402f20

            mov RAX,QWORD PTR [RSI+136]
            mov QWORD PTR [RDX],RAX
            mov RAX,QWORD PTR [RSI+144]
            mov QWORD PTR [RCX],RAX
            movzx EAX,BYTE PTR [RSI+152]
            mov DWORD PTR [R8],EAX
            mov EAX,256
            ret 
.L_402f20:

            xor EAX,EAX
.L_402f22:

            ret 
.L_402f24:

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
.L_402f30:

            test RDI,RDI
            je .L_402f80

            test RSI,RSI
            je .L_402f80

            mov RAX,QWORD PTR [RSI+16]
            and EAX,1024
            je .L_402f82

            test RDX,RDX
            je .L_402f80

            test RCX,RCX
            je .L_402f80

            test R8,R8
            je .L_402f80

            test R9,R9
            je .L_402f80

            cmp QWORD PTR [RSP+8],0
            setne DIL
            cmp QWORD PTR [RSP+16],0
            setne AL
            test DIL,AL
            je .L_402f80

            cmp QWORD PTR [RSP+24],0
            jne .L_402f88

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402f80:

            xor EAX,EAX
.L_402f82:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_402f88:

            mov RAX,QWORD PTR [RSI+224]
            mov QWORD PTR [RDX],RAX
            mov RAX,QWORD PTR [RSI+232]
            mov RDX,QWORD PTR [RSP+24]
            mov QWORD PTR [RCX],RAX
            mov RAX,QWORD PTR [RSI+240]
            mov RCX,QWORD PTR [RSP+8]
            mov QWORD PTR [R8],RAX
            movzx EAX,BYTE PTR [RSI+264]
            mov DWORD PTR [R9],EAX
            movzx EAX,BYTE PTR [RSI+265]
            mov DWORD PTR [RCX],EAX
            mov RAX,QWORD PTR [RSI+248]
            mov RCX,QWORD PTR [RSP+16]
            mov QWORD PTR [RCX],RAX
            mov RAX,QWORD PTR [RSI+256]
            mov QWORD PTR [RDX],RAX
            mov EAX,1024
            ret 
.L_402fe2:

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
.L_402ff0:

            test RDI,RDI
            je .L_403010

            test RSI,RSI
            je .L_403010

            mov RAX,QWORD PTR [RSI+16]
            and EAX,16384
            jne .L_403018

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
.L_403010:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403018:

            movzx EAX,BYTE PTR [RSI+344]
            movsd XMM0,QWORD PTR [RSI+352]
            mov DWORD PTR [RDX],EAX
            movsd QWORD PTR [RCX],XMM0
            mov EAX,16384
            movsd XMM0,QWORD PTR [RSI+360]
            movsd QWORD PTR [R8],XMM0
            ret 
.L_403040:

            test RDI,RDI
            je .L_403098

            test RSI,RSI
            je .L_403098

            mov RAX,QWORD PTR [RSI+16]
            and EAX,128
            je .L_40309a

            xor EAX,EAX
            test RDX,RDX
            je .L_40306b

            mov RAX,QWORD PTR [RSI+160]
            mov QWORD PTR [RDX],RAX
            mov EAX,128
.L_40306b:

            test RCX,RCX
            je .L_40307f

            mov RAX,QWORD PTR [RSI+168]
            mov QWORD PTR [RCX],RAX
            mov EAX,128
.L_40307f:

            test R8,R8
            je .L_40309a

            movzx EAX,BYTE PTR [RSI+176]
            mov DWORD PTR [R8],EAX
            mov EAX,128
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_403098:

            xor EAX,EAX
.L_40309a:

            ret 
.L_40309c:

            nop
            nop
            nop
            nop
.L_4030a0:

            test RDI,RDI
            je .L_4030b5

            test RSI,RSI
            je .L_4030b5

            test BYTE PTR [RSI+16],8
            je .L_4030b5

            test RDX,RDX
            jne .L_4030c0
.L_4030b5:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4030c0:

            mov RAX,QWORD PTR [RSI+32]
            mov QWORD PTR [RDX],RAX
            movzx EAX,WORD PTR [RSI+40]
            mov DWORD PTR [RCX],EAX
            mov EAX,8
            ret 
.L_4030d3:

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
.L_4030e0:

            test RDI,RDI
            je .L_4030f5

            test RSI,RSI
            je .L_4030f5

            test BYTE PTR [RSI+16],2
            je .L_4030f5

            test RDX,RDX
            jne .L_403100
.L_4030f5:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403100:

            add RSI,96
            mov EAX,2
            mov QWORD PTR [RDX],RSI
            ret 
.L_40310d:

            nop
            nop
            nop
.L_403110:

            test RDI,RDI
            je .L_403140

            test RSI,RSI
            je .L_403140

            movsxd RAX,DWORD PTR [RSI+68]
            test EAX,EAX
            jle .L_403140

            test RDX,RDX
            je .L_40312e

            mov RDI,QWORD PTR [RSI+80]
            mov QWORD PTR [RDX],RDI
.L_40312e:

            test RCX,RCX
            je .L_40314d

            mov DWORD PTR [RCX],EAX
            movsxd RAX,DWORD PTR [RSI+68]
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403140:

            xor EAX,EAX
            test RCX,RCX
            je .L_40314d

            mov DWORD PTR [RCX],0
.L_40314d:

            ret 
.L_40314f:

            nop
.L_403150:

            test RDI,RDI
            je .L_403165

            test RSI,RSI
            je .L_403165

            test BYTE PTR [RSI+17],2
            je .L_403165

            test RDX,RDX
            jne .L_403170
.L_403165:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403170:

            add RSI,88
            mov EAX,512
            mov QWORD PTR [RDX],RSI
            ret 
.L_40317d:

            nop
            nop
            nop
.L_403180:

            test RDI,RDI
            je .L_4031d0

            test RSI,RSI
            je .L_4031d0

            mov RAX,QWORD PTR [RSI+16]
            and EAX,16
            je .L_4031d2

            xor EAX,EAX
            cmp BYTE PTR [RSI+45],3
            je .L_4031d8

            test R8,R8
            je .L_4031ac

            lea RAX,QWORD PTR [RSI+112]
            mov QWORD PTR [R8],RAX
            mov EAX,16
.L_4031ac:

            test RDX,RDX
            je .L_4031b8

            mov QWORD PTR [RDX],0
.L_4031b8:

            test RCX,RCX
            je .L_4031d2

            movzx EAX,WORD PTR [RSI+42]
            mov DWORD PTR [RCX],EAX
            mov EAX,16
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4031d0:

            xor EAX,EAX
.L_4031d2:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4031d8:

            test RDX,RDX
            je .L_4031e9

            mov RAX,QWORD PTR [RSI+104]
            mov QWORD PTR [RDX],RAX
            mov EAX,16
.L_4031e9:

            test R8,R8
            je .L_4031b8

            lea RDX,QWORD PTR [RSI+112]
            mov QWORD PTR [R8],RDX
            jmp .L_4031b8
.L_4031f7:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403200:

            test RSI,RSI
            setne CL
            test RDX,RDX
            setne AL
            test CL,AL
            je .L_403230

            test RDI,RDI
            je .L_403230

            mov RAX,QWORD PTR [RSI+280]
            mov QWORD PTR [RDX],RAX
            mov RAX,QWORD PTR [RSI+288]
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
.L_403230:

            xor EAX,EAX
            ret 
.L_403233:

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
.L_403240:

            xor EAX,EAX
            test RDI,RDI
            je .L_40324e

            movzx EAX,BYTE PTR [RDI+1032]
.L_40324e:

            ret 
.L_403250:

            test RDI,RDI
            je .L_403260

            mov RAX,QWORD PTR [RDI+1000]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403260:

            xor EAX,EAX
            ret 
.L_403263:

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
.L_403270:

            xor EAX,EAX
            test RDI,RDI
            je .L_40327e

            mov RAX,QWORD PTR [RDI+424]
.L_40327e:

            ret 
.L_403280:

            xor EAX,EAX
            ret 
.L_403283:

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
.L_403290:

            xor EAX,EAX
            ret 
.L_403293:

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
.L_4032a0:

            mov DWORD PTR [RSI],4294967295
            xor EAX,EAX
            ret 
.L_4032a9:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4032b0:

            xor EAX,EAX
            ret 
.L_4032b3:

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
.L_4032c0:

            xor EAX,EAX
            ret 
.L_4032c3:

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
.L_4032d0:

            xor EAX,EAX
            test RDI,RDI
            je .L_4032de

            mov RAX,QWORD PTR [RDI+1144]
.L_4032de:

            ret 
.L_4032e0:

            xor EAX,EAX
            test RDI,RDI
            je .L_4032ee

            mov RAX,QWORD PTR [RDI+1152]
.L_4032ee:

            ret 
.L_4032f0:

            test RDI,RDI
            je .L_4032fd

            or QWORD PTR [RDI+296],1
.L_4032fd:

            ret 
.L_4032ff:

            nop
.L_403300:

            test RDI,RDI
            je .L_40330e

            cmp BYTE PTR [RDI+631],16
            je .L_403310
.L_40330e:

            ret 
.L_403310:

            or QWORD PTR [RDI+296],16
            ret 
.L_403319:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403320:

            test RDI,RDI
            je .L_40333d

            cmp BYTE PTR [RDI+631],7
            ja .L_40333d

            or QWORD PTR [RDI+296],4
            mov BYTE PTR [RDI+632],8
.L_40333d:

            ret 
.L_40333f:

            nop
.L_403340:

            test RDI,RDI
            je .L_403359

            cmp BYTE PTR [RDI+631],7
            ja .L_403359

            or QWORD PTR [RDI+296],65536
.L_403359:

            ret 
.L_40335b:

            nop
            nop
            nop
            nop
            nop
.L_403360:

            test RDI,RDI
            je .L_40337f

            mov EAX,DWORD PTR [RSI]
            or QWORD PTR [RDI+296],8
            mov DWORD PTR [RDI+765],EAX
            movzx EAX,BYTE PTR [RSI+4]
            mov BYTE PTR [RDI+769],AL
.L_40337f:

            ret 
.L_403381:

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
.L_403390:

            test RDI,RDI
            mov EAX,1
            je .L_4033a3

            cmp BYTE PTR [RDI+627],0
            jne .L_4033a8
.L_4033a3:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4033a8:

            or QWORD PTR [RDI+296],2
            mov EAX,7
            ret 
.L_4033b6:

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
.L_4033c0:

            test RDI,RDI
            je .L_403413

            mov RAX,QWORD PTR [RDI+288]
            or QWORD PTR [RDI+296],32768
            mov WORD PTR [RDI+638],SI
            mov RCX,RAX
            or AL,128
            and CL,127
            cmp EDX,1
            cmovne RAX,RCX
            mov QWORD PTR [RDI+288],RAX
            movzx EAX,BYTE PTR [RDI+630]
            cmp AL,2
            je .L_403418

            test AL,AL
            jne .L_403413

            cmp BYTE PTR [RDI+631],7
            jbe .L_403413

            mov BYTE PTR [RDI+635],2
.L_403413:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403418:

            mov BYTE PTR [RDI+635],4
            ret 
.L_403420:

            test RDI,RDI
            je .L_403435

            call .L_4033c0

            or QWORD PTR [RDI+296],16777216
.L_403435:

            ret 
.L_403437:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403440:

            test RDI,RDI
            je .L_403450

            or QWORD PTR [RDI+296],131072
.L_403450:

            ret 
.L_403452:

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
.L_403460:

            test RDI,RDI
            je .L_403470

            or QWORD PTR [RDI+296],524288
.L_403470:

            ret 
.L_403472:

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
.L_403480:

            test RDI,RDI
            je .L_40348d

            or QWORD PTR [RDI+296],32
.L_40348d:

            ret 
.L_40348f:

            nop
.L_403490:

            cmp BYTE PTR [RDI+16],0
            jne .L_4034b8

            mov RAX,QWORD PTR [RDI+8]
            test RAX,RAX
            je .L_4034c8

            add RAX,RSI
            nop
            nop
            nop
            nop
            nop
            nop
.L_4034a8:

            not BYTE PTR [RSI]
            add RSI,1
            cmp RAX,RSI
            jne .L_4034a8

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4034b8:

            movzx EAX,WORD PTR [RDI+16]
            cmp AX,2052
            je .L_4034d0

            cmp AX,4100
            je .L_4034f0
.L_4034c8:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4034d0:

            mov RDX,QWORD PTR [RDI+8]
            test RDX,RDX
            je .L_4034c8

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
.L_4034e0:

            not BYTE PTR [RSI+RAX*1]
            add RAX,2
            cmp RDX,RAX
            ja .L_4034e0

            ret 
          .byte 0x66
          .byte 0x90
.L_4034f0:

            mov RCX,QWORD PTR [RDI+8]
            test RCX,RCX
            je .L_4034c8

            mov RAX,RSI
            nop
            nop
            nop
            nop
.L_403500:

            not BYTE PTR [RAX]
            not BYTE PTR [RAX+1]
            add RAX,4
            mov RDX,RAX
            sub RDX,RSI
            cmp RCX,RDX
            ja .L_403500

            ret 
.L_403516:

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
.L_403520:

            cmp BYTE PTR [RDI+17],16
            je .L_403530
.L_403526:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403530:

            movzx EAX,BYTE PTR [RDI+18]
            imul RAX,QWORD PTR [RDI]
            test RAX,RAX
            mov RDI,RAX
            je .L_403526

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
            nop
.L_403548:

            movzx EDX,BYTE PTR [RSI]
            movzx ECX,BYTE PTR [RSI+1]
            add RAX,1
            add RSI,2
            mov BYTE PTR [RSI-2],CL
            mov BYTE PTR [RSI-1],DL
            cmp RDI,RAX
            jne .L_403548

            ret 
.L_403564:

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
.L_403570:

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,7
            ja .L_40358b

            cmp AL,1
            je .L_4035c0

            cmp AL,2
            je .L_403590

            cmp AL,4
            lea RCX,QWORD PTR [RIP+.L_413060]
            je .L_403597
.L_40358b:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403590:

            lea RCX,QWORD PTR [RIP+.L_413160]
.L_403597:

            mov RDX,QWORD PTR [RDI+8]
            add RDX,RSI
            cmp RSI,RDX
            jae .L_40358b

            nop
            nop
            nop
            nop
            nop
.L_4035a8:

            movzx EAX,BYTE PTR [RSI]
            add RSI,1
            movzx EAX,BYTE PTR [RCX+RAX*1]
            mov BYTE PTR [RSI-1],AL
            cmp RDX,RSI
            jne .L_4035a8

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4035c0:

            lea RCX,QWORD PTR [RIP+.L_413260]
            jmp .L_403597
.L_4035c9:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4035d0:

            movzx EAX,BYTE PTR [RDI+16]
            mov R8,RDX
            mov RCX,QWORD PTR [RDI]
            and R8D,4194304
            cmp AL,2
            je .L_4036b8

            cmp AL,6
            je .L_403618

            test AL,AL
            jne .L_4038d0

            cmp BYTE PTR [RDI+18],2
            je .L_4036e8
.L_4035ff:

            test R8,R8
            je .L_4036b3
.L_403608:

            movzx EAX,BYTE PTR [RDI+16]
.L_40360c:

            and EAX,4294967291
            mov BYTE PTR [RDI+16],AL
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403618:

            test R8,R8
            je .L_4036d0

            cmp BYTE PTR [RDI+18],4
            jne .L_40360c
.L_403627:

            and EDX,128
            cmp BYTE PTR [RDI+17],8
            je .L_403790

            test RDX,RDX
            jne .L_4037f0

            test RCX,RCX
            mov RAX,RSI
            je .L_403697

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403650:

            movzx R9D,BYTE PTR [RSI+2]
            add RSI,8
            add RDX,1
            add RAX,6
            mov BYTE PTR [RAX-6],R9B
            movzx R9D,BYTE PTR [RSI-5]
            mov BYTE PTR [RAX-5],R9B
            movzx R9D,BYTE PTR [RSI-4]
            mov BYTE PTR [RAX-4],R9B
            movzx R9D,BYTE PTR [RSI-3]
            mov BYTE PTR [RAX-3],R9B
            movzx R9D,BYTE PTR [RSI-2]
            mov BYTE PTR [RAX-2],R9B
            movzx R9D,BYTE PTR [RSI-1]
            cmp RCX,RDX
            mov BYTE PTR [RAX-1],R9B
            jne .L_403650
.L_403697:

            lea RAX,QWORD PTR [RCX+RCX*2]
            mov BYTE PTR [RDI+19],48
            add RAX,RAX
            mov QWORD PTR [RDI+8],RAX
.L_4036a6:

            test R8,R8
            mov BYTE PTR [RDI+18],3
            jne .L_403608
.L_4036b3:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4036b8:

            cmp BYTE PTR [RDI+18],4
            jne .L_4035ff

            jmp .L_403627
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4036d0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4036d8:

            cmp BYTE PTR [RDI+18],2
            jne .L_40360c

            nop
            nop
            nop
            nop
            nop
            nop
.L_4036e8:

            and EDX,128
            cmp BYTE PTR [RDI+17],8
            je .L_403730

            test RDX,RDX
            jne .L_403760

            test RCX,RCX
            je .L_40371a

            nop
            nop
.L_403700:

            movzx EAX,BYTE PTR [RSI+RDX*4+2]
            mov BYTE PTR [RSI+RDX*2],AL
            movzx EAX,BYTE PTR [RSI+RDX*4+3]
            mov BYTE PTR [RSI+RDX*2+1],AL
            add RDX,1
            cmp RCX,RDX
            jne .L_403700
.L_40371a:

            add RCX,RCX
            mov BYTE PTR [RDI+19],16
            mov QWORD PTR [RDI+8],RCX
.L_403725:

            mov BYTE PTR [RDI+18],1
            jmp .L_4035ff
          .byte 0x66
          .byte 0x90
.L_403730:

            test RDX,RDX
            je .L_403860

            test RCX,RCX
            je .L_403750

            xor EAX,EAX
.L_403740:

            movzx EDX,BYTE PTR [RSI+RAX*2]
            mov BYTE PTR [RSI+RAX*1],DL
            add RAX,1
            cmp RCX,RAX
            jne .L_403740
.L_403750:

            mov BYTE PTR [RDI+19],8
            mov QWORD PTR [RDI+8],RCX
            jmp .L_403725
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403760:

            cmp RCX,1
            jbe .L_40371a

            mov EAX,1
            nop
            nop
            nop
            nop
            nop
.L_403770:

            movzx EDX,BYTE PTR [RSI+RAX*4]
            mov BYTE PTR [RSI+RAX*2],DL
            movzx EDX,BYTE PTR [RSI+RAX*4+1]
            mov BYTE PTR [RSI+RAX*2+1],DL
            add RAX,1
            cmp RCX,RAX
            jne .L_403770

            jmp .L_40371a
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403790:

            test RDX,RDX
            je .L_403890

            cmp RCX,1
            lea RAX,QWORD PTR [RSI+3]
            lea RDX,QWORD PTR [RSI+4]
            jbe .L_4037d7

            lea R9,QWORD PTR [RCX+RCX*2]
            add RSI,R9
            nop
            nop
.L_4037b0:

            movzx R9D,BYTE PTR [RDX]
            add RAX,3
            add RDX,4
            mov BYTE PTR [RAX-3],R9B
            movzx R9D,BYTE PTR [RDX-3]
            mov BYTE PTR [RAX-2],R9B
            movzx R9D,BYTE PTR [RDX-2]
            cmp RAX,RSI
            mov BYTE PTR [RAX-1],R9B
            jne .L_4037b0
.L_4037d7:

            lea RAX,QWORD PTR [RCX+RCX*2]
            mov BYTE PTR [RDI+19],24
            mov QWORD PTR [RDI+8],RAX
            jmp .L_4036a6
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4037f0:

            lea RAX,QWORD PTR [RSI+8]
            add RSI,6
            cmp RCX,1
            jbe .L_403697

            mov EDX,1
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403810:

            movzx R9D,BYTE PTR [RAX]
            add RDX,1
            add RSI,6
            add RAX,8
            mov BYTE PTR [RSI-6],R9B
            movzx R9D,BYTE PTR [RAX-7]
            mov BYTE PTR [RSI-5],R9B
            movzx R9D,BYTE PTR [RAX-6]
            mov BYTE PTR [RSI-4],R9B
            movzx R9D,BYTE PTR [RAX-5]
            mov BYTE PTR [RSI-3],R9B
            movzx R9D,BYTE PTR [RAX-4]
            mov BYTE PTR [RSI-2],R9B
            movzx R9D,BYTE PTR [RAX-3]
            cmp RCX,RDX
            mov BYTE PTR [RSI-1],R9B
            jne .L_403810

            jmp .L_403697
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403860:

            test RCX,RCX
            je .L_403750

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403870:

            movzx EAX,BYTE PTR [RSI+RDX*2+1]
            mov BYTE PTR [RSI+RDX*1],AL
            add RDX,1
            cmp RCX,RDX
            jne .L_403870

            jmp .L_403750
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
.L_403890:

            test RCX,RCX
            je .L_4037d7

            lea R9,QWORD PTR [RCX+RCX*2]
            mov RAX,RSI
            add R9,RSI
            nop
            nop
            nop
            nop
            nop
.L_4038a8:

            movzx EDX,BYTE PTR [RSI+1]
            add RSI,4
            add RAX,3
            mov BYTE PTR [RAX-3],DL
            movzx EDX,BYTE PTR [RSI-2]
            mov BYTE PTR [RAX-2],DL
            movzx EDX,BYTE PTR [RSI-1]
            cmp RAX,R9
            mov BYTE PTR [RAX-1],DL
            jne .L_4038a8

            jmp .L_4037d7
          .byte 0x90
.L_4038d0:

            cmp AL,4
            jne .L_4035ff

            test R8,R8
            jne .L_4036d8

            ret 
.L_4038e3:

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
.L_4038f0:

            movzx EAX,BYTE PTR [RDI+16]
            test AL,2
            je .L_403909

            movzx ECX,BYTE PTR [RDI+17]
            mov RDX,QWORD PTR [RDI]
            cmp CL,8
            je .L_403910

            cmp CL,16
            je .L_403940
.L_403909:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403910:

            cmp AL,2
            je .L_403980

            cmp AL,6
            jne .L_403909

            test RDX,RDX
            je .L_403909

            xor EAX,EAX
            nop
.L_403920:

            movzx ECX,BYTE PTR [RSI]
            movzx EDI,BYTE PTR [RSI+2]
            add RAX,1
            add RSI,4
            mov BYTE PTR [RSI-4],DIL
            mov BYTE PTR [RSI-2],CL
            cmp RDX,RAX
            jne .L_403920

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403940:

            cmp AL,2
            je .L_4039b0

            cmp AL,6
            jne .L_403909

            test RDX,RDX
            je .L_403909

            xor EAX,EAX
            nop
.L_403950:

            movzx ECX,BYTE PTR [RSI]
            movzx EDI,BYTE PTR [RSI+4]
            add RAX,1
            add RSI,8
            mov BYTE PTR [RSI-8],DIL
            mov BYTE PTR [RSI-4],CL
            movzx EDI,BYTE PTR [RSI-3]
            movzx ECX,BYTE PTR [RSI-7]
            mov BYTE PTR [RSI-7],DIL
            mov BYTE PTR [RSI-3],CL
            cmp RDX,RAX
            jne .L_403950

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_403980:

            test RDX,RDX
            je .L_403909

            lea RCX,QWORD PTR [RDX+RDX*2]
            add RCX,RSI
            nop
            nop
            nop
            nop
.L_403990:

            movzx EAX,BYTE PTR [RSI]
            movzx EDX,BYTE PTR [RSI+2]
            add RSI,3
            mov BYTE PTR [RSI-3],DL
            mov BYTE PTR [RSI-1],AL
            cmp RSI,RCX
            jne .L_403990

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4039b0:

            test RDX,RDX
            je .L_403909

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
.L_4039c0:

            movzx ECX,BYTE PTR [RSI]
            movzx EDI,BYTE PTR [RSI+4]
            add RAX,1
            add RSI,6
            mov BYTE PTR [RSI-6],DIL
            mov BYTE PTR [RSI-2],CL
            movzx EDI,BYTE PTR [RSI-1]
            movzx ECX,BYTE PTR [RSI-5]
            mov BYTE PTR [RSI-5],DIL
            mov BYTE PTR [RSI-1],CL
            cmp RDX,RAX
            jne .L_4039c0

            ret 
.L_4039ec:

            nop
            nop
            nop
            nop
.L_4039f0:

            test RDI,RDI
            je .L_403a08

            mov QWORD PTR [RDI+264],RSI
            mov BYTE PTR [RDI+272],DL
            mov BYTE PTR [RDI+273],CL
.L_403a08:

            ret 
.L_403a0a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_403a10:

            test RDI,RDI
            je .L_403a20

            mov RAX,QWORD PTR [RDI+264]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403a20:

            xor EAX,EAX
            ret 
.L_403a23:

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
.L_403a30:

            push R15
            push R14
            mov R15,RDI
            push R13
            push R12
            mov R12,RSI
            push RBP
            push RBX
            sub RSP,24
.L_403a44:

            movzx EBX,BYTE PTR [RDI+636]
            cmp BL,7
            jbe .L_403d32
.L_403a54:

            lea RAX,QWORD PTR [R15+620]
            lea RBX,QWORD PTR [RIP+.L_6191a7]
            lea RBP,QWORD PTR [RIP+.L_6191ac]
            lea R13,QWORD PTR [RIP+.L_6191a2]
            lea R14,QWORD PTR [RIP+.L_61919d]
            mov QWORD PTR [RSP+8],RAX
            nop
            nop
            nop
            nop
.L_403a80:

            mov RDI,R15
            call .L_40f980

            mov RDX,RAX
            mov EAX,DWORD PTR [R15+620]
            cmp DWORD PTR [RBX],EAX
            jne .L_403aab

            mov RAX,QWORD PTR [R15+280]
            test AL,8
            je .L_403aab

            or AH,32
            mov QWORD PTR [R15+280],RAX
.L_403aab:

            mov EAX,DWORD PTR [RBP]
            cmp DWORD PTR [R15+620],EAX
            je .L_403b20

            mov EAX,DWORD PTR [R15+620]
            cmp DWORD PTR [R13],EAX
            je .L_403c30

            mov RSI,QWORD PTR [RSP+8]
            mov RDI,R15
            mov QWORD PTR [RSP],RDX
            call .L_402000

            test EAX,EAX
            mov RDX,QWORD PTR [RSP]
            je .L_403b30

            mov EAX,DWORD PTR [RBX]
            cmp DWORD PTR [R15+620],EAX
            jne .L_403af4

            or QWORD PTR [R15+280],4
.L_403af4:

            mov RSI,R12
            mov RDI,R15
            call .L_40f730

            mov EAX,DWORD PTR [R15+620]
            cmp EAX,DWORD PTR [R14]
            jne .L_403c40

            or QWORD PTR [R15+280],2
            jmp .L_403a80
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_403b20:

            mov RSI,R12
            mov RDI,R15
            call .L_40cd90

            jmp .L_403a80
.L_403b30:

            mov EAX,DWORD PTR [R15+620]
            cmp DWORD PTR [R14],EAX
            je .L_403c90

            mov EAX,DWORD PTR [R15+620]
            cmp DWORD PTR [RBX],EAX
            je .L_403ce0

            mov EAX,DWORD PTR [R15+620]
            cmp EAX,DWORD PTR [RIP+.L_619198]
            mov RSI,R12
            mov RDI,R15
            je .L_403ca0

            cmp EAX,DWORD PTR [RIP+.L_619193]
            je .L_403cb0

            cmp EAX,DWORD PTR [RIP+.L_61918e]
            je .L_403cc0

            cmp EAX,DWORD PTR [RIP+.L_619189]
            je .L_403cd0

            cmp EAX,DWORD PTR [RIP+.L_61917a]
            je .L_403d28

            cmp EAX,DWORD PTR [RIP+.L_619175]
            je .L_403db2

            cmp EAX,DWORD PTR [RIP+.L_619170]
            je .L_403d1e

            cmp EAX,DWORD PTR [RIP+.L_61916b]
            je .L_403de9

            cmp EAX,DWORD PTR [RIP+.L_619166]
            je .L_403ddf

            cmp EAX,DWORD PTR [RIP+.L_61915c]
            je .L_403e1e

            cmp EAX,DWORD PTR [RIP+.L_619184]
            je .L_403e32

            cmp EAX,DWORD PTR [RIP+.L_619161]
            je .L_403e3c

            cmp EAX,DWORD PTR [RIP+.L_619157]
            je .L_403e28

            cmp EAX,DWORD PTR [RIP+.L_619152]
            je .L_403e5a

            cmp EAX,DWORD PTR [RIP+.L_61914d]
            je .L_403e6e

            cmp EAX,DWORD PTR [RIP+.L_619148]
            jne .L_403e64

            call .L_40f490

            jmp .L_403a80
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
.L_403c30:

            mov RSI,R12
            mov RDI,R15
            call .L_40d1e0

            jmp .L_403a80
.L_403c40:

            cmp EAX,DWORD PTR [RBX]
            jne .L_403a80

            mov RAX,QWORD PTR [R15+280]
            lea RSI,QWORD PTR [RIP+.L_41336f]
            test AL,1
            je .L_403c77

            cmp BYTE PTR [R15+630],3
            jne .L_403d0f

            test AL,2
            jne .L_403d0f

            lea RSI,QWORD PTR [RIP+.L_413388]
.L_403c77:

            add RSP,24
.L_403c7b:

            mov RDI,R15
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40c520
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403c90:

            mov RSI,R12
            mov RDI,R15
            call .L_40cf60

            jmp .L_403a80
.L_403ca0:

            call .L_40e560

            jmp .L_403a80
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403cb0:

            call .L_40d5d0

            jmp .L_403a80
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403cc0:

            call .L_40d250

            jmp .L_403a80
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403cd0:

            call .L_40e780

            jmp .L_403a80
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403ce0:

            mov RAX,QWORD PTR [R15+280]
            test AL,1
            je .L_403dbc

            cmp BYTE PTR [R15+630],3
            je .L_403df3
.L_403cfd:

            or RAX,4
            mov QWORD PTR [R15+592],RDX
            mov QWORD PTR [R15+280],RAX
.L_403d0f:

            add RSP,24
.L_403d13:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_403d1e:

            call .L_40ef30

            jmp .L_403a80
.L_403d28:

            call .L_40ea30

            jmp .L_403a80
.L_403d32:

            movzx R13D,BL
            mov EBP,8
            lea R14,QWORD PTR [R12+52]
            sub RBP,R13
            lea RSI,QWORD PTR [RSI+R13*1+52]
            mov RDX,RBP
            call .L_405c50

            mov BYTE PTR [R15+636],8
            mov RDX,RBP
            mov RSI,R13
            mov RDI,R14
            call .L_401590

            test EAX,EAX
            je .L_403d99

            cmp BL,3
            ja .L_403d8a

            mov EDX,4
            mov RSI,R13
            mov RDI,R14
            sub RDX,R13
            call .L_401590

            test EAX,EAX
            jne .L_403e46
.L_403d8a:

            lea RSI,QWORD PTR [RIP+.L_413448]
            mov RDI,R15
            call .L_40c520
.L_403d99:

            cmp BL,2
            ja .L_403a54

            or QWORD PTR [R15+280],4096
            jmp .L_403a54
.L_403db2:

            call .L_40eb80

            jmp .L_403a80
.L_403dbc:

            lea RSI,QWORD PTR [RIP+.L_41336f]
            mov RDI,R15
            mov QWORD PTR [RSP],RDX
            call .L_40c520

            mov RAX,QWORD PTR [R15+280]
            mov RDX,QWORD PTR [RSP]
            jmp .L_403cfd
.L_403ddf:

            call .L_40d440

            jmp .L_403a80
.L_403de9:

            call .L_40e8e0

            jmp .L_403a80
.L_403df3:

            test AL,2
            jne .L_403cfd

            lea RSI,QWORD PTR [RIP+.L_413388]
            mov RDI,R15
            mov QWORD PTR [RSP],RDX
            call .L_40c520

            mov RAX,QWORD PTR [R15+280]
            mov RDX,QWORD PTR [RSP]
            jmp .L_403cfd
.L_403e1e:

            call .L_40dab0

            jmp .L_403a80
.L_403e28:

            call .L_40f2a0

            jmp .L_403a80
.L_403e32:

            call .L_40dd00

            jmp .L_403a80
.L_403e3c:

            call .L_40dfb0

            jmp .L_403a80
.L_403e46:

            lea RSI,QWORD PTR [RIP+.L_413360]
            mov RDI,R15
            call .L_40c520

            jmp .L_403d99
.L_403e5a:

            call .L_40f160

            jmp .L_403a80
.L_403e64:

            call .L_40f730

            jmp .L_403a80
.L_403e6e:

            call .L_40e310

            jmp .L_403a80
.L_403e78:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403e80:

            push R15
            push R14
            lea R14,QWORD PTR [RIP+.L_4133a1]
            push R13
            push R12
            mov R12,RSI
            push RBP
            push RBX
            xor ESI,ESI
            mov RBX,RDI
            lea RBP,QWORD PTR [RIP+.L_6191ac]
            sub RSP,8
.L_403ea4:

            lea R13,QWORD PTR [RBX+620]
            call .L_40ca80

            jmp .L_403ed5
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403eb8:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40d1e0

            mov RAX,QWORD PTR [RBX+280]
.L_403ecd:

            test AL,16
            jne .L_403f72
.L_403ed5:

            mov RDI,RBX
            call .L_40f980

            mov R15,RAX
            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RBP],EAX
            je .L_403f88

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_6191a2],EAX
            je .L_403eb8

            mov RSI,R13
            mov RDI,RBX
            call .L_402000

            test EAX,EAX
            je .L_403fa8

            mov EAX,DWORD PTR [RIP+.L_6191a7]
            cmp DWORD PTR [RBX+620],EAX
            jne .L_403f38

            test R15,R15
            jne .L_404100

            test BYTE PTR [RBX+281],32
            jne .L_404100

            nop
            nop
            nop
            nop
.L_403f38:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40f730

            mov EAX,DWORD PTR [RIP+.L_61919d]
            cmp DWORD PTR [RBX+620],EAX
            mov RAX,QWORD PTR [RBX+280]
            jne .L_403ecd

            or RAX,2
            test AL,16
            mov QWORD PTR [RBX+280],RAX
            je .L_403ed5
.L_403f72:

            add RSP,8
.L_403f76:

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
.L_403f88:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40cd90

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403fa8:

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_6191a7],EAX
            jne .L_403ff0

            test R15,R15
            jne .L_403fc4

            test BYTE PTR [RBX+281],32
            je .L_403fcf
.L_403fc4:

            mov RSI,R14
            mov RDI,RBX
            call .L_40c520
.L_403fcf:

            mov RSI,R15
            mov RDI,RBX
            call .L_40ca80

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
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
.L_403ff0:

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_61919d],EAX
            je .L_404110

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_619198],EAX
            je .L_404150

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_619193],EAX
            je .L_404130

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_61918e],EAX
            je .L_40416a

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_619189],EAX
            je .L_404195

            mov EAX,DWORD PTR [RBX+620]
            cmp EAX,DWORD PTR [RIP+.L_61917a]
            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            je .L_4041af

            cmp EAX,DWORD PTR [RIP+.L_619175]
            je .L_404184

            cmp EAX,DWORD PTR [RIP+.L_619170]
            je .L_4041c0

            cmp EAX,DWORD PTR [RIP+.L_61916b]
            je .L_4041d1

            cmp EAX,DWORD PTR [RIP+.L_619166]
            je .L_4041e2

            cmp EAX,DWORD PTR [RIP+.L_61915c]
            je .L_4041f3

            cmp EAX,DWORD PTR [RIP+.L_619184]
            je .L_404204

            cmp EAX,DWORD PTR [RIP+.L_619161]
            je .L_404215

            cmp EAX,DWORD PTR [RIP+.L_619157]
            je .L_404226

            cmp EAX,DWORD PTR [RIP+.L_619152]
            je .L_404237

            cmp EAX,DWORD PTR [RIP+.L_61914d]
            je .L_404259

            cmp EAX,DWORD PTR [RIP+.L_619148]
            jne .L_404248

            call .L_40f490

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404100:

            mov RSI,R14
            mov RDI,RBX
            call .L_40c520

            jmp .L_403f38
.L_404110:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40cf60

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404130:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40d5d0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404150:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40e560

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_40416a:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40d250

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_404184:

            call .L_40eb80

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_404195:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40e780

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_4041af:

            call .L_40ea30

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_4041c0:

            call .L_40ef30

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_4041d1:

            call .L_40e8e0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_4041e2:

            call .L_40d440

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_4041f3:

            call .L_40dab0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_404204:

            call .L_40dd00

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_404215:

            call .L_40dfb0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_404226:

            call .L_40f2a0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_404237:

            call .L_40f160

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_404248:

            call .L_40f730

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_404259:

            call .L_40e310

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_403ecd
.L_40426a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_404270:

            push RBX
            sub RSP,176
.L_404278:

            mov RAX,QWORD PTR [RSP+192]
            mov QWORD PTR [RSP+8],RDI
            mov EDI,1
            mov QWORD PTR [RSP+32],RSI
            mov QWORD PTR [RSP+40],RDX
            mov RSI,R9
            mov RDX,R8
            mov QWORD PTR [RSP+48],RCX
            mov QWORD PTR [RSP+16],R8
            mov QWORD PTR [RSP+24],RAX
            mov QWORD PTR [RSP+56],R9
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+168],RAX
            xor EAX,EAX
            call .L_40bec0

            mov QWORD PTR [RSP+72],RAX
            mov RAX,QWORD PTR [RSP+72]
            test RAX,RAX
            je .L_4045b2

            mov RAX,QWORD PTR [RSP+72]
            mov QWORD PTR [RAX+1144],1000000
            mov RAX,QWORD PTR [RSP+72]
            mov QWORD PTR [RAX+1152],1000000
            mov RAX,QWORD PTR [RSP+72]
            mov RDI,QWORD PTR [RSP+72]
            mov QWORD PTR [RAX+496],32765
            call _setjmp@PLT

            test EAX,EAX
            mov EBX,EAX
            jne .L_404578

            mov RDI,QWORD PTR [RSP+72]
            mov RCX,QWORD PTR [RSP+24]
            mov RDX,QWORD PTR [RSP+56]
            mov RSI,QWORD PTR [RSP+16]
            call .L_40c1e0

            mov RDI,QWORD PTR [RSP+72]
            mov RCX,QWORD PTR [RSP+48]
            mov RDX,QWORD PTR [RSP+40]
            mov RSI,QWORD PTR [RSP+32]
            call .L_40c6e0

            cmp QWORD PTR [RSP+8],0
            je .L_404640

            xor EDX,EDX
            mov ECX,49
            mov EDI,1
            lea RAX,QWORD PTR [RIP+.L_412a0f]
            jmp .L_404381
.L_404370:

            add RDX,1
            test SIL,SIL
            je .L_4043c0
.L_404379:

            test CL,CL
            je .L_4043c0

            movzx ECX,BYTE PTR [RAX+RDX*1]
.L_404381:

            mov R10,QWORD PTR [RSP+8]
            mov ESI,ECX
            cmp BYTE PTR [R10+RDX*1],CL
            je .L_4043a3

            mov RSI,QWORD PTR [RSP+72]
            or QWORD PTR [RSI+288],131072
            movzx ESI,BYTE PTR [R10+RDX*1]
.L_4043a3:

            cmp SIL,46
            jne .L_404370

            cmp EBX,1
            je .L_4043c0

            add RDX,1
            test SIL,SIL
            mov EBX,EDI
            jne .L_404379

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4043c0:

            mov RAX,QWORD PTR [RSP+72]
            test BYTE PTR [RAX+290],2
            je .L_404477

            mov RAX,QWORD PTR [RSP+8]
            movzx EAX,BYTE PTR [RAX]
            cmp AL,BYTE PTR [RIP+.L_413040]
            je .L_4045d8
.L_4043e6:

            lea RBX,QWORD PTR [RSP+80]
            mov R9,QWORD PTR [RSP+8]
            lea R8,QWORD PTR [RIP+.L_4134a8]
            mov ESI,80
            mov ECX,80
            mov EDX,1
            mov RDI,RBX
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RDI,QWORD PTR [RSP+72]
            mov RSI,RBX
            call .L_40c5f0
.L_40441d:

            lea RBX,QWORD PTR [RSP+80]
            lea R9,QWORD PTR [RIP+.L_413040]
            lea R8,QWORD PTR [RIP+.L_413470]
            mov ECX,80
            mov EDX,1
            mov ESI,80
            mov RDI,RBX
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RDI,QWORD PTR [RSP+72]
            mov RSI,RBX
            call .L_40c5f0

            mov RAX,QWORD PTR [RSP+72]
            mov RDI,QWORD PTR [RSP+72]
            lea RSI,QWORD PTR [RIP+.L_4134e0]
            mov QWORD PTR [RAX+288],0
            call .L_40c520
.L_404477:

            mov RAX,QWORD PTR [RSP+72]
            mov QWORD PTR [RAX+424],8192
            mov RAX,QWORD PTR [RSP+72]
            mov RDI,QWORD PTR [RSP+72]
            mov RBX,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RAX+424]
            call .L_40c040

            mov RDX,OFFSET .L_401640
            mov QWORD PTR [RBX+416],RAX
            lea RSI,QWORD PTR [RIP+.L_4133b7]
            mov RAX,QWORD PTR [RSP+72]
            mov QWORD PTR [RAX+368],RDX
            mov RAX,QWORD PTR [RSP+72]
            mov RDX,OFFSET .L_401690
            mov QWORD PTR [RAX+376],RDX
            mov RAX,QWORD PTR [RSP+72]
            mov RDX,QWORD PTR [RSP+72]
            mov RDI,QWORD PTR [RSP+72]
            mov QWORD PTR [RAX+384],RDX
            add RDI,304
            mov EDX,112
            call inflateInit_@PLT

            cmp EAX,-4
            je .L_404600

            jle .L_404620

            cmp EAX,-2
            je .L_404600

            test EAX,EAX
            jne .L_404670
.L_40451d:

            mov RDX,QWORD PTR [RSP+72]
            mov RAX,QWORD PTR [RSP+72]
            xor ESI,ESI
            mov RDX,QWORD PTR [RDX+416]
            mov QWORD PTR [RAX+328],RDX
            mov RDX,QWORD PTR [RSP+72]
            mov RAX,QWORD PTR [RSP+72]
            mov RDI,QWORD PTR [RSP+72]
            mov RDX,QWORD PTR [RDX+424]
            mov DWORD PTR [RAX+336],EDX
            xor EDX,EDX
            call .L_405c70

            mov RDI,QWORD PTR [RSP+72]
            call _setjmp@PLT

            test EAX,EAX
            jne .L_4046af

            mov RAX,QWORD PTR [RSP+72]
            jmp .L_4045b4
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404578:

            mov RAX,QWORD PTR [RSP+72]
            mov RDI,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RAX+416]
            call .L_40c120

            mov RAX,QWORD PTR [RSP+72]
            mov RDX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RSP+24]
            mov QWORD PTR [RAX+416],0
            call .L_40bfb0
.L_4045b2:

            xor EAX,EAX
.L_4045b4:

            mov RBX,QWORD PTR [RSP+168]
            xor RBX,QWORD PTR FS:[40]
            jne .L_4046aa

            add RSP,176
.L_4045d2:

            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4045d8:

            cmp AL,49
            je .L_404690

            cmp AL,48
            jne .L_404477

            mov RAX,QWORD PTR [RSP+8]
            cmp BYTE PTR [RAX+2],56
            jg .L_404477

            jmp .L_4043e6
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_404600:

            mov RDI,QWORD PTR [RSP+72]
            lea RSI,QWORD PTR [RIP+.L_4133be]
            call .L_40c520

            jmp .L_40451d
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
.L_404620:

            cmp EAX,-6
            jne .L_404670

            mov RDI,QWORD PTR [RSP+72]
            lea RSI,QWORD PTR [RIP+.L_4133d0]
            call .L_40c520

            jmp .L_40451d
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404640:

            mov RAX,QWORD PTR [RSP+72]
            or QWORD PTR [RAX+288],131072
            mov RAX,QWORD PTR [RSP+72]
            test BYTE PTR [RAX+290],2
            jne .L_40441d

            jmp .L_404477
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404670:

            mov RDI,QWORD PTR [RSP+72]
            lea RSI,QWORD PTR [RIP+.L_4133e3]
            call .L_40c520

            jmp .L_40451d
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
.L_404690:

            mov RAX,QWORD PTR [RSP+8]
            movzx EBX,BYTE PTR [RIP+.L_413042]
            cmp BYTE PTR [RAX+2],BL
            jne .L_4043e6

            jmp .L_404477
.L_4046aa:

            call __stack_chk_fail@PLT
.L_4046af:

            call abort@PLT
.L_4046b4:

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
.L_4046c0:

            sub RSP,16
            xor R9D,R9D
            xor R8D,R8D
            push 0
            call .L_404270

            add RSP,24
            ret 
.L_4046d6:

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
.L_4046e0:

            push R12
            push RBP
            push RBX
            sub RSP,208
.L_4046eb:

            mov RBX,QWORD PTR [RDI]
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+200],RAX
            xor EAX,EAX
            test RBX,RBX
            je .L_4049e0

            test RSI,RSI
            mov RBP,RDI
            mov R12,RDX
            je .L_404749

            movzx ECX,BYTE PTR [RSI]
            cmp CL,BYTE PTR [RIP+.L_413040]
            jne .L_404749

            test CL,CL
            mov EAX,1
            lea RDI,QWORD PTR [RIP+.L_413040]
            jne .L_404740

            jmp .L_404763
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404738:

            add RAX,1
            test CL,CL
            je .L_404763
.L_404740:

            movzx ECX,BYTE PTR [RSI+RAX*1]
            cmp CL,BYTE PTR [RDI+RAX*1]
            je .L_404738
.L_404749:

            lea RSI,QWORD PTR [RIP+.L_413518]
            mov QWORD PTR [RBX+208],0
            mov RDI,RBX
            call .L_40c5f0
.L_404763:

            movdqu XMM0,XMMWORD PTR [RBX]
            cmp R12,1215
            mov RAX,QWORD PTR [RBX+192]
            movaps XMMWORD PTR [RSP],XMM0
            movdqu XMM0,XMMWORD PTR [RBX+16]
            mov QWORD PTR [RSP+192],RAX
            movaps XMMWORD PTR [RSP+16],XMM0
            movdqu XMM0,XMMWORD PTR [RBX+32]
            movaps XMMWORD PTR [RSP+32],XMM0
            movdqu XMM0,XMMWORD PTR [RBX+48]
            movaps XMMWORD PTR [RSP+48],XMM0
            movdqu XMM0,XMMWORD PTR [RBX+64]
            movaps XMMWORD PTR [RSP+64],XMM0
            movdqu XMM0,XMMWORD PTR [RBX+80]
            movaps XMMWORD PTR [RSP+80],XMM0
            movdqu XMM0,XMMWORD PTR [RBX+96]
            movaps XMMWORD PTR [RSP+96],XMM0
            movdqu XMM0,XMMWORD PTR [RBX+112]
            movaps XMMWORD PTR [RSP+112],XMM0
            movdqu XMM0,XMMWORD PTR [RBX+128]
            movaps XMMWORD PTR [RSP+128],XMM0
            movdqu XMM0,XMMWORD PTR [RBX+144]
            movaps XMMWORD PTR [RSP+144],XMM0
            movdqu XMM0,XMMWORD PTR [RBX+160]
            movaps XMMWORD PTR [RSP+160],XMM0
            movdqu XMM0,XMMWORD PTR [RBX+176]
            movaps XMMWORD PTR [RSP+176],XMM0
            jbe .L_4049c0
.L_40480d:

            lea RDI,QWORD PTR [RBX+8]
            mov RCX,RBX
            xor EAX,EAX
            mov ESI,8192
            and RDI,-8
            mov QWORD PTR [RBX],0
            mov QWORD PTR [RBX+1208],0
            sub RCX,RDI
            add ECX,1216
            shr ECX,3

            rep stosq QWORD PTR [RDI]

            mov QWORD PTR [RBX+1144],1000000
            mov QWORD PTR [RBX+1152],1000000
            mov RDI,RBX
            mov QWORD PTR [RBX+424],8192
            mov RAX,QWORD PTR [RSP+192]
            movdqa XMM0,XMMWORD PTR [RSP]
            mov QWORD PTR [RBX+192],RAX
            movups XMMWORD PTR [RBX],XMM0
            movdqa XMM0,XMMWORD PTR [RSP+16]
            movups XMMWORD PTR [RBX+16],XMM0
            movdqa XMM0,XMMWORD PTR [RSP+32]
            movups XMMWORD PTR [RBX+32],XMM0
            movdqa XMM0,XMMWORD PTR [RSP+48]
            movups XMMWORD PTR [RBX+48],XMM0
            movdqa XMM0,XMMWORD PTR [RSP+64]
            movups XMMWORD PTR [RBX+64],XMM0
            movdqa XMM0,XMMWORD PTR [RSP+80]
            movups XMMWORD PTR [RBX+80],XMM0
            movdqa XMM0,XMMWORD PTR [RSP+96]
            movups XMMWORD PTR [RBX+96],XMM0
            movdqa XMM0,XMMWORD PTR [RSP+112]
            movups XMMWORD PTR [RBX+112],XMM0
            movdqa XMM0,XMMWORD PTR [RSP+128]
            movups XMMWORD PTR [RBX+128],XMM0
            movdqa XMM0,XMMWORD PTR [RSP+144]
            movups XMMWORD PTR [RBX+144],XMM0
            movdqa XMM0,XMMWORD PTR [RSP+160]
            movups XMMWORD PTR [RBX+160],XMM0
            movdqa XMM0,XMMWORD PTR [RSP+176]
            movups XMMWORD PTR [RBX+176],XMM0
            mov RBP,OFFSET .L_401640
            mov QWORD PTR [RBX+368],RBP
            call .L_40c040

            mov QWORD PTR [RBX+416],RAX
            mov RAX,OFFSET .L_401690
            lea RDI,QWORD PTR [RBX+304]
            lea RSI,QWORD PTR [RIP+.L_4133b7]
            mov QWORD PTR [RBX+368],RBP
            mov QWORD PTR [RBX+384],RBX
            mov EDX,112
            mov QWORD PTR [RBX+376],RAX
            call inflateInit_@PLT

            cmp EAX,-2
            je .L_404a18

            test EAX,EAX
            je .L_404974

            cmp EAX,-6
            je .L_404a00

            lea RSI,QWORD PTR [RIP+.L_4133e3]
            mov RDI,RBX
            call .L_40c520
.L_404974:

            mov RAX,QWORD PTR [RBX+416]
            mov QWORD PTR [RBX+328],RAX
            mov RAX,QWORD PTR [RBX+424]
            mov DWORD PTR [RBX+336],EAX
            mov RAX,QWORD PTR [RSP+200]
            xor RAX,QWORD PTR FS:[40]
            jne .L_404a2c

            add RSP,208
.L_4049ad:

            mov RDI,RBX
            xor EDX,EDX
            pop RBX
            pop RBP
            pop R12
            xor ESI,ESI
            jmp .L_405c70
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4049c0:

            mov RDI,RBX
            call .L_40c030

            mov EDI,1
            call .L_40bfa0

            mov RBX,RAX
            mov QWORD PTR [RBP],RAX
            jmp .L_40480d
          .byte 0x66
          .byte 0x90
.L_4049e0:

            mov RAX,QWORD PTR [RSP+200]
            xor RAX,QWORD PTR FS:[40]
            jne .L_404a2c

            add RSP,208
            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0x90
.L_404a00:

            lea RSI,QWORD PTR [RIP+.L_4133d0]
            mov RDI,RBX
            call .L_40c520

            jmp .L_404974
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_404a18:

            lea RSI,QWORD PTR [RIP+.L_4133be]
            mov RDI,RBX
            call .L_40c520

            jmp .L_404974
.L_404a2c:

            call __stack_chk_fail@PLT
.L_404a31:

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
.L_404a40:

            push R13
            push R12
            mov R12,RCX
            push RBP
            push RBX
            sub RSP,120
.L_404a4d:

            mov RCX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+104],RCX
            xor ECX,ECX
            test RDI,RDI
            mov QWORD PTR [RSP+8],RDI
            je .L_404a8f

            cmp RDX,1215
            mov RBP,RSI
            mov RBX,RDX
            jbe .L_404ab0

            cmp R12,463
            jbe .L_404ab0
.L_404a7f:

            lea RDI,QWORD PTR [RSP+8]
            mov RDX,RBX
            mov RSI,RBP
            call .L_4046e0
.L_404a8f:

            mov RAX,QWORD PTR [RSP+104]
            xor RAX,QWORD PTR FS:[40]
            jne .L_404b92

            add RSP,120
.L_404aa7:

            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
          .byte 0x66
          .byte 0x90
.L_404ab0:

            test RBP,RBP
            mov QWORD PTR [RDI+208],0
            lea R13,QWORD PTR [RSP+16]
            je .L_404af5

            lea R8,QWORD PTR [RIP+.L_4134a8]
            mov ESI,80
            mov RDI,R13
            mov R9,RBP
            mov ECX,80
            mov EDX,1
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RDI,QWORD PTR [RSP+8]
            mov RSI,R13
            call .L_40c5f0
.L_404af5:

            lea R9,QWORD PTR [RIP+.L_413040]
            lea R8,QWORD PTR [RIP+.L_413470]
            mov ECX,80
            mov EDX,1
            mov ESI,80
            mov RDI,R13
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RDI,QWORD PTR [RSP+8]
            mov RSI,R13
            call .L_40c5f0

            cmp RBX,1215
            ja .L_404b66

            mov RDI,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RIP+.L_4135a8]
            mov QWORD PTR [RDI+200],0
            mov QWORD PTR [RDI+288],0
            call .L_40c520

            cmp R12,463
            ja .L_404a7f
.L_404b66:

            mov RDI,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RIP+.L_413560]
            mov QWORD PTR [RDI+200],0
            mov QWORD PTR [RDI+288],0
            call .L_40c520

            jmp .L_404a7f
.L_404b92:

            call __stack_chk_fail@PLT
.L_404b97:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_404ba0:

            lea RSI,QWORD PTR [RIP+.L_4133f6]
            xor ECX,ECX
            xor EDX,EDX
            jmp .L_404a40
.L_404bb0:

            test RDI,RDI
            je .L_404bc0

            test RSI,RSI
            je .L_404bc0

            jmp .L_403a30
          .byte 0x90
.L_404bc0:

            ret 
.L_404bc2:

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
.L_404bd0:

            test RDI,RDI
            je .L_404c20

            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,8
            test BYTE PTR [RDI+288],64
            je .L_404c10

            lea RSI,QWORD PTR [RIP+.L_4135f0]
            call .L_40c5f0
.L_404bf6:

            add RSP,8
            mov RSI,RBP
            mov RDI,RBX
            pop RBX
            pop RBP
            jmp .L_406b10
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404c10:

            call .L_410960

            jmp .L_404bf6
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404c20:

            ret 
.L_404c22:

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
.L_404c30:

            test RDI,RDI
            je .L_404c3e

            test BYTE PTR [RDI+288],64
            je .L_404c40
.L_404c3e:

            ret 
.L_404c40:

            jmp .L_410960
.L_404c45:

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
.L_404c50:

            test RDI,RDI
            je .L_405070

            push R15
            push R14
            push R13
            push R12
            mov R13,RSI
            push RBP
            push RBX
            mov R12,RDX
            mov RBX,RDI
            sub RSP,8
.L_404c70:

            test BYTE PTR [RDI+288],64
            je .L_404e08

            cmp BYTE PTR [RBX+627],0
            je .L_404cc0
.L_404c86:

            test BYTE PTR [RBX+296],2
            je .L_404cc0

            cmp BYTE PTR [RBX+628],6
            mov RCX,QWORD PTR [RBX+512]
            ja .L_404cc0

            movzx EAX,BYTE PTR [RBX+628]
            lea RDX,QWORD PTR [RIP+.L_413694]
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
.L_404cb6:

            and ECX,1
            je .L_4050c4

            nop
.L_404cc0:

            test BYTE PTR [RBX+280],4
            je .L_404e20
.L_404ccd:

            mov RAX,QWORD PTR [RBX+528]
            mov RDX,QWORD PTR [RBX+504]
            mov QWORD PTR [RBX+328],RAX
            movzx EAX,BYTE PTR [RBX+633]
            cmp AL,7
            ja .L_404df0

            imul RAX,RDX
            add RAX,7
            shr RAX,3
            add EAX,1
.L_404d00:

            mov DWORD PTR [RBX+336],EAX
            lea RBP,QWORD PTR [RBX+304]
            lea R15,QWORD PTR [RIP+.L_41341b]
            lea R14,QWORD PTR [RIP+.L_413407]
            jmp .L_404d5e
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_404d20:

            mov ESI,1
            mov RDI,RBP
            call inflate@PLT

            cmp EAX,1
            je .L_404e50

            test EAX,EAX
            je .L_404d50

            mov RSI,QWORD PTR [RBX+352]
            mov RDI,RBX
            test RSI,RSI
            cmove RSI,R14
            call .L_40c520
.L_404d50:

            mov EAX,DWORD PTR [RBX+336]
            test EAX,EAX
            je .L_404e87
.L_404d5e:

            mov ESI,DWORD PTR [RBX+312]
            test ESI,ESI
            jne .L_404d20
.L_404d68:

            mov RAX,QWORD PTR [RBX+592]
            jmp .L_404da3
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404d78:

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            mov RDI,RBX
            call .L_40f980

            mov ECX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_6191a7],ECX
            mov QWORD PTR [RBX+592],RAX
            jne .L_404e38
.L_404da3:

            test RAX,RAX
            je .L_404d78

            mov RCX,QWORD PTR [RBX+424]
            mov RSI,QWORD PTR [RBX+416]
            cmp RCX,RAX
            mov EDX,ECX
            mov DWORD PTR [RBX+312],ECX
            mov QWORD PTR [RBX+304],RSI
            jbe .L_404dd2

            mov EDX,EAX
            mov DWORD PTR [RBX+312],EAX
.L_404dd2:

            mov RDI,RBX
            call .L_40c9a0

            mov EAX,DWORD PTR [RBX+312]
            sub QWORD PTR [RBX+592],RAX
            jmp .L_404d20
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_404df0:

            shr AL,3
            movzx EAX,AL
            imul EAX,EDX
            add EAX,1
            jmp .L_404d00
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404e08:

            call .L_410960

            cmp BYTE PTR [RBX+627],0
            je .L_404cc0

            jmp .L_404c86
          .byte 0x90
.L_404e20:

            lea RSI,QWORD PTR [RIP+.L_413638]
            mov RDI,RBX
            call .L_40c520

            jmp .L_404ccd
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_404e38:

            mov RSI,R15
            mov RDI,RBX
            call .L_40c520

            jmp .L_404d68
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404e50:

            mov ECX,DWORD PTR [RBX+336]
            test ECX,ECX
            jne .L_404e68

            mov EDX,DWORD PTR [RBX+312]
            test EDX,EDX
            je .L_40505a
.L_404e68:

            lea RSI,QWORD PTR [RIP+.L_413431]
            mov RDI,RBX
            call .L_40c520
.L_404e77:

            or QWORD PTR [RBX+280],8
            or QWORD PTR [RBX+288],32
.L_404e87:

            movzx EAX,BYTE PTR [RBX+630]
            mov RDX,QWORD PTR [RBX+504]
            mov BYTE PTR [RBX+584],AL
            movzx EAX,BYTE PTR [RBX+634]
            mov QWORD PTR [RBX+568],RDX
            mov BYTE PTR [RBX+586],AL
            movzx EAX,BYTE PTR [RBX+631]
            mov BYTE PTR [RBX+585],AL
            movzx EAX,BYTE PTR [RBX+633]
            cmp AL,7
            mov BYTE PTR [RBX+587],AL
            jbe .L_405010

            shr AL,3
            movzx EAX,AL
            imul RAX,RDX
.L_404edb:

            mov RDX,QWORD PTR [RBX+528]
            mov QWORD PTR [RBX+576],RAX
            mov RSI,QWORD PTR [RBX+520]
            movzx R8D,BYTE PTR [RDX]
            test R8B,R8B
            jne .L_405030
.L_404efd:

            mov RAX,QWORD PTR [RBX+488]
            mov RDI,RBX
            lea RCX,QWORD PTR [RAX+1]
            call .L_40c1c0

            test BYTE PTR [RBX+1040],4
            je .L_404f26

            cmp BYTE PTR [RBX+1056],64
            je .L_405072
.L_404f26:

            cmp QWORD PTR [RBX+296],0
            jne .L_404f39

            test BYTE PTR [RBX+290],64
            je .L_404fa8
.L_404f39:

            mov RDI,RBX
            call .L_40a040

            cmp BYTE PTR [RBX+627],0
            je .L_404fa8

            test BYTE PTR [RBX+296],2
            je .L_404fa8

            cmp BYTE PTR [RBX+628],5
            jbe .L_40508e
.L_404f60:

            test R12,R12
            je .L_404f81

            movzx EDX,BYTE PTR [RBX+628]
            lea RAX,QWORD PTR [RIP+.L_412f70]
            mov RSI,R12
            mov RDI,RBX
            mov EDX,DWORD PTR [RAX+RDX*4]
            call .L_40fa10
.L_404f81:

            test R13,R13
            je .L_404fd2

            movzx EDX,BYTE PTR [RBX+628]
            lea RAX,QWORD PTR [RIP+.L_412f90]
            mov RSI,R13
            mov RDI,RBX
            mov EDX,DWORD PTR [RAX+RDX*4]
            call .L_40fa10

            jmp .L_404fd2
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_404fa8:

            test R13,R13
            je .L_404fbd

            mov EDX,255
            mov RSI,R13
            mov RDI,RBX
            call .L_40fa10
.L_404fbd:

            test R12,R12
            je .L_404fd2

            mov EDX,255
            mov RSI,R12
            mov RDI,RBX
            call .L_40fa10
.L_404fd2:

            mov RDI,RBX
            call .L_4105e0

            mov RAX,QWORD PTR [RBX+800]
            test RAX,RAX
            je .L_405021

            movzx EDX,BYTE PTR [RBX+628]
            mov RSI,QWORD PTR [RBX+512]
            add RSP,8
.L_404ff8:

            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
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
.L_405010:

            imul RAX,RDX
            add RAX,7
            shr RAX,3
            jmp .L_404edb
.L_405021:

            add RSP,8
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_405030:

            lea RCX,QWORD PTR [RSI+1]
            lea RSI,QWORD PTR [RBX+568]
            add RDX,1
            mov RDI,RBX
            call .L_4103d0

            mov RDX,QWORD PTR [RBX+528]
            mov RSI,QWORD PTR [RBX+520]
            jmp .L_404efd
.L_40505a:

            cmp QWORD PTR [RBX+592],0
            je .L_404e77

            jmp .L_404e68
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_405070:

            ret 
.L_405072:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_40bdf0

            jmp .L_404f26
.L_40508e:

            mov RDI,RBX
            call .L_40fde0

            jmp .L_404f60
.L_40509b:

            and ECX,1
            jne .L_4050ae

            cmp QWORD PTR [RBX+456],1
            ja .L_404cc0
.L_4050ae:

            test R12,R12
            je .L_4050c4

            mov EDX,DWORD PTR [RIP+.L_412f84]
            mov RSI,R12
            mov RDI,RBX
            call .L_40fa10
.L_4050c4:

            add RSP,8
.L_4050c8:

            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_4105e0
.L_4050da:

            mov RAX,RCX
            and EAX,3
            cmp RAX,2
            je .L_404cc0

            test R12,R12
            je .L_4050c4

            and ECX,2
            je .L_4050c4

            mov EDX,DWORD PTR [RIP+.L_412f80]
            mov RSI,R12
            mov RDI,RBX
            call .L_40fa10

            jmp .L_4050c4
.L_405107:

            and ECX,3
            jne .L_40511a

            cmp QWORD PTR [RBX+456],2
            ja .L_404cc0
.L_40511a:

            test R12,R12
            je .L_4050c4

            mov EDX,DWORD PTR [RIP+.L_412f7c]
            mov RSI,R12
            mov RDI,RBX
            call .L_40fa10

            jmp .L_4050c4
.L_405132:

            mov RAX,RCX
            and EAX,7
            cmp RAX,4
            je .L_404cc0

            test R12,R12
            je .L_4050c4

            and ECX,4
            je .L_4050c4

            mov EDX,DWORD PTR [RIP+.L_412f78]
            mov RSI,R12
            mov RDI,RBX
            call .L_40fa10

            jmp .L_4050c4
.L_40516a:

            and ECX,7
            jne .L_40517d

            cmp QWORD PTR [RBX+456],4
            ja .L_404cc0
.L_40517d:

            test R12,R12
            je .L_4050c4

            mov EDX,DWORD PTR [RIP+.L_412f74]
            mov RSI,R12
            mov RDI,RBX
            call .L_40fa10

            jmp .L_4050c4
.L_40519c:

            and ECX,7
            je .L_404cc0

            test R12,R12
            je .L_4050c4

            mov EDX,DWORD PTR [RIP+.L_412f70]
            mov RSI,R12
            mov RDI,RBX
            call .L_40fa10

            jmp .L_4050c4
.L_4051c4:

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
.L_4051d0:

            push R15
            push R14
            xor R14D,R14D
            push R13
            push R12
            mov R12,RDI
            push RBP
            push RBX
            mov R13,RSI
            sub RSP,8
.L_4051e7:

            call .L_403390

            mov RBP,QWORD PTR [R12+464]
            test EAX,EAX
            mov R15D,EAX
            mov QWORD PTR [R12+472],RBP
            jle .L_405231

            nop
            nop
            nop
            nop
            nop
.L_405208:

            xor EBX,EBX
            test RBP,RBP
            je .L_405228

            nop
.L_405210:

            mov RSI,QWORD PTR [R13+RBX*8]
            xor EDX,EDX
            mov RDI,R12
            add RBX,1
            call .L_404c50

            cmp RBP,RBX
            jne .L_405210
.L_405228:

            add R14D,1
            cmp R15D,R14D
            jne .L_405208
.L_405231:

            add RSP,8
.L_405235:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_405240:

            test RDI,RDI
            je .L_4052d0

            test RSI,RSI
            push R14
            mov R14,RDX
            push R13
            mov R13,RSI
            push R12
            mov R12,RCX
            push RBP
            mov RBP,RDI
            push RBX
            je .L_405298

            test RDX,RDX
            je .L_405298

            test RCX,RCX
            je .L_40528a

            xor EBX,EBX
            nop
            nop
.L_405270:

            mov RDX,QWORD PTR [R14+RBX*8]
            mov RSI,QWORD PTR [R13+RBX*8]
            mov RDI,RBP
            add RBX,1
            call .L_404c50

            cmp R12,RBX
            jne .L_405270
.L_40528a:

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
.L_405298:

            test R13,R13
            je .L_4052d8

            test R12,R12
            je .L_40528a

            xor EBX,EBX
            nop
            nop
            nop
            nop
.L_4052a8:

            mov RSI,QWORD PTR [R13+RBX*8]
            xor EDX,EDX
            mov RDI,RBP
            add RBX,1
            call .L_404c50

            cmp R12,RBX
            jne .L_4052a8

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4052d0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4052d8:

            test R14,R14
            je .L_40528a

            test R12,R12
            je .L_40528a

            xor EBX,EBX
            nop
            nop
            nop
            nop
.L_4052e8:

            mov RDX,QWORD PTR [R14+RBX*8]
            xor ESI,ESI
            mov RDI,RBP
            add RBX,1
            call .L_404c50

            cmp R12,RBX
            jne .L_4052e8

            jmp .L_40528a
.L_405301:

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
.L_405310:

            test RDI,RDI
            je .L_405320

            jmp .L_4051d0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405320:

            ret 
.L_405322:

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
.L_405330:

            test RDI,RDI
            je .L_405340

            jmp .L_403e80
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405340:

            ret 
.L_405342:

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
.L_405350:

            push R12
            push RBP
            mov RBP,RDX
            push RBX
            mov RBX,RDI
            sub RSP,208
.L_405361:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+200],RAX
            xor EAX,EAX
            test RSI,RSI
            je .L_40537e

            call .L_401d80
.L_40537e:

            test RBP,RBP
            je .L_40538e

            mov RSI,RBP
            mov RDI,RBX
            call .L_401d80
.L_40538e:

            mov RSI,QWORD PTR [RBX+416]
            mov RDI,RBX
            call .L_40c120

            mov RSI,QWORD PTR [RBX+1104]
            mov RDI,RBX
            call .L_40c120

            mov RSI,QWORD PTR [RBX+520]
            mov RDI,RBX
            call .L_40c120

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            mov RSI,QWORD PTR [RBX+960]
            mov RDI,RBX
            call .L_40c120

            mov RSI,QWORD PTR [RBX+968]
            mov RDI,RBX
            call .L_40c120

            mov RSI,QWORD PTR [RBX+712]
            mov RDI,RBX
            call .L_40c120

            mov RSI,QWORD PTR [RBX+720]
            mov RDI,RBX
            call .L_40c120

            mov RSI,QWORD PTR [RBX+728]
            mov RDI,RBX
            call .L_40c120

            mov RAX,QWORD PTR [RBX+992]
            test AH,16
            jne .L_405700
.L_405425:

            mov RDX,RAX
            and DH,239
            test AH,32
            mov QWORD PTR [RBX+992],RDX
            jne .L_405740
.L_40543b:

            mov RAX,RDX
            and AH,223
            and EDX,8
            mov QWORD PTR [RBX+992],RAX
            jne .L_405720
.L_405451:

            mov RSI,QWORD PTR [RBX+736]
            and RAX,-9
            mov QWORD PTR [RBX+992],RAX
            test RSI,RSI
            je .L_4054b4

            mov ECX,8
            sub ECX,DWORD PTR [RBX+696]
            mov EAX,1
            shl EAX,CL
            test EAX,EAX
            jle .L_4054ac

            sub EAX,1
            xor EBP,EBP
            lea R12,QWORD PTR [RAX*8+8]
            nop
            nop
            nop
            nop
            nop
.L_405490:

            mov RSI,QWORD PTR [RSI+RBP*1]
            mov RDI,RBX
            add RBP,8
            call .L_40c120

            cmp RBP,R12
            mov RSI,QWORD PTR [RBX+736]
            jne .L_405490
.L_4054ac:

            mov RDI,RBX
            call .L_40c120
.L_4054b4:

            mov RSI,QWORD PTR [RBX+744]
            test RSI,RSI
            je .L_40550c

            mov ECX,8
            sub ECX,DWORD PTR [RBX+696]
            mov EAX,1
            shl EAX,CL
            test EAX,EAX
            jle .L_405504

            sub EAX,1
            xor EBP,EBP
            lea R12,QWORD PTR [RAX*8+8]
            nop
            nop
            nop
            nop
            nop
.L_4054e8:

            mov RSI,QWORD PTR [RSI+RBP*1]
            mov RDI,RBX
            add RBP,8
            call .L_40c120

            cmp R12,RBP
            mov RSI,QWORD PTR [RBX+744]
            jne .L_4054e8
.L_405504:

            mov RDI,RBX
            call .L_40c120
.L_40550c:

            mov RSI,QWORD PTR [RBX+752]
            test RSI,RSI
            je .L_405564

            mov ECX,8
            sub ECX,DWORD PTR [RBX+696]
            mov EAX,1
            shl EAX,CL
            test EAX,EAX
            jle .L_40555c

            sub EAX,1
            xor EBP,EBP
            lea R12,QWORD PTR [RAX*8+8]
            nop
            nop
            nop
            nop
            nop
.L_405540:

            mov RSI,QWORD PTR [RSI+RBP*1]
            mov RDI,RBX
            add RBP,8
            call .L_40c120

            cmp R12,RBP
            mov RSI,QWORD PTR [RBX+752]
            jne .L_405540
.L_40555c:

            mov RDI,RBX
            call .L_40c120
.L_405564:

            mov RSI,QWORD PTR [RBX+984]
            mov RDI,RBX
            call .L_40c120

            lea RDI,QWORD PTR [RBX+304]
            call inflateEnd@PLT

            mov RSI,QWORD PTR [RBX+848]
            mov RDI,RBX
            call .L_40c120

            lea RDI,QWORD PTR [RBX+8]
            mov RCX,RBX
            mov RDX,QWORD PTR [RBX+192]
            mov R10,QWORD PTR [RBX+200]
            mov R9,QWORD PTR [RBX+208]
            xor EAX,EAX
            and RDI,-8
            movdqu XMM11,XMMWORD PTR [RBX]
            sub RCX,RDI
            mov R8,QWORD PTR [RBX+216]
            mov RSI,QWORD PTR [RBX+1096]
            movdqu XMM10,XMMWORD PTR [RBX+16]
            add ECX,1216
            shr ECX,3
            mov QWORD PTR [RSP+192],RDX
            mov QWORD PTR [RBX+1208],0
            movdqu XMM9,XMMWORD PTR [RBX+32]
            movdqu XMM8,XMMWORD PTR [RBX+48]
            movdqu XMM7,XMMWORD PTR [RBX+64]
            movdqu XMM6,XMMWORD PTR [RBX+80]
            movdqu XMM5,XMMWORD PTR [RBX+96]
            movdqu XMM4,XMMWORD PTR [RBX+112]
            movdqu XMM3,XMMWORD PTR [RBX+128]
            movdqu XMM2,XMMWORD PTR [RBX+144]
            movdqu XMM1,XMMWORD PTR [RBX+160]
            movdqu XMM0,XMMWORD PTR [RBX+176]
            movaps XMMWORD PTR [RSP],XMM11
            movaps XMMWORD PTR [RSP+16],XMM10
            movaps XMMWORD PTR [RSP+32],XMM9
            movaps XMMWORD PTR [RSP+48],XMM8
            movaps XMMWORD PTR [RSP+64],XMM7
            movaps XMMWORD PTR [RSP+80],XMM6
            movaps XMMWORD PTR [RSP+96],XMM5
            movaps XMMWORD PTR [RSP+112],XMM4
            movaps XMMWORD PTR [RSP+128],XMM3
            movaps XMMWORD PTR [RSP+144],XMM2
            movaps XMMWORD PTR [RSP+160],XMM1
            movaps XMMWORD PTR [RSP+176],XMM0

            rep stosq QWORD PTR [RDI]

            mov QWORD PTR [RBX+200],R10
            mov QWORD PTR [RBX+208],R9
            mov RAX,QWORD PTR [RSP+200]
            xor RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RBX+216],R8
            mov QWORD PTR [RBX+1096],RSI
            movups XMMWORD PTR [RBX],XMM11
            mov QWORD PTR [RBX+192],RDX
            movups XMMWORD PTR [RBX+16],XMM10
            movups XMMWORD PTR [RBX+32],XMM9
            movups XMMWORD PTR [RBX+48],XMM8
            movups XMMWORD PTR [RBX+64],XMM7
            movups XMMWORD PTR [RBX+80],XMM6
            movups XMMWORD PTR [RBX+96],XMM5
            movups XMMWORD PTR [RBX+112],XMM4
            movups XMMWORD PTR [RBX+128],XMM3
            movups XMMWORD PTR [RBX+144],XMM2
            movups XMMWORD PTR [RBX+160],XMM1
            movups XMMWORD PTR [RBX+176],XMM0
            jne .L_40575b

            add RSP,208
.L_4056f6:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405700:

            mov RSI,QWORD PTR [RBX+608]
            mov RDI,RBX
            call .L_401690

            mov RAX,QWORD PTR [RBX+992]
            jmp .L_405425
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405720:

            mov RSI,QWORD PTR [RBX+976]
            mov RDI,RBX
            call .L_40c120

            mov RAX,QWORD PTR [RBX+992]
            jmp .L_405451
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405740:

            mov RSI,QWORD PTR [RBX+776]
            mov RDI,RBX
            call .L_40c120

            mov RDX,QWORD PTR [RBX+992]
            jmp .L_40543b
.L_40575b:

            call __stack_chk_fail@PLT
.L_405760:

            test RDI,RDI
            je .L_405860

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,24
.L_405777:

            mov RBP,QWORD PTR [RDI]
            test RBP,RBP
            je .L_40584a

            test RSI,RSI
            mov R12,RDX
            mov QWORD PTR [RSP],RDI
            mov R14,QWORD PTR [RBP+1096]
            mov R15,QWORD PTR [RBP+1080]
            je .L_405868

            test RDX,RDX
            mov RBX,QWORD PTR [RSI]
            mov QWORD PTR [RSP+8],RSI
            je .L_405880

            mov R13,QWORD PTR [RDX]
            mov RSI,RBX
            mov RDI,RBP
            mov RDX,R13
            call .L_405350

            test RBX,RBX
            mov RAX,QWORD PTR [RSP+8]
            je .L_405801
.L_4057cd:

            mov ECX,4294967295
            mov EDX,16384
            mov RSI,RBX
            mov RDI,RBP
            mov QWORD PTR [RSP+8],RAX
            call .L_401860

            mov RDX,R15
            mov RSI,R14
            mov RDI,RBX
            call .L_40bfb0

            mov RAX,QWORD PTR [RSP+8]
            mov QWORD PTR [RAX],0
.L_405801:

            test R13,R13
            je .L_405831

            mov ECX,4294967295
            mov EDX,16384
            mov RSI,R13
            mov RDI,RBP
            call .L_401860

            mov RDX,R15
            mov RSI,R14
            mov RDI,R13
            call .L_40bfb0

            mov QWORD PTR [R12],0
.L_405831:

            mov RDX,R15
            mov RSI,R14
            mov RDI,RBP
            call .L_40bfb0

            mov RAX,QWORD PTR [RSP]
            mov QWORD PTR [RAX],0
.L_40584a:

            add RSP,24
.L_40584e:

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
.L_405860:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405868:

            test RDX,RDX
            je .L_4058a0

            mov R13,QWORD PTR [RDX]
            xor ESI,ESI
            mov RDI,RBP
            mov RDX,R13
            call .L_405350

            jmp .L_405801
          .byte 0x90
.L_405880:

            xor EDX,EDX
            mov RSI,RBX
            mov RDI,RBP
            call .L_405350

            xor R13D,R13D
            test RBX,RBX
            mov RAX,QWORD PTR [RSP+8]
            jne .L_4057cd

            jmp .L_405831
.L_4058a0:

            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBP
            call .L_405350

            jmp .L_405831
.L_4058ae:

            nop
            nop
.L_4058b0:

            test RDI,RDI
            je .L_4058bc

            mov QWORD PTR [RDI+800],RSI
.L_4058bc:

            ret 
.L_4058be:

            nop
            nop
.L_4058c0:

            test RDI,RDI
            je .L_405b40

            push R13
            push R12
            mov R13D,EDX
            push RBP
            push RBX
            mov R12D,EDX
            mov RBX,RSI
            mov RBP,RDI
            sub RSP,8
.L_4058df:

            and R13D,1024
            jne .L_405aa8

            test RBX,RBX
            jne .L_405a80
.L_4058f5:

            movabs RAX,2305843009213693951
            cmp QWORD PTR [RBX+8],RAX
            ja .L_405a60
.L_405909:

            test R12B,1
            jne .L_405a48
.L_405913:

            test R12B,2
            jne .L_405a30
.L_40591d:

            test R12B,8
            jne .L_405a10
.L_405927:

            test R12B,16
            je .L_40594d
.L_40592d:

            cmp BYTE PTR [RBP+631],7
            jbe .L_405945

            cmp BYTE PTR [RBP+630],3
            je .L_405945

            test BYTE PTR [RBX+16],16
            je .L_40594d
.L_405945:

            mov RDI,RBP
            call .L_406860
.L_40594d:

            test R12B,32
            jne .L_4059f8

            test R12B,64
            je .L_405967
.L_40595d:

            test BYTE PTR [RBX+16],2
            jne .L_405b48
.L_405967:

            test R12B,128
            jne .L_405b20
.L_405971:

            test R12D,256
            jne .L_405b08
.L_40597e:

            test R12D,512
            jne .L_405af0
.L_40598b:

            test R13D,R13D
            jne .L_405ad0
.L_405994:

            and R12D,8192
            jne .L_405ac0
.L_4059a1:

            mov RSI,RBX
            mov RDI,RBP
            call .L_404bd0

            xor ECX,ECX
            mov RSI,RBX
            mov EDX,64
            mov RDI,RBP
            call .L_401860

            mov RSI,QWORD PTR [RBX+384]
            test RSI,RSI
            je .L_405b60
.L_4059ce:

            mov RDI,RBP
            call .L_4051d0

            or QWORD PTR [RBX+16],32768
            add RSP,8
.L_4059e2:

            mov RSI,RBX
            mov RDI,RBP
            pop RBX
            pop RBP
            pop R12
            pop R13
            jmp .L_403e80
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4059f8:

            mov RDI,RBP
            call .L_403480

            test R12B,64
            je .L_405967

            jmp .L_40595d
          .byte 0x90
.L_405a10:

            mov RDI,RBP
            call .L_403340

            test R12B,16
            je .L_40594d

            jmp .L_40592d
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405a30:

            mov RDI,RBP
            call .L_405ee0

            test R12B,8
            je .L_405927

            jmp .L_405a10
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_405a48:

            mov RDI,RBP
            call .L_405ec0

            test R12B,2
            je .L_40591d

            jmp .L_405a30
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_405a60:

            lea RSI,QWORD PTR [RIP+.L_413660]
            mov RDI,RBP
            call .L_40c520

            test R12B,1
            je .L_405913

            jmp .L_405a48
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405a80:

            mov RSI,RBX
            mov RDI,RBP
            call .L_403a30

            movabs RAX,2305843009213693951
            cmp QWORD PTR [RBX+8],RAX
            jbe .L_405909

            jmp .L_405a60
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405aa8:

            call .L_403460

            test RBX,RBX
            je .L_4058f5

            jmp .L_405a80
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405ac0:

            mov RDI,RBP
            call .L_4068f0

            jmp .L_4059a1
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_405ad0:

            mov RDI,RBP
            call .L_403460

            and R12D,8192
            je .L_4059a1

            jmp .L_405ac0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405af0:

            mov RDI,RBP
            call .L_403300

            test R13D,R13D
            je .L_405994

            jmp .L_405ad0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405b08:

            mov RDI,RBP
            call .L_403440

            test R12D,512
            je .L_40598b

            jmp .L_405af0
          .byte 0x90
.L_405b20:

            mov RDI,RBP
            call .L_4032f0

            test R12D,256
            je .L_40597e

            jmp .L_405b08
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405b40:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405b48:

            lea RSI,QWORD PTR [RBX+96]
            mov RDI,RBP
            call .L_403360

            test R12B,128
            je .L_405971

            jmp .L_405b20
.L_405b60:

            mov RAX,QWORD PTR [RBX+8]
            mov RDI,RBP
            xor R12D,R12D
            lea RSI,QWORD PTR [RAX*8]
            call .L_40c040

            mov RCX,QWORD PTR [RBX+8]
            xor ESI,ESI
            mov QWORD PTR [RBX+384],RAX
            mov RDI,RAX
            lea RDX,QWORD PTR [RCX*8]
            call memset@PLT

            mov EAX,DWORD PTR [RBX+8]
            or QWORD PTR [RBX+272],64
            test EAX,EAX
            jle .L_405bdb

            nop
            nop
            nop
            nop
            nop
.L_405ba8:

            mov RSI,RBX
            mov RDI,RBP
            call .L_4026f0

            mov RDX,QWORD PTR [RBX+384]
            mov RSI,RAX
            mov RDI,RBP
            lea R13,QWORD PTR [RDX+R12*8]
            call .L_40c040

            mov QWORD PTR [R13],RAX
            lea EAX,DWORD PTR [R12+1]
            add R12,1
            cmp EAX,DWORD PTR [RBX+8]
            jl .L_405ba8
.L_405bdb:

            mov RSI,QWORD PTR [RBX+384]
            jmp .L_4059ce
.L_405be7:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405bf0:

            test RDI,RDI
            je .L_405c40

            push RBP
            push RBX
            mov RBX,RDI
            mov RBP,RDX
            mov RDI,RSI
            mov ESI,1
            sub RSP,8
            mov RCX,QWORD PTR [RBX+240]
            call fread@PLT

            cmp RBP,RAX
            je .L_405c30

            add RSP,8
            mov RDI,RBX
            lea RSI,QWORD PTR [RIP+.L_4136b0]
            pop RBX
            pop RBP
            jmp .L_40c520
          .byte 0x90
.L_405c30:

            add RSP,8
            pop RBX
            pop RBP
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
.L_405c40:

            ret 
.L_405c42:

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
.L_405c50:

            mov RAX,QWORD PTR [RDI+232]
            test RAX,RAX
            je .L_405c60

            jmp RAX
          .byte 0x66
          .byte 0x90
.L_405c60:

            lea RSI,QWORD PTR [RIP+.L_4136bb]
            jmp .L_40c520
.L_405c6c:

            nop
            nop
            nop
            nop
.L_405c70:

            test RDI,RDI
            je .L_405cd8

            lea RAX,QWORD PTR [RIP+.L_405bf0]
            test RDX,RDX
            push RBX

            mov RBX,RDI
            mov QWORD PTR [RDI+240],RSI
            cmove RDX,RAX
            cmp QWORD PTR [RDI+224],0
            mov QWORD PTR [RDI+232],RDX
            je .L_405cc5

            lea RSI,QWORD PTR [RIP+.L_4136d8]
            mov QWORD PTR [RDI+224],0
            call .L_40c5f0

            lea RSI,QWORD PTR [RIP+.L_413720]
            mov RDI,RBX
            call .L_40c5f0
.L_405cc5:

            mov QWORD PTR [RBX+672],0
            pop RBX

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405cd8:

            ret 
.L_405cda:

            nop
            nop
            nop
            nop
            nop
            nop
.L_405ce0:

            movzx EDX,BYTE PTR [RDI+18]
            mov RAX,RDX
            imul RDX,QWORD PTR [RDI]
            test RDX,RDX
            je .L_405d13

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
            nop
.L_405cf8:

            movzx ECX,BYTE PTR [RSI+RAX*2]
            mov BYTE PTR [RSI+RAX*1],CL
            add RAX,1
            cmp RDX,RAX
            jne .L_405cf8

            movzx EDX,BYTE PTR [RDI+18]
            mov RAX,RDX
            imul RDX,QWORD PTR [RDI]
.L_405d13:

            shl EAX,3
            mov BYTE PTR [RDI+17],8
            mov QWORD PTR [RDI+8],RDX
            mov BYTE PTR [RDI+19],AL
            ret 
.L_405d22:

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
.L_405d30:

            test RDI,RDI
            je .L_405dc8

            push RBX
            mov RBX,RDI
            sub RSP,16
            cmp ESI,3
            je .L_405e30

            jle .L_405d80

            cmp ESI,4
            je .L_405e20

            cmp ESI,5
            jne .L_405d99
.L_405d5a:

            cmp EDX,3
            je .L_405da9
.L_405d5f:

            jle .L_405dd0

            cmp EDX,4
            je .L_405e08

            cmp EDX,5
            jne .L_405df0

            add RSP,16
            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405d80:

            cmp ESI,2
            jne .L_405d99

            lea RSI,QWORD PTR [RIP+.L_413758]
            mov DWORD PTR [RSP+12],EDX
            call .L_40c5f0

            mov EDX,DWORD PTR [RSP+12]
.L_405d99:

            and QWORD PTR [RBX+288],-3073
            cmp EDX,3
            jne .L_405d5f
.L_405da9:

            mov RAX,QWORD PTR [RBX+288]
            and AH,252
            or AH,1
            mov QWORD PTR [RBX+288],RAX
            add RSP,16
.L_405dc1:

            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405dc8:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405dd0:

            cmp EDX,1
            jne .L_405df0

            mov RAX,QWORD PTR [RBX+288]
            and AH,252
            or AH,2
            mov QWORD PTR [RBX+288],RAX
            add RSP,16
            pop RBX
            ret 
          .byte 0x90
.L_405df0:

            and QWORD PTR [RBX+288],-769
            add RSP,16
            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405e08:

            or QWORD PTR [RBX+288],768
            add RSP,16
            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405e20:

            or QWORD PTR [RDI+288],3072
            jmp .L_405d5a
.L_405e30:

            mov RAX,QWORD PTR [RDI+288]
            and AH,243
            or AH,4
            mov QWORD PTR [RDI+288],RAX
            jmp .L_405d5a
.L_405e49:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405e50:

            test RDI,RDI
            je .L_405eab

            test EDX,EDX
            je .L_405eb0

            pxor XMM1,XMM1
            mov R8,QWORD PTR [RDI+296]
            cvtsd2ss XMM1,XMM0
            mov RAX,R8
            or R8,384
            or AL,128
            test ECX,ECX
            mov QWORD PTR [RDI+296],RAX
            mov R9,QWORD PTR [RSI]
            cmovne RAX,R8
            mov QWORD PTR [RDI+648],R9
            movzx ESI,WORD PTR [RSI+8]
            mov BYTE PTR [RDI+640],DL
            mov QWORD PTR [RDI+296],RAX
            mov WORD PTR [RDI+656],SI
            movss DWORD PTR [RDI+644],XMM1
.L_405eab:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_405eb0:

            lea RSI,QWORD PTR [RIP+.L_413788]
            jmp .L_40c5f0
.L_405ebc:

            nop
            nop
            nop
            nop
.L_405ec0:

            test RDI,RDI
            je .L_405ed0

            or QWORD PTR [RDI+296],1024
.L_405ed0:

            ret 
.L_405ed2:

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
.L_405ee0:

            test RDI,RDI
            je .L_405ef0

            or QWORD PTR [RDI+288],4194304
.L_405ef0:

            ret 
.L_405ef2:

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
.L_405f00:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,88
.L_405f0e:

            test RDI,RDI
            mov QWORD PTR [RSP+8],RSI
            mov DWORD PTR [RSP+32],EDX
            mov DWORD PTR [RSP+36],R9D
            je .L_406055

            or QWORD PTR [RDI+296],64
            test R9D,R9D
            mov R15,RDI
            mov EBX,ECX
            mov RBP,R8
            je .L_40613f
.L_405f3e:

            mov R14D,DWORD PTR [RSP+32]
            cmp R14D,EBX
            jle .L_406026

            movsxd R12,R14D
            test RBP,RBP
            mov RDI,R15
            mov RSI,R12
            je .L_4062e5

            call .L_40c040

            test R14D,R14D
            mov QWORD PTR [R15+1112],RAX
            jle .L_406064

            mov ESI,DWORD PTR [RSP+32]
            xor ECX,ECX
            sub ESI,1
            mov RDX,RSI
            add RSI,1
.L_405f83:

            mov BYTE PTR [RAX+RCX*1],CL
            add RCX,1
            cmp RSI,RCX
            je .L_40606b

            mov RAX,QWORD PTR [R15+1112]
            jmp .L_405f83
.L_405f9c:

            test EBX,EBX
            jle .L_405fd5

            lea R9D,DWORD PTR [RBX-1]
            mov RSI,QWORD PTR [RSP+8]
            mov ECX,DWORD PTR [RSP+32]
            xor R8D,R8D
            add R9,1
.L_405fb4:

            mov RDI,QWORD PTR [R15+1112]
            movzx EAX,BYTE PTR [RDI+R8*1]
            cmp EAX,EBX
            jge .L_40651e
.L_405fc8:

            add R8,1
            add RSI,3
            cmp R9,R8
            jne .L_405fb4
.L_405fd5:

            mov EBP,DWORD PTR [RSP+32]
            xor R13D,R13D
            lea R14,QWORD PTR [RDX+1]
            mov R10,QWORD PTR [RSP+8]
            test EBP,EBP
            jle .L_406008
.L_405fe9:

            mov R9,QWORD PTR [R15+968]
            add R9,R13
            movzx EDX,BYTE PTR [R9]
            cmp EDX,EBX
            jge .L_40658a
.L_405fff:

            add R13,1
            cmp R14,R13
            jne .L_405fe9
.L_406008:

            mov RSI,QWORD PTR [R15+1112]
.L_40600f:

            mov RDI,R15
            call .L_40c120

            mov QWORD PTR [R15+1112],0
            mov DWORD PTR [RSP+32],EBX
.L_406026:

            cmp QWORD PTR [R15+608],0
            jne .L_40603c

            mov RAX,QWORD PTR [RSP+8]
            mov QWORD PTR [R15+608],RAX
.L_40603c:

            movzx EAX,WORD PTR [RSP+32]
            mov EDX,DWORD PTR [RSP+36]
            test EDX,EDX
            mov WORD PTR [R15+616],AX
            jne .L_40617d
.L_406055:

            add RSP,88
.L_406059:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_406064:

            mov EAX,DWORD PTR [RSP+32]
            lea EDX,DWORD PTR [RAX-1]
.L_40606b:

            cmp EBX,EDX
            mov EAX,EDX
            jg .L_4060c9
.L_406071:

            test EAX,EAX
            jle .L_4060c9

            lea ESI,DWORD PTR [RAX-1]
            xor ECX,ECX
            mov EDI,1
            mov RAX,RSI
            add RSI,1
.L_406086:

            mov R10,QWORD PTR [R15+1112]
            lea R9,QWORD PTR [R10+RCX*1]
            add RCX,1
            movzx R11D,BYTE PTR [R10+RCX*1]
            movzx R12D,BYTE PTR [R9]
            movzx R14D,WORD PTR [RBP+R11*2]
            cmp WORD PTR [RBP+R12*2],R14W
            jae .L_4060bc

            mov BYTE PTR [R9],R11B
            mov RDI,QWORD PTR [R15+1112]
            mov BYTE PTR [RDI+RCX*1],R12B
            xor EDI,EDI
.L_4060bc:

            cmp RSI,RCX
            jne .L_406086

            test EDI,EDI
            jne .L_4060c9

            cmp EBX,EAX
            jle .L_406071
.L_4060c9:

            mov R12D,DWORD PTR [RSP+36]
            test R12D,R12D
            je .L_405f9c

            test EBX,EBX
            mov RSI,QWORD PTR [R15+1112]
            jle .L_40600f

            lea EAX,DWORD PTR [RBX-1]
            mov RDI,QWORD PTR [RSP+8]
            mov RCX,RSI
            lea RAX,QWORD PTR [RAX+RAX*2]
            mov RDX,RDI
            lea R8,QWORD PTR [RDI+RAX*1+3]
            lea RDI,QWORD PTR [RSI+1]
.L_406101:

            movzx EAX,BYTE PTR [RCX]
            cmp EAX,EBX
            jge .L_40611a
.L_406108:

            add RDX,3
            add RCX,1
            cmp R8,RDX
            jne .L_406101

            jmp .L_40600f
.L_40611a:

            mov EAX,DWORD PTR [RSP+32]
            sub EAX,1
            cdqe 
.L_406123:

            movzx R9D,BYTE PTR [RDI+RAX*1-1]
            mov DWORD PTR [RSP+32],EAX
            lea R10,QWORD PTR [RAX-1]
            cmp R9D,EBX
            jl .L_406501

            mov RAX,R10
            jmp .L_406123
.L_40613f:

            movsxd RSI,EDX
            mov R14,RSI
            call .L_40c040

            test R14D,R14D
            mov QWORD PTR [R15+968],RAX
            jle .L_405f3e

            lea ECX,DWORD PTR [R14-1]
            xor EDX,EDX
            add RCX,1
.L_406164:

            mov BYTE PTR [RAX+RDX*1],DL
            add RDX,1
            cmp RCX,RDX
            je .L_405f3e

            mov RAX,QWORD PTR [R15+968]
            jmp .L_406164
.L_40617d:

            mov ESI,32768
            mov RDI,R15
            call .L_40c0d0

            mov ESI,32768
            mov RDI,R15
            mov QWORD PTR [R15+960],RAX
            call .L_40c040

            mov EDX,32768
            mov ESI,255
            mov RDI,RAX
            mov RBX,RAX
            call memset@PLT

            mov EAX,DWORD PTR [RSP+32]
            test EAX,EAX
            jle .L_4062cc

            mov RAX,QWORD PTR [RSP+8]
            xor EBP,EBP
            mov QWORD PTR [RSP+24],RAX
.L_4061cb:

            mov RSI,QWORD PTR [RSP+24]
            mov DWORD PTR [RSP+16],0
            movzx EAX,BYTE PTR [RSI]
            shr AL,3
            movzx EAX,AL
            mov DWORD PTR [RSP+36],EAX
            movzx EAX,BYTE PTR [RSI+1]
            shr AL,3
            movzx R14D,AL
            movzx EAX,BYTE PTR [RSI+2]
            mov ESI,EAX
            mov BYTE PTR [RSP+8],AL
            shr SIL,3
            movzx ESI,SIL
.L_406202:

            mov EDX,DWORD PTR [RSP+16]
            mov EDI,DWORD PTR [RSP+36]
            mov EAX,EDX
            mov R13D,EDI
            sub R13D,EDX
            sub EAX,EDI
            cmp EDI,EDX
            cmovl R13D,EAX
            shl EDX,10
            xor R12D,R12D
            mov DWORD PTR [RSP+8],EDX
            nop
            nop
            nop
            nop
.L_406228:

            mov EAX,R12D
            mov R8D,R14D
            mov R10D,R12D
            sub EAX,R14D
            sub R8D,R12D
            cmp R14D,R12D
            cmovl R8D,EAX
            cmp R13D,R8D
            lea R11D,DWORD PTR [R13+R8*1]
            cmovge R8D,R13D
            shl R10D,5
            or R10D,DWORD PTR [RSP+8]
            xor EDX,EDX
            nop
            nop
            nop
.L_406258:

            mov EDI,R10D
            mov ECX,EDX
            mov EAX,ESI
            sub EAX,EDX
            or EDI,EDX
            sub ECX,ESI
            cmp ESI,EDX
            movsxd RDI,EDI
            cmovge ECX,EAX
            mov EAX,R8D
            cmp ECX,R8D
            cmovge EAX,ECX
            add EAX,R11D
            add EAX,ECX
            lea RCX,QWORD PTR [RBX+RDI*1]
            movzx R9D,BYTE PTR [RCX]
            cmp R9D,EAX
            jle .L_406295

            mov BYTE PTR [RCX],AL
            mov RAX,QWORD PTR [R15+960]
            mov BYTE PTR [RAX+RDI*1],BPL
.L_406295:

            add EDX,1
            cmp EDX,32
            jne .L_406258

            add R12D,1
            cmp R12D,32
            jne .L_406228

            add DWORD PTR [RSP+16],1
            mov EAX,DWORD PTR [RSP+16]
            cmp EAX,32
            jne .L_406202

            add EBP,1
            add QWORD PTR [RSP+24],3
            cmp DWORD PTR [RSP+32],EBP
            jne .L_4061cb
.L_4062cc:

            add RSP,88
.L_4062d0:

            mov RSI,RBX
            mov RDI,R15
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40c120
.L_4062e5:

            call .L_40c040

            mov RSI,R12
            mov QWORD PTR [R15+1120],RAX
            mov RDI,R15
            call .L_40c040

            mov QWORD PTR [R15+1128],RAX
            mov EAX,DWORD PTR [RSP+32]
            test EAX,EAX
            jle .L_406331

            lea EDX,DWORD PTR [RAX-1]
            xor EAX,EAX
            add RDX,1
.L_406314:

            mov RCX,QWORD PTR [R15+1120]
            mov BYTE PTR [RCX+RAX*1],AL
            mov RCX,QWORD PTR [R15+1128]
            mov BYTE PTR [RCX+RAX*1],AL
            add RAX,1
            cmp RDX,RAX
            jne .L_406314
.L_406331:

            mov ESI,6152
            mov RDI,R15
            xor R14D,R14D
            call .L_40c0d0

            mov ESI,DWORD PTR [RSP+32]
            mov RDX,QWORD PTR [RSP+8]
            mov QWORD PTR [RSP+16],RAX
            add RAX,6152
            mov DWORD PTR [RSP+24],96
            mov QWORD PTR [RSP+48],RAX
            lea EAX,DWORD PTR [RSI-1]
            add RDX,3
            mov R12D,ESI
            mov QWORD PTR [RSP+56],RDX
            mov DWORD PTR [RSP+72],EAX
.L_406375:

            lea EAX,DWORD PTR [R12-1]
            mov RDX,QWORD PTR [RSP+56]
            xor EBP,EBP
            mov R8D,EBX
            mov DWORD PTR [RSP+40],EAX
            mov RAX,R14
            mov R14D,R12D
            mov R12,RBP
.L_406391:

            cmp DWORD PTR [RSP+40],R12D
            jle .L_406653

            lea EBP,DWORD PTR [R12+1]
            cmp EBP,R14D
            jge .L_40645b

            mov RBX,RDX
            jmp .L_4063bf
.L_4063af:

            add EBP,1
            add RBX,3
            cmp EBP,R14D
            je .L_40645b
.L_4063bf:

            movzx ESI,BYTE PTR [RBX]
            movzx ECX,BYTE PTR [RDX-3]
            sub ECX,ESI
            mov ESI,ECX
            sar ESI,31
            xor ECX,ESI
            mov R13D,ECX
            movzx ECX,BYTE PTR [RDX-2]
            sub R13D,ESI
            movzx ESI,BYTE PTR [RBX+1]
            sub ECX,ESI
            mov ESI,ECX
            sar ESI,31
            xor ECX,ESI
            sub ECX,ESI
            movzx ESI,BYTE PTR [RBX+2]
            add R13D,ECX
            movzx ECX,BYTE PTR [RDX-1]
            sub ECX,ESI
            mov ESI,ECX
            sar ESI,31
            xor ECX,ESI
            sub ECX,ESI
            add R13D,ECX
            cmp R13D,DWORD PTR [RSP+24]
            jg .L_4063af

            mov ESI,16
            mov RDI,R15
            mov DWORD PTR [RSP+76],R8D
            mov QWORD PTR [RSP+64],RDX
            call .L_40c170

            test RAX,RAX
            mov R8D,DWORD PTR [RSP+76]
            je .L_40646c

            mov RSI,QWORD PTR [RSP+16]
            movsxd R13,R13D
            add RBX,3
            mov RDX,QWORD PTR [RSP+64]
            lea RCX,QWORD PTR [RSI+R13*8]
            mov RSI,QWORD PTR [RCX]
            mov BYTE PTR [RAX+9],BPL
            add EBP,1
            cmp EBP,R14D
            mov BYTE PTR [RAX+8],R12B
            mov QWORD PTR [RAX],RSI
            mov QWORD PTR [RCX],RAX
            jne .L_4063bf
.L_40645b:

            add R12,1
            add RDX,3
            test RAX,RAX
            jne .L_406391
.L_40646c:

            mov R12D,R14D
            mov EBX,R8D
            mov R14,RAX
.L_406475:

            mov RBP,QWORD PTR [RSP+16]
.L_40647a:

            mov RSI,QWORD PTR [RBP]
            test RSI,RSI
            je .L_406496
.L_406483:

            mov R14,QWORD PTR [RSI]
            mov RDI,R15
            call .L_40c120

            test R14,R14
            mov RSI,R14
            jne .L_406483
.L_406496:

            mov QWORD PTR [RBP],0
            add RBP,8
            cmp QWORD PTR [RSP+48],RBP
            jne .L_40647a

            add DWORD PTR [RSP+24],96
            cmp R12D,EBX
            jg .L_406375

            mov RSI,QWORD PTR [RSP+16]
            mov RDI,R15
            call .L_40c120

            mov RSI,QWORD PTR [R15+1128]
            mov RDI,R15
            call .L_40c120

            mov RSI,QWORD PTR [R15+1120]
            mov RDI,R15
            call .L_40c120

            mov QWORD PTR [R15+1128],0
            mov QWORD PTR [R15+1120],0
            mov DWORD PTR [RSP+32],EBX
            jmp .L_406026
.L_406501:

            lea RAX,QWORD PTR [RAX+RAX*2]
            add RAX,QWORD PTR [RSP+8]
            movzx R9D,WORD PTR [RAX]
            mov WORD PTR [RDX],R9W
            movzx EAX,BYTE PTR [RAX+2]
            mov BYTE PTR [RDX+2],AL
            jmp .L_406108
.L_40651e:

            lea EAX,DWORD PTR [RCX-1]
            add RDI,1
            cdqe 
.L_406527:

            movzx R10D,BYTE PTR [RDI+RAX*1-1]
            mov ECX,EAX
            lea R11,QWORD PTR [RAX-1]
            cmp R10D,EBX
            jl .L_40653d

            mov RAX,R11
            jmp .L_406527
.L_40653d:

            movzx R12D,WORD PTR [RSI]
            lea RDI,QWORD PTR [RAX+RAX*2]
            add RDI,QWORD PTR [RSP+8]
            movzx EBP,BYTE PTR [RDI]
            movzx R11D,BYTE PTR [RDI+1]
            mov WORD PTR [RDI],R12W
            movzx R12D,BYTE PTR [RSI+2]
            movzx R10D,BYTE PTR [RDI+2]
            mov BYTE PTR [RDI+2],R12B
            mov RDI,QWORD PTR [R15+968]
            mov BYTE PTR [RSI],BPL
            mov BYTE PTR [RSI+1],R11B
            mov BYTE PTR [RSI+2],R10B
            mov BYTE PTR [RDI+RAX*1],R8B
            mov RDI,QWORD PTR [R15+968]
            mov BYTE PTR [RDI+R8*1],AL
            jmp .L_405fc8
.L_40658a:

            lea RAX,QWORD PTR [RDX+RDX*2]
            add RAX,R10
            movzx ESI,BYTE PTR [RAX]
            movzx R11D,BYTE PTR [RAX+1]
            movzx EBP,BYTE PTR [RAX+2]
            movzx EAX,BYTE PTR [R10]
            mov DWORD PTR [RSP+32],ESI
            sub ESI,EAX
            mov EAX,ESI
            mov ESI,R11D
            cdq 
            xor EAX,EDX
            sub EAX,EDX
            movzx EDX,BYTE PTR [R10+1]
            sub ESI,EDX
            mov ECX,ESI
            mov EDX,ESI
            mov ESI,EBP
            sar ECX,31
            xor EDX,ECX
            sub EDX,ECX
            add EAX,EDX
            movzx EDX,BYTE PTR [R10+2]
            sub ESI,EDX
            mov ECX,ESI
            mov EDX,ESI
            sar ECX,31
            xor EDX,ECX
            sub EDX,ECX
            add EAX,EDX
            cmp EBX,1
            jle .L_406649

            lea RDI,QWORD PTR [R10+3]
            xor ESI,ESI
            mov R8D,1
.L_4065ec:

            movzx EDX,BYTE PTR [RDI]
            mov ECX,DWORD PTR [RSP+32]
            sub ECX,EDX
            mov EDX,ECX
            sar ECX,31
            xor EDX,ECX
            sub EDX,ECX
            mov ECX,R11D
            mov R12D,EDX
            movzx EDX,BYTE PTR [RDI+1]
            sub ECX,EDX
            mov EDX,ECX
            sar EDX,31
            xor ECX,EDX
            sub ECX,EDX
            mov EDX,ECX
            movzx ECX,BYTE PTR [RDI+2]
            add EDX,R12D
            mov R12D,EBP
            sub R12D,ECX
            mov ECX,R12D
            sar R12D,31
            xor ECX,R12D
            sub ECX,R12D
            add EDX,ECX
            cmp EDX,EAX
            jge .L_40663a

            mov ESI,R8D
            mov EAX,EDX
.L_40663a:

            add R8D,1
            add RDI,3
            cmp EBX,R8D
            jne .L_4065ec

            jmp .L_40664b
.L_406649:

            xor ESI,ESI
.L_40664b:

            mov BYTE PTR [R9],SIL
            jmp .L_405fff
.L_406653:

            test RAX,RAX
            mov R12D,R14D
            mov EBX,R8D
            mov R14,RAX
            je .L_406475

            mov EAX,DWORD PTR [RSP+72]
            xor R13D,R13D
            add RAX,1
            mov QWORD PTR [RSP+40],RAX
.L_406675:

            mov RAX,QWORD PTR [RSP+16]
            mov RSI,QWORD PTR [RAX+R13*8]
            test RSI,RSI
            jne .L_4066df

            jmp .L_4067d0
.L_406688:

            mov RDX,QWORD PTR [R15+1128]
            movzx EDX,BYTE PTR [RDX+R8*1]
            mov BYTE PTR [RAX+RDX*1],DIL
            mov RAX,QWORD PTR [R15+1128]
            mov RDX,QWORD PTR [R15+1120]
            movzx EDI,BYTE PTR [RAX+R8*1]
            movzx EDX,BYTE PTR [RDX+R9*1]
            mov BYTE PTR [RAX+RDX*1],DIL
            mov RAX,QWORD PTR [R15+1120]
            mov BYTE PTR [RAX+R9*1],R12B
            mov RAX,QWORD PTR [R15+1128]
            mov BYTE PTR [RAX+R8*1],CL
.L_4066ca:

            cmp R12D,EBX
            jle .L_406475

            mov RSI,QWORD PTR [RSI]
            test RSI,RSI
            je .L_4067d0
.L_4066df:

            movzx ECX,BYTE PTR [RSI+8]
            mov RAX,QWORD PTR [R15+1120]
            mov RDX,RCX
            movzx ECX,BYTE PTR [RAX+RCX*1]
            cmp ECX,R12D
            jge .L_4066ca

            movzx EDI,BYTE PTR [RSI+9]
            mov RCX,RDI
            movzx EDI,BYTE PTR [RAX+RDI*1]
            cmp EDI,R12D
            jge .L_4066ca

            test R12B,1
            je .L_406712

            mov EDI,ECX
            mov ECX,EDX
            mov EDX,EDI
.L_406712:

            movsxd R9,ECX
            sub R12D,1
            mov RBP,QWORD PTR [RSP+8]
            lea R11,QWORD PTR [RAX+R9*1]
            movsxd R8,R12D
            lea R10,QWORD PTR [R8+R8*2]
            movzx EDI,BYTE PTR [R11]
            add R10,RBP
            lea RDI,QWORD PTR [RDI+RDI*2]
            add RDI,RBP
            movzx EBP,WORD PTR [R10]
            mov WORD PTR [RDI],BP
            movzx R10D,BYTE PTR [R10+2]
            mov BYTE PTR [RDI+2],R10B
            movzx EDI,BYTE PTR [R11]
            mov R11D,DWORD PTR [RSP+36]
            test R11D,R11D
            jne .L_406688

            mov R10D,DWORD PTR [RSP+32]
            test R10D,R10D
            jle .L_406688

            xor R10D,R10D
            movsxd RDX,EDX
            jmp .L_406784
          .byte 0x90
.L_406770:

            cmp EBP,R12D
            je .L_4067bd
.L_406775:

            add R10,1
            cmp QWORD PTR [RSP+40],R10
            je .L_406688
.L_406784:

            mov R11,QWORD PTR [R15+968]
            add R11,R10
            movzx EBP,BYTE PTR [R11]
            cmp BPL,DIL
            jne .L_406770

            movzx EAX,BYTE PTR [RAX+RDX*1]
            mov BYTE PTR [R11],AL
            mov R11,QWORD PTR [R15+968]
            mov RAX,QWORD PTR [R15+1120]
            add R11,R10
            movzx EBP,BYTE PTR [R11]
            movzx EDI,BYTE PTR [RAX+R9*1]
            cmp EBP,R12D
            jne .L_406775
.L_4067bd:

            mov BYTE PTR [R11],DIL
            mov RAX,QWORD PTR [R15+1120]
            movzx EDI,BYTE PTR [RAX+R9*1]
            jmp .L_406775
          .byte 0x66
          .byte 0x90
.L_4067d0:

            add R13,1
            cmp DWORD PTR [RSP+24],R13D
            jge .L_406675

            jmp .L_406475
.L_4067e4:

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
.L_4067f0:

            test RDI,RDI
            je .L_406842

            movapd XMM2,XMM0
            mulsd XMM2,XMM1
            subsd XMM2,QWORD PTR [RIP+.L_4139b8]
            andpd XMM2,XMMWORD PTR [RIP+.L_413a10]
            ucomisd XMM2,QWORD PTR [RIP+.L_4139c0]
            jbe .L_406848
.L_406817:

            or QWORD PTR [RDI+296],8192
.L_406822:

            pxor XMM3,XMM3
            pxor XMM4,XMM4
            cvtsd2ss XMM3,XMM1
            cvtsd2ss XMM4,XMM0
            movss DWORD PTR [RDI+700],XMM3
            movss DWORD PTR [RDI+704],XMM4
.L_406842:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_406848:

            movzx EAX,BYTE PTR [RDI+630]
            test AL,4
            jne .L_406817

            cmp AL,3
            je .L_406817

            jmp .L_406822
.L_406859:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406860:

            test RDI,RDI
            je .L_406878

            or QWORD PTR [RDI+296],33558528
            and QWORD PTR [RDI+288],-65
.L_406878:

            ret 
.L_40687a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_406880:

            jmp .L_406860
.L_406882:

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
.L_406890:

            test RDI,RDI
            je .L_4068a8

            or QWORD PTR [RDI+296],4096
            and QWORD PTR [RDI+288],-65
.L_4068a8:

            ret 
.L_4068aa:

            nop
            nop
            nop
            nop
            nop
            nop
.L_4068b0:

            test RDI,RDI
            je .L_4068c0

            or QWORD PTR [RDI+296],33558528
.L_4068c0:

            ret 
.L_4068c2:

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
.L_4068d0:

            or QWORD PTR [RDI+296],33558528
            and QWORD PTR [RDI+288],-65
            ret 
.L_4068e4:

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
.L_4068f0:

            or QWORD PTR [RDI+296],16384
            and QWORD PTR [RDI+288],-65
            ret 
.L_406904:

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
.L_406910:

            test RDI,RDI
            je .L_4069e0

            cmp ESI,2
            push RBX
.L_40691d:

            je .L_406a00

            cmp ESI,3
            je .L_4069e8

            cmp ESI,1
            jne .L_40693c

            or QWORD PTR [RDI+296],6291456
.L_40693c:

            cmp BYTE PTR [RDI+630],3
            jne .L_406950

            or QWORD PTR [RDI+296],4096
.L_406950:

            test RDX,RDX
            mov RBX,RDI
            js .L_4069c8

            test RCX,RCX
            js .L_4069c8

            lea RAX,QWORD PTR [RDX+RCX*1]
            cmp RAX,99999
            jg .L_406a10

            shl RDX,15
            movabs R8,755578637259143235
            shl RCX,15
            shr RDX,5
            shr RCX,5
            mov RAX,RDX
            mul R8
            mov RAX,RCX
            mov RSI,RDX
            mul R8
            mov EAX,4294934528
            shr RSI,7
            mov EDI,ESI
            shr RDX,7
            sub EAX,EDX
            mov ECX,EDX
            sub EAX,ESI
.L_4069ab:

            mov WORD PTR [RBX+1034],DI
            mov WORD PTR [RBX+1036],CX
            mov WORD PTR [RBX+1038],AX
            pop RBX
.L_4069c1:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4069c8:

            mov EAX,2366
            mov ECX,23434
            mov EDI,6968
            jmp .L_4069ab
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4069e0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4069e8:

            or QWORD PTR [RDI+296],2097152
            jmp .L_40693c
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406a00:

            or QWORD PTR [RDI+296],4194304
            jmp .L_40693c
.L_406a10:

            lea RSI,QWORD PTR [RIP+.L_4137c0]
            call .L_40c5f0

            mov EAX,2366
            mov ECX,23434
            mov EDI,6968
            jmp .L_4069ab
.L_406a30:

            test RDI,RDI
            je .L_406a98

            push RBP
            push RBX
            mov RBP,RDI
            mov EBX,ESI
            sub RSP,8
.L_406a40:

            movsd XMM2,QWORD PTR [RIP+.L_4139c8]
            ucomisd XMM0,XMM2
            ja .L_406a68

            movsd XMM3,QWORD PTR [RIP+.L_4139d0]
            ucomisd XMM3,XMM0
            ja .L_406a68

            ucomisd XMM1,XMM2
            jbe .L_406aa0

            nop
            nop
            nop
            nop
            nop
            nop
.L_406a68:

            lea RSI,QWORD PTR [RIP+.L_4137c0]
            mov RDI,RBP
            call .L_40c5f0

            mov RDX,-1
            mov RCX,RDX
.L_406a81:

            add RSP,8
.L_406a85:

            mov ESI,EBX
            mov RDI,RBP
            pop RBX
            pop RBP
            jmp .L_406910
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406a98:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406aa0:

            ucomisd XMM3,XMM1
            ja .L_406a68

            movsd XMM3,QWORD PTR [RIP+.L_4139d8]
            cvtsd2ss XMM1,XMM1
            cvtss2sd XMM1,XMM1
            movsd XMM2,QWORD PTR [RIP+.L_4139e0]
            mulsd XMM1,XMM3
            addsd XMM1,XMM2
            cvttsd2si ECX,XMM1
            pxor XMM1,XMM1
            cvtsd2ss XMM1,XMM0
            pxor XMM0,XMM0
            movsxd RCX,ECX
            cvtss2sd XMM0,XMM1
            mulsd XMM0,XMM3
            addsd XMM0,XMM2
            cvttsd2si EDX,XMM0
            movsxd RDX,EDX
            jmp .L_406a81
.L_406aee:

            nop
            nop
.L_406af0:

            test RDI,RDI
            je .L_406b07

            or QWORD PTR [RDI+296],1048576
            mov QWORD PTR [RDI+248],RSI
.L_406b07:

            ret 
.L_406b09:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406b10:

            mov RCX,QWORD PTR [RDI+296]
            movzx EDX,BYTE PTR [RSI+45]
            test CH,16
            mov EAX,EDX
            je .L_406b59

            cmp DL,3
            movzx R8D,WORD PTR [RDI+618]
            je .L_406d48

            test R8W,R8W
            je .L_406b47

            test ECX,33554432
            je .L_406b47

            or EAX,4
            mov BYTE PTR [RSI+45],AL
.L_406b47:

            cmp BYTE PTR [RSI+44],7
            ja .L_406b51

            mov BYTE PTR [RSI+44],8
.L_406b51:

            xor EDX,EDX
            mov WORD PTR [RSI+42],DX
            mov EDX,EAX
.L_406b59:

            test CL,128
            je .L_406b83

            xor EAX,EAX
            and EDX,4294967291
            mov BYTE PTR [RSI+45],DL
            mov WORD PTR [RSI+42],AX
            mov RAX,QWORD PTR [RDI+648]
            mov QWORD PTR [RSI+122],RAX
            movzx EAX,WORD PTR [RDI+656]
            mov WORD PTR [RSI+130],AX
.L_406b83:

            test CH,32
            je .L_406ba3

            mov RAX,QWORD PTR [RDI+1048]
            movss XMM0,DWORD PTR [RDI+700]
            movss DWORD PTR [RSI+60],XMM0
            mov QWORD PTR [RSI+392],RAX
.L_406ba3:

            test CH,4
            je .L_406bb2

            cmp BYTE PTR [RSI+44],16
            je .L_406d70
.L_406bb2:

            test CH,64
            je .L_406bbd

            or EDX,2
            mov BYTE PTR [RSI+45],DL
.L_406bbd:

            test ECX,6291456
            je .L_406bcb

            and EDX,4294967293
            mov BYTE PTR [RSI+45],DL
.L_406bcb:

            mov RAX,RCX
            and EAX,4
            test CL,64
            je .L_406c88

            mov R8D,EDX
            and R8D,4294967291
            cmp R8B,2
            jne .L_406c88

            cmp QWORD PTR [RDI+960],0
            je .L_406c88

            cmp BYTE PTR [RSI+44],8
            jne .L_406c88

            mov BYTE PTR [RSI+45],3
            mov R8,QWORD PTR [RDI+288]
            and R8D,4194304
            nop
            nop
            nop
.L_406c18:

            test R8,R8
            mov BYTE PTR [RSI+49],1
            mov EAX,1
            jne .L_406d30

            nop
            nop
            nop
            nop
            nop
            nop
.L_406c30:

            test ECX,1048576
            movzx EDX,BYTE PTR [RSI+44]
            je .L_406c5c

            movzx ECX,BYTE PTR [RDI+272]
            cmp CL,DL
            jbe .L_406c4c

            mov BYTE PTR [RSI+44],CL
            mov EDX,ECX
.L_406c4c:

            movzx ECX,BYTE PTR [RDI+273]
            cmp CL,AL
            jbe .L_406c5c

            mov BYTE PTR [RSI+49],CL
            mov EAX,ECX
.L_406c5c:

            imul EAX,EDX
            mov RDX,QWORD PTR [RSI]
            cmp AL,7
            mov BYTE PTR [RSI+50],AL
            ja .L_406d20

            movzx EAX,AL
            imul RAX,RDX
            add RAX,7
            shr RAX,3
            mov QWORD PTR [RSI+24],RAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406c88:

            test RAX,RAX
            je .L_406c97

            cmp BYTE PTR [RSI+44],7
            ja .L_406c97

            mov BYTE PTR [RSI+44],8
.L_406c97:

            mov R8,QWORD PTR [RDI+288]
            and R8D,4194304
            cmp DL,3
            je .L_406c18

            test DL,2
            jne .L_406d00

            test R8,R8
            mov BYTE PTR [RSI+49],1
            mov EAX,1
            jne .L_406d0e
.L_406cc1:

            test DL,4
            je .L_406ccc

            add EAX,1
            mov BYTE PTR [RSI+49],AL
.L_406ccc:

            test CH,128
            je .L_406c30

            test DL,253
            jne .L_406c30

            add EAX,1
            test ECX,16777216
            mov BYTE PTR [RSI+49],AL
            je .L_406c30

            or EDX,4
            mov BYTE PTR [RSI+45],DL
            jmp .L_406c30
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406d00:

            test R8,R8
            mov BYTE PTR [RSI+49],3
            mov EAX,3
            je .L_406cc1
.L_406d0e:

            and EDX,4294967291
            mov BYTE PTR [RSI+45],DL
            jmp .L_406ccc
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
.L_406d20:

            shr AL,3
            movzx EAX,AL
            imul RAX,RDX
            mov QWORD PTR [RSI+24],RAX
            ret 
          .byte 0x90
.L_406d30:

            mov EDX,3
            mov EAX,1
            and EDX,4294967291
            mov BYTE PTR [RSI+45],DL
            jmp .L_406ccc
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406d48:

            test R8W,R8W
            je .L_406d80

            mov BYTE PTR [RSI+45],6
            mov EDX,6
.L_406d57:

            xor R8D,R8D
            mov BYTE PTR [RSI+44],8
            mov WORD PTR [RSI+42],R8W
            jmp .L_406b59
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406d70:

            mov BYTE PTR [RSI+44],8
            jmp .L_406bb2
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406d80:

            mov BYTE PTR [RSI+45],2
            mov EDX,2
            jmp .L_406d57
.L_406d8b:

            nop
            nop
            nop
            nop
            nop
.L_406d90:

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,7
            ja .L_406dc9

            cmp AL,2
            mov RDX,QWORD PTR [RDI]
            je .L_406dd0

            cmp AL,4
            je .L_406e90

            cmp AL,1
            je .L_406e30
.L_406daf:

            movzx EAX,BYTE PTR [RDI+18]
            mov BYTE PTR [RDI+17],8
            lea ECX,DWORD PTR [RAX*8]
            imul RAX,RDX
            mov BYTE PTR [RDI+19],CL
            mov QWORD PTR [RDI+8],RAX
.L_406dc9:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406dd0:

            lea R8,QWORD PTR [RDX-1]
            lea RCX,QWORD PTR [RDX+3]
            mov R9,R8
            not RCX
            add R8,RSI
            shr R9,2
            add RCX,RCX
            add R9,RSI
            and ECX,6
            test RDX,RDX
            je .L_406daf

            sub RSI,1
            jmp .L_406e0d
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406e00:

            add RCX,2
.L_406e04:

            sub R8,1
            cmp R8,RSI
            je .L_406daf
.L_406e0d:

            movzx EAX,BYTE PTR [R9]
            sar EAX,CL
            and EAX,3
            cmp RCX,6
            mov BYTE PTR [R8],AL
            jne .L_406e00

            sub R9,1
            xor ECX,ECX
            jmp .L_406e04
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406e30:

            lea R8,QWORD PTR [RDX-1]
            lea ECX,DWORD PTR [RDX+7]
            mov R9,R8
            not ECX
            add R8,RSI
            shr R9,3
            and ECX,7
            add R9,RSI
            sub RSI,1
            test RDX,RDX
            jne .L_406e71

            jmp .L_406daf
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406e60:

            add RCX,1
.L_406e64:

            sub R8,1
            cmp R8,RSI
            je .L_406daf
.L_406e71:

            movzx EAX,BYTE PTR [R9]
            sar EAX,CL
            and EAX,1
            cmp RCX,7
            mov BYTE PTR [R8],AL
            jne .L_406e60

            sub R9,1
            xor ECX,ECX
            jmp .L_406e64
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406e90:

            lea R8,QWORD PTR [RDX-1]
            mov RCX,RDX
            and ECX,1
            mov R9,R8
            shl RCX,2
            add R8,RSI
            shr R9,1
            add R9,RSI
            test RDX,RDX
            je .L_406daf

            sub RSI,1
            jmp .L_406ed2
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406ec0:

            mov ECX,4
.L_406ec5:

            sub R8,1
            cmp R8,RSI
            je .L_406daf
.L_406ed2:

            movzx EAX,BYTE PTR [R9]
            sar EAX,CL
            and EAX,15
            cmp RCX,4
            mov BYTE PTR [R8],AL
            jne .L_406ec0

            sub R9,1
            xor ECX,ECX
            jmp .L_406ec5
.L_406eec:

            nop
            nop
            nop
            nop
.L_406ef0:

            sub RSP,40
.L_406ef4:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            movzx EAX,BYTE PTR [RDI+16]
            cmp AL,3
            je .L_406ff8

            test AL,2
            mov R10,QWORD PTR [RDI]
            movzx R8D,BYTE PTR [RDI+17]
            jne .L_407018

            movzx ECX,BYTE PTR [RDX+3]
            mov R11D,R8D
            sub R11D,ECX
            mov ECX,1
            mov DWORD PTR [RSP],R11D
.L_406f33:

            test AL,4
            je .L_406f48

            movzx EDX,BYTE PTR [RDX+4]
            movsxd RAX,ECX
            add ECX,1
            sub R8D,EDX
            mov DWORD PTR [RSP+RAX*4],R8D
.L_406f48:

            mov RDX,RSP
            lea R8D,DWORD PTR [RCX-1]
            xor R9D,R9D
            mov R11D,DWORD PTR [RDX]
            lea RAX,QWORD PTR [RDX+4]
            lea R8,QWORD PTR [RAX+R8*4]
            test R11D,R11D
            jle .L_406f7c
.L_406f62:

            cmp R8,RAX
            mov R9D,1
            mov RDX,RAX
            je .L_406f8a
.L_406f70:

            mov R11D,DWORD PTR [RDX]
            add RAX,4
            test R11D,R11D
            jg .L_406f62
.L_406f7c:

            cmp R8,RAX
            mov DWORD PTR [RDX],0
            mov RDX,RAX
            jne .L_406f70
.L_406f8a:

            test R9W,R9W
            je .L_406ff8

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,4
            je .L_407088

            jbe .L_407050

            cmp AL,8
            je .L_4070d0

            cmp AL,16
            jne .L_406ff8

            movsxd R9,ECX
            imul R10,R9
            test R10,R10
            je .L_406ff8

            xor R8D,R8D
            nop
            nop
            nop
.L_406fc0:

            movzx EAX,BYTE PTR [RSI]
            movzx EDI,BYTE PTR [RSI+1]
            xor EDX,EDX
            add RSI,2
            shl EAX,8
            add EAX,EDI
            movzx EDI,AX
            mov RAX,R8
            add R8,1
            div R9
            mov EAX,EDI
            mov ECX,DWORD PTR [RSP+RDX*4]
            sar EAX,CL
            mov BYTE PTR [RSI-2],AH
            cmp R10,R8
            mov BYTE PTR [RSI-1],AL
            jne .L_406fc0

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406ff8:

            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40710d

            add RSP,40
.L_407010:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407018:

            movzx ECX,BYTE PTR [RDX]
            mov R11D,R8D
            sub R11D,ECX
            movzx ECX,BYTE PTR [RDX+1]
            mov DWORD PTR [RSP],R11D
            mov R11D,R8D
            sub R11D,ECX
            movzx ECX,BYTE PTR [RDX+2]
            mov DWORD PTR [RSP+4],R11D
            mov R11D,R8D
            sub R11D,ECX
            mov ECX,3
            mov DWORD PTR [RSP+8],R11D
            jmp .L_406f33
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407050:

            cmp AL,2
            jne .L_406ff8

            mov RAX,QWORD PTR [RDI+8]
            test RAX,RAX
            lea RDX,QWORD PTR [RSI+RAX*1]
            je .L_406ff8

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407068:

            movzx EAX,BYTE PTR [RSI]
            add RSI,1
            shr AL,1
            and EAX,85
            cmp RSI,RDX
            mov BYTE PTR [RSI-1],AL
            jne .L_407068

            jmp .L_406ff8
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407088:

            mov ECX,DWORD PTR [RSP]
            mov RDI,QWORD PTR [RDI+8]
            mov EDX,240
            mov EAX,15
            sar EDX,CL
            sar EAX,CL
            and EDX,4294967280
            or EDX,EAX
            test RDI,RDI
            je .L_406ff8

            add RDI,RSI
            nop
            nop
.L_4070b0:

            movzx EAX,BYTE PTR [RSI]
            add RSI,1
            sar EAX,CL
            and EAX,EDX
            cmp RSI,RDI
            mov BYTE PTR [RSI-1],AL
            jne .L_4070b0

            jmp .L_406ff8
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4070d0:

            movsxd R9,ECX
            imul R10,R9
            test R10,R10
            je .L_406ff8

            xor EDI,EDI
            nop
            nop
            nop
            nop
            nop
            nop
.L_4070e8:

            mov RAX,RDI
            xor EDX,EDX
            movzx R8D,BYTE PTR [RSI+RDI*1]
            div R9
            mov ECX,DWORD PTR [RSP+RDX*4]
            sar R8D,CL
            mov BYTE PTR [RSI+RDI*1],R8B
            add RDI,1
            cmp R10,RDI
            jne .L_4070e8

            jmp .L_406ff8
.L_40710d:

            call __stack_chk_fail@PLT
.L_407112:

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
.L_407120:

            cmp BYTE PTR [RDI+17],16
            je .L_407130

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407130:

            jmp .L_405ce0
.L_407135:

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
.L_407140:

            movzx EDX,BYTE PTR [RDI+16]
            mov RAX,QWORD PTR [RDI]
            cmp DL,6
            je .L_4071a0

            cmp DL,4
            je .L_407158
.L_407151:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407158:

            add RSI,QWORD PTR [RDI+8]
            cmp BYTE PTR [RDI+17],8
            je .L_407210

            test RAX,RAX
            je .L_407151

            xor EDX,EDX
            nop
            nop
            nop
.L_407170:

            movzx R8D,BYTE PTR [RSI-3]
            movzx EDI,BYTE PTR [RSI-1]
            sub RSI,4
            movzx ECX,BYTE PTR [RSI+2]
            add RDX,1
            mov BYTE PTR [RSI+3],R8B
            movzx R8D,BYTE PTR [RSI]
            cmp RAX,RDX
            mov BYTE PTR [RSI+1],DIL
            mov BYTE PTR [RSI],CL
            mov BYTE PTR [RSI+2],R8B
            jne .L_407170

            ret 
          .byte 0x66
          .byte 0x90
.L_4071a0:

            add RSI,QWORD PTR [RDI+8]
            cmp BYTE PTR [RDI+17],8
            je .L_407240

            test RAX,RAX
            je .L_407151

            xor EDX,EDX
            nop
            nop
            nop
.L_4071b8:

            movzx R8D,BYTE PTR [RSI-3]
            movzx EDI,BYTE PTR [RSI-1]
            sub RSI,8
            movzx ECX,BYTE PTR [RSI+6]
            add RDX,1
            mov BYTE PTR [RSI+7],R8B
            movzx R8D,BYTE PTR [RSI+4]
            mov BYTE PTR [RSI+6],R8B
            movzx R8D,BYTE PTR [RSI+3]
            mov BYTE PTR [RSI+5],R8B
            movzx R8D,BYTE PTR [RSI+2]
            mov BYTE PTR [RSI+4],R8B
            movzx R8D,BYTE PTR [RSI+1]
            mov BYTE PTR [RSI+3],R8B
            movzx R8D,BYTE PTR [RSI]
            cmp RAX,RDX
            mov BYTE PTR [RSI+1],DIL
            mov BYTE PTR [RSI],CL
            mov BYTE PTR [RSI+2],R8B
            jne .L_4071b8

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407210:

            test RAX,RAX
            je .L_407151

            xor EDX,EDX
            nop
            nop
            nop
            nop
            nop
.L_407220:

            movzx ECX,BYTE PTR [RSI-1]
            sub RSI,2
            add RDX,1
            movzx EDI,BYTE PTR [RSI]
            cmp RAX,RDX
            mov BYTE PTR [RSI],CL
            mov BYTE PTR [RSI+1],DIL
            jne .L_407220

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_407240:

            test RAX,RAX
            je .L_407151

            xor EDX,EDX
            nop
            nop
            nop
            nop
            nop
.L_407250:

            movzx EDI,BYTE PTR [RSI-2]
            movzx ECX,BYTE PTR [RSI-1]
            sub RSI,4
            add RDX,1
            mov BYTE PTR [RSI+3],DIL
            movzx EDI,BYTE PTR [RSI+1]
            mov BYTE PTR [RSI+2],DIL
            movzx EDI,BYTE PTR [RSI]
            cmp RAX,RDX
            mov BYTE PTR [RSI],CL
            mov BYTE PTR [RSI+1],DIL
            jne .L_407250

            ret 
.L_40727c:

            nop
            nop
            nop
            nop
.L_407280:

            movzx EDX,BYTE PTR [RDI+16]
            mov RAX,QWORD PTR [RDI]
            cmp DL,6
            je .L_4072c8

            cmp DL,4
            je .L_407298
.L_407291:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407298:

            add RSI,QWORD PTR [RDI+8]
            cmp BYTE PTR [RDI+17],8
            je .L_4072f8

            test RAX,RAX
            je .L_407291

            xor EDX,EDX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4072b0:

            add RDX,1
            not BYTE PTR [RSI-1]
            not BYTE PTR [RSI-2]
            sub RSI,4
            cmp RAX,RDX
            jne .L_4072b0

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4072c8:

            add RSI,QWORD PTR [RDI+8]
            cmp BYTE PTR [RDI+17],8
            je .L_407318

            test RAX,RAX
            je .L_407291

            xor EDX,EDX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4072e0:

            add RDX,1
            not BYTE PTR [RSI-1]
            not BYTE PTR [RSI-2]
            sub RSI,8
            cmp RAX,RDX
            jne .L_4072e0

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4072f8:

            test RAX,RAX
            je .L_407291

            xor EDX,EDX
            nop
.L_407300:

            add RDX,1
            not BYTE PTR [RSI-1]
            sub RSI,2
            cmp RAX,RDX
            jne .L_407300

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407318:

            test RAX,RAX
            je .L_407291

            xor EDX,EDX
            nop
            nop
            nop
            nop
            nop
.L_407328:

            add RDX,1
            not BYTE PTR [RSI-1]
            sub RSI,4
            cmp RAX,RDX
            jne .L_407328

            ret 
.L_40733a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_407340:

            movzx EAX,BYTE PTR [RDI+16]
            mov R10,RDX
            push R14
            shr R10,8
            push RBX
            mov R8,QWORD PTR [RDI]
            mov R11D,R10D
            mov R9D,EDX
            test AL,AL
            jne .L_407378

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,8
            je .L_407440

            cmp AL,16
            je .L_4074a8
.L_40736f:

            pop RBX
            pop R14
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407378:

            cmp AL,2
            jne .L_40736f

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,8
            je .L_407570

            cmp AL,16
            jne .L_40736f

            lea RBX,QWORD PTR [R8+R8*1]
            and ECX,128
            lea RAX,QWORD PTR [RBX+R8*1]
            lea RAX,QWORD PTR [RSI+RAX*2]
            lea RSI,QWORD PTR [RAX+RBX*1]
            je .L_4076b0

            cmp R8,1
            jbe .L_407418

            mov RCX,RSI
            mov EBX,1
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
.L_4073c0:

            mov BYTE PTR [RCX-1],R11B
            mov BYTE PTR [RCX-2],R9B
            sub RAX,6
            movzx R14D,BYTE PTR [RAX+5]
            add RBX,1
            sub RCX,8
            mov BYTE PTR [RCX+5],R14B
            movzx R14D,BYTE PTR [RAX+4]
            mov BYTE PTR [RCX+4],R14B
            movzx R14D,BYTE PTR [RAX+3]
            mov BYTE PTR [RCX+3],R14B
            movzx R14D,BYTE PTR [RAX+2]
            mov BYTE PTR [RCX+2],R14B
            movzx R14D,BYTE PTR [RAX+1]
            mov BYTE PTR [RCX+1],R14B
            movzx R14D,BYTE PTR [RAX]
            cmp R8,RBX
            mov BYTE PTR [RCX],R14B
            jne .L_4073c0

            mov RAX,R8
            neg RAX
            lea RSI,QWORD PTR [RSI+RAX*8+8]
.L_407418:

            lea RAX,QWORD PTR [R8*8]
            mov BYTE PTR [RSI-2],DL
            mov EDX,16388
            mov BYTE PTR [RSI-1],R10B
            mov WORD PTR [RDI+18],DX
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40736f
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407440:

            and ECX,128
            lea RAX,QWORD PTR [RSI+R8*1]
            je .L_407530

            cmp R8,1
            lea R11,QWORD PTR [RAX+R8*1]
            jbe .L_40748b

            add RSI,1
            mov RCX,R11
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407468:

            sub RAX,1
            mov BYTE PTR [RCX-1],R9B
            sub RCX,2
            movzx R10D,BYTE PTR [RAX]
            cmp RSI,RAX
            mov BYTE PTR [RCX],R10B
            jne .L_407468

            mov RAX,R8
            neg RAX
            lea R11,QWORD PTR [R11+RAX*2+2]
.L_40748b:

            lea RAX,QWORD PTR [R8+R8*1]
            mov EBX,4098
            mov BYTE PTR [R11-1],DL
            mov WORD PTR [RDI+18],BX
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40736f
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4074a8:

            lea RAX,QWORD PTR [R8+R8*1]
            add RSI,RAX
            add RAX,RSI
            and ECX,128
            je .L_407600

            cmp R8,1
            jbe .L_407504

            mov RCX,RAX
            mov EBX,1
            nop
            nop
            nop
            nop
.L_4074d0:

            mov BYTE PTR [RCX-1],R11B
            mov BYTE PTR [RCX-2],R9B
            sub RSI,2
            movzx R14D,BYTE PTR [RSI+1]
            add RBX,1
            sub RCX,4
            mov BYTE PTR [RCX+1],R14B
            movzx R14D,BYTE PTR [RSI]
            cmp R8,RBX
            mov BYTE PTR [RCX],R14B
            jne .L_4074d0

            mov RCX,R8
            neg RCX
            lea RAX,QWORD PTR [RAX+RCX*4+4]
.L_407504:

            mov BYTE PTR [RAX-1],R10B
            mov BYTE PTR [RAX-2],DL
            lea RAX,QWORD PTR [R8*4]
            mov R10D,8194
            mov WORD PTR [RDI+18],R10W
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40736f
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407530:

            test R8,R8
            lea RDX,QWORD PTR [RAX+R8*1]
            je .L_407556

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407540:

            sub RAX,1
            movzx ECX,BYTE PTR [RAX]
            sub RDX,2
            mov BYTE PTR [RDX+1],CL
            cmp RSI,RAX
            mov BYTE PTR [RDX],R9B
            jne .L_407540
.L_407556:

            lea RAX,QWORD PTR [R8+R8*1]
            mov R11D,4098
            mov WORD PTR [RDI+18],R11W
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40736f
          .byte 0x66
          .byte 0x90
.L_407570:

            lea RAX,QWORD PTR [R8+R8*2]
            add RSI,RAX
            and ECX,128
            lea RAX,QWORD PTR [RSI+R8*1]
            je .L_407650

            cmp R8,1
            jbe .L_4075dd

            lea RCX,QWORD PTR [R8*4]
            mov RBX,R8
            sub RBX,RCX
            mov RCX,RAX
            lea R11,QWORD PTR [RSI+RBX*1+3]
            nop
            nop
            nop
            nop
            nop
.L_4075a8:

            mov BYTE PTR [RCX-1],R9B
            movzx R10D,BYTE PTR [RSI-1]
            sub RSI,3
            sub RCX,4
            mov BYTE PTR [RCX+2],R10B
            movzx R10D,BYTE PTR [RSI+1]
            mov BYTE PTR [RCX+1],R10B
            movzx R10D,BYTE PTR [RSI]
            cmp R11,RSI
            mov BYTE PTR [RCX],R10B
            jne .L_4075a8

            mov RCX,R8
            neg RCX
            lea RAX,QWORD PTR [RAX+RCX*4+4]
.L_4075dd:

            mov BYTE PTR [RAX-1],DL
            lea RAX,QWORD PTR [R8*4]
            mov ESI,8196
            mov WORD PTR [RDI+18],SI
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40736f
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407600:

            test R8,R8
            je .L_40762d

            nop
            nop
            nop
.L_407608:

            movzx EDX,BYTE PTR [RSI-1]
            sub RSI,2
            add RCX,1
            sub RAX,4
            mov BYTE PTR [RAX+3],DL
            movzx EDX,BYTE PTR [RSI]
            mov BYTE PTR [RAX+1],R11B
            mov BYTE PTR [RAX+2],DL
            cmp R8,RCX
            mov BYTE PTR [RAX],R9B
            jne .L_407608
.L_40762d:

            lea RAX,QWORD PTR [R8*4]
            mov R9D,8194
            mov WORD PTR [RDI+18],R9W
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40736f
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407650:

            test R8,R8
            je .L_407694

            lea RDX,QWORD PTR [R8*4]
            mov RCX,R8
            sub RCX,RDX
            add RCX,RSI
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
.L_407670:

            movzx EDX,BYTE PTR [RSI-1]
            sub RSI,3
            sub RAX,4
            mov BYTE PTR [RAX+3],DL
            movzx EDX,BYTE PTR [RSI+1]
            mov BYTE PTR [RAX+2],DL
            movzx EDX,BYTE PTR [RSI]
            mov BYTE PTR [RAX+1],DL
            cmp RCX,RSI
            mov BYTE PTR [RAX],R9B
            jne .L_407670
.L_407694:

            lea RAX,QWORD PTR [R8*4]
            mov ECX,8196
            mov WORD PTR [RDI+18],CX
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40736f
          .byte 0x66
          .byte 0x90
.L_4076b0:

            test R8,R8
            je .L_4076f9

            nop
            nop
            nop
.L_4076b8:

            movzx EDX,BYTE PTR [RAX-1]
            sub RAX,6
            add RCX,1
            sub RSI,8
            mov BYTE PTR [RSI+7],DL
            movzx EDX,BYTE PTR [RAX+4]
            mov BYTE PTR [RSI+6],DL
            movzx EDX,BYTE PTR [RAX+3]
            mov BYTE PTR [RSI+5],DL
            movzx EDX,BYTE PTR [RAX+2]
            mov BYTE PTR [RSI+4],DL
            movzx EDX,BYTE PTR [RAX+1]
            mov BYTE PTR [RSI+3],DL
            movzx EDX,BYTE PTR [RAX]
            mov BYTE PTR [RSI+1],R11B
            mov BYTE PTR [RSI+2],DL
            cmp R8,RCX
            mov BYTE PTR [RSI],R9B
            jne .L_4076b8
.L_4076f9:

            mov EAX,16388
            mov WORD PTR [RDI+18],AX
            lea RAX,QWORD PTR [R8*8]
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40736f
.L_407713:

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
.L_407720:

            movzx ECX,BYTE PTR [RDI+17]
            cmp CL,7
            jbe .L_4077e8

            movzx R8D,BYTE PTR [RDI+16]
            test R8B,2
            jne .L_4077e8

            test R8B,R8B
            mov R9,QWORD PTR [RDI]
            jne .L_4077b8

            cmp CL,8
            lea RDX,QWORD PTR [R9+R9*1]
            je .L_407888

            lea RAX,QWORD PTR [RSI+RDX*1-1]
            test R9,R9
            lea RDX,QWORD PTR [RAX+R9*4]
            je .L_4077be

            xor ECX,ECX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407768:

            movzx ESI,BYTE PTR [RAX]
            sub RAX,2
            add RCX,1
            sub RDX,6
            mov BYTE PTR [RDX+6],SIL
            movzx ESI,BYTE PTR [RAX+1]
            mov BYTE PTR [RDX+5],SIL
            movzx ESI,BYTE PTR [RAX+2]
            mov BYTE PTR [RDX+4],SIL
            movzx ESI,BYTE PTR [RAX+1]
            mov BYTE PTR [RDX+3],SIL
            movzx ESI,BYTE PTR [RAX+2]
            mov BYTE PTR [RDX+2],SIL
            movzx ESI,BYTE PTR [RAX+1]
            cmp R9,RCX
            mov BYTE PTR [RDX+1],SIL
            jne .L_407768
.L_4077a8:

            movzx R8D,BYTE PTR [RDI+16]
            movzx ECX,BYTE PTR [RDI+17]
            jmp .L_4077be
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4077b8:

            cmp R8B,4
            je .L_407808
.L_4077be:

            movzx EAX,BYTE PTR [RDI+18]
            or R8D,2
            mov BYTE PTR [RDI+16],R8B
            add EAX,2
            mov BYTE PTR [RDI+18],AL
            imul EAX,ECX
            cmp AL,7
            mov BYTE PTR [RDI+19],AL
            jbe .L_4077f0

            shr AL,3
            movzx EAX,AL
            imul RAX,R9
.L_4077e4:

            mov QWORD PTR [RDI+8],RAX
.L_4077e8:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4077f0:

            movzx EAX,AL
            imul RAX,R9
            add RAX,7
            shr RAX,3
            jmp .L_4077e4
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407808:

            cmp CL,8
            je .L_4078d0

            lea RAX,QWORD PTR [R9*4]
            lea RDX,QWORD PTR [RSI+RAX*1-1]
            add RAX,RDX
            test R9,R9
            je .L_4077be

            xor ECX,ECX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407830:

            movzx ESI,BYTE PTR [RDX]
            sub RDX,4
            add RCX,1
            sub RAX,8
            mov BYTE PTR [RAX+8],SIL
            movzx ESI,BYTE PTR [RDX+3]
            mov BYTE PTR [RAX+7],SIL
            movzx ESI,BYTE PTR [RDX+2]
            mov BYTE PTR [RAX+6],SIL
            movzx ESI,BYTE PTR [RDX+1]
            mov BYTE PTR [RAX+5],SIL
            movzx ESI,BYTE PTR [RDX+2]
            mov BYTE PTR [RAX+4],SIL
            movzx ESI,BYTE PTR [RDX+1]
            mov BYTE PTR [RAX+3],SIL
            movzx ESI,BYTE PTR [RDX+2]
            mov BYTE PTR [RAX+2],SIL
            movzx ESI,BYTE PTR [RDX+1]
            cmp R9,RCX
            mov BYTE PTR [RAX+1],SIL
            jne .L_407830

            jmp .L_4077a8
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407888:

            lea RAX,QWORD PTR [RSI+R9*1-1]
            add RDX,RAX
            test R9,R9
            je .L_4077be

            sub RSI,1
            nop
            nop
            nop
.L_4078a0:

            movzx ECX,BYTE PTR [RAX]
            sub RAX,1
            sub RDX,3
            mov BYTE PTR [RDX+3],CL
            movzx ECX,BYTE PTR [RAX+1]
            mov BYTE PTR [RDX+2],CL
            movzx ECX,BYTE PTR [RAX+1]
            cmp RAX,RSI
            mov BYTE PTR [RDX+1],CL
            jne .L_4078a0

            jmp .L_4077a8
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
.L_4078d0:

            lea RAX,QWORD PTR [R9+R9*1]
            lea RDX,QWORD PTR [RSI+RAX*1-1]
            add RAX,RDX
            test R9,R9
            je .L_4077be

            xor ECX,ECX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4078f0:

            movzx ESI,BYTE PTR [RDX]
            sub RDX,2
            add RCX,1
            sub RAX,4
            mov BYTE PTR [RAX+4],SIL
            movzx ESI,BYTE PTR [RDX+1]
            mov BYTE PTR [RAX+3],SIL
            movzx ESI,BYTE PTR [RDX+1]
            mov BYTE PTR [RAX+2],SIL
            movzx ESI,BYTE PTR [RDX+1]
            cmp R9,RCX
            mov BYTE PTR [RAX+1],SIL
            jne .L_4078f0

            jmp .L_4077a8
.L_407925:

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
.L_407930:

            movzx R8D,BYTE PTR [RSI+16]
            xor ECX,ECX
            test R8B,2
            je .L_4079c8

            cmp R8B,2
            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
.L_40794f:

            mov R10,QWORD PTR [RSI]
            movzx R15D,WORD PTR [RDI+1034]
            movzx EBP,WORD PTR [RDI+1036]
            movzx R12D,WORD PTR [RDI+1038]
            movzx EBX,BYTE PTR [RSI+17]
            je .L_407b10
.L_407973:

            cmp R8B,6
            je .L_4079d0
.L_407979:

            movzx EAX,BYTE PTR [RSI+18]
            and R8D,4294967293
            mov BYTE PTR [RSI+16],R8B
            sub EAX,2
            mov BYTE PTR [RSI+18],AL
            imul EAX,EBX
            cmp AL,7
            mov BYTE PTR [RSI+19],AL
            ja .L_4079b8

            movzx EAX,AL
            imul R10,RAX
            add R10,7
            shr R10,3
.L_4079a4:

            mov QWORD PTR [RSI+8],R10
            mov EAX,ECX
            pop RBX
.L_4079ab:

            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4079b8:

            shr AL,3
            movzx EAX,AL
            imul R10,RAX
            jmp .L_4079a4
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4079c8:

            mov EAX,ECX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4079d0:

            cmp BL,8
            je .L_407ce0

            cmp QWORD PTR [RDI+752],0
            je .L_407d90

            cmp QWORD PTR [RDI+744],0
            je .L_407d90

            test R10,R10
            je .L_407979

            mov R11,RDX
            xor R9D,R9D
            mov QWORD PTR [RSP-8],RSI
            jmp .L_407a41
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407a10:

            cmp AX,SI
            jne .L_407a76
.L_407a15:

            mov BYTE PTR [R11],R8B
            mov BYTE PTR [R11+1],AL
            add RDX,8
            movzx EAX,BYTE PTR [RDX-2]
            add R9,1
            add R11,4
            mov BYTE PTR [R11-2],AL
            movzx EAX,BYTE PTR [RDX-1]
            cmp R10,R9
            mov BYTE PTR [R11-1],AL
            je .L_407f30
.L_407a41:

            movzx EAX,BYTE PTR [RDX]
            movzx ESI,BYTE PTR [RDX+1]
            movzx EBX,BYTE PTR [RDX+2]
            movzx R8D,BYTE PTR [RDX+5]
            shl EAX,8
            or EAX,ESI
            movzx ESI,BYTE PTR [RDX+3]
            shl EBX,8
            or EBX,ESI
            movzx ESI,BYTE PTR [RDX+4]
            shl ESI,8
            or ESI,R8D
            mov R8D,EAX
            shr R8W,8
            cmp AX,BX
            je .L_407a10
.L_407a76:

            mov ECX,DWORD PTR [RDI+696]
            mov R13,QWORD PTR [RDI+752]
            movzx R14D,BL
            movzx EAX,AL
            movzx R8D,R8W
            movzx EBX,BH
            sar R14D,CL
            sar EAX,CL
            movsxd R14,R14D
            cdqe 
            mov R14,QWORD PTR [R13+R14*8]
            mov RAX,QWORD PTR [R13+RAX*8]
            movzx EBX,WORD PTR [R14+RBX*2]
            movzx EAX,WORD PTR [RAX+R8*2]
            imul RBX,RBP
            imul RAX,R15
            add RBX,RAX
            movzx EAX,SIL
            sar EAX,CL
            movsxd R14,EAX
            mov EAX,ESI
            movzx ESI,AH
            mov RAX,QWORD PTR [R13+R14*8]
            movzx EAX,WORD PTR [RAX+RSI*2]
            imul RAX,R12
            add RBX,RAX
            shr RBX,15
            movzx EAX,BL
            movzx EBX,BH
            sar EAX,CL
            mov RCX,QWORD PTR [RDI+744]
            cdqe 
            mov RAX,QWORD PTR [RCX+RAX*8]
            mov ECX,1
            movzx EAX,WORD PTR [RAX+RBX*2]
            mov R8D,EAX
            shr R8W,8
            jmp .L_407a15
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407b10:

            cmp BL,8
            je .L_407c30

            cmp QWORD PTR [RDI+752],0
            je .L_407e50

            cmp QWORD PTR [RDI+744],0
            je .L_407e50

            test R10,R10
            je .L_407979

            mov R11,RDX
            xor R13D,R13D
            mov QWORD PTR [RSP-8],RSI
            mov R8,RDX
            jmp .L_407b6b
          .byte 0x66
          .byte 0x90
.L_407b50:

            cmp AX,DX
            jne .L_407ba6
.L_407b55:

            mov BYTE PTR [R8+R13*2],SIL
            mov BYTE PTR [R8+R13*2+1],AL
            add R13,1
            cmp R10,R13
            je .L_407f10
.L_407b6b:

            movzx EAX,BYTE PTR [R11]
            movzx EDX,BYTE PTR [R11+1]
            add R11,6
            movzx EBX,BYTE PTR [R11-4]
            shl EAX,8
            or EAX,EDX
            movzx EDX,BYTE PTR [R11-3]
            shl EBX,8
            or EBX,EDX
            movzx EDX,BYTE PTR [R11-2]
            movzx ESI,BYTE PTR [R11-1]
            shl EDX,8
            or EDX,ESI
            mov ESI,EAX
            shr SI,8
            cmp AX,BX
            je .L_407b50
.L_407ba6:

            mov ECX,DWORD PTR [RDI+696]
            mov R9,QWORD PTR [RDI+752]
            movzx R14D,BL
            movzx EAX,AL
            movzx ESI,SI
            movzx EBX,BH
            sar R14D,CL
            sar EAX,CL
            movsxd R14,R14D
            cdqe 
            mov R14,QWORD PTR [R9+R14*8]
            mov RAX,QWORD PTR [R9+RAX*8]
            movzx EBX,WORD PTR [R14+RBX*2]
            movzx EAX,WORD PTR [RAX+RSI*2]
            imul RBX,RBP
            imul RAX,R15
            add RBX,RAX
            movzx EAX,DL
            movzx EDX,DH
            sar EAX,CL
            cdqe 
            mov RAX,QWORD PTR [R9+RAX*8]
            movzx EAX,WORD PTR [RAX+RDX*2]
            mov RDX,QWORD PTR [RDI+744]
            imul RAX,R12
            add RBX,RAX
            shr RBX,15
            movzx EAX,BL
            movzx EBX,BH
            sar EAX,CL
            mov ECX,1
            cdqe 
            mov RAX,QWORD PTR [RDX+RAX*8]
            movzx EAX,WORD PTR [RAX+RBX*2]
            mov ESI,EAX
            shr SI,8
            jmp .L_407b55
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_407c30:

            cmp QWORD PTR [RDI+720],0
            je .L_407fb0

            mov R11,QWORD PTR [RDI+728]
            test R11,R11
            je .L_407fb0

            test R10,R10
            je .L_407979

            lea RAX,QWORD PTR [R10+R10*2]
            mov RBX,RDX
            mov R9,RDX
            mov QWORD PTR [RSP-8],RDX
            add RAX,RDX
            mov RDX,RAX
            jmp .L_407c8c
          .byte 0x66
          .byte 0x90
.L_407c70:

            cmp AL,R11B
            jne .L_407cb2

            mov BYTE PTR [RBX],R14B
.L_407c78:

            add RBX,1
            cmp R9,RDX
            je .L_408020

            mov R11,QWORD PTR [RDI+728]
.L_407c8c:

            movzx EAX,BYTE PTR [R9]
            movzx R8D,BYTE PTR [R9+1]
            add R9,3
            movzx R14D,BYTE PTR [R9-1]
            movzx EAX,BYTE PTR [R11+RAX*1]
            movzx R8D,BYTE PTR [R11+R8*1]
            movzx R11D,BYTE PTR [R11+R14*1]
            cmp AL,R8B
            je .L_407c70
.L_407cb2:

            imul RAX,R15
            mov RCX,QWORD PTR [RDI+720]
            imul R8,RBP
            add R8,RAX
            movzx EAX,R11B
            imul RAX,R12
            add RAX,R8
            shr RAX,15
            movzx EAX,BYTE PTR [RCX+RAX*1]
            mov ECX,1
            mov BYTE PTR [RBX],AL
            jmp .L_407c78
.L_407ce0:

            mov R11,QWORD PTR [RDI+720]
            test R11,R11
            je .L_407f48

            mov R9,QWORD PTR [RDI+728]
            test R9,R9
            je .L_407f48

            test R10,R10
            je .L_407979

            xor EBX,EBX
            jmp .L_407d5b
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407d10:

            cmp AL,R9B
            jne .L_407d7f
.L_407d15:

            imul RAX,R15
            imul R8,RBP
            add R8,RAX
            movzx EAX,R9B
            imul RAX,R12
            add RAX,R8
            shr RAX,15
            movzx EAX,BYTE PTR [R11+RAX*1]
            mov BYTE PTR [RDX+RBX*2],AL
            movzx EAX,BYTE PTR [RDX+RBX*4+3]
            mov BYTE PTR [RDX+RBX*2+1],AL
            add RBX,1
            cmp R10,RBX
            je .L_407e40

            mov R9,QWORD PTR [RDI+728]
            mov R11,QWORD PTR [RDI+720]
.L_407d5b:

            movzx EAX,BYTE PTR [RDX+RBX*4]
            movzx R8D,BYTE PTR [RDX+RBX*4+1]
            movzx R13D,BYTE PTR [RDX+RBX*4+2]
            movzx EAX,BYTE PTR [R9+RAX*1]
            movzx R8D,BYTE PTR [R9+R8*1]
            movzx R9D,BYTE PTR [R9+R13*1]
            cmp AL,R8B
            je .L_407d10
.L_407d7f:

            mov ECX,1
            jmp .L_407d15
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
.L_407d90:

            xor R11D,R11D
            test R10,R10
            mov R9,RDX
            jne .L_407dfa

            jmp .L_407979
.L_407da0:

            cmp AX,R13W
            jne .L_407e2c
.L_407daa:

            movzx EDI,AX
            movzx EAX,BX
            add RDX,8
            imul RAX,RBP
            add R11,1
            add R9,4
            imul RDI,R15
            lea RDI,QWORD PTR [RDI+RAX*1]
            movzx EAX,R13W
            imul RAX,R12
            add RAX,RDI
            shr RAX,15
            mov EDI,EAX
            mov BYTE PTR [R9-3],AL
            shr DI,8
            mov BYTE PTR [R9-4],DIL
            movzx EAX,BYTE PTR [RDX-2]
            mov BYTE PTR [R9-2],AL
            movzx EAX,BYTE PTR [RDX-1]
            cmp R10,R11
            mov BYTE PTR [R9-1],AL
            je .L_407e40
.L_407dfa:

            movzx EAX,BYTE PTR [RDX]
            movzx EDI,BYTE PTR [RDX+1]
            movzx EBX,BYTE PTR [RDX+2]
            movzx R13D,BYTE PTR [RDX+4]
            shl EAX,8
            or EAX,EDI
            movzx EDI,BYTE PTR [RDX+3]
            shl EBX,8
            shl R13D,8
            or EBX,EDI
            movzx EDI,BYTE PTR [RDX+5]
            or R13D,EDI
            cmp AX,BX
            je .L_407da0
.L_407e2c:

            mov ECX,1
            jmp .L_407daa
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
.L_407e40:

            movzx R8D,BYTE PTR [RSI+16]
            movzx EBX,BYTE PTR [RSI+17]
            jmp .L_407979
          .byte 0x66
          .byte 0x90
.L_407e50:

            test R10,R10
            je .L_408038

            mov R11,RDX
            xor ECX,ECX
            xor EBX,EBX
            jmp .L_407ead
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407e68:

            cmp AX,R13W
            jne .L_407ee8
.L_407e6e:

            movzx R8D,AX
            movzx EAX,R14W
            mov R9,R8
            imul RAX,RBP
            imul R9,R15
            lea R8,QWORD PTR [R9+RAX*1]
            movzx EAX,R13W
            imul RAX,R12
            add RAX,R8
            shr RAX,15
            mov R8D,EAX
            mov BYTE PTR [RDX+RBX*2+1],AL
            shr R8W,8
            mov BYTE PTR [RDX+RBX*2],R8B
            add RBX,1
            cmp R10,RBX
            je .L_407ef8
.L_407ead:

            movzx EAX,BYTE PTR [R11]
            movzx R8D,BYTE PTR [R11+1]
            add R11,6
            movzx R14D,BYTE PTR [R11-4]
            movzx R13D,BYTE PTR [R11-2]
            shl EAX,8
            or EAX,R8D
            movzx R8D,BYTE PTR [R11-3]
            shl R14D,8
            shl R13D,8
            or R14D,R8D
            movzx R8D,BYTE PTR [R11-1]
            or R13D,R8D
            cmp AX,R14W
            je .L_407e68
.L_407ee8:

            mov ECX,1
            jmp .L_407e6e
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407ef8:

            movzx R8D,BYTE PTR [RSI+16]
            movzx EBX,BYTE PTR [RSI+17]
            jmp .L_407973
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
.L_407f10:

            mov RSI,QWORD PTR [RSP-8]
            mov RDX,R8
            movzx EBX,BYTE PTR [RSI+17]
            movzx R8D,BYTE PTR [RSI+16]
            jmp .L_407973
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
.L_407f30:

            mov RSI,QWORD PTR [RSP-8]
            movzx R8D,BYTE PTR [RSI+16]
            movzx EBX,BYTE PTR [RSI+17]
            jmp .L_407979
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407f48:

            xor R9D,R9D
            test R10,R10
            jne .L_407f93

            jmp .L_407979
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407f58:

            cmp AL,R8B
            jne .L_407fa9
.L_407f5d:

            imul RAX,R15
            imul RDI,RBP
            add RDI,RAX
            movzx EAX,R8B
            imul RAX,R12
            add RAX,RDI
            shr RAX,15
            mov BYTE PTR [RDX+R9*2],AL
            movzx EAX,BYTE PTR [RDX+R9*4+3]
            mov BYTE PTR [RDX+R9*2+1],AL
            add R9,1
            cmp R10,R9
            je .L_407e40
.L_407f93:

            movzx EAX,BYTE PTR [RDX+R9*4]
            movzx EDI,BYTE PTR [RDX+R9*4+1]
            movzx R8D,BYTE PTR [RDX+R9*4+2]
            cmp AL,DIL
            je .L_407f58
.L_407fa9:

            mov ECX,1
            jmp .L_407f5d
.L_407fb0:

            test R10,R10
            je .L_408038

            lea R13,QWORD PTR [R10+R10*2]
            mov RBX,RDX
            mov R11,RDX
            xor ECX,ECX
            add R13,RDX
            jmp .L_407fe5
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407fd0:

            cmp AL,R8B
            jne .L_407ffc

            mov BYTE PTR [RBX],R8B
.L_407fd8:

            add RBX,1
            cmp R11,R13
            je .L_407ef8
.L_407fe5:

            movzx EAX,BYTE PTR [R11]
            movzx R9D,BYTE PTR [R11+1]
            add R11,3
            movzx R8D,BYTE PTR [R11-1]
            cmp AL,R9B
            je .L_407fd0
.L_407ffc:

            imul RAX,R15
            imul R9,RBP
            lea RCX,QWORD PTR [RAX+R9*1]
            movzx EAX,R8B
            imul RAX,R12
            add RAX,RCX
            mov ECX,1
            shr RAX,15
            mov BYTE PTR [RBX],AL
            jmp .L_407fd8
.L_408020:

            mov RDX,QWORD PTR [RSP-8]
            movzx R8D,BYTE PTR [RSI+16]
            movzx EBX,BYTE PTR [RSI+17]
            jmp .L_407973
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408038:

            xor ECX,ECX
            jmp .L_407979
.L_40803f:

            nop
.L_408040:

            test RSI,RSI
            je .L_40808b

            sub EDI,1
            cmp EDI,7
            ja .L_40808b

            lea RAX,QWORD PTR [RIP+.L_413960]
            lea RDX,QWORD PTR [RIP+.L_413940]
            mov EAX,DWORD PTR [RAX+RDI*4]
            mov EDX,DWORD PTR [RDX+RDI*4]
            test EAX,EAX
            jle .L_40808b

            sub EAX,1
            lea RAX,QWORD PTR [RAX+RAX*2]
            lea RCX,QWORD PTR [RSI+RAX*1+3]
            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
.L_408078:

            mov BYTE PTR [RSI],AL
            mov BYTE PTR [RSI+1],AL
            add RSI,3
            mov BYTE PTR [RSI-1],AL
            add EAX,EDX
            cmp RSI,RCX
            jne .L_408078
.L_40808b:

            ret 
.L_40808d:

            nop
            nop
            nop
.L_408090:

            mov R10,RCX
            push R15
            push R14
            test R10,R10
            push R13
            push R12
            push RBP
            push RBX
.L_4080a0:

            mov ECX,DWORD PTR [RSP+96]
            je .L_408254

            movzx EAX,BYTE PTR [RDI+16]
            mov EBX,EAX
            and EBX,4
            test RDX,RDX
            jne .L_4080c0

            test BL,BL
            jne .L_408254
.L_4080c0:

            cmp AL,2
            mov R11,QWORD PTR [RDI]
            je .L_408320

            jbe .L_408450

            cmp AL,4
            je .L_408260

            cmp AL,6
            jne .L_408220

            movzx EDX,BYTE PTR [RDI+17]
            cmp DL,8
            je .L_408ca0

            cmp QWORD PTR [RSP+80],0
            setne BL
            cmp QWORD PTR [RSP+88],0
            setne R9B
            test BL,R9B
            je .L_408498

            cmp QWORD PTR [RSP+72],0
            je .L_408498

            test R11,R11
            je .L_408228

            mov R9,RSI
            xor EBX,EBX
            mov EBP,65535
            mov R15,QWORD PTR [RSP+72]
            jmp .L_408183
.L_408130:

            test AX,AX
            jne .L_4089a8

            movzx EAX,BYTE PTR [R10+3]
            mov BYTE PTR [R9],AL
            movzx EAX,WORD PTR [R10+2]
            mov BYTE PTR [R9+1],AL
            movzx EAX,BYTE PTR [R10+5]
            mov BYTE PTR [R9+2],AL
            movzx EAX,WORD PTR [R10+4]
            mov BYTE PTR [R9+3],AL
            movzx EAX,BYTE PTR [R10+7]
            mov BYTE PTR [R9+4],AL
            movzx EAX,WORD PTR [R10+6]
            mov BYTE PTR [R9+5],AL
.L_40816e:

            add RBX,1
            add RSI,8
            add R9,6
            cmp R11,RBX
            je .L_408970
.L_408183:

            movzx EAX,BYTE PTR [RSI+6]
            movzx R12D,BYTE PTR [RSI+7]
            shl EAX,8
            add EAX,R12D
            cmp AX,-1
            jne .L_408130

            movzx EAX,BYTE PTR [RSI+1]
            movzx R12D,BYTE PTR [RSI]
            sar EAX,CL
            cdqe 
            mov RAX,QWORD PTR [R15+RAX*8]
            movzx EAX,WORD PTR [RAX+R12*2]
            mov R12D,EAX
            mov BYTE PTR [R9+1],AL
            shr R12W,8
            mov BYTE PTR [R9],R12B
            movzx EAX,BYTE PTR [RSI+3]
            movzx R12D,BYTE PTR [RSI+2]
            sar EAX,CL
            cdqe 
            mov RAX,QWORD PTR [R15+RAX*8]
            movzx EAX,WORD PTR [RAX+R12*2]
            mov R12D,EAX
            mov BYTE PTR [R9+3],AL
            shr R12W,8
            mov BYTE PTR [R9+2],R12B
            movzx EAX,BYTE PTR [RSI+5]
            movzx R12D,BYTE PTR [RSI+4]
            sar EAX,CL
            cdqe 
            mov RAX,QWORD PTR [R15+RAX*8]
            movzx EAX,WORD PTR [RAX+R12*2]
            mov R12D,EAX
            mov BYTE PTR [R9+5],AL
            shr R12W,8
            mov BYTE PTR [R9+4],R12B
            jmp .L_40816e
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408210:

            movzx EAX,BYTE PTR [R15+16]
            mov RDI,R15
            mov EBX,EAX
            and EBX,4
            nop
            nop
            nop
.L_408220:

            test BL,BL
            je .L_408254

            movzx EDX,BYTE PTR [RDI+17]
.L_408228:

            and EAX,4294967291
            mov BYTE PTR [RDI+16],AL
            movzx EAX,BYTE PTR [RDI+18]
            sub EAX,1
            mov BYTE PTR [RDI+18],AL
            imul EAX,EDX
            cmp AL,7
            mov BYTE PTR [RDI+19],AL
            jbe .L_408480

            shr AL,3
            movzx EAX,AL
            imul R11,RAX
.L_408250:

            mov QWORD PTR [RDI+8],R11
.L_408254:

            pop RBX
.L_408255:

            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x90
.L_408260:

            movzx EDX,BYTE PTR [RDI+17]
            cmp DL,8
            je .L_408c28

            cmp QWORD PTR [RSP+80],0
            setne BL
            cmp QWORD PTR [RSP+88],0
            setne R9B
            test BL,R9B
            je .L_4085f0

            cmp QWORD PTR [RSP+72],0
            je .L_4085f0

            test R11,R11
            je .L_408228

            xor R9D,R9D
            mov EBX,65535
            mov RDX,QWORD PTR [RSP+72]
            jmp .L_4082d9
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4082b0:

            test AX,AX
            jne .L_408b08

            movzx EAX,BYTE PTR [R10+9]
            mov BYTE PTR [RSI+R9*2],AL
            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI+R9*2+1],AL
.L_4082cc:

            add R9,1
            cmp R11,R9
            je .L_408970
.L_4082d9:

            movzx EAX,BYTE PTR [RSI+R9*4+2]
            movzx EBP,BYTE PTR [RSI+R9*4+3]
            shl EAX,8
            add EAX,EBP
            cmp AX,-1
            jne .L_4082b0

            movzx EAX,BYTE PTR [RSI+R9*4+1]
            movzx EBP,BYTE PTR [RSI+R9*4]
            sar EAX,CL
            cdqe 
            mov RAX,QWORD PTR [RDX+RAX*8]
            movzx EAX,WORD PTR [RAX+RBP*2]
            mov EBP,EAX
            mov BYTE PTR [RSI+R9*2+1],AL
            shr BP,8
            mov BYTE PTR [RSI+R9*2],BPL
            jmp .L_4082cc
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408320:

            cmp BYTE PTR [RDI+17],8
            je .L_408ba0

            cmp QWORD PTR [RSP+72],0
            je .L_408fc0

            test R11,R11
            je .L_408254

            xor R15D,R15D
            mov QWORD PTR [RSP-8],RDI
            mov R13,QWORD PTR [RSP+72]
            jmp .L_4083b4
          .byte 0x66
          .byte 0x90
.L_408350:

            sar EAX,CL
            sar EDI,CL
            sar R8D,CL
            cdqe 
            movsxd RDI,EDI
            movsxd R8,R8D
            mov RAX,QWORD PTR [R13+RAX*8]
            movzx EAX,WORD PTR [RAX+R9*2]
            mov R9D,EAX
            mov BYTE PTR [RSI+1],AL
            shr R9W,8
            mov BYTE PTR [RSI],R9B
            mov RAX,QWORD PTR [R13+RDI*8]
            movzx EAX,WORD PTR [RAX+RBX*2]
            mov EDI,EAX
            mov BYTE PTR [RSI+3],AL
            shr DI,8
            mov BYTE PTR [RSI+2],DIL
            mov RAX,QWORD PTR [R13+R8*8]
            movzx EAX,WORD PTR [RAX+RBP*2]
            mov EDI,EAX
            mov BYTE PTR [RSI+5],AL
            shr DI,8
            mov BYTE PTR [RSI+4],DIL
.L_4083a3:

            add R15,1
            add RSI,6
            cmp R11,R15
            je .L_408b88
.L_4083b4:

            movzx R9D,BYTE PTR [RSI]
            movzx R14D,BYTE PTR [RSI+1]
            movzx EBX,BYTE PTR [RSI+2]
            movzx EDI,BYTE PTR [RSI+3]
            movzx EBP,BYTE PTR [RSI+4]
            movzx R8D,BYTE PTR [RSI+5]
            mov R12D,R9D
            mov EAX,R14D
            shl R12D,8
            add R12D,R14D
            cmp WORD PTR [RDX+2],R12W
            jne .L_408350

            mov R12D,EBX
            movzx R14D,DIL
            shl R12D,8
            add R12D,R14D
            cmp WORD PTR [RDX+4],R12W
            jne .L_408350

            mov R14D,EBP
            movzx R12D,R8B
            shl R14D,8
            add R12D,R14D
            cmp WORD PTR [RDX+6],R12W
            jne .L_408350

            movzx EAX,BYTE PTR [R10+3]
            mov BYTE PTR [RSI],AL
            movzx EAX,WORD PTR [R10+2]
            mov BYTE PTR [RSI+1],AL
            movzx EAX,BYTE PTR [R10+5]
            mov BYTE PTR [RSI+2],AL
            movzx EAX,WORD PTR [R10+4]
            mov BYTE PTR [RSI+3],AL
            movzx EAX,BYTE PTR [R10+7]
            mov BYTE PTR [RSI+4],AL
            movzx EAX,WORD PTR [R10+6]
            mov BYTE PTR [RSI+5],AL
            jmp .L_4083a3
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_408450:

            test AL,AL
            jne .L_408220

            cmp BYTE PTR [RDI+17],16
            ja .L_408254

            movzx EAX,BYTE PTR [RDI+17]
            lea R8,QWORD PTR [RIP+.L_4138a0]
            movsxd RAX,DWORD PTR [R8+RAX*4]
            add RAX,R8
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
.L_408480:

            movzx EAX,AL
            imul R11,RAX
            add R11,7
            shr R11,3
            jmp .L_408250
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_408498:

            xor EBX,EBX
            test R11,R11
            mov RCX,RSI
            mov EBP,65535
            jne .L_4084f5

            jmp .L_408228
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4084b0:

            shr R9W,8
            mov BYTE PTR [RCX],R9B
            movzx EAX,WORD PTR [R10+2]
            mov BYTE PTR [RCX+1],AL
            movzx EAX,BYTE PTR [R10+5]
            mov BYTE PTR [RCX+2],AL
            movzx EAX,WORD PTR [R10+4]
            mov BYTE PTR [RCX+3],AL
            movzx EAX,BYTE PTR [R10+7]
            mov BYTE PTR [RCX+4],AL
            movzx EAX,WORD PTR [R10+6]
            mov BYTE PTR [RCX+5],AL
.L_4084e0:

            add RBX,1
            add RSI,8
            add RCX,6
            cmp R11,RBX
            je .L_408970
.L_4084f5:

            movzx EAX,BYTE PTR [RSI+6]
            movzx EDX,BYTE PTR [RSI+7]
            shl EAX,8
            add EAX,EDX
            cmp AX,-1
            je .L_408990

            test AX,AX
            movzx R9D,WORD PTR [R10+2]
            je .L_4084b0

            movzx R8D,BYTE PTR [RSI+2]
            movzx EDX,BYTE PTR [RSI+3]
            movzx EAX,AX
            movzx R12D,BYTE PTR [RSI+5]
            movzx R14D,BYTE PTR [RSI+1]
            mov R13,RBP
            sub R13,RAX
            imul R9,R13
            shl R8D,8
            add R8D,EDX
            movzx EDX,BYTE PTR [RSI+4]
            movzx R8D,R8W
            imul R8,RAX
            shl EDX,8
            add EDX,R12D
            movzx R12D,BYTE PTR [RSI]
            movzx EDX,DX
            shl R12D,8
            add R12D,R14D
            movzx R12D,R12W
            imul R12,RAX
            imul RAX,RDX
            lea R12,QWORD PTR [R12+R9*1+32768]
            mov R9,R12
            shr R9,16
            add R9,R12
            shr R9,16
            mov R12D,R9D
            mov BYTE PTR [RCX+1],R9B
            shr R12W,8
            mov BYTE PTR [RCX],R12B
            movzx R9D,WORD PTR [R10+4]
            imul R9,R13
            lea R9,QWORD PTR [R9+R8*1+32768]
            mov R8,R9
            shr R8,16
            add R8,R9
            shr R8,16
            mov R9D,R8D
            mov BYTE PTR [RCX+3],R8B
            shr R9W,8
            mov BYTE PTR [RCX+2],R9B
            movzx R8D,WORD PTR [R10+6]
            imul R13,R8
            lea RDX,QWORD PTR [R13+RAX*1+32768]
            mov RAX,RDX
            shr RAX,16
            add RAX,RDX
            shr RAX,16
            mov EDX,EAX
            mov BYTE PTR [RCX+5],AL
            shr DX,8
            mov BYTE PTR [RCX+4],DL
            jmp .L_4084e0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4085f0:

            xor R9D,R9D
            test R11,R11
            mov RCX,RSI
            mov EBX,65535
            jne .L_40862c

            jmp .L_408228
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408608:

            movzx EAX,BYTE PTR [R10+9]
            mov BYTE PTR [RCX],AL
            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RCX+1],AL
.L_408617:

            add R9,1
            add RSI,4
            add RCX,2
            cmp R11,R9
            je .L_408970
.L_40862c:

            movzx EAX,BYTE PTR [RSI+2]
            movzx EDX,BYTE PTR [RSI+3]
            shl EAX,8
            add EAX,EDX
            cmp AX,-1
            je .L_408980

            test AX,AX
            je .L_408608

            movzx EDX,BYTE PTR [RSI]
            movzx EBP,BYTE PTR [RSI+1]
            movzx EAX,AX
            mov R15,RBX
            sub R15,RAX
            shl EDX,8
            add EDX,EBP
            movzx EBP,WORD PTR [R8+8]
            movzx EDX,DX
            imul RDX,RAX
            mov RAX,R15
            imul RAX,RBP
            lea RDX,QWORD PTR [RDX+RAX*1+32768]
            mov RAX,RDX
            shr RAX,16
            add RAX,RDX
            shr RAX,16
            mov EDX,EAX
            mov BYTE PTR [RCX+1],AL
            shr DX,8
            mov BYTE PTR [RCX],DL
            jmp .L_408617
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408698:

            test R11,R11
            je .L_408254

            mov R9D,7
            xor EBX,EBX
            mov R12D,7
            mov EBP,32639
            jmp .L_4086d7
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
.L_4086c0:

            add RSI,1
            mov R9D,7
.L_4086ca:

            add RBX,1
            cmp R11,RBX
            je .L_408970
.L_4086d7:

            movzx EAX,BYTE PTR [RSI]
            mov ECX,R9D
            mov R8D,EAX
            sar EAX,CL
            movzx ECX,WORD PTR [RDX+8]
            and EAX,1
            cmp EAX,ECX
            jne .L_40870d

            mov ECX,R12D
            mov EAX,EBP
            sub ECX,R9D
            sar EAX,CL
            mov ECX,R9D
            and R8D,EAX
            mov BYTE PTR [RSI],R8B
            movzx EAX,WORD PTR [R10+8]
            shl EAX,CL
            or R8D,EAX
            mov BYTE PTR [RSI],R8B
.L_40870d:

            test R9D,R9D
            je .L_4086c0

            sub R9D,1
            jmp .L_4086ca
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408720:

            cmp QWORD PTR [RSP+72],0
            je .L_408927

            test R11,R11
            je .L_408254

            xor EBX,EBX
            mov RBP,QWORD PTR [RSP+72]
            jmp .L_40876d
          .byte 0x66
          .byte 0x90
.L_408740:

            sar EAX,CL
            cdqe 
            mov RAX,QWORD PTR [RBP+RAX*8]
            movzx EAX,WORD PTR [RAX+R9*2]
            mov R8D,EAX
            mov BYTE PTR [RSI+1],AL
            shr R8W,8
            mov BYTE PTR [RSI],R8B
.L_40875c:

            add RBX,1
            add RSI,2
            cmp R11,RBX
            je .L_408970
.L_40876d:

            movzx R9D,BYTE PTR [RSI]
            movzx R12D,BYTE PTR [RSI+1]
            mov R8D,R9D
            mov EAX,R12D
            shl R8D,8
            add R8D,R12D
            cmp WORD PTR [RDX+8],R8W
            jne .L_408740

            movzx EAX,BYTE PTR [R10+9]
            mov BYTE PTR [RSI],AL
            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI+1],AL
            jmp .L_40875c
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4087a0:

            test R9,R9
            je .L_4091a0

            test R11,R11
            je .L_408254

            lea R8,QWORD PTR [RSI+R11*1]
            jmp .L_4087d4
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4087c0:

            movzx EAX,BYTE PTR [R9+RCX*1]
            mov BYTE PTR [RSI],AL
.L_4087c7:

            add RSI,1
            cmp RSI,R8
            je .L_408970
.L_4087d4:

            movzx ECX,BYTE PTR [RSI]
            cmp CX,WORD PTR [RDX+8]
            jne .L_4087c0

            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI],AL
            jmp .L_4087c7
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
.L_4087f0:

            test R9,R9
            je .L_4090ab

            test R11,R11
            je .L_408254

            mov EBX,4
            xor EBP,EBP
            mov R13D,4
            mov R12D,3855
            jmp .L_408836
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408820:

            add RSI,1
            mov EBX,4
.L_408829:

            add RBP,1
            cmp R11,RBP
            je .L_408970
.L_408836:

            movzx EAX,BYTE PTR [RSI]
            mov ECX,EBX
            mov R15D,R12D
            mov R8D,EAX
            sar EAX,CL
            mov ECX,R13D
            sub ECX,EBX
            and EAX,15
            sar R15D,CL
            movzx ECX,WORD PTR [RDX+8]
            and R8D,R15D
            cmp EAX,ECX
            je .L_408d60

            mov ECX,EAX
            shl ECX,4
            or EAX,ECX
            mov ECX,EBX
            cdqe 
            movzx EAX,BYTE PTR [R9+RAX*1]
            shr AL,4
            movzx EAX,AL
            shl EAX,CL
            or EAX,R8D
            mov BYTE PTR [RSI],AL
.L_40887a:

            test EBX,EBX
            je .L_408820

            sub EBX,4
            jmp .L_408829
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408888:

            test R9,R9
            je .L_409128

            test R11,R11
            je .L_408254

            mov EBX,6
            xor EBP,EBP
            mov R13D,6
            mov R12D,16191
            jmp .L_4088c6
          .byte 0x90
.L_4088b0:

            add RSI,1
            mov EBX,6
.L_4088b9:

            add RBP,1
            cmp R11,RBP
            je .L_408970
.L_4088c6:

            movzx EAX,BYTE PTR [RSI]
            mov ECX,EBX
            mov R15D,R12D
            mov R8D,EAX
            sar EAX,CL
            mov ECX,R13D
            sub ECX,EBX
            and EAX,3
            sar R15D,CL
            movzx ECX,WORD PTR [RDX+8]
            and R8D,R15D
            cmp EAX,ECX
            je .L_408d48

            movzx EAX,AL
            lea ECX,DWORD PTR [RAX*4]
            mov R14D,EAX
            shl R14D,4
            or ECX,R14D
            or ECX,EAX
            shl EAX,6
            or EAX,ECX
            mov ECX,EBX
            cdqe 
            movzx EAX,BYTE PTR [R9+RAX*1]
            shr AL,6
            movzx EAX,AL
            shl EAX,CL
            or EAX,R8D
            mov BYTE PTR [RSI],AL
.L_40891e:

            test EBX,EBX
            je .L_4088b0

            sub EBX,2
            jmp .L_4088b9
.L_408927:

            xor R8D,R8D
            test R11,R11
            je .L_408254

            nop
            nop
            nop
            nop
            nop
.L_408938:

            movzx EAX,BYTE PTR [RSI]
            movzx ECX,BYTE PTR [RSI+1]
            shl EAX,8
            add EAX,ECX
            cmp WORD PTR [RDX+8],AX
            jne .L_408959

            movzx EAX,BYTE PTR [R10+9]
            mov BYTE PTR [RSI],AL
            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI+1],AL
.L_408959:

            add R8,1
            add RSI,2
            cmp R11,R8
            jne .L_408938

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
.L_408970:

            movzx EAX,BYTE PTR [RDI+16]
            mov EBX,EAX
            and EBX,4
            jmp .L_408220
          .byte 0x66
          .byte 0x90
.L_408980:

            movzx EAX,WORD PTR [RSI]
            mov WORD PTR [RCX],AX
            jmp .L_408617
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408990:

            mov EAX,DWORD PTR [RSI]
            mov DWORD PTR [RCX],EAX
            movzx EAX,WORD PTR [RSI+4]
            mov WORD PTR [RCX+4],AX
            jmp .L_4084e0
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4089a8:

            movzx R12D,BYTE PTR [RSI+1]
            mov RDX,QWORD PTR [RSP+88]
            movzx EAX,AX
            movzx R14D,BYTE PTR [RSI]
            mov R13,RBP
            sub R13,RAX
            sar R12D,CL
            movsxd R12,R12D
            mov R12,QWORD PTR [RDX+R12*8]
            movzx R14D,WORD PTR [R12+R14*2]
            movzx R12D,WORD PTR [R8+2]
            imul R14,RAX
            imul R12,R13
            lea R14,QWORD PTR [R14+R12*1+32768]
            mov R12,R14
            shr R12,16
            add R12,R14
            shr R12,16
            mov RDX,R12
            movzx R14D,R12B
            movzx EDX,DH
            sar R14D,CL
            mov R12,RDX
            mov RDX,QWORD PTR [RSP+80]
            movsxd R14,R14D
            mov R14,QWORD PTR [RDX+R14*8]
            mov RDX,QWORD PTR [RSP+88]
            movzx R12D,WORD PTR [R14+R12*2]
            mov R14D,R12D
            mov BYTE PTR [R9+1],R12B
            shr R14W,8
            mov BYTE PTR [R9],R14B
            movzx R12D,BYTE PTR [RSI+3]
            movzx R14D,BYTE PTR [RSI+2]
            sar R12D,CL
            movsxd R12,R12D
            mov R12,QWORD PTR [RDX+R12*8]
            movzx R14D,WORD PTR [R12+R14*2]
            movzx R12D,WORD PTR [R8+4]
            imul R14,RAX
            imul R12,R13
            lea R14,QWORD PTR [R14+R12*1+32768]
            mov R12,R14
            shr R12,16
            add R12,R14
            shr R12,16
            mov RDX,R12
            movzx R14D,R12B
            movzx EDX,DH
            sar R14D,CL
            mov R12,RDX
            mov RDX,QWORD PTR [RSP+80]
            movsxd R14,R14D
            mov R14,QWORD PTR [RDX+R14*8]
            mov RDX,QWORD PTR [RSP+88]
            movzx R12D,WORD PTR [R14+R12*2]
            mov R14D,R12D
            mov BYTE PTR [R9+3],R12B
            shr R14W,8
            mov BYTE PTR [R9+2],R14B
            movzx R12D,BYTE PTR [RSI+5]
            movzx R14D,BYTE PTR [RSI+4]
            sar R12D,CL
            movsxd R12,R12D
            mov R12,QWORD PTR [RDX+R12*8]
            mov RDX,QWORD PTR [RSP+80]
            movzx R12D,WORD PTR [R12+R14*2]
            imul RAX,R12
            movzx R12D,WORD PTR [R8+6]
            imul R13,R12
            lea R12,QWORD PTR [RAX+R13*1+32768]
            mov RAX,R12
            shr RAX,16
            add RAX,R12
            shr RAX,16
            movzx R12D,AL
            movzx EAX,AH
            sar R12D,CL
            movsxd R12,R12D
            mov R12,QWORD PTR [RDX+R12*8]
            movzx EAX,WORD PTR [R12+RAX*2]
            mov R12D,EAX
            shr R12W,8
            mov BYTE PTR [R9+4],R12B
            mov BYTE PTR [R9+5],AL
            jmp .L_40816e
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_408b08:

            movzx EBP,BYTE PTR [RSI+R9*4+1]
            mov R15,QWORD PTR [RSP+88]
            movzx EAX,AX
            movzx R12D,BYTE PTR [RSI+R9*4]
            sar EBP,CL
            movsxd RBP,EBP
            mov RBP,QWORD PTR [R15+RBP*8]
            mov R15,RBX
            sub R15,RAX
            movzx R12D,WORD PTR [RBP+R12*2]
            movzx EBP,WORD PTR [R8+8]
            imul R12,RAX
            mov RAX,R15
            mov R15,QWORD PTR [RSP+80]
            imul RAX,RBP
            lea RBP,QWORD PTR [R12+RAX*1+32768]
            mov RAX,RBP
            shr RAX,16
            add RAX,RBP
            shr RAX,16
            movzx EBP,AL
            movzx EAX,AH
            sar EBP,CL
            movsxd RBP,EBP
            mov RBP,QWORD PTR [R15+RBP*8]
            movzx EAX,WORD PTR [RBP+RAX*2]
            mov EBP,EAX
            mov BYTE PTR [RSI+R9*2+1],AL
            shr BP,8
            mov BYTE PTR [RSI+R9*2],BPL
            jmp .L_4082cc
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408b88:

            mov RDI,QWORD PTR [RSP-8]
            movzx EAX,BYTE PTR [RDI+16]
            mov EBX,EAX
            and EBX,4
            jmp .L_408220
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408ba0:

            test R9,R9
            je .L_409050

            test R11,R11
            je .L_408254

            lea RBP,QWORD PTR [R11+R11*2]
            add RBP,RSI
            jmp .L_408be4
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408bc0:

            movzx EAX,BYTE PTR [R9+RAX*1]
            mov BYTE PTR [RSI],AL
            movzx EAX,BYTE PTR [R9+RCX*1]
            mov BYTE PTR [RSI+1],AL
            movzx EAX,BYTE PTR [R9+R8*1]
            mov BYTE PTR [RSI+2],AL
.L_408bd7:

            add RSI,3
            cmp RSI,RBP
            je .L_408970
.L_408be4:

            movzx EBX,BYTE PTR [RSI]
            movzx ECX,BYTE PTR [RSI+1]
            cmp BX,WORD PTR [RDX+2]
            movzx R8D,BYTE PTR [RSI+2]
            mov RAX,RBX
            jne .L_408bc0

            movzx EBX,CL
            cmp BX,WORD PTR [RDX+4]
            jne .L_408bc0

            movzx EBX,R8B
            cmp BX,WORD PTR [RDX+6]
            jne .L_408bc0

            movzx EAX,WORD PTR [R10+2]
            mov BYTE PTR [RSI],AL
            movzx EAX,WORD PTR [R10+4]
            mov BYTE PTR [RSI+1],AL
            movzx EAX,WORD PTR [R10+6]
            mov BYTE PTR [RSI+2],AL
            jmp .L_408bd7
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408c28:

            cmp QWORD PTR [RSP+56],0
            setne BL
            test R9,R9
            setne CL
            test BL,CL
            je .L_408f50

            cmp QWORD PTR [RSP+64],0
            je .L_408f50

            test R11,R11
            je .L_408228

            xor EDX,EDX
            mov EBX,255
            jmp .L_408c7e
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408c60:

            test CX,CX
            jne .L_408d80

            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI+RDX*1],AL
.L_408c71:

            add RDX,1
            cmp R11,RDX
            je .L_408970
.L_408c7e:

            movzx ECX,BYTE PTR [RSI+RDX*2+1]
            cmp CX,255
            mov EAX,ECX
            jne .L_408c60

            movzx EAX,BYTE PTR [RSI+RDX*2]
            movzx EAX,BYTE PTR [R9+RAX*1]
            mov BYTE PTR [RSI+RDX*1],AL
            jmp .L_408c71
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408ca0:

            test R9,R9
            setne BL
            cmp QWORD PTR [RSP+56],0
            setne CL
            test BL,CL
            je .L_408e70

            cmp QWORD PTR [RSP+64],0
            je .L_408e70

            test R11,R11
            je .L_408228

            lea RBP,QWORD PTR [R11+R11*2]
            mov RBX,RSI
            mov R12D,255
            mov R15,RDI
            add RBP,RSI
            jmp .L_408d18
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408ce8:

            test DL,DL
            jne .L_408dc0

            movzx EAX,WORD PTR [R10+2]
            mov BYTE PTR [RBX],AL
            movzx EAX,WORD PTR [R10+4]
            mov BYTE PTR [RBX+1],AL
            movzx EAX,WORD PTR [R10+6]
            mov BYTE PTR [RBX+2],AL
.L_408d07:

            add RBX,3
            add RSI,4
            cmp RBX,RBP
            je .L_408210
.L_408d18:

            movzx EDX,BYTE PTR [RSI+3]
            cmp DL,255
            jne .L_408ce8

            movzx EAX,BYTE PTR [RSI]
            movzx EAX,BYTE PTR [R9+RAX*1]
            mov BYTE PTR [RBX],AL
            movzx EAX,BYTE PTR [RSI+1]
            movzx EAX,BYTE PTR [R9+RAX*1]
            mov BYTE PTR [RBX+1],AL
            movzx EAX,BYTE PTR [RSI+2]
            movzx EAX,BYTE PTR [R9+RAX*1]
            mov BYTE PTR [RBX+2],AL
            jmp .L_408d07
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408d48:

            mov BYTE PTR [RSI],R8B
            movzx EAX,WORD PTR [R10+8]
            mov ECX,EBX
            shl EAX,CL
            or R8D,EAX
            mov BYTE PTR [RSI],R8B
            jmp .L_40891e
          .byte 0x90
.L_408d60:

            mov BYTE PTR [RSI],R8B
            movzx EAX,WORD PTR [R10+8]
            mov ECX,EBX
            shl EAX,CL
            or R8D,EAX
            mov BYTE PTR [RSI],R8B
            jmp .L_40887a
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408d80:

            movzx EBP,BYTE PTR [RSI+RDX*2]
            mov R15,QWORD PTR [RSP+64]
            mul BYTE PTR [R15+RBP*1]
            mov R15D,EBX
            sub R15D,ECX
            movzx ECX,WORD PTR [R8+8]
            imul ECX,R15D
            lea EAX,DWORD PTR [RAX+RCX*1+128]
            movzx ECX,AH
            add RAX,RCX
            mov RCX,QWORD PTR [RSP+56]
            movzx EAX,AH
            movzx EAX,BYTE PTR [RCX+RAX*1]
            mov BYTE PTR [RSI+RDX*1],AL
            jmp .L_408c71
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408dc0:

            movzx R13D,BYTE PTR [RSI]
            mov RDI,QWORD PTR [RSP+64]
            movzx EAX,DL
            mov ECX,R12D
            sub ECX,EAX
            mov EAX,EDX
            mul BYTE PTR [RDI+R13*1]
            movzx R13D,WORD PTR [R8+2]
            imul R13D,ECX
            lea EAX,DWORD PTR [RAX+R13*1+128]
            movzx EDI,AH
            mov R13D,EDI
            mov RDI,QWORD PTR [RSP+56]
            add RAX,R13
            movzx EAX,AH
            movzx EAX,BYTE PTR [RDI+RAX*1]
            mov RDI,QWORD PTR [RSP+64]
            mov BYTE PTR [RBX],AL
            movzx R13D,BYTE PTR [RSI+1]
            mov EAX,EDX
            mul BYTE PTR [RDI+R13*1]
            movzx R13D,WORD PTR [R8+4]
            imul R13D,ECX
            lea EAX,DWORD PTR [RAX+R13*1+128]
            movzx EDI,AH
            mov R13D,EDI
            mov RDI,QWORD PTR [RSP+56]
            add RAX,R13
            movzx EAX,AH
            movzx EAX,BYTE PTR [RDI+RAX*1]
            mov RDI,QWORD PTR [RSP+64]
            mov BYTE PTR [RBX+1],AL
            movzx R13D,BYTE PTR [RSI+2]
            mov EAX,EDX
            imul CX,WORD PTR [R8+6]
            mul BYTE PTR [RDI+R13*1]
            mov RDI,QWORD PTR [RSP+56]
            lea EAX,DWORD PTR [RAX+RCX*1+128]
            movzx EDX,AH
            add RAX,RDX
            movzx EAX,AH
            movzx EAX,BYTE PTR [RDI+RAX*1]
            mov BYTE PTR [RBX+2],AL
            jmp .L_408d07
          .byte 0x90
.L_408e70:

            test R11,R11
            je .L_408228

            lea RBX,QWORD PTR [R11+R11*2]
            mov R8,RSI
            mov EBP,255
            add RBX,RSI
            jmp .L_408ebf
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408e90:

            test DL,DL
            movzx ECX,WORD PTR [R10+2]
            jne .L_408ee0

            mov BYTE PTR [R8],CL
            movzx EAX,WORD PTR [R10+4]
            mov BYTE PTR [R8+1],AL
            movzx EAX,WORD PTR [R10+6]
            mov BYTE PTR [R8+2],AL
.L_408eae:

            add R8,3
            add RSI,4
            cmp R8,RBX
            je .L_408970
.L_408ebf:

            movzx EDX,BYTE PTR [RSI+3]
            cmp DL,255
            jne .L_408e90

            movzx EAX,BYTE PTR [RSI]
            mov BYTE PTR [R8],AL
            movzx EAX,BYTE PTR [RSI+1]
            mov BYTE PTR [R8+1],AL
            movzx EAX,BYTE PTR [RSI+2]
            mov BYTE PTR [R8+2],AL
            jmp .L_408eae
.L_408ee0:

            movzx EAX,DL
            mov R9D,EBP
            sub R9D,EAX
            mov EAX,EDX
            mul BYTE PTR [RSI]
            imul ECX,R9D
            lea ECX,DWORD PTR [RAX+RCX*1+128]
            movzx EAX,CH
            add EAX,ECX
            movzx EAX,AH
            mov BYTE PTR [R8],AL
            movzx ECX,WORD PTR [R10+4]
            mov EAX,EDX
            mul BYTE PTR [RSI+1]
            imul ECX,R9D
            lea EAX,DWORD PTR [RAX+RCX*1+128]
            movzx ECX,AH
            add EAX,ECX
            movzx EAX,AH
            mov BYTE PTR [R8+1],AL
            mov EAX,EDX
            imul R9W,WORD PTR [R10+6]
            mul BYTE PTR [RSI+2]
            lea EAX,DWORD PTR [RAX+R9*1+128]
            movzx EDX,AH
            add EAX,EDX
            movzx EAX,AH
            mov BYTE PTR [R8+2],AL
            jmp .L_408eae
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408f50:

            xor ECX,ECX
            test R11,R11
            mov R9D,255
            jne .L_408f81

            jmp .L_408228
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408f68:

            test AL,AL
            jne .L_408f98

            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI+RCX*1],AL
.L_408f74:

            add RCX,1
            cmp R11,RCX
            je .L_408970
.L_408f81:

            movzx EAX,BYTE PTR [RSI+RCX*2+1]
            cmp AL,255
            jne .L_408f68

            movzx EAX,BYTE PTR [RSI+RCX*2]
            mov BYTE PTR [RSI+RCX*1],AL
            jmp .L_408f74
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408f98:

            movzx EDX,AL
            mov EBX,R9D
            sub EBX,EDX
            movzx EDX,WORD PTR [R8+8]
            mul BYTE PTR [RSI+RCX*2]
            imul EDX,EBX
            lea EAX,DWORD PTR [RDX+RAX*1+128]
            movzx EDX,AH
            add EAX,EDX
            mov BYTE PTR [RSI+RCX*1],AH
            jmp .L_408f74
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_408fc0:

            xor R8D,R8D
            test R11,R11
            jne .L_408fe1

            jmp .L_408254
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408fd0:

            add R8,1
            add RSI,6
            cmp R11,R8
            je .L_408970
.L_408fe1:

            movzx EAX,BYTE PTR [RSI]
            movzx ECX,BYTE PTR [RSI+1]
            shl EAX,8
            add EAX,ECX
            cmp WORD PTR [RDX+2],AX
            jne .L_408fd0

            movzx EAX,BYTE PTR [RSI+2]
            movzx ECX,BYTE PTR [RSI+3]
            shl EAX,8
            add EAX,ECX
            cmp WORD PTR [RDX+4],AX
            jne .L_408fd0

            movzx EAX,BYTE PTR [RSI+4]
            movzx ECX,BYTE PTR [RSI+5]
            shl EAX,8
            add EAX,ECX
            cmp WORD PTR [RDX+6],AX
            jne .L_408fd0

            movzx EAX,BYTE PTR [R10+3]
            mov BYTE PTR [RSI],AL
            movzx EAX,WORD PTR [R10+2]
            mov BYTE PTR [RSI+1],AL
            movzx EAX,BYTE PTR [R10+5]
            mov BYTE PTR [RSI+2],AL
            movzx EAX,WORD PTR [R10+4]
            mov BYTE PTR [RSI+3],AL
            movzx EAX,BYTE PTR [R10+7]
            mov BYTE PTR [RSI+4],AL
            movzx EAX,WORD PTR [R10+6]
            mov BYTE PTR [RSI+5],AL
            jmp .L_408fd0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409050:

            test R11,R11
            je .L_408254

            lea RCX,QWORD PTR [R11+R11*2]
            add RCX,RSI
            jmp .L_409075
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409068:

            add RSI,3
            cmp RSI,RCX
            je .L_408970
.L_409075:

            movzx EAX,BYTE PTR [RSI]
            cmp AX,WORD PTR [RDX+2]
            jne .L_409068

            movzx EAX,BYTE PTR [RSI+1]
            cmp AX,WORD PTR [RDX+4]
            jne .L_409068

            movzx EAX,BYTE PTR [RSI+2]
            cmp AX,WORD PTR [RDX+6]
            jne .L_409068

            movzx EAX,WORD PTR [R10+2]
            mov BYTE PTR [RSI],AL
            movzx EAX,WORD PTR [R10+4]
            mov BYTE PTR [RSI+1],AL
            movzx EAX,WORD PTR [R10+6]
            mov BYTE PTR [RSI+2],AL
            jmp .L_409068
.L_4090ab:

            xor EBX,EBX
            test R11,R11
            mov R9D,4
            mov R12D,4
            mov EBP,3855
            jne .L_4090e7

            jmp .L_408254
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4090d0:

            add RSI,1
            mov R9D,4
.L_4090da:

            add RBX,1
            cmp R11,RBX
            je .L_408970
.L_4090e7:

            movzx EAX,BYTE PTR [RSI]
            mov ECX,R9D
            mov R8D,EAX
            sar EAX,CL
            movzx ECX,WORD PTR [RDX+8]
            and EAX,15
            cmp EAX,ECX
            jne .L_40911d

            mov ECX,R12D
            mov EAX,EBP
            sub ECX,R9D
            sar EAX,CL
            mov ECX,R9D
            and R8D,EAX
            mov BYTE PTR [RSI],R8B
            movzx EAX,WORD PTR [R10+8]
            shl EAX,CL
            or R8D,EAX
            mov BYTE PTR [RSI],R8B
.L_40911d:

            test R9D,R9D
            je .L_4090d0

            sub R9D,4
            jmp .L_4090da
.L_409128:

            xor EBX,EBX
            test R11,R11
            mov R9D,6
            mov R12D,6
            mov EBP,16191
            jne .L_40915f

            jmp .L_408254
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_409148:

            add RSI,1
            mov R9D,6
.L_409152:

            add RBX,1
            cmp R11,RBX
            je .L_408970
.L_40915f:

            movzx EAX,BYTE PTR [RSI]
            mov ECX,R9D
            mov R8D,EAX
            sar EAX,CL
            movzx ECX,WORD PTR [RDX+8]
            and EAX,3
            cmp EAX,ECX
            jne .L_409195

            mov ECX,R12D
            mov EAX,EBP
            sub ECX,R9D
            sar EAX,CL
            mov ECX,R9D
            and R8D,EAX
            mov BYTE PTR [RSI],R8B
            movzx EAX,WORD PTR [R10+8]
            shl EAX,CL
            or R8D,EAX
            mov BYTE PTR [RSI],R8B
.L_409195:

            test R9D,R9D
            je .L_409148

            sub R9D,2
            jmp .L_409152
.L_4091a0:

            test R11,R11
            lea RCX,QWORD PTR [RSI+R11*1]
            je .L_408254

            nop
            nop
            nop
.L_4091b0:

            movzx EAX,BYTE PTR [RSI]
            cmp AX,WORD PTR [RDX+8]
            jne .L_4091c0

            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI],AL
.L_4091c0:

            add RSI,1
            cmp RSI,RCX
            jne .L_4091b0

            jmp .L_408970
.L_4091ce:

            nop
            nop
.L_4091d0:

            movzx R9D,BYTE PTR [RDI+17]
            mov RAX,RCX
            mov ECX,R8D
            mov R8,QWORD PTR [RDI]
            cmp R9B,8
            ja .L_4092b0

            test RDX,RDX
            je .L_4092f8

            movzx R10D,BYTE PTR [RDI+16]
            cmp R10B,2
            je .L_409398

            jbe .L_409300

            cmp R10B,4
            je .L_409348

            cmp R10B,6
            jne .L_409680
.L_40921a:

            cmp R9B,8
            je .L_4094e0

            xor EDI,EDI
            test R8,R8
            je .L_4096f0

            nop
.L_409230:

            movzx EDX,BYTE PTR [RSI+1]
            movzx R9D,BYTE PTR [RSI]
            add RDI,1
            add RSI,8
            sar EDX,CL
            movsxd RDX,EDX
            mov RDX,QWORD PTR [RAX+RDX*8]
            movzx EDX,WORD PTR [RDX+R9*2]
            mov BYTE PTR [RSI-7],DL
            mov R9D,EDX
            movzx EDX,BYTE PTR [RSI-5]
            shr R9W,8
            mov BYTE PTR [RSI-8],R9B
            movzx R9D,BYTE PTR [RSI-6]
            sar EDX,CL
            movsxd RDX,EDX
            mov RDX,QWORD PTR [RAX+RDX*8]
            movzx EDX,WORD PTR [RDX+R9*2]
            mov BYTE PTR [RSI-5],DL
            mov R9D,EDX
            movzx EDX,BYTE PTR [RSI-3]
            shr R9W,8
            mov BYTE PTR [RSI-6],R9B
            movzx R9D,BYTE PTR [RSI-4]
            sar EDX,CL
            movsxd RDX,EDX
            mov RDX,QWORD PTR [RAX+RDX*8]
            movzx EDX,WORD PTR [RDX+R9*2]
            mov R9D,EDX
            mov BYTE PTR [RSI-3],DL
            shr R9W,8
            mov BYTE PTR [RSI-4],R9B
            cmp R8,RDI
            jne .L_409230

            ret 
.L_4092b0:

            test RAX,RAX
            je .L_4092e8

            cmp R9B,16
            jne .L_4092f0

            movzx R10D,BYTE PTR [RDI+16]
            cmp R10B,2
            je .L_4093e0

            jbe .L_409470

            cmp R10B,4
            je .L_409348

            cmp R10B,6
            je .L_40921a

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4092e8:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4092f0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4092f8:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409300:

            test R10B,R10B
            jne .L_409688
.L_409309:

            cmp R9B,2
            push R14
.L_40930f:

            push R13
            push R12
            push RBP
            push RBX
            je .L_409520

            cmp R9B,4
            je .L_409480

            cmp R9B,8
            je .L_4096e0
.L_40932f:

            cmp R9B,16
            je .L_409690
.L_409339:

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
.L_409348:

            cmp R9B,8
            je .L_409650

            xor EDI,EDI
            test R8,R8
            je .L_4096f8

            nop
            nop
            nop
.L_409360:

            movzx EDX,BYTE PTR [RSI+1]
            movzx R9D,BYTE PTR [RSI]
            add RDI,1
            add RSI,4
            sar EDX,CL
            movsxd RDX,EDX
            mov RDX,QWORD PTR [RAX+RDX*8]
            movzx EDX,WORD PTR [RDX+R9*2]
            mov R9D,EDX
            mov BYTE PTR [RSI-3],DL
            shr R9W,8
            mov BYTE PTR [RSI-4],R9B
            cmp R8,RDI
            jne .L_409360

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_409398:

            cmp R9B,8
            jne .L_4093e0

            test R8,R8
            je .L_4092e8

            lea RCX,QWORD PTR [R8+R8*2]
            add RCX,RSI
            nop
            nop
.L_4093b0:

            movzx EAX,BYTE PTR [RSI]
            add RSI,3
            movzx EAX,BYTE PTR [RDX+RAX*1]
            mov BYTE PTR [RSI-3],AL
            movzx EAX,BYTE PTR [RSI-2]
            movzx EAX,BYTE PTR [RDX+RAX*1]
            mov BYTE PTR [RSI-2],AL
            movzx EAX,BYTE PTR [RSI-1]
            movzx EAX,BYTE PTR [RDX+RAX*1]
            mov BYTE PTR [RSI-1],AL
            cmp RSI,RCX
            jne .L_4093b0

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4093e0:

            xor EDI,EDI
            test R8,R8
            je .L_409700

            nop
            nop
            nop
            nop
            nop
.L_4093f0:

            movzx EDX,BYTE PTR [RSI+1]
            movzx R9D,BYTE PTR [RSI]
            add RDI,1
            add RSI,6
            sar EDX,CL
            movsxd RDX,EDX
            mov RDX,QWORD PTR [RAX+RDX*8]
            movzx EDX,WORD PTR [RDX+R9*2]
            mov BYTE PTR [RSI-5],DL
            mov R9D,EDX
            movzx EDX,BYTE PTR [RSI-3]
            shr R9W,8
            mov BYTE PTR [RSI-6],R9B
            movzx R9D,BYTE PTR [RSI-4]
            sar EDX,CL
            movsxd RDX,EDX
            mov RDX,QWORD PTR [RAX+RDX*8]
            movzx EDX,WORD PTR [RDX+R9*2]
            mov BYTE PTR [RSI-3],DL
            mov R9D,EDX
            movzx EDX,BYTE PTR [RSI-1]
            shr R9W,8
            mov BYTE PTR [RSI-4],R9B
            movzx R9D,BYTE PTR [RSI-2]
            sar EDX,CL
            movsxd RDX,EDX
            mov RDX,QWORD PTR [RAX+RDX*8]
            movzx EDX,WORD PTR [RDX+R9*2]
            mov R9D,EDX
            mov BYTE PTR [RSI-1],DL
            shr R9W,8
            mov BYTE PTR [RSI-2],R9B
            cmp R8,RDI
            jne .L_4093f0

            ret 
.L_409470:

            test R10B,R10B
            je .L_409309

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409480:

            test R8,R8
            je .L_409339
.L_409489:

            xor R9D,R9D
            nop
            nop
            nop
            nop
.L_409490:

            movzx ECX,BYTE PTR [RSI]
            add R9,2
            add RSI,1
            mov R10D,ECX
            mov EDI,ECX
            and R10D,240
            and EDI,15
            mov EAX,R10D
            mov ECX,EDI
            sar EAX,4
            shl ECX,4
            or EAX,R10D
            or ECX,EDI
            cdqe 
            movsxd RCX,ECX
            movzx EAX,BYTE PTR [RDX+RAX*1]
            movzx ECX,BYTE PTR [RDX+RCX*1]
            and EAX,4294967280
            shr CL,4
            or EAX,ECX
            mov BYTE PTR [RSI-1],AL
            cmp R8,R9
            ja .L_409490

            jmp .L_409339
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4094e0:

            test R8,R8
            je .L_4092e8

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
.L_4094f0:

            movzx ECX,BYTE PTR [RSI]
            add RAX,1
            add RSI,4
            movzx ECX,BYTE PTR [RDX+RCX*1]
            mov BYTE PTR [RSI-4],CL
            movzx ECX,BYTE PTR [RSI-3]
            movzx ECX,BYTE PTR [RDX+RCX*1]
            mov BYTE PTR [RSI-3],CL
            movzx ECX,BYTE PTR [RSI-2]
            movzx ECX,BYTE PTR [RDX+RCX*1]
            mov BYTE PTR [RSI-2],CL
            cmp R8,RAX
            jne .L_4094f0

            ret 
          .byte 0x90
.L_409520:

            test R8,R8
            je .L_409339

            mov R11,RSI
            xor EBX,EBX
            nop
            nop
.L_409530:

            movzx R9D,BYTE PTR [R11]
            mov EBP,R9D
            mov R13D,R9D
            mov R12D,R9D
            and EBP,192
            and R9D,3
            and R13D,48
            mov R10D,EBP
            mov R14D,EBP
            and R12D,12
            sar R14D,4
            sar R10D,2
            or R10D,R14D
            mov R14D,R9D
            or R10D,EBP
            sar EBP,6
            shl R14D,4
            or R10D,EBP
            mov EBP,R9D
            shl EBP,6
            movsxd R10,R10D
            or EBP,R14D
            movzx R10D,BYTE PTR [RDX+R10*1]
            or EBP,R9D
            shl R9D,2
            or EBP,R9D
            movsxd RBP,EBP
            movzx R9D,BYTE PTR [RDX+RBP*1]
            and R10D,4294967232
            lea EBP,DWORD PTR [R13*4]
            shr R9B,6
            or R10D,R9D
            mov R9D,R13D
            sar R9D,2
            or EBP,R9D
            or EBP,R13D
            sar R13D,4
            or EBP,R13D
            movsxd RBP,EBP
            movzx R9D,BYTE PTR [RDX+RBP*1]
            lea EBP,DWORD PTR [R12*4]
            shr R9B,2
            and R9D,48
            or R9D,R10D
            mov R10D,R12D
            shl R10D,4
            or R10D,EBP
            or R10D,R12D
            sar R12D,2
            or R10D,R12D
            movsxd R10,R10D
            movzx R10D,BYTE PTR [RDX+R10*1]
            shr R10B,4
            add RBX,4
            add R11,1
            and R10D,12
            or R9D,R10D
            mov BYTE PTR [R11-1],R9B
            cmp R8,RBX
            ja .L_409530

            movzx R9D,BYTE PTR [RDI+17]
            cmp R9B,4
            je .L_409489

            cmp R9B,8
            jne .L_40932f
.L_40962a:

            add R8,RSI
            nop
            nop
            nop
.L_409630:

            movzx EAX,BYTE PTR [RSI]
            add RSI,1
            movzx EAX,BYTE PTR [RDX+RAX*1]
            mov BYTE PTR [RSI-1],AL
            cmp RSI,R8
            jne .L_409630

            jmp .L_409339
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409650:

            test R8,R8
            je .L_4092e8

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
.L_409660:

            movzx ECX,BYTE PTR [RSI+RAX*2]
            movzx ECX,BYTE PTR [RDX+RCX*1]
            mov BYTE PTR [RSI+RAX*2],CL
            add RAX,1
            cmp R8,RAX
            jne .L_409660

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
.L_409680:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409688:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409690:

            test R8,R8
            je .L_409339

            xor EDI,EDI
            nop
            nop
            nop
            nop
            nop
.L_4096a0:

            movzx EDX,BYTE PTR [RSI+1]
            movzx R9D,BYTE PTR [RSI]
            add RDI,1
            add RSI,2
            sar EDX,CL
            movsxd RDX,EDX
            mov RDX,QWORD PTR [RAX+RDX*8]
            movzx EDX,WORD PTR [RDX+R9*2]
            mov R9D,EDX
            mov BYTE PTR [RSI-1],DL
            shr R9W,8
            mov BYTE PTR [RSI-2],R9B
            cmp R8,RDI
            jne .L_4096a0

            jmp .L_409339
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4096e0:

            test R8,R8
            jne .L_40962a

            jmp .L_409339
          .byte 0x66
          .byte 0x90
.L_4096f0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4096f8:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409700:

            ret 
.L_409702:

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
.L_409710:

            cmp BYTE PTR [RDI+16],3
            je .L_409720

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409720:

            mov R11,RCX
            movzx ECX,BYTE PTR [RDI+17]
            push R12
            mov R10,QWORD PTR [RDI]
            push RBP
            push RBX
.L_40972e:

            cmp CL,7
            ja .L_4097e0

            lea R9,QWORD PTR [R10-1]
            cmp CL,2
            lea RAX,QWORD PTR [RSI+R9*1]
            je .L_409870

            cmp CL,4
            je .L_409928

            cmp CL,1
            je .L_4098d0
.L_40975a:

            mov BYTE PTR [RDI+17],8
            mov BYTE PTR [RDI+19],8
            mov QWORD PTR [RDI+8],R10
.L_409766:

            test R11,R11
            je .L_409808

            test R10,R10
            lea RCX,QWORD PTR [RSI+R10*4-1]
            je .L_4097f0

            mov R9,RAX
            sub R9,R10
            jmp .L_4097c9
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409788:

            mov BYTE PTR [RCX],255
.L_40978b:

            movzx ESI,BYTE PTR [RAX]
            sub RAX,1
            sub RCX,4
            lea RSI,QWORD PTR [RSI+RSI*2]
            movzx ESI,BYTE PTR [RDX+RSI*1+2]
            mov BYTE PTR [RCX+3],SIL
            movzx ESI,BYTE PTR [RAX+1]
            lea RSI,QWORD PTR [RSI+RSI*2]
            movzx ESI,BYTE PTR [RDX+RSI*1+1]
            mov BYTE PTR [RCX+2],SIL
            movzx ESI,BYTE PTR [RAX+1]
            cmp RAX,R9
            lea RSI,QWORD PTR [RSI+RSI*2]
            movzx ESI,BYTE PTR [RDX+RSI*1]
            mov BYTE PTR [RCX+1],SIL
            je .L_4097f0
.L_4097c9:

            movzx EBX,BYTE PTR [RAX]
            cmp EBX,R8D
            jge .L_409788

            movzx ESI,BYTE PTR [R11+RBX*1]
            mov BYTE PTR [RCX],SIL
            jmp .L_40978b
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4097e0:

            cmp CL,8
            je .L_409980
.L_4097e9:

            pop RBX
.L_4097ea:

            pop RBP
            pop R12
            ret 
          .byte 0x66
          .byte 0x90
.L_4097f0:

            shl R10,2
            mov DWORD PTR [RDI+16],537135110
            pop RBX
            mov QWORD PTR [RDI+8],R10
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_409808:

            lea R8,QWORD PTR [R10+R10*2]
            test R10,R10
            lea RCX,QWORD PTR [RSI+R8*1-1]
            je .L_40985e

            mov R9,RAX
            sub R9,R10
            nop
            nop
            nop
            nop
.L_409820:

            movzx ESI,BYTE PTR [RAX]
            sub RAX,1
            sub RCX,3
            lea RSI,QWORD PTR [RSI+RSI*2]
            movzx ESI,BYTE PTR [RDX+RSI*1+2]
            mov BYTE PTR [RCX+3],SIL
            movzx ESI,BYTE PTR [RAX+1]
            lea RSI,QWORD PTR [RSI+RSI*2]
            movzx ESI,BYTE PTR [RDX+RSI*1+1]
            mov BYTE PTR [RCX+2],SIL
            movzx ESI,BYTE PTR [RAX+1]
            cmp RAX,R9
            lea RSI,QWORD PTR [RSI+RSI*2]
            movzx ESI,BYTE PTR [RDX+RSI*1]
            mov BYTE PTR [RCX+1],SIL
            jne .L_409820
.L_40985e:

            mov QWORD PTR [RDI+8],R8
            mov DWORD PTR [RDI+16],402851842
            jmp .L_4097e9
          .byte 0x66
          .byte 0x90
.L_409870:

            lea RCX,QWORD PTR [R10+3]
            shr R9,2
            add R9,RSI
            not RCX
            add RCX,RCX
            and ECX,6
            test R10,R10
            je .L_40975a

            lea R12,QWORD PTR [RSI-1]
            mov RBP,RAX
            jmp .L_4098b0
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
.L_4098a0:

            add ECX,2
.L_4098a3:

            sub RBP,1
            cmp RBP,R12
            je .L_40975a
.L_4098b0:

            movzx EBX,BYTE PTR [R9]
            sar EBX,CL
            and EBX,3
            cmp ECX,6
            mov BYTE PTR [RBP],BL
            jne .L_4098a0

            sub R9,1
            xor ECX,ECX
            jmp .L_4098a3
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4098d0:

            lea ECX,DWORD PTR [R10+7]
            shr R9,3
            lea R12,QWORD PTR [RSI-1]
            add R9,RSI
            mov RBP,RAX
            not ECX
            and ECX,7
            test R10,R10
            jne .L_409908

            jmp .L_40975a
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4098f8:

            add ECX,1
.L_4098fb:

            sub RBP,1
            cmp RBP,R12
            je .L_40975a
.L_409908:

            movzx EBX,BYTE PTR [R9]
            sar EBX,CL
            and EBX,1
            cmp ECX,7
            mov BYTE PTR [RBP],BL
            jne .L_4098f8

            sub R9,1
            xor ECX,ECX
            jmp .L_4098fb
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409928:

            lea RCX,QWORD PTR [R10*4]
            shr R9,1
            lea RBP,QWORD PTR [RSI+R9*1]
            and ECX,4
            test R10,R10
            je .L_40975a

            lea R12,QWORD PTR [RSI-1]
            mov RBX,RAX
            jmp .L_409960
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_409950:

            add ECX,4
.L_409953:

            sub RBX,1
            cmp RBX,R12
            je .L_40975a
.L_409960:

            movzx R9D,BYTE PTR [RBP]
            sar R9D,CL
            and R9D,15
            cmp ECX,4
            mov BYTE PTR [RBX],R9B
            jne .L_409950

            sub RBP,1
            xor ECX,ECX
            jmp .L_409953
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_409980:

            lea RAX,QWORD PTR [RSI+R10*1-1]
            jmp .L_409766
.L_40998a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_409990:

            movzx EAX,BYTE PTR [RDI+16]
            push R13
            mov R10,QWORD PTR [RDI]
            push R12
            push RBP
            push RBX
.L_40999d:

            test AL,AL
            jne .L_409a00

            test RDX,RDX
            movzx EAX,BYTE PTR [RDI+17]
            je .L_409a40

            cmp AL,7
            movzx R11D,WORD PTR [RDX+8]
            jbe .L_409b08

            cmp AL,8
            je .L_409b28

            cmp AL,16
            je .L_409a70
.L_4099cb:

            add EAX,EAX
            mov BYTE PTR [RDI+16],4
            mov BYTE PTR [RDI+18],2
            cmp AL,7
            mov BYTE PTR [RDI+19],AL
            ja .L_409a2f
.L_4099dc:

            movzx EAX,AL
            imul RAX,R10
            add RAX,7
            shr RAX,3
.L_4099eb:

            mov QWORD PTR [RDI+8],RAX
.L_4099ef:

            pop RBX
.L_4099f0:

            pop RBP
            pop R12
            pop R13
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
.L_409a00:

            test RDX,RDX
            je .L_4099ef

            cmp AL,2
            jne .L_4099ef

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,8
            je .L_409c18

            cmp AL,16
            je .L_409d98
.L_409a1d:

            shl EAX,2
            mov BYTE PTR [RDI+16],6
            mov BYTE PTR [RDI+18],4
            cmp AL,7
            mov BYTE PTR [RDI+19],AL
            jbe .L_4099dc
.L_409a2f:

            shr AL,3
            movzx EAX,AL
            imul RAX,R10
            jmp .L_4099eb
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409a40:

            cmp AL,7
            ja .L_4099ef

            cmp AL,2
            je .L_409cb0

            cmp AL,4
            je .L_409d30

            cmp AL,1
            je .L_409ca0

            mov BYTE PTR [RDI+17],8
            mov BYTE PTR [RDI+19],8
            mov QWORD PTR [RDI+8],R10
            jmp .L_4099ef
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409a70:

            mov EAX,R11D
            test R10,R10
            movzx EBX,AH
            mov RAX,QWORD PTR [RDI+8]
            lea RDX,QWORD PTR [RSI+RAX*1-1]
            lea RAX,QWORD PTR [RSI+RAX*2-1]
            je .L_409e90

            xor ECX,ECX
            jmp .L_409abf
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409a98:

            mov BYTE PTR [RAX],255
            mov BYTE PTR [RAX-1],255
.L_409a9f:

            movzx ESI,BYTE PTR [RDX]
            sub RDX,2
            add RCX,1
            sub RAX,4
            mov BYTE PTR [RAX+2],SIL
            movzx ESI,BYTE PTR [RDX+1]
            cmp R10,RCX
            mov BYTE PTR [RAX+1],SIL
            je .L_409af8
.L_409abf:

            cmp BYTE PTR [RDX-1],BL
            jne .L_409a98

            cmp BYTE PTR [RDX],R11B
            jne .L_409a98

            mov BYTE PTR [RAX],0
            mov BYTE PTR [RAX-1],0
            jmp .L_409a9f
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409ad8:

            test RDX,RDX
            mov BYTE PTR [RDI+17],8
            mov BYTE PTR [RDI+19],8
            mov QWORD PTR [RDI+8],0
            je .L_4099ef

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_409af8:

            movzx EAX,BYTE PTR [RDI+17]
            jmp .L_4099cb
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409b08:

            cmp AL,2
            je .L_409e78

            cmp AL,4
            je .L_409e60

            cmp AL,1
            je .L_409b80

            mov BYTE PTR [RDI+17],8
            mov BYTE PTR [RDI+19],8
            mov QWORD PTR [RDI+8],R10
.L_409b28:

            test R10,R10
            movzx R11D,R11B
            lea RDX,QWORD PTR [RSI+R10*1-1]
            lea RAX,QWORD PTR [RSI+R10*2-1]
            je .L_409af8

            nop
            nop
            nop
            nop
            nop
.L_409b40:

            mov RSI,RDX
            sub RSI,R10
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
.L_409b50:

            movzx ECX,BYTE PTR [RDX]
            cmp CX,R11W
            sete CL
            sub RDX,1
            sub RAX,2
            sub ECX,1
            mov BYTE PTR [RAX+2],CL
            movzx ECX,BYTE PTR [RDX+1]
            cmp RSI,RDX
            mov BYTE PTR [RAX+1],CL
            jne .L_409b50

            movzx EAX,BYTE PTR [RDI+17]
            jmp .L_4099cb
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_409b80:

            mov ECX,R11D
            and ECX,1
            mov R11D,ECX
            shl R11D,8
            sub R11D,ECX
.L_409b90:

            lea R9,QWORD PTR [R10-1]
            lea ECX,DWORD PTR [R10+7]
            mov RBX,R9
            not ECX
            lea R8,QWORD PTR [RSI+R9*1]
            shr RBX,3
            and ECX,7
            add RBX,RSI
            test R10,R10
            je .L_409ad8

            lea RBP,QWORD PTR [RSI-1]
            jmp .L_409bcc
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409bc0:

            add ECX,1
.L_409bc3:

            sub R8,1
            cmp R8,RBP
            je .L_409bf0
.L_409bcc:

            movzx EAX,BYTE PTR [RBX]
            sar EAX,CL
            shl EAX,7
            sar AL,7
            cmp ECX,7
            mov BYTE PTR [R8],AL
            jne .L_409bc0

            sub RBX,1
            xor ECX,ECX
            jmp .L_409bc3
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409bf0:

            test RDX,RDX
            mov BYTE PTR [RDI+17],8
            mov BYTE PTR [RDI+19],8
            mov QWORD PTR [RDI+8],R10
            je .L_4099ef

            lea RDX,QWORD PTR [RSI+R9*1]
            lea RAX,QWORD PTR [RSI+R10*2-1]
            jmp .L_409b40
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409c18:

            movzx R8D,BYTE PTR [RDX+2]
            movzx R9D,BYTE PTR [RDX+4]
            lea R11,QWORD PTR [R10*4]
            movzx EBX,BYTE PTR [RDX+6]
            mov RDX,QWORD PTR [RDI+8]
            test R10,R10
            lea RCX,QWORD PTR [RSI+R11*1-1]
            lea RDX,QWORD PTR [RSI+RDX*1-1]
            je .L_409eb0

            mov RSI,R10
            sub RSI,R11
            add RSI,RDX
            jmp .L_409c74
.L_409c50:

            mov BYTE PTR [RCX],255
.L_409c53:

            movzx EAX,BYTE PTR [RDX]
            sub RDX,3
            sub RCX,4
            mov BYTE PTR [RCX+3],AL
            movzx EAX,BYTE PTR [RDX+2]
            mov BYTE PTR [RCX+2],AL
            movzx EAX,BYTE PTR [RDX+1]
            cmp RDX,RSI
            mov BYTE PTR [RCX+1],AL
            je .L_409c90
.L_409c74:

            cmp BYTE PTR [RDX-2],R8B
            jne .L_409c50

            cmp BYTE PTR [RDX-1],R9B
            jne .L_409c50

            cmp BYTE PTR [RDX],BL
            jne .L_409c50

            mov BYTE PTR [RCX],0
            jmp .L_409c53
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409c90:

            movzx EAX,BYTE PTR [RDI+17]
            jmp .L_409a1d
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409ca0:

            xor R11D,R11D
            jmp .L_409b90
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409cb0:

            xor R11D,R11D
.L_409cb3:

            lea R9,QWORD PTR [R10-1]
            lea RCX,QWORD PTR [R10+3]
            mov RBX,R9
            not RCX
            lea RAX,QWORD PTR [RSI+R9*1]
            shr RBX,2
            add RCX,RCX
            add RBX,RSI
            and ECX,6
            test R10,R10
            je .L_409ad8

            lea RBP,QWORD PTR [RSI-1]
            jmp .L_409cf8
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409ce8:

            add ECX,2
.L_409ceb:

            sub RAX,1
            cmp RAX,RBP
            je .L_409bf0
.L_409cf8:

            movzx R8D,BYTE PTR [RBX]
            sar R8D,CL
            and R8D,3
            lea R12D,DWORD PTR [R8*4]
            mov R13D,R8D
            shl R13D,4
            or R12D,R13D
            or R12D,R8D
            shl R8D,6
            or R8D,R12D
            cmp ECX,6
            mov BYTE PTR [RAX],R8B
            jne .L_409ce8

            sub RBX,1
            xor ECX,ECX
            jmp .L_409ceb
          .byte 0x90
.L_409d30:

            xor R11D,R11D
.L_409d33:

            lea R9,QWORD PTR [R10-1]
            mov ECX,R10D
            and ECX,1
            mov RBP,R9
            shl ECX,2
            lea R8,QWORD PTR [RSI+R9*1]
            shr RBP,1
            add RBP,RSI
            test R10,R10
            je .L_409ad8

            lea R12,QWORD PTR [RSI-1]
            jmp .L_409d72
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_409d60:

            mov ECX,4
.L_409d65:

            sub R8,1
            cmp R8,R12
            je .L_409bf0
.L_409d72:

            movzx EAX,BYTE PTR [RBP]
            sar EAX,CL
            and EAX,15
            mov EBX,EAX
            shl EBX,4
            or EAX,EBX
            cmp ECX,4
            mov BYTE PTR [R8],AL
            jne .L_409d60

            sub RBP,1
            xor ECX,ECX
            jmp .L_409d65
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409d98:

            movzx ECX,WORD PTR [RDX+4]
            movzx R8D,WORD PTR [RDX+2]
            test R10,R10
            movzx EDX,WORD PTR [RDX+6]
            movzx EBP,CH
            mov EBX,R8D
            mov R9D,ECX
            mov R13D,EBP
            mov R11D,EDX
            movzx EBP,DH
            mov RDX,QWORD PTR [RDI+8]
            movzx EBX,BH
            mov R12D,EBP
            lea RCX,QWORD PTR [RSI+RDX*1-1]
            lea RDX,QWORD PTR [RSI+R10*8-1]
            je .L_409eb0

            xor EAX,EAX
            jmp .L_409e2b
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409de0:

            mov BYTE PTR [RDX],255
            mov BYTE PTR [RDX-1],255
.L_409de7:

            movzx ESI,BYTE PTR [RCX]
            sub RCX,6
            add RAX,1
            sub RDX,8
            mov BYTE PTR [RDX+6],SIL
            movzx ESI,BYTE PTR [RCX+5]
            mov BYTE PTR [RDX+5],SIL
            movzx ESI,BYTE PTR [RCX+4]
            mov BYTE PTR [RDX+4],SIL
            movzx ESI,BYTE PTR [RCX+3]
            mov BYTE PTR [RDX+3],SIL
            movzx ESI,BYTE PTR [RCX+2]
            mov BYTE PTR [RDX+2],SIL
            movzx ESI,BYTE PTR [RCX+1]
            cmp R10,RAX
            mov BYTE PTR [RDX+1],SIL
            je .L_409c90
.L_409e2b:

            cmp BYTE PTR [RCX-5],BL
            jne .L_409de0

            cmp BYTE PTR [RCX-4],R8B
            jne .L_409de0

            cmp BYTE PTR [RCX-3],R13B
            jne .L_409de0

            cmp BYTE PTR [RCX-2],R9B
            jne .L_409de0

            cmp BYTE PTR [RCX-1],R12B
            jne .L_409de0

            cmp BYTE PTR [RCX],R11B
            jne .L_409de0

            mov BYTE PTR [RDX],0
            mov BYTE PTR [RDX-1],0
            jmp .L_409de7
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
.L_409e60:

            and R11D,15
            mov EAX,R11D
            shl EAX,4
            add R11D,EAX
            jmp .L_409d33
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409e78:

            and R11D,3
            lea ECX,DWORD PTR [R11+R11*4]
            mov R11D,ECX
            shl R11D,4
            add R11D,ECX
            jmp .L_409cb3
          .byte 0x90
.L_409e90:

            mov EAX,8194
            mov BYTE PTR [RDI+16],4
            mov WORD PTR [RDI+18],AX
            mov EAX,32
            jmp .L_409a2f
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409eb0:

            shl EAX,2
            mov BYTE PTR [RDI+16],6
            mov BYTE PTR [RDI+18],4
            mov BYTE PTR [RDI+19],AL
            jmp .L_409a2f
.L_409ec3:

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
.L_409ed0:

            movzx EAX,BYTE PTR [RDI+16]
            mov R8,QWORD PTR [RDI]
            cmp AL,2
            je .L_409f88

            cmp AL,6
            je .L_409f00

            test RCX,RCX
            je .L_409ef6

            cmp AL,3
            jne .L_409ef6

            cmp BYTE PTR [RDI+17],8
            je .L_409ff0
.L_409ef6:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409f00:

            test RDX,RDX
            je .L_409ef6

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,8
            jne .L_409ef6

            test R8,R8
            je .L_40a018

            xor ECX,ECX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_409f20:

            movzx EAX,BYTE PTR [RSI+RCX*4]
            movzx R9D,BYTE PTR [RSI+RCX*4+1]
            sar EAX,3
            sar R9D,3
            shl R9D,5
            shl EAX,10
            or EAX,R9D
            movzx R9D,BYTE PTR [RSI+RCX*4+2]
            sar R9D,3
            or EAX,R9D
            cdqe 
            movzx EAX,BYTE PTR [RDX+RAX*1]
            mov BYTE PTR [RSI+RCX*1],AL
            add RCX,1
            cmp R8,RCX
            jne .L_409f20
.L_409f5a:

            movzx EAX,BYTE PTR [RDI+17]
            mov BYTE PTR [RDI+16],3
            mov BYTE PTR [RDI+18],1
            cmp AL,7
            mov BYTE PTR [RDI+19],AL
            ja .L_40a025

            imul R8,RAX
            add R8,7
            shr R8,3
.L_409f7d:

            mov QWORD PTR [RDI+8],R8
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409f88:

            test RDX,RDX
            je .L_409ef6

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,8
            jne .L_409ef6

            test R8,R8
            je .L_40a018

            lea R10,QWORD PTR [R8+R8*2]
            mov R9,RSI
            add R10,RSI
            nop
            nop
            nop
            nop
.L_409fb0:

            movzx EAX,BYTE PTR [RSI]
            movzx ECX,BYTE PTR [RSI+1]
            add RSI,3
            add R9,1
            sar EAX,3
            sar ECX,3
            shl ECX,5
            shl EAX,10
            or EAX,ECX
            movzx ECX,BYTE PTR [RSI-1]
            sar ECX,3
            or EAX,ECX
            cdqe 
            movzx EAX,BYTE PTR [RDX+RAX*1]
            mov BYTE PTR [R9-1],AL
            cmp RSI,R10
            jne .L_409fb0

            jmp .L_409f5a
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409ff0:

            test R8,R8
            je .L_409ef6

            add R8,RSI
            nop
            nop
            nop
            nop
.L_40a000:

            movzx EAX,BYTE PTR [RSI]
            add RSI,1
            movzx EAX,BYTE PTR [RCX+RAX*1]
            mov BYTE PTR [RSI-1],AL
            cmp RSI,R8
            jne .L_40a000

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40a018:

            mov EDX,2049
            mov BYTE PTR [RDI+16],3
            mov WORD PTR [RDI+18],DX
.L_40a025:

            shr AL,3
            movzx EAX,AL
            imul R8,RAX
            jmp .L_409f7d
.L_40a034:

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
.L_40a040:

            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,72
.L_40a049:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+56],RAX
            xor EAX,EAX
            cmp QWORD PTR [RDI+528],0
            je .L_40a6c8
.L_40a067:

            test BYTE PTR [RBX+288],64
            je .L_40a418
.L_40a074:

            mov RAX,QWORD PTR [RBX+296]
            test AH,16
            je .L_40a0be

            cmp BYTE PTR [RBX+584],3
            lea RBP,QWORD PTR [RBX+568]
            je .L_40a5f8

            cmp WORD PTR [RBX+618],0
            mov RCX,QWORD PTR [RBX+528]
            lea RSI,QWORD PTR [RCX+1]
            je .L_40a0b4

            test EAX,33554432
            jne .L_40a6b0
.L_40a0b4:

            xor EDX,EDX
            mov RDI,RBP
            call .L_409990
.L_40a0be:

            mov RDX,QWORD PTR [RBX+288]
            and EDX,4194304
            jne .L_40a5c0
.L_40a0d1:

            mov RDX,QWORD PTR [RBX+296]
            test EDX,6291456
            mov RAX,RDX
            jne .L_40a540
.L_40a0e7:

            test DH,64
            je .L_40a0f9

            test BYTE PTR [RBX+281],8
            je .L_40a630
.L_40a0f9:

            test DL,128
            je .L_40a250

            cmp WORD PTR [RBX+618],0
            jne .L_40a2d0

            movzx ECX,BYTE PTR [RBX+630]
            test CL,4
            jne .L_40a2d0

            test DH,32
            je .L_40a133
.L_40a125:

            test CL,4
            je .L_40a260

            nop
            nop
.L_40a130:

            mov RAX,RDX
.L_40a133:

            test AH,4
            je .L_40a145

            cmp BYTE PTR [RBX+585],16
            je .L_40a688
.L_40a145:

            test AL,64
            jne .L_40a500
.L_40a14d:

            test AL,32
            jne .L_40a4d8
.L_40a155:

            test AL,8
            jne .L_40a4a8
.L_40a15d:

            test AL,4
            jne .L_40a480
.L_40a165:

            test AL,1
            jne .L_40a458
.L_40a16d:

            test EAX,65536
            jne .L_40a430
.L_40a178:

            test AH,64
            je .L_40a18a

            test BYTE PTR [RBX+281],8
            jne .L_40a660
.L_40a18a:

            test AH,128
            jne .L_40a368

            test EAX,524288
            jne .L_40a39f
.L_40a19e:

            test EAX,131072
            jne .L_40a3c8
.L_40a1a9:

            test AL,16
            jne .L_40a3ee
.L_40a1b1:

            test EAX,1048576
            je .L_40a230

            mov RAX,QWORD PTR [RBX+248]
            test RAX,RAX
            je .L_40a1db

            mov RCX,QWORD PTR [RBX+528]
            lea RSI,QWORD PTR [RBX+568]
            mov RDI,RBX
            lea RDX,QWORD PTR [RCX+1]
            call RAX
.L_40a1db:

            movzx EAX,BYTE PTR [RBX+272]
            test AL,AL
            jne .L_40a2a8

            movzx EDX,BYTE PTR [RBX+273]
            movzx EAX,BYTE PTR [RBX+585]
            test DL,DL
            jne .L_40a2bd
.L_40a200:

            movzx EDX,BYTE PTR [RBX+586]
.L_40a207:

            imul EAX,EDX
            mov RDX,QWORD PTR [RBX+568]
            cmp AL,7
            mov BYTE PTR [RBX+587],AL
            jbe .L_40a5e0

            shr AL,3
            movzx EAX,AL
            imul RAX,RDX
.L_40a229:

            mov QWORD PTR [RBX+576],RAX
.L_40a230:

            mov RAX,QWORD PTR [RSP+56]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40a76b

            add RSP,72
.L_40a248:

            pop RBX
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a250:

            test DH,32
            je .L_40a133
.L_40a259:

            movzx ECX,BYTE PTR [RBX+630]
.L_40a260:

            cmp CL,3
            je .L_40a130

            mov RAX,QWORD PTR [RBX+528]
            mov RCX,QWORD PTR [RBX+736]
            lea RDI,QWORD PTR [RBX+568]
            mov RDX,QWORD PTR [RBX+712]
            mov R8D,DWORD PTR [RBX+696]
            lea RSI,QWORD PTR [RAX+1]
            call .L_4091d0

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40a133
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a2a8:

            movzx EDX,BYTE PTR [RBX+273]
            mov BYTE PTR [RBX+585],AL
            test DL,DL
            je .L_40a200
.L_40a2bd:

            mov BYTE PTR [RBX+586],DL
            jmp .L_40a207
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a2d0:

            mov RAX,QWORD PTR [RBX+528]
            mov R9,QWORD PTR [RBX+712]
            lea RDX,QWORD PTR [RBX+784]
            lea RCX,QWORD PTR [RBX+648]
            lea RDI,QWORD PTR [RBX+568]
            lea R8,QWORD PTR [RBX+658]
            lea RSI,QWORD PTR [RAX+1]
            mov EAX,DWORD PTR [RBX+696]
            push RAX
.L_40a305:

            push QWORD PTR [RBX+752]
            push QWORD PTR [RBX+744]
            push QWORD PTR [RBX+736]
            push QWORD PTR [RBX+728]
            push QWORD PTR [RBX+720]
            call .L_408090

            mov RDX,QWORD PTR [RBX+296]
            add RSP,48
.L_40a333:

            test DH,32
            mov RAX,RDX
            je .L_40a133

            test DL,128
            je .L_40a259

            cmp WORD PTR [RBX+618],0
            jne .L_40a130

            movzx ECX,BYTE PTR [RBX+630]
            jmp .L_40a125
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a368:

            mov RAX,QWORD PTR [RBX+528]
            movzx EDX,WORD PTR [RBX+638]
            lea RDI,QWORD PTR [RBX+568]
            mov RCX,QWORD PTR [RBX+288]
            lea RSI,QWORD PTR [RAX+1]
            call .L_407340

            mov RAX,QWORD PTR [RBX+296]
            test EAX,524288
            je .L_40a19e
.L_40a39f:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_407280

            mov RAX,QWORD PTR [RBX+296]
            test EAX,131072
            je .L_40a1a9
.L_40a3c8:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_407140

            mov RAX,QWORD PTR [RBX+296]
            test AL,16
            je .L_40a1b1
.L_40a3ee:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_403520

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40a1b1
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a418:

            lea RSI,QWORD PTR [RIP+.L_4139a4]
            mov RDI,RBX
            call .L_40c520

            jmp .L_40a074
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40a430:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_403570

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40a178
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a458:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_4038f0

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40a16d
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a480:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_406d90

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40a165
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a4a8:

            mov RAX,QWORD PTR [RBX+528]
            lea RDX,QWORD PTR [RBX+765]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_406ef0

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40a15d
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a4d8:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_403490

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40a155
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a500:

            mov RAX,QWORD PTR [RBX+528]
            mov RCX,QWORD PTR [RBX+968]
            lea RDI,QWORD PTR [RBX+568]
            mov RDX,QWORD PTR [RBX+960]
            lea RSI,QWORD PTR [RAX+1]
            call .L_409ed0

            cmp QWORD PTR [RBX+576],0
            je .L_40a710
.L_40a533:

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40a14d
          .byte 0x90
.L_40a540:

            mov RAX,QWORD PTR [RBX+528]
            lea RSI,QWORD PTR [RBX+568]
            mov RDI,RBX
            lea RDX,QWORD PTR [RAX+1]
            call .L_407930

            test EAX,EAX
            je .L_40a5a8

            mov RDX,QWORD PTR [RBX+296]
            mov BYTE PTR [RBX+1032],1
            mov RCX,RDX
            mov RAX,RDX
            and ECX,6291456
            cmp RCX,4194304
            je .L_40a728
.L_40a585:

            cmp RCX,2097152
            jne .L_40a0e7

            lea RSI,QWORD PTR [RIP+.L_413840]
            mov RDI,RBX
            call .L_40c520

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40a5a8:

            mov RDX,QWORD PTR [RBX+296]
            mov RAX,RDX
            jmp .L_40a0e7
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a5c0:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            or DL,128
            lea RSI,QWORD PTR [RAX+1]
            call .L_4035d0

            jmp .L_40a0d1
          .byte 0x90
.L_40a5e0:

            movzx EAX,AL
            imul RAX,RDX
            add RAX,7
            shr RAX,3
            jmp .L_40a229
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40a5f8:

            mov RDX,QWORD PTR [RBX+608]
            test RDX,RDX
            je .L_40a750
.L_40a608:

            mov RAX,QWORD PTR [RBX+528]
            movzx R8D,WORD PTR [RBX+618]
            mov RDI,RBP
            mov RCX,QWORD PTR [RBX+776]
            lea RSI,QWORD PTR [RAX+1]
            call .L_409710

            jmp .L_40a0be
          .byte 0x90
.L_40a630:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_407720

            mov RDX,QWORD PTR [RBX+296]
            mov RAX,RDX
            jmp .L_40a0f9
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
.L_40a660:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_407720

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40a18a
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a688:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_405ce0

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40a145
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a6b0:

            lea RDX,QWORD PTR [RBX+784]
            mov RDI,RBP
            call .L_409990

            jmp .L_40a0be
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40a6c8:

            movzx EAX,BYTE PTR [RDI+628]
            mov RBP,RSP
            mov R9,QWORD PTR [RDI+512]
            sub RSP,8
.L_40a6dd:

            lea R8,QWORD PTR [RIP+.L_4137f0]
            mov EDX,1
            mov ECX,50
            mov ESI,50
            mov RDI,RBP
            push RAX
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RSI,RBP
            mov RDI,RBX
            call .L_40c520

            pop RAX
            pop RDX
            jmp .L_40a067
.L_40a710:

            lea RSI,QWORD PTR [RIP+.L_413868]
            mov RDI,RBX
            call .L_40c520

            jmp .L_40a533
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40a728:

            lea RSI,QWORD PTR [RIP+.L_413840]
            mov RDI,RBX
            call .L_40c5f0

            mov RDX,QWORD PTR [RBX+296]
            mov RCX,RDX
            mov RAX,RDX
            and ECX,6291456
            jmp .L_40a585
          .byte 0x90
.L_40a750:

            lea RSI,QWORD PTR [RIP+.L_413818]
            mov RDI,RBX
            call .L_40c520

            mov RDX,QWORD PTR [RBX+608]
            jmp .L_40a608
.L_40a76b:

            call __stack_chk_fail@PLT
.L_40a770:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            pxor XMM1,XMM1
            sub RSP,88
.L_40a785:

            cmp BYTE PTR [RDI+631],8
            movss XMM0,DWORD PTR [RDI+704]
            cvtss2sd XMM1,XMM0
            ja .L_40a853

            movsd XMM7,QWORD PTR [RIP+.L_4139e8]
            ucomisd XMM1,XMM7
            movsd QWORD PTR [RSP+64],XMM7
            ja .L_40aca4

            movsd XMM7,QWORD PTR [RIP+.L_4139b8]
            movsd QWORD PTR [RSP+56],XMM7
            movsd QWORD PTR [RSP],XMM7
.L_40a7c9:

            mov ESI,256
            mov RDI,RBX
            xor EBP,EBP
            call .L_40c040

            movsd XMM7,QWORD PTR [RIP+.L_4139e0]
            mov QWORD PTR [RBX+712],RAX
            movsd QWORD PTR [RSP+8],XMM7
            nop
            nop
            nop
.L_40a7f0:

            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP]
            cvtsi2sd XMM0,EBP
            divsd XMM0,QWORD PTR [RIP+.L_4139f0]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_4139f0]
            mov RDX,QWORD PTR [RBX+712]
            addsd XMM0,QWORD PTR [RSP+8]
            cvttsd2si EAX,XMM0
            mov BYTE PTR [RDX+RBP*1],AL
            add RBP,1
            cmp RBP,256
            jne .L_40a7f0

            test QWORD PTR [RBX+296],6291584
            jne .L_40ae60
.L_40a844:

            add RSP,88
.L_40a848:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_40a853:

            mov RAX,QWORD PTR [RDI+296]
            and EAX,1024
            test BYTE PTR [RDI+630],2
            jne .L_40ac5c

            movzx EDI,BYTE PTR [RDI+763]
            mov DWORD PTR [RSP+24],EDI
.L_40a877:

            mov EDI,DWORD PTR [RSP+24]
            test EDI,EDI
            je .L_40accc

            mov EDX,16
            sub EDX,DWORD PTR [RSP+24]
            cmp EDX,4
            jg .L_40a89a
.L_40a891:

            test RAX,RAX
            jne .L_40af94
.L_40a89a:

            cmp EDX,8
            jle .L_40ad26

            mov EBP,1
            mov QWORD PTR [RSP+48],8
            mov R12D,1
            xor R15D,R15D
            mov DWORD PTR [RSP+24],8
.L_40a8c2:

            movsd XMM7,QWORD PTR [RIP+.L_4139e8]
            mov EAX,DWORD PTR [RSP+24]
            ucomisd XMM1,XMM7
            mov DWORD PTR [RBX+696],EAX
            movsd QWORD PTR [RSP+64],XMM7
            jbe .L_40ae47

            mulss XMM0,DWORD PTR [RBX+700]
            movsd XMM7,QWORD PTR [RIP+.L_4139b8]
            movsd QWORD PTR [RSP+56],XMM7
            cvtss2sd XMM0,XMM0
            divsd XMM7,XMM0
            movsd QWORD PTR [RSP+16],XMM7
.L_40a908:

            mov RSI,QWORD PTR [RSP+48]
            mov RDI,RBX
            call .L_40c0d0

            test QWORD PTR [RBX+296],1152
            lea EDX,DWORD PTR [RBP-1]
            mov QWORD PTR [RBX+736],RAX
            mov DWORD PTR [RSP+76],EDX
            je .L_40ad75

            lea R13,QWORD PTR [RDX*8+8]
            xor R14D,R14D
            jmp .L_40a948
.L_40a941:

            mov RAX,QWORD PTR [RBX+736]
.L_40a948:

            lea RBP,QWORD PTR [RAX+R14*1]
            mov ESI,512
            mov RDI,RBX
            add R14,8
            call .L_40c040

            cmp R13,R14
            mov QWORD PTR [RBP],RAX
            jne .L_40a941

            movsd XMM5,QWORD PTR [RSP+56]
            movzx ECX,BYTE PTR [RSP+24]
            shl R12,8
            mov QWORD PTR [RSP+32],R12
            mov R8D,255
            xor R13D,R13D
            divsd XMM5,QWORD PTR [RSP+16]
            xor R14D,R14D
            movabs RBP,-9223372036854775808
            sar R8D,CL
            mov R12D,R8D
            movsd QWORD PTR [RSP],XMM5
            movsd XMM5,QWORD PTR [RIP+.L_4139e0]
            movsd QWORD PTR [RSP+8],XMM5
            pxor XMM5,XMM5
            cvtsi2sd XMM5,QWORD PTR [RSP+32]
            movsd QWORD PTR [RSP+16],XMM5
.L_40a9c0:

            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP]
            cvtsi2sd XMM0,R14D
            addsd XMM0,QWORD PTR [RSP+8]
            mulsd XMM0,QWORD PTR [RIP+.L_4139f8]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RSP+16]
            ucomisd XMM0,QWORD PTR [RIP+.L_413a00]
            jae .L_40ad60

            cvttsd2si RAX,XMM0
.L_40a9fa:

            cmp RAX,R13
            jb .L_40aa33

            mov ESI,R14D
            mov RDI,QWORD PTR [RBX+736]
            shl ESI,8
            or ESI,R14D
            nop
.L_40aa10:

            mov EDX,R12D
            mov R9,R13
            mov ECX,R15D
            and EDX,R13D
            shr R9,CL
            add R13,1
            mov RDX,QWORD PTR [RDI+RDX*8]
            movsxd RCX,R9D
            cmp RAX,R13
            mov WORD PTR [RDX+RCX*2],SI
            jae .L_40aa10
.L_40aa33:

            add R14D,1
            cmp R14D,256
            jne .L_40a9c0

            cmp QWORD PTR [RSP+32],R13
            jbe .L_40aa77

            mov RSI,QWORD PTR [RBX+736]
            nop
            nop
.L_40aa50:

            mov RDX,R13
            mov ECX,R15D
            mov EAX,R12D
            and EAX,R13D
            shr RDX,CL
            add R13,1
            cmp QWORD PTR [RSP+32],R13
            mov RAX,QWORD PTR [RSI+RAX*8]
            mov ECX,4294967295
            mov WORD PTR [RAX+RDX*2],CX
            jne .L_40aa50
.L_40aa77:

            test QWORD PTR [RBX+296],6291584
            je .L_40a844

            pxor XMM0,XMM0
            mov RSI,QWORD PTR [RSP+48]
            mov RDI,RBX
            movsd XMM5,QWORD PTR [RSP+56]
            lea R15,QWORD PTR [RIP+.L_413980]
            xor R12D,R12D
            cvtss2sd XMM0,DWORD PTR [RBX+700]
            divsd XMM5,XMM0
            movsd QWORD PTR [RSP+16],XMM5
            call .L_40c0d0

            mov EDX,DWORD PTR [RSP+76]
            movsd XMM7,QWORD PTR [RIP+.L_413a08]
            mov QWORD PTR [RBX+752],RAX
            movsd QWORD PTR [RSP],XMM7
            lea RDI,QWORD PTR [RDX+1]
            mov QWORD PTR [RSP+40],RDI
            movsxd RDI,DWORD PTR [RSP+24]
            mov QWORD PTR [RSP+32],RDI
.L_40aae6:

            lea R13,QWORD PTR [R12*8]
            mov ESI,512
            mov RDI,RBX
            lea RBP,QWORD PTR [RAX+R13*1]
            call .L_40c040

            mov QWORD PTR [RBP],RAX
            mov RAX,QWORD PTR [RSP+32]
            xor EBP,EBP
            movsxd RAX,DWORD PTR [R15+RAX*4]
            mov RCX,RAX
            mov QWORD PTR [RSP+24],RAX
            imul RCX,R12
            shr RCX,4
            mov R14,RCX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ab28:

            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP+16]
            cvtsi2sd XMM0,R14
            add R14,256
            divsd XMM0,QWORD PTR [RSP]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RSP]
            mov RAX,QWORD PTR [RBX+752]
            mov RSI,QWORD PTR [RAX+R13*1]
            addsd XMM0,QWORD PTR [RSP+8]
            cvttsd2si EDX,XMM0
            mov WORD PTR [RSI+RBP*1],DX
            add RBP,2
            cmp RBP,512
            jne .L_40ab28

            add R12,1
            cmp QWORD PTR [RSP+40],R12
            jne .L_40aae6

            pxor XMM0,XMM0
            cvtss2sd XMM0,DWORD PTR [RBX+704]
            ucomisd XMM0,QWORD PTR [RSP+64]
            jbe .L_40af7d

            movsd XMM7,QWORD PTR [RSP+56]
            divsd XMM7,XMM0
            movsd QWORD PTR [RSP+16],XMM7
.L_40abaa:

            mov RSI,QWORD PTR [RSP+48]
            mov RDI,RBX
            lea R14,QWORD PTR [R12*8]
            xor R13D,R13D
            xor R12D,R12D
            call .L_40c0d0

            mov QWORD PTR [RBX+744],RAX
.L_40abcc:

            lea RBP,QWORD PTR [RAX+R12*1]
            mov ESI,512
            mov RDI,RBX
            mov R15,R13
            call .L_40c040

            shr R15,4
            mov QWORD PTR [RBP],RAX
            xor EBP,EBP
            nop
            nop
            nop
            nop
            nop
            nop
.L_40abf0:

            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP+16]
            cvtsi2sd XMM0,R15
            add R15,256
            divsd XMM0,QWORD PTR [RSP]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RSP]
            mov RAX,QWORD PTR [RBX+744]
            mov RCX,QWORD PTR [RAX+R12*1]
            addsd XMM0,QWORD PTR [RSP+8]
            cvttsd2si EDX,XMM0
            mov WORD PTR [RCX+RBP*1],DX
            add RBP,2
            cmp RBP,512
            jne .L_40abf0

            add R12,8
            add R13,QWORD PTR [RSP+24]
            cmp R14,R12
            jne .L_40abcc

            add RSP,88
.L_40ac51:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_40ac5c:

            movzx EDX,BYTE PTR [RDI+761]
            movzx R14D,BYTE PTR [RDI+760]
            cmp R14B,DL
            cmovb R14D,EDX
            movzx EDX,BYTE PTR [RBX+762]
            movzx EDI,R14B
            mov DWORD PTR [RSP+24],EDI
            cmp EDX,EDI
            jle .L_40a877

            mov DWORD PTR [RSP+24],EDX
            mov EDX,16
            sub EDX,DWORD PTR [RSP+24]
            cmp EDX,4
            jle .L_40a891

            jmp .L_40a89a
.L_40aca4:

            mulss XMM0,DWORD PTR [RDI+700]
            movsd XMM7,QWORD PTR [RIP+.L_4139b8]
            movsd QWORD PTR [RSP+56],XMM7
            cvtss2sd XMM0,XMM0
            divsd XMM7,XMM0
            movsd QWORD PTR [RSP],XMM7
            jmp .L_40a7c9
.L_40accc:

            cmp RAX,1
            sbb RSI,RSI
            and ESI,1984
            add RSI,64
            cmp RAX,1
            sbb R12,R12
            mov QWORD PTR [RSP+48],RSI
            and R12D,248
            add R12,8
            cmp RAX,1
            sbb EBP,EBP
            and EBP,248
            add EBP,8
            cmp RAX,1
            sbb R15D,R15D
            and R15D,5
            add R15D,3
            test RAX,RAX
            mov EAX,5
            cmove EAX,EDI
            mov DWORD PTR [RSP+24],EAX
            jmp .L_40a8c2
.L_40ad26:

            test EDX,EDX
            mov R14D,0
            mov R15D,8
            cmovns R14D,EDX
            mov EBP,1
            sub R15D,R14D
            mov DWORD PTR [RSP+24],R14D
            mov ECX,R15D
            shl EBP,CL
            movsxd R12,EBP
            lea RAX,QWORD PTR [R12*8]
            mov QWORD PTR [RSP+48],RAX
            jmp .L_40a8c2
          .byte 0x90
.L_40ad60:

            subsd XMM0,QWORD PTR [RIP+.L_413a00]
            cvttsd2si RAX,XMM0
            xor RAX,RBP
            jmp .L_40a9fa
.L_40ad75:

            lea RDI,QWORD PTR [RDX+1]
            movsd XMM7,QWORD PTR [RIP+.L_4139e0]
            movsd XMM5,QWORD PTR [RIP+.L_413a08]
            lea R15,QWORD PTR [RIP+.L_413980]
            mov QWORD PTR [RSP+40],RDI
            movsxd RDI,DWORD PTR [RSP+24]
            movsd QWORD PTR [RSP+8],XMM7
            movsd QWORD PTR [RSP],XMM5
            xor R13D,R13D
            mov QWORD PTR [RSP+32],RDI
            nop
            nop
            nop
.L_40adb0:

            lea R12,QWORD PTR [R13*8]
            mov ESI,512
            mov RDI,RBX
            lea RBP,QWORD PTR [RAX+R12*1]
            call .L_40c040

            mov QWORD PTR [RBP],RAX
            mov RAX,QWORD PTR [RSP+32]
            xor EBP,EBP
            movsxd RCX,DWORD PTR [R15+RAX*4]
            imul RCX,R13
            shr RCX,4
            mov R14,RCX
            nop
            nop
            nop
            nop
            nop
.L_40ade8:

            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP+16]
            cvtsi2sd XMM0,R14
            add R14,256
            divsd XMM0,QWORD PTR [RSP]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RSP]
            mov RAX,QWORD PTR [RBX+736]
            mov RSI,QWORD PTR [RAX+R12*1]
            addsd XMM0,QWORD PTR [RSP+8]
            cvttsd2si EDX,XMM0
            mov WORD PTR [RSI+RBP*1],DX
            add RBP,2
            cmp RBP,512
            jne .L_40ade8

            add R13,1
            cmp QWORD PTR [RSP+40],R13
            jne .L_40adb0

            jmp .L_40aa77
.L_40ae47:

            movsd XMM7,QWORD PTR [RIP+.L_4139b8]
            movsd QWORD PTR [RSP+56],XMM7
            movsd QWORD PTR [RSP+16],XMM7
            jmp .L_40a908
.L_40ae60:

            pxor XMM0,XMM0
            mov ESI,256
            movsd XMM7,QWORD PTR [RSP+56]
            mov RDI,RBX
            xor EBP,EBP
            cvtss2sd XMM0,DWORD PTR [RBX+700]
            divsd XMM7,XMM0
            movsd QWORD PTR [RSP],XMM7
            call .L_40c040

            mov QWORD PTR [RBX+728],RAX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ae98:

            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP]
            cvtsi2sd XMM0,EBP
            divsd XMM0,QWORD PTR [RIP+.L_4139f0]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_4139f0]
            mov RDX,QWORD PTR [RBX+728]
            addsd XMM0,QWORD PTR [RSP+8]
            cvttsd2si EAX,XMM0
            mov BYTE PTR [RDX+RBP*1],AL
            add RBP,1
            cmp RBP,256
            jne .L_40ae98

            mov ESI,256
            mov RDI,RBX
            call .L_40c040

            pxor XMM0,XMM0
            mov QWORD PTR [RBX+720],RAX
            cvtss2sd XMM0,DWORD PTR [RBX+704]
            ucomisd XMM0,QWORD PTR [RSP+64]
            jbe .L_40af6a

            movsd XMM5,QWORD PTR [RSP+56]
            divsd XMM5,XMM0
            movsd QWORD PTR [RSP],XMM5
.L_40af12:

            xor EBP,EBP
            nop
            nop
            nop
            nop
.L_40af18:

            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP]
            cvtsi2sd XMM0,EBP
            divsd XMM0,QWORD PTR [RIP+.L_4139f0]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_4139f0]
            mov RDX,QWORD PTR [RBX+720]
            addsd XMM0,QWORD PTR [RSP+8]
            cvttsd2si EAX,XMM0
            mov BYTE PTR [RDX+RBP*1],AL
            add RBP,1
            cmp RBP,256
            jne .L_40af18

            add RSP,88
.L_40af5f:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_40af6a:

            pxor XMM7,XMM7
            cvtss2sd XMM7,DWORD PTR [RBX+700]
            movsd QWORD PTR [RSP],XMM7
            jmp .L_40af12
.L_40af7d:

            pxor XMM7,XMM7
            cvtss2sd XMM7,DWORD PTR [RBX+700]
            movsd QWORD PTR [RSP+16],XMM7
            jmp .L_40abaa
.L_40af94:

            mov EBP,8
            mov QWORD PTR [RSP+48],64
            mov R12D,8
            mov R15D,3
            mov DWORD PTR [RSP+24],5
            jmp .L_40a8c2
.L_40afbb:

            nop
            nop
            nop
            nop
            nop
.L_40afc0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,56
.L_40afd1:

            mov RAX,QWORD PTR [RDI+296]
            movzx EBP,BYTE PTR [RDI+630]
            mov RCX,RAX
            mov RSI,RAX
            and ECX,4352
            test AH,1
            mov EDX,EBP
            je .L_40b090

            test BPL,2
            jne .L_40b090

            or QWORD PTR [RDI+280],2048
            cmp RCX,4352
            je .L_40b530

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40b020:

            mov RAX,QWORD PTR [RBX+648]
            cmp EBP,3
            mov QWORD PTR [RBX+658],RAX
            movzx EAX,WORD PTR [RBX+656]
            mov WORD PTR [RBX+666],AX
            je .L_40b220
.L_40b045:

            test ESI,6299648
            je .L_40b064

            pxor XMM0,XMM0
            ucomiss XMM0,DWORD PTR [RBX+700]
            jp .L_40b2c0

            jne .L_40b2c0
.L_40b064:

            test SIL,128
            je .L_40b110

            cmp EBP,3
            je .L_40b578
.L_40b077:

            add RSP,56
.L_40b07b:

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
.L_40b090:

            mov RDI,RAX
            and EDI,16768
            cmp RDI,16512
            je .L_40b1e0
.L_40b0a6:

            cmp RCX,4352
            jne .L_40b020

            and EDX,2
            je .L_40b530

            cmp EBP,3
            je .L_40b740

            mov RAX,QWORD PTR [RBX+648]
            mov QWORD PTR [RBX+658],RAX
            movzx EAX,WORD PTR [RBX+656]
            mov WORD PTR [RBX+666],AX
            jmp .L_40b045
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
.L_40b0f0:

            mov EBP,DWORD PTR [RSP+44]
.L_40b0f4:

            mov RSI,QWORD PTR [RBX+296]
            and RSI,-8321
            or RSI,262144
            mov QWORD PTR [RBX+296],RSI
.L_40b110:

            mov RAX,RSI
            and EAX,4104
            cmp RAX,8
            jne .L_40b077

            cmp EBP,3
            jne .L_40b077
.L_40b12b:

            movzx EAX,BYTE PTR [RBX+760]
            mov R8D,8
            movzx EDX,WORD PTR [RBX+616]
            mov R9D,R8D
            mov R10D,R8D
            sub R9D,EAX
            movzx EAX,BYTE PTR [RBX+761]
            sub R10D,EAX
            movzx EAX,BYTE PTR [RBX+762]
            sub R8D,EAX
            xor EAX,EAX
            cmp R9D,9
            cmovae R9D,EAX
            cmp R10D,9
            cmovae R10D,EAX
            cmp R8D,9
            cmovae R8D,EAX
            test DX,DX
            je .L_40b1c6

            mov RAX,QWORD PTR [RBX+608]
            sub EDX,1
            movzx EDX,DX
            lea R11,QWORD PTR [RDX+RDX*2]
            lea RDI,QWORD PTR [RAX+3]
            add R11,RDI
            jmp .L_40b19c
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40b198:

            add RDI,3
.L_40b19c:

            movzx EDX,BYTE PTR [RAX]
            mov ECX,R9D
            sar EDX,CL
            mov ECX,R10D
            mov BYTE PTR [RAX],DL
            movzx EDX,BYTE PTR [RAX+1]
            sar EDX,CL
            mov ECX,R8D
            mov BYTE PTR [RAX+1],DL
            movzx EDX,BYTE PTR [RAX+2]
            sar EDX,CL
            cmp RDI,R11
            mov BYTE PTR [RAX+2],DL
            mov RAX,RDI
            jne .L_40b198
.L_40b1c6:

            and RSI,-9
            mov QWORD PTR [RBX+296],RSI
            add RSP,56
.L_40b1d5:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_40b1e0:

            movzx EDI,WORD PTR [RBX+650]
            cmp DI,WORD PTR [RBX+652]
            jne .L_40b0a6

            cmp DI,WORD PTR [RBX+654]
            jne .L_40b0a6

            or QWORD PTR [RBX+280],2048
            mov WORD PTR [RBX+656],DI
            jmp .L_40b0a6
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b220:

            movzx EDX,WORD PTR [RBX+618]
.L_40b227:

            test DX,DX
            je .L_40b045

            movss XMM0,DWORD PTR [RBX+704]
            mulss XMM0,DWORD PTR [RBX+700]
            movsd XMM1,QWORD PTR [RIP+.L_4139c0]
            cvtss2sd XMM0,XMM0
            subsd XMM0,QWORD PTR [RIP+.L_4139b8]
            andpd XMM0,XMMWORD PTR [RIP+.L_413a10]
            ucomisd XMM1,XMM0
            jbe .L_40b045

            mov RAX,QWORD PTR [RBX+776]
            movzx EDI,BYTE PTR [RAX]
            lea ECX,DWORD PTR [RDI-1]
            cmp CL,253
            jbe .L_40b045

            lea ECX,DWORD PTR [RDX-1]
            add RAX,1
            add RCX,RAX
            jmp .L_40b2a3
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b290:

            movzx EDI,BYTE PTR [RAX]
            add RAX,1
            lea EDX,DWORD PTR [RDI-1]
            cmp DL,253
            jbe .L_40b045
.L_40b2a3:

            cmp RCX,RAX
            jne .L_40b290

            and RSI,-8193
            mov QWORD PTR [RBX+296],RSI
            jmp .L_40b045
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b2c0:

            mov RDI,RBX
            call .L_40a770

            mov RSI,QWORD PTR [RBX+296]
            test SIL,128
            je .L_40b6c8

            cmp EBP,3
            movzx EDX,BYTE PTR [RBX+640]
            je .L_40b938

            movzx ECX,BYTE PTR [RBX+631]
            mov EAX,1
            shl RAX,CL
            sub RAX,1
            js .L_40b910

            pxor XMM2,XMM2
            cvtsi2sd XMM2,RAX
            movsd QWORD PTR [RSP+8],XMM2
.L_40b311:

            cmp DL,2
            je .L_40bc78

            cmp DL,3
            je .L_40bc30

            cmp DL,1
            je .L_40bc0a

            movsd XMM2,QWORD PTR [RIP+.L_4139b8]
            movsd QWORD PTR [RSP+32],XMM2
            movsd QWORD PTR [RSP+24],XMM2
.L_40b340:

            movzx EAX,WORD PTR [RBX+656]
            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP+24]
            cvtsi2sd XMM0,EAX
            divsd XMM0,QWORD PTR [RSP+8]
            call pow@PLT

            movsd XMM6,QWORD PTR [RSP+8]
            movsd XMM7,QWORD PTR [RIP+.L_4139e0]
            mulsd XMM0,XMM6
            movsd XMM1,QWORD PTR [RSP+32]
            movsd QWORD PTR [RSP+16],XMM7
            addsd XMM0,XMM7
            cvttsd2si EAX,XMM0
            pxor XMM0,XMM0
            mov WORD PTR [RBX+666],AX
            movzx EAX,WORD PTR [RBX+656]
            cvtsi2sd XMM0,EAX
            divsd XMM0,XMM6
            call pow@PLT

            mulsd XMM0,QWORD PTR [RSP+8]
            movzx EAX,WORD PTR [RBX+650]
            cmp AX,WORD PTR [RBX+652]
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si EDX,XMM0
            mov WORD PTR [RBX+656],DX
            jne .L_40b3de

            cmp WORD PTR [RBX+654],AX
            jne .L_40b3de

            cmp AX,DX
            je .L_40bdb1
.L_40b3de:

            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP+24]
            cvtsi2sd XMM0,EAX
            divsd XMM0,QWORD PTR [RSP+8]
            call pow@PLT

            movsd XMM4,QWORD PTR [RSP+8]
            movsd XMM1,QWORD PTR [RSP+24]
            mulsd XMM0,XMM4
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si EAX,XMM0
            pxor XMM0,XMM0
            mov WORD PTR [RBX+660],AX
            movzx EAX,WORD PTR [RBX+652]
            cvtsi2sd XMM0,EAX
            divsd XMM0,XMM4
            call pow@PLT

            movsd XMM4,QWORD PTR [RSP+8]
            movsd XMM1,QWORD PTR [RSP+24]
            mulsd XMM0,XMM4
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si EAX,XMM0
            pxor XMM0,XMM0
            mov WORD PTR [RBX+662],AX
            movzx EAX,WORD PTR [RBX+654]
            cvtsi2sd XMM0,EAX
            divsd XMM0,XMM4
            call pow@PLT

            movsd XMM4,QWORD PTR [RSP+8]
            movsd XMM1,QWORD PTR [RSP+32]
            mulsd XMM0,XMM4
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si EAX,XMM0
            pxor XMM0,XMM0
            mov WORD PTR [RBX+664],AX
            movzx EAX,WORD PTR [RBX+650]
            cvtsi2sd XMM0,EAX
            divsd XMM0,XMM4
            call pow@PLT

            movsd XMM4,QWORD PTR [RSP+8]
            movsd XMM1,QWORD PTR [RSP+32]
            mulsd XMM0,XMM4
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si EAX,XMM0
            pxor XMM0,XMM0
            mov WORD PTR [RBX+650],AX
            movzx EAX,WORD PTR [RBX+652]
            cvtsi2sd XMM0,EAX
            divsd XMM0,XMM4
            call pow@PLT

            movsd XMM4,QWORD PTR [RSP+8]
            movsd XMM1,QWORD PTR [RSP+32]
            mulsd XMM0,XMM4
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si EAX,XMM0
            pxor XMM0,XMM0
            mov WORD PTR [RBX+652],AX
            movzx EAX,WORD PTR [RBX+654]
            cvtsi2sd XMM0,EAX
            divsd XMM0,XMM4
            call pow@PLT

            mulsd XMM0,QWORD PTR [RSP+8]
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si EAX,XMM0
            mov WORD PTR [RBX+654],AX
            jmp .L_40b077
.L_40b530:

            cmp BYTE PTR [RBX+631],16
            ja .L_40b56c

            movzx EDX,BYTE PTR [RBX+631]
            lea RCX,QWORD PTR [RIP+.L_4138e4]
            movsxd RDX,DWORD PTR [RCX+RDX*4]
            add RDX,RCX
            jmp RDX
.L_40b550:

            movzx EDX,WORD PTR [RBX+656]
            mov WORD PTR [RBX+654],DX
            mov WORD PTR [RBX+652],DX
            mov WORD PTR [RBX+650],DX
.L_40b56c:

            mov RSI,RAX
            jmp .L_40b020
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40b578:

            movzx EAX,WORD PTR [RBX+618]
            movzx R11D,WORD PTR [RBX+650]
            movzx R10D,WORD PTR [RBX+652]
            movzx R9D,WORD PTR [RBX+654]
            mov RDX,QWORD PTR [RBX+608]
            test AX,AX
            mov EBP,R11D
            mov R12D,R10D
            mov R13D,R9D
            je .L_40b68f

            sub EAX,1
            mov RCX,QWORD PTR [RBX+776]
            mov R8D,255
            lea RAX,QWORD PTR [RAX+RAX*2]
            movzx R11D,R11B
            movzx R10D,R10B
            movzx R9D,R9B
            mov R15,RSI
            lea RDI,QWORD PTR [RDX+RAX*1+3]
            jmp .L_40b5fc
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b5e0:

            mov BYTE PTR [RDX],BPL
            mov BYTE PTR [RDX+1],R12B
            mov BYTE PTR [RDX+2],R13B
.L_40b5eb:

            add RDX,3
            add RCX,1
            cmp RDI,RDX
            je .L_40b68c
.L_40b5fc:

            movzx EAX,BYTE PTR [RCX]
            test AL,AL
            je .L_40b5e0

            cmp AL,255
            je .L_40b5eb

            movzx R14D,AL
            mov ESI,R8D
            add RDX,3
            mul BYTE PTR [RDX-3]
            sub ESI,R14D
            add RCX,1
            mov R14D,ESI
            imul R14D,R11D
            lea EAX,DWORD PTR [R14+RAX*1+128]
            movzx ESI,AH
            add EAX,ESI
            mov ESI,R8D
            mov BYTE PTR [RDX-3],AH
            movzx R14D,BYTE PTR [RCX-1]
            mov EAX,R14D
            sub ESI,R14D
            mul BYTE PTR [RDX-2]
            mov R14D,ESI
            imul R14D,R10D
            lea EAX,DWORD PTR [RAX+R14*1+128]
            movzx ESI,AH
            add EAX,ESI
            mov ESI,R8D
            mov BYTE PTR [RDX-2],AH
            movzx R14D,BYTE PTR [RCX-1]
            mov EAX,R14D
            sub ESI,R14D
            mul BYTE PTR [RDX-1]
            mov R14D,ESI
            imul R14D,R9D
            lea EAX,DWORD PTR [R14+RAX*1+128]
            movzx ESI,AH
            add EAX,ESI
            mov BYTE PTR [RDX-1],AH
            cmp RDI,RDX
            jne .L_40b5fc
.L_40b68c:

            mov RSI,R15
.L_40b68f:

            and SIL,127
            or RSI,262144
            mov QWORD PTR [RBX+296],RSI
.L_40b6a1:

            mov RAX,RSI
            and EAX,4104
            cmp RAX,8
            je .L_40b12b

            add RSP,56
.L_40b6b7:

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
.L_40b6c8:

            cmp EBP,3
            jne .L_40b077

            movzx ECX,WORD PTR [RBX+616]
            mov RAX,QWORD PTR [RBX+608]
            test CX,CX
            je .L_40b729

            sub ECX,1
            mov RDX,QWORD PTR [RBX+712]
            lea RCX,QWORD PTR [RCX+RCX*2]
            lea RDI,QWORD PTR [RAX+RCX*1+3]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40b700:

            movzx ECX,BYTE PTR [RAX]
            add RAX,3
            movzx ECX,BYTE PTR [RDX+RCX*1]
            mov BYTE PTR [RAX-3],CL
            movzx ECX,BYTE PTR [RAX-2]
            movzx ECX,BYTE PTR [RDX+RCX*1]
            mov BYTE PTR [RAX-2],CL
            movzx ECX,BYTE PTR [RAX-1]
            movzx ECX,BYTE PTR [RDX+RCX*1]
            mov BYTE PTR [RAX-1],CL
            cmp RDI,RAX
            jne .L_40b700
.L_40b729:

            and RSI,-8193
            mov QWORD PTR [RBX+296],RSI
            jmp .L_40b6a1
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40b740:

            movzx EDX,BYTE PTR [RBX+648]
            lea RDX,QWORD PTR [RDX+RDX*2]
            add RDX,QWORD PTR [RBX+608]
            test EAX,524288
            movzx ECX,BYTE PTR [RDX]
            mov WORD PTR [RBX+650],CX
            movzx ECX,BYTE PTR [RDX+1]
            mov WORD PTR [RBX+652],CX
            movzx EDX,BYTE PTR [RDX+2]
            mov WORD PTR [RBX+654],DX
            movzx EDX,WORD PTR [RBX+618]
            je .L_40b7bb

            test EAX,33554432
            jne .L_40b7bb

            test DX,DX
            je .L_40b7bb

            lea ECX,DWORD PTR [RDX-1]
            xor EAX,EAX
            add RCX,1
            nop
            nop
            nop
.L_40b798:

            mov RDX,QWORD PTR [RBX+776]
            add RDX,RAX
            add RAX,1
            cmp RCX,RAX
            not BYTE PTR [RDX]
            jne .L_40b798

            movzx EDX,WORD PTR [RBX+618]
            mov RSI,QWORD PTR [RBX+296]
.L_40b7bb:

            mov RAX,QWORD PTR [RBX+648]
            mov QWORD PTR [RBX+658],RAX
            movzx EAX,WORD PTR [RBX+656]
            mov WORD PTR [RBX+666],AX
            jmp .L_40b227
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40b7e0:

            movzx ECX,WORD PTR [RBX+656]
            mov RSI,RAX
            mov EDX,ECX
            shl EDX,4
            add EDX,ECX
            test EAX,33554432
            mov WORD PTR [RBX+656],DX
            mov WORD PTR [RBX+654],DX
            mov WORD PTR [RBX+652],DX
            mov WORD PTR [RBX+650],DX
            jne .L_40b020

            movzx EDX,WORD PTR [RBX+792]
            mov EAX,EDX
            shl EAX,4
.L_40b824:

            add EAX,EDX
            mov WORD PTR [RBX+792],AX
            mov WORD PTR [RBX+790],AX
            mov WORD PTR [RBX+788],AX
            mov WORD PTR [RBX+786],AX
            jmp .L_40b020
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b850:

            movzx EDX,WORD PTR [RBX+656]
            mov RSI,RAX
            lea EDX,DWORD PTR [RDX+RDX*4]
            mov ECX,EDX
            shl ECX,4
            add EDX,ECX
            test EAX,33554432
            mov WORD PTR [RBX+656],DX
            mov WORD PTR [RBX+654],DX
            mov WORD PTR [RBX+652],DX
            mov WORD PTR [RBX+650],DX
            jne .L_40b020

            movzx EAX,WORD PTR [RBX+792]
            lea EAX,DWORD PTR [RAX+RAX*4]
            mov EDX,EAX
            shl EDX,4
            jmp .L_40b824
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40b8a0:

            movzx ECX,WORD PTR [RBX+656]
            mov RSI,RAX
            mov EDX,ECX
            shl EDX,8
            sub EDX,ECX
            test EAX,33554432
            mov WORD PTR [RBX+656],DX
            mov WORD PTR [RBX+654],DX
            mov WORD PTR [RBX+652],DX
            mov WORD PTR [RBX+650],DX
            jne .L_40b020

            movzx EDX,WORD PTR [RBX+792]
            mov EAX,EDX
            shl EAX,8
            sub EAX,EDX
            mov WORD PTR [RBX+792],AX
            mov WORD PTR [RBX+790],AX
            mov WORD PTR [RBX+788],AX
            mov WORD PTR [RBX+786],AX
            jmp .L_40b020
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b910:

            mov RCX,RAX
            pxor XMM0,XMM0
            shr RCX,1
            and EAX,1
            or RCX,RAX
            cvtsi2sd XMM0,RCX
            addsd XMM0,XMM0
            movsd QWORD PTR [RSP+8],XMM0
            jmp .L_40b311
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40b938:

            cmp DL,2
            mov R12,QWORD PTR [RBX+608]
            movzx R15D,WORD PTR [RBX+616]
            movzx ESI,WORD PTR [RBX+650]
            je .L_40bc82

            pxor XMM0,XMM0
            movzx EAX,SI
            cmp DL,1
            cvtsi2sd XMM0,EAX
            divsd XMM0,QWORD PTR [RIP+.L_4139f0]
            je .L_40bd9a

            cmp DL,3
            jne .L_40bd83

            movss XMM1,DWORD PTR [RBX+644]
            pxor XMM2,XMM2
            movsd XMM3,QWORD PTR [RIP+.L_4139b8]
            cvtss2sd XMM2,XMM1
            mulss XMM1,DWORD PTR [RBX+704]
            movapd XMM7,XMM3
            divsd XMM7,XMM2
            movapd XMM2,XMM3
            cvtss2sd XMM1,XMM1
            divsd XMM2,XMM1
            movsd QWORD PTR [RSP+8],XMM7
            movapd XMM1,XMM2
            subsd XMM1,XMM3
            andpd XMM1,XMMWORD PTR [RIP+.L_413a10]
.L_40b9c6:

            movsd XMM3,QWORD PTR [RIP+.L_4139c0]
            ucomisd XMM3,XMM1
            jbe .L_40bcc4
.L_40b9d8:

            movsd XMM2,QWORD PTR [RIP+.L_4139e0]
            movzx R13D,BYTE PTR [RBX+652]
            movzx R14D,BYTE PTR [RBX+654]
            mov BYTE PTR [RSP+24],SIL
            movsd QWORD PTR [RSP+16],XMM2
.L_40b9fb:

            movsd XMM1,QWORD PTR [RSP+8]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_4139f0]
            movzx EAX,WORD PTR [RBX+652]
            movsd XMM1,QWORD PTR [RSP+8]
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si EDI,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,EAX
            mov BYTE PTR [RSP+44],DIL
            divsd XMM0,QWORD PTR [RIP+.L_4139f0]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_4139f0]
            movzx EAX,WORD PTR [RBX+654]
            movsd XMM1,QWORD PTR [RSP+8]
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si R9D,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,EAX
            mov BYTE PTR [RSP+32],R9B
            divsd XMM0,QWORD PTR [RIP+.L_4139f0]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_4139f0]
            movzx EDI,BYTE PTR [RSP+44]
            movzx R9D,BYTE PTR [RSP+32]
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si EAX,XMM0
.L_40ba96:

            test R15W,R15W
            je .L_40b0f4

            movzx ECX,R15W
            mov WORD PTR [RSP+8],DI
            movzx EAX,AL
            lea ESI,DWORD PTR [RCX-1]
            movzx EDI,R9B
            mov RDX,R12
            movzx R8D,WORD PTR [RBX+618]
            xor ECX,ECX
            mov R12D,255
            add RSI,1
            mov WORD PTR [RSP+16],DI
            mov WORD PTR [RSP+32],AX
            mov DWORD PTR [RSP+44],EBP
            jmp .L_40bb21
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40bae0:

            mov RDI,QWORD PTR [RBX+776]
            add RDI,RCX
            movzx R9D,BYTE PTR [RDI]
            cmp R9B,255
            je .L_40bb26

            test R9B,R9B
            jne .L_40bb50

            movzx EAX,BYTE PTR [RSP+24]
            mov BYTE PTR [RDX+1],R13B
            mov BYTE PTR [RDX+2],R14B
            mov BYTE PTR [RDX],AL
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40bb10:

            add RCX,1
            add RDX,3
            cmp RSI,RCX
            je .L_40b0f0
.L_40bb21:

            cmp R8D,ECX
            jg .L_40bae0
.L_40bb26:

            movzx EDI,BYTE PTR [RDX]
            mov RAX,QWORD PTR [RBX+712]
            movzx EDI,BYTE PTR [RAX+RDI*1]
            mov BYTE PTR [RDX],DIL
            movzx EDI,BYTE PTR [RDX+1]
            movzx EDI,BYTE PTR [RAX+RDI*1]
            mov BYTE PTR [RDX+1],DIL
            movzx EDI,BYTE PTR [RDX+2]
            movzx EAX,BYTE PTR [RAX+RDI*1]
            mov BYTE PTR [RDX+2],AL
            jmp .L_40bb10
.L_40bb50:

            movzx R10D,BYTE PTR [RDX]
            mov R11,QWORD PTR [RBX+728]
            mov R15D,R12D
            sub R15D,R9D
            mov EAX,R9D
            movzx R9D,WORD PTR [RSP+8]
            mul BYTE PTR [R11+R10*1]
            imul R9D,R15D
            mov R10,QWORD PTR [RBX+720]
            movzx R15D,BYTE PTR [RDX+1]
            lea EAX,DWORD PTR [RAX+R9*1+128]
            movzx EBP,AH
            mov R9D,EBP
            add RAX,R9
            movzx EAX,AH
            movzx EAX,BYTE PTR [R10+RAX*1]
            mov BYTE PTR [RDX],AL
            movzx R9D,BYTE PTR [RDI]
            mov EAX,R9D
            mul BYTE PTR [R11+R15*1]
            mov R15D,R12D
            sub R15D,R9D
            movzx R9D,WORD PTR [RSP+16]
            imul R9D,R15D
            mov R15D,R12D
            lea EAX,DWORD PTR [RAX+R9*1+128]
            movzx EBP,AH
            mov R9D,EBP
            add RAX,R9
            movzx R9D,BYTE PTR [RDX+2]
            movzx EAX,AH
            movzx EAX,BYTE PTR [R10+RAX*1]
            mov BYTE PTR [RDX+1],AL
            movzx EDI,BYTE PTR [RDI]
            mov EAX,EDI
            sub R15D,EDI
            movzx EDI,WORD PTR [RSP+32]
            mul BYTE PTR [R11+R9*1]
            imul EDI,R15D
            lea EAX,DWORD PTR [RAX+RDI*1+128]
            movzx EDI,AH
            add RAX,RDI
            movzx EAX,AH
            movzx EAX,BYTE PTR [R10+RAX*1]
            mov BYTE PTR [RDX+2],AL
            jmp .L_40bb10
.L_40bc0a:

            pxor XMM2,XMM2
            movsd XMM3,QWORD PTR [RIP+.L_4139b8]
            cvtss2sd XMM2,DWORD PTR [RBX+704]
            movsd QWORD PTR [RSP+32],XMM3
            movsd QWORD PTR [RSP+24],XMM2
            jmp .L_40b340
          .byte 0x90
.L_40bc30:

            movss XMM0,DWORD PTR [RBX+644]
.L_40bc38:

            pxor XMM2,XMM2
            movsd XMM1,QWORD PTR [RIP+.L_4139b8]
            cvtss2sd XMM2,XMM0
            mulss XMM0,DWORD PTR [RBX+704]
            movapd XMM3,XMM1
            divsd XMM3,XMM2
            cvtss2sd XMM0,XMM0
            divsd XMM1,XMM0
            movsd QWORD PTR [RSP+24],XMM3
            movsd QWORD PTR [RSP+32],XMM1
            jmp .L_40b340
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40bc78:

            movss XMM0,DWORD PTR [RBX+700]
            jmp .L_40bc38
.L_40bc82:

            mov RAX,QWORD PTR [RBX+712]
            movzx R8D,WORD PTR [RBX+652]
            movzx EDX,WORD PTR [RBX+654]
            movzx EDI,BYTE PTR [RAX+RSI*1]
            movzx R13D,BYTE PTR [RAX+R8*1]
            movzx R14D,BYTE PTR [RAX+RDX*1]
            mov RAX,QWORD PTR [RBX+728]
            mov BYTE PTR [RSP+24],DIL
            movzx R9D,BYTE PTR [RAX+R8*1]
            movzx EDI,BYTE PTR [RAX+RSI*1]
            movzx EAX,BYTE PTR [RAX+RDX*1]
            jmp .L_40ba96
.L_40bcc4:

            movapd XMM1,XMM2
            movsd QWORD PTR [RSP+32],XMM2
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_4139f0]
            movsd XMM3,QWORD PTR [RIP+.L_4139e0]
            movsd XMM2,QWORD PTR [RSP+32]
            movsd QWORD PTR [RSP+16],XMM3
            movapd XMM1,XMM2
            addsd XMM0,XMM3
            cvttsd2si EAX,XMM0
            pxor XMM0,XMM0
            mov DWORD PTR [RSP+24],EAX
            movzx EAX,WORD PTR [RBX+652]
            cvtsi2sd XMM0,EAX
            divsd XMM0,QWORD PTR [RIP+.L_4139f0]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_4139f0]
            movzx EAX,WORD PTR [RBX+654]
            movsd XMM2,QWORD PTR [RSP+32]
            movapd XMM1,XMM2
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si R13D,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,EAX
            divsd XMM0,QWORD PTR [RIP+.L_4139f0]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_4139f0]
            movzx EAX,WORD PTR [RBX+650]
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si R14D,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,EAX
            divsd XMM0,QWORD PTR [RIP+.L_4139f0]
            jmp .L_40b9fb
.L_40bd83:

            movsd XMM2,QWORD PTR [RIP+.L_4139b8]
            pxor XMM1,XMM1
            movsd QWORD PTR [RSP+8],XMM2
            jmp .L_40b9c6
.L_40bd9a:

            pxor XMM3,XMM3
            cvtss2sd XMM3,DWORD PTR [RBX+704]
            movsd QWORD PTR [RSP+8],XMM3
            jmp .L_40b9d8
.L_40bdb1:

            movzx EAX,WORD PTR [RBX+666]
            mov WORD PTR [RBX+654],DX
            mov WORD PTR [RBX+652],DX
            mov WORD PTR [RBX+650],DX
            mov WORD PTR [RBX+664],AX
            mov WORD PTR [RBX+662],AX
            mov WORD PTR [RBX+660],AX
            jmp .L_40b077
.L_40bde7:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40bdf0:

            movzx EAX,BYTE PTR [RDI+16]
            test AL,2
            je .L_40be09

            movzx EDX,BYTE PTR [RDI+17]
            mov R8,QWORD PTR [RDI]
            cmp DL,8
            je .L_40be10

            cmp DL,16
            je .L_40be50
.L_40be09:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40be10:

            cmp AL,2
            je .L_40bea8

            cmp AL,6
            mov ECX,4
            jne .L_40be09
.L_40be21:

            test R8,R8
            je .L_40be09

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40be30:

            movzx EDX,BYTE PTR [RSI+1]
            add RAX,1
            add BYTE PTR [RSI],DL
            add BYTE PTR [RSI+2],DL
            add RSI,RCX
            cmp R8,RAX
            jne .L_40be30

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
.L_40be50:

            cmp AL,2
            je .L_40beb8

            cmp AL,6
            mov R9D,8
            jne .L_40be09
.L_40be5e:

            test R8,R8
            je .L_40be09

            xor EDI,EDI
            nop
            nop
            nop
.L_40be68:

            movzx EDX,WORD PTR [RSI]
            movzx EAX,WORD PTR [RSI+4]
            add RDI,1
            movzx ECX,WORD PTR [RSI+2]
            rol DX,8
            rol AX,8
            rol CX,8
            add EDX,ECX
            add EAX,ECX
            mov BYTE PTR [RSI+1],DL
            movzx ECX,DH
            movzx EDX,AH
            mov BYTE PTR [RSI],CL
            mov BYTE PTR [RSI+4],DL
            mov BYTE PTR [RSI+5],AL
            add RSI,R9
            cmp R8,RDI
            jne .L_40be68

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40bea8:

            mov ECX,3
            jmp .L_40be21
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40beb8:

            mov R9D,6
            jmp .L_40be5e
.L_40bec0:

            push RBX
            mov RAX,RSI
            sub RSP,1232
.L_40becb:

            mov RSI,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+1224],RSI
            xor ESI,ESI
            cmp EDI,2
            je .L_40bf58

            cmp EDI,1
            jne .L_40bf60

            mov EBX,1216
.L_40beed:

            test RAX,RAX
            je .L_40bf68

            mov QWORD PTR [RSP+1080],RDX
            mov RDI,RSP
            mov RSI,RBX
            call RAX

            test RAX,RAX
            mov RDX,RAX
            je .L_40bf36

            lea RDI,QWORD PTR [RAX+8]
            mov RCX,RAX
            mov QWORD PTR [RAX],0
            mov QWORD PTR [RAX+RBX*1-8],0
            xor EAX,EAX
            and RDI,-8
            sub RCX,RDI
            add ECX,EBX
            mov EBX,ECX
            shr EBX,3
            mov ECX,EBX

            rep stosq QWORD PTR [RDI]
.L_40bf36:

            mov RSI,QWORD PTR [RSP+1224]
            xor RSI,QWORD PTR FS:[40]
            mov RAX,RDX
            jne .L_40bf90

            add RSP,1232
.L_40bf53:

            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40bf58:

            mov EBX,464
            jmp .L_40beed
          .byte 0x90
.L_40bf60:

            xor EDX,EDX
            jmp .L_40bf36
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40bf68:

            mov RAX,QWORD PTR [RSP+1224]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40bf90

            add RSP,1232
            mov RDI,RBX
            mov ESI,1
            pop RBX
            jmp calloc@PLT
.L_40bf90:

            call __stack_chk_fail@PLT
.L_40bf95:

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
.L_40bfa0:

            xor EDX,EDX
            xor ESI,ESI
            jmp .L_40bec0
.L_40bfa9:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40bfb0:

            sub RSP,1240
.L_40bfb7:

            mov RCX,RSI
            mov RSI,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+1224],RSI
            xor ESI,ESI
            test RDI,RDI
            je .L_40bfea

            test RCX,RCX
            mov RAX,RDI
            je .L_40c008

            mov QWORD PTR [RSP+1080],RDX
            mov RDI,RSP
            mov RSI,RAX
            call RCX
.L_40bfea:

            mov RAX,QWORD PTR [RSP+1224]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40c027

            add RSP,1240
.L_40c004:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40c008:

            mov RCX,QWORD PTR [RSP+1224]
            xor RCX,QWORD PTR FS:[40]
            jne .L_40c027

            add RSP,1240
            jmp free@PLT
.L_40c027:

            call __stack_chk_fail@PLT
.L_40c02c:

            nop
            nop
            nop
            nop
.L_40c030:

            xor EDX,EDX
            xor ESI,ESI
            jmp .L_40bfb0
.L_40c039:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40c040:

            test RDI,RDI
            je .L_40c0c0

            test RSI,RSI
            je .L_40c0c0

            push RBX
            mov RBX,RDI
            sub RSP,16
            mov RAX,QWORD PTR [RDI+1088]
            test RAX,RAX
            je .L_40c0b0

            call RAX
.L_40c060:

            test RAX,RAX
            je .L_40c070

            add RSP,16
            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c070:

            test BYTE PTR [RBX+290],16
            je .L_40c088

            add RSP,16
            xor EAX,EAX
            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c088:

            lea RSI,QWORD PTR [RIP+.L_413a20]
            mov RDI,RBX
            mov QWORD PTR [RSP+8],RAX
            call .L_40c520

            mov RAX,QWORD PTR [RSP+8]
            add RSP,16
            pop RBX
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
.L_40c0b0:

            mov RDI,RSI
            call malloc@PLT

            jmp .L_40c060
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c0c0:

            xor EAX,EAX
            ret 
.L_40c0c3:

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
.L_40c0d0:

            push RBX
            mov RBX,RSI
            call .L_40c040

            test RAX,RAX
            mov RCX,RAX
            je .L_40c0f1

            mov RDX,RBX
            xor ESI,ESI
            mov RDI,RAX
            call memset@PLT

            mov RCX,RAX
.L_40c0f1:

            mov RAX,RCX
            pop RBX
            ret 
.L_40c0f6:

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
.L_40c100:

            test RDI,RDI
            je .L_40c118

            test RSI,RSI
            je .L_40c118

            mov RDI,RSI
            jmp malloc@PLT
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c118:

            xor EAX,EAX
            ret 
.L_40c11b:

            nop
            nop
            nop
            nop
            nop
.L_40c120:

            test RDI,RDI
            je .L_40c140

            test RSI,RSI
            je .L_40c140

            mov RAX,QWORD PTR [RDI+1096]
            test RAX,RAX
            je .L_40c148

            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c140:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c148:

            mov RDI,RSI
            jmp free@PLT
.L_40c150:

            test RDI,RDI
            je .L_40c168

            test RSI,RSI
            je .L_40c168

            mov RDI,RSI
            jmp free@PLT
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c168:

            ret 
.L_40c16a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_40c170:

            test RDI,RDI
            je .L_40c1b0

            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,8
            mov RBP,QWORD PTR [RDI+288]
            mov RAX,RBP
            or RAX,1048576
            mov QWORD PTR [RDI+288],RAX
            call .L_40c040

            mov QWORD PTR [RBX+288],RBP
            add RSP,8
            pop RBX
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c1b0:

            xor EAX,EAX
            ret 
.L_40c1b3:

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
.L_40c1c0:

            mov RDI,RSI
            mov RSI,RDX
            mov RDX,RCX
            jmp memcpy@PLT
.L_40c1ce:

            nop
            nop
.L_40c1d0:

            mov RDI,RSI
            mov ESI,EDX
            mov RDX,RCX
            jmp memset@PLT
.L_40c1dd:

            nop
            nop
            nop
.L_40c1e0:

            test RDI,RDI
            je .L_40c1fa

            mov QWORD PTR [RDI+1080],RSI
            mov QWORD PTR [RDI+1088],RDX
            mov QWORD PTR [RDI+1096],RCX
.L_40c1fa:

            ret 
.L_40c1fc:

            nop
            nop
            nop
            nop
.L_40c200:

            test RDI,RDI
            je .L_40c210

            mov RAX,QWORD PTR [RDI+1080]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40c210:

            xor EAX,EAX
            ret 
.L_40c213:

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
.L_40c220:

            push R12
            lea R9,QWORD PTR [RDI+620]
            push RBP
            lea RBP,QWORD PTR [RIP+.L_413ab0]
            push RBX
.L_40c232:

            lea RBX,QWORD PTR [RDI+624]
            xor EAX,EAX
.L_40c23b:

            movzx ECX,BYTE PTR [R9]
            lea EDI,DWORD PTR [RAX+1]
            movsxd R10,EAX
            add R10,RSI
            movsxd R8,EDI
            add R8,RSI
            lea R12D,DWORD PTR [RCX-65]
            mov R11D,ECX
            cmp R12D,57
            ja .L_40c2d0

            lea R12D,DWORD PTR [RCX-91]
            cmp R12D,5
            jbe .L_40c2d0

            mov BYTE PTR [R10],CL
            mov EAX,EDI
.L_40c26a:

            add R9,1
            cmp RBX,R9
            jne .L_40c23b

            test RDX,RDX
            je .L_40c2bf

            lea ECX,DWORD PTR [RAX+1]
            mov BYTE PTR [R8],58
            movsxd RCX,ECX
            mov BYTE PTR [RSI+RCX*1],32
            lea ECX,DWORD PTR [RAX+3]
            add EAX,2
            cdqe 
            movsxd RCX,ECX
            add RAX,RSI
            lea R9,QWORD PTR [RCX+63]
            sub RDX,RCX
            jmp .L_40c2b3
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40c2a0:

            mov R10D,ECX
            add RCX,1
            mov BYTE PTR [RAX],DIL
            cmp R9,RCX
            lea RAX,QWORD PTR [R8+1]
            je .L_40c310
.L_40c2b3:

            movzx EDI,BYTE PTR [RDX+RCX*1]
            mov R8,RAX
            test DIL,DIL
            jne .L_40c2a0
.L_40c2bf:

            mov BYTE PTR [R8],0
            pop RBX
.L_40c2c4:

            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c2d0:

            sar ECX,4
            and R11D,15
            mov BYTE PTR [R10],91
            movsxd RCX,ECX
            lea EDI,DWORD PTR [RAX+2]
            movzx ECX,BYTE PTR [RBP+RCX*1]
            movsxd RDI,EDI
            mov BYTE PTR [R8],CL
            movzx R8D,BYTE PTR [RBP+R11*1]
            lea ECX,DWORD PTR [RAX+3]
            add EAX,4
            movsxd RCX,ECX
            mov BYTE PTR [RSI+RDI*1],R8B
            movsxd R8,EAX
            mov BYTE PTR [RSI+RCX*1],93
            add R8,RSI
            jmp .L_40c26a
          .byte 0x66
          .byte 0x90
.L_40c310:

            movsxd R8,R10D
            add R8,RSI
            mov BYTE PTR [R8],0
            pop RBX
.L_40c31b:

            pop RBP
            pop R12
            ret 
.L_40c31f:

            nop
.L_40c320:

            push RBX
            mov RBX,RDI
            sub RSP,32
            mov RDI,QWORD PTR [RIP+stderr]
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            cmp BYTE PTR [RSI],35
            jne .L_40c3d2

            movzx EAX,BYTE PTR [RSI+1]
            mov RCX,RSP
            xor R9D,R9D
            lea RDX,QWORD PTR [RCX+1]
            mov BYTE PTR [RSP],AL
            lea RAX,QWORD PTR [RSI+2]
            jmp .L_40c363
          .byte 0x90
.L_40c360:

            movsxd R9,R8D
.L_40c363:

            lea R8D,DWORD PTR [R9+1]
            cmp R8D,15
            je .L_40c406

            movzx R11D,BYTE PTR [RAX]
            mov R10,RAX
            add RDX,1
            add RAX,1
            mov BYTE PTR [RDX-1],R11B
            cmp BYTE PTR [R10-1],32
            jne .L_40c360

            lea EAX,DWORD PTR [R9-1]
            cmp EAX,12
            ja .L_40c400

            lea RDX,QWORD PTR [RIP+.L_413a2f]
            mov ESI,1
            mov R8,R10
            xor EAX,EAX
            mov BYTE PTR [RSP+R9*1],0
            call __fprintf_chk@PLT

            mov RSI,QWORD PTR [RIP+stderr]
            mov EDI,10
            call fputc@PLT
.L_40c3c0:

            test RBX,RBX
            je .L_40c3fb

            mov ESI,1
            mov RDI,RBX
            call __longjmp_chk@PLT
.L_40c3d2:

            lea RDX,QWORD PTR [RIP+.L_413a63]
            mov RCX,RSI
            xor EAX,EAX
            mov ESI,1
            call __fprintf_chk@PLT

            mov RSI,QWORD PTR [RIP+stderr]
            mov EDI,10
            call fputc@PLT

            jmp .L_40c3c0
.L_40c3fb:

            call abort@PLT
.L_40c400:

            mov R8D,1
.L_40c406:

            lea RDX,QWORD PTR [RIP+.L_413a47]
            mov RCX,RSI
            xor EAX,EAX
            mov ESI,1
            call __fprintf_chk@PLT

            mov RSI,QWORD PTR [RIP+stderr]
            mov EDI,10
            call fputc@PLT

            jmp .L_40c3c0
.L_40c42f:

            nop
.L_40c430:

            sub RSP,40
.L_40c434:

            mov RCX,RDI
            mov RDI,QWORD PTR [RIP+stderr]
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            cmp BYTE PTR [RCX],35
            jne .L_40c4d8

            movzx EAX,BYTE PTR [RCX+1]
            mov R11,RSP
            xor R9D,R9D
            lea RDX,QWORD PTR [R11+1]
            mov BYTE PTR [RSP],AL
            lea RAX,QWORD PTR [RCX+1]
            jmp .L_40c473
          .byte 0x66
          .byte 0x90
.L_40c470:

            mov R9D,ESI
.L_40c473:

            lea ESI,DWORD PTR [R9+1]
            cmp ESI,15
            je .L_40c4d8

            movzx R10D,BYTE PTR [RAX+1]
            mov R8,RAX
            add RDX,1
            add RAX,1
            mov BYTE PTR [RDX-1],R10B
            cmp BYTE PTR [R8],32
            jne .L_40c470

            lea EAX,DWORD PTR [R9-1]
            cmp EAX,12
            ja .L_40c4d8

            add R9D,2
            lea RDX,QWORD PTR [RIP+.L_413a74]
            mov RCX,R11
            movsxd R9,R9D
            mov ESI,1
            xor EAX,EAX
            mov BYTE PTR [RSP+R9*1],0
            call __fprintf_chk@PLT

            mov RSI,QWORD PTR [RIP+stderr]
            mov EDI,10
            call fputc@PLT

            jmp .L_40c4fc
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40c4d8:

            lea RDX,QWORD PTR [RIP+.L_413a8e]
            mov ESI,1
            xor EAX,EAX
            call __fprintf_chk@PLT

            mov RSI,QWORD PTR [RIP+stderr]
            mov EDI,10
            call fputc@PLT
.L_40c4fc:

            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40c511

            add RSP,40
.L_40c510:

            ret 
.L_40c511:

            call __stack_chk_fail@PLT
.L_40c516:

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
.L_40c520:

            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,40
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            test RDI,RDI
            je .L_40c563

            mov RAX,QWORD PTR [RDI+288]
            test EAX,786432
            jne .L_40c56e
.L_40c54f:

            mov RAX,QWORD PTR [RBX+200]
            test RAX,RAX
            je .L_40c563

            mov RSI,RBP
            mov RDI,RBX
            call RAX
.L_40c563:

            mov RSI,RBP
            mov RDI,RBX
            call .L_40c320
.L_40c56e:

            and EAX,524288
            cmp BYTE PTR [RSI],35
            mov RDX,RAX
            je .L_40c58b

            test RAX,RAX
            je .L_40c54f

            mov WORD PTR [RSP],48
            mov RBP,RSP
            jmp .L_40c54f
.L_40c58b:

            mov EAX,1
            jmp .L_40c5a2
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c598:

            add RAX,1
            cmp RAX,15
            je .L_40c5e5
.L_40c5a2:

            cmp BYTE PTR [RBP+RAX*1],32
            movsxd RCX,EAX
            jne .L_40c598
.L_40c5ac:

            test RDX,RDX
            je .L_40c5dd

            xor EAX,EAX
            mov RSI,RSP
            lea EDI,DWORD PTR [RCX-1]
            jmp .L_40c5c7
.L_40c5bb:

            movzx EDX,BYTE PTR [RBP+RAX*1+1]
            mov BYTE PTR [RSI+RAX*1],DL
            add RAX,1
.L_40c5c7:

            cmp EDI,EAX
            jg .L_40c5bb

            sub ECX,2
            mov RBP,RSI
            movsxd RCX,ECX
            mov BYTE PTR [RSP+RCX*1],0
            jmp .L_40c54f
.L_40c5dd:

            add RBP,RCX
            jmp .L_40c54f
.L_40c5e5:

            mov ECX,15
            jmp .L_40c5ac
.L_40c5ec:

            nop
            nop
            nop
            nop
.L_40c5f0:

            test RDI,RDI
            je .L_40c638

            test QWORD PTR [RDI+288],786432
            jne .L_40c610
.L_40c602:

            mov RAX,QWORD PTR [RDI+208]
            test RAX,RAX
            je .L_40c638

            jmp RAX
.L_40c610:

            cmp BYTE PTR [RSI],35
            jne .L_40c602

            lea RAX,QWORD PTR [RSI+1]
            add RSI,15
            jmp .L_40c629
          .byte 0x90
.L_40c620:

            add RAX,1
            cmp RSI,RAX
            je .L_40c602
.L_40c629:

            cmp BYTE PTR [RAX],32
            jne .L_40c620

            mov RSI,RAX
            jmp .L_40c602
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c638:

            mov RDI,RSI
            jmp .L_40c430
.L_40c640:

            push RBP
            push RBX
            sub RSP,104
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+88],RAX
            xor EAX,EAX
            test RDI,RDI
            je .L_40c674

            mov RBP,RSP
            mov RBX,RDI
            mov RDX,RSI
            mov RSI,RBP
            call .L_40c220

            mov RDI,RBX
            call .L_40c520
.L_40c674:

            xor EDI,EDI
            call .L_40c320
.L_40c67b:

            nop
            nop
            nop
            nop
            nop
.L_40c680:

            push RBP
            push RBX
            sub RSP,104
.L_40c686:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+88],RAX
            xor EAX,EAX
            test RDI,RDI
            je .L_40c6d0

            mov RBP,RSP
            mov RBX,RDI
            mov RDX,RSI
            mov RSI,RBP
            call .L_40c220

            mov RDI,RBX
            call .L_40c5f0
.L_40c6b4:

            mov RAX,QWORD PTR [RSP+88]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40c6da

            add RSP,104
.L_40c6c8:

            pop RBX
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c6d0:

            mov RDI,RSI
            call .L_40c430

            jmp .L_40c6b4
.L_40c6da:

            call __stack_chk_fail@PLT
.L_40c6df:

            nop
.L_40c6e0:

            test RDI,RDI
            je .L_40c6fa

            mov QWORD PTR [RDI+216],RSI
            mov QWORD PTR [RDI+200],RDX
            mov QWORD PTR [RDI+208],RCX
.L_40c6fa:

            ret 
.L_40c6fc:

            nop
            nop
            nop
            nop
.L_40c700:

            test RDI,RDI
            je .L_40c710

            mov RAX,QWORD PTR [RDI+216]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40c710:

            xor EAX,EAX
            ret 
.L_40c713:

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
.L_40c720:

            test RDI,RDI
            je .L_40c733

            and RSI,-786433
            and QWORD PTR [RDI+288],RSI
.L_40c733:

            ret 
.L_40c735:

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
.L_40c740:

            push R15
            push R14
            mov R14,R8
            push R13
            push R12
            lea R12,QWORD PTR [RDI+304]
            push RBP
            push RBX
            mov R13,RCX
            mov RBX,RDI
            xor EBP,EBP
            sub RSP,88
.L_40c760:

            mov QWORD PTR [RDI+304],RSI
            mov DWORD PTR [RDI+312],EDX
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+72],RAX
            xor EAX,EAX
.L_40c77d:

            mov RAX,QWORD PTR [RBX+416]
            xor ESI,ESI
            mov RDI,R12
            mov QWORD PTR [RBX+328],RAX
            mov RAX,QWORD PTR [RBX+424]
            mov DWORD PTR [RBX+336],EAX
            call inflate@PLT

            mov R15D,EAX
            mov RAX,QWORD PTR [RBX+424]
            sub EAX,DWORD PTR [RBX+336]
            cmp R15D,1
            ja .L_40c7f4

            test EAX,EAX
            jle .L_40c7f4

            test R13,R13
            movsxd RCX,EAX
            je .L_40c7f1

            cmp RBP,R14
            jae .L_40c7f1

            mov RDX,R14
            mov RSI,QWORD PTR [RBX+416]
            lea RDI,QWORD PTR [R13+RBP*1]
            sub RDX,RBP
            mov QWORD PTR [RSP+8],RCX
            cmp RDX,RCX
            cmova RDX,RCX
            call memcpy@PLT

            mov RCX,QWORD PTR [RSP+8]
.L_40c7f1:

            add RBP,RCX
.L_40c7f4:

            test R15D,R15D
            je .L_40c77d

            mov DWORD PTR [RBX+312],0
            mov RDI,R12
            call inflateReset@PLT

            cmp R15D,1
            je .L_40c81d

            xor EBP,EBP
            cmp QWORD PTR [RBX+352],0
            je .L_40c840
.L_40c81d:

            mov RCX,QWORD PTR [RSP+72]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBP
            jne .L_40c897

            add RSP,88
.L_40c834:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x90
.L_40c840:

            cmp R15D,-5
            lea R8,QWORD PTR [RIP+.L_413ac0]
            je .L_40c863

            lea R8,QWORD PTR [RIP+.L_413af8]
            lea RAX,QWORD PTR [RIP+.L_413b28]
            cmp R15D,-3
            cmovne R8,RAX
.L_40c863:

            lea RBP,QWORD PTR [RSP+16]
            lea R9,QWORD PTR [RBX+620]
            mov ECX,52
            mov EDX,1
            mov ESI,52
            xor EAX,EAX
            mov RDI,RBP
            call __snprintf_chk@PLT

            mov RSI,RBP
            mov RDI,RBX
            xor EBP,EBP
            call .L_40c5f0

            jmp .L_40c81d
.L_40c897:

            call __stack_chk_fail@PLT
.L_40c89c:

            nop
            nop
            nop
            nop
.L_40c8a0:

            push R12
            push RBP
            mov R12,RDX
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            call .L_405c50

            mov RDX,R12
            mov RSI,RBP
            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            jmp .L_4016c0
.L_40c8c4:

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
.L_40c8d0:

            movzx EAX,BYTE PTR [RSI]
            movzx EDX,BYTE PTR [RSI+3]
            shl RAX,24
            mov RCX,RAX
            movzx EAX,BYTE PTR [RSI+1]
            shl RAX,16
            add RAX,RCX
            add RDX,RAX
            movzx EAX,BYTE PTR [RSI+2]
            shl RAX,8
            add RAX,RDX
            cmp RAX,2147483647
            ja .L_40c908

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c908:

            lea RSI,QWORD PTR [RIP+.L_413b58]
            sub RSP,24

            mov QWORD PTR [RSP+8],RAX
            call .L_40c520

            mov RAX,QWORD PTR [RSP+8]
            add RSP,24
            ret 
.L_40c927:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40c930:

            movzx EAX,BYTE PTR [RDI]
            movzx EDX,BYTE PTR [RDI+3]
            shl RAX,24
            mov RCX,RAX
            movzx EAX,BYTE PTR [RDI+1]
            shl RAX,16
            add RAX,RCX
            add RDX,RAX
            movzx EAX,BYTE PTR [RDI+2]
            shl RAX,8
            add RAX,RDX
            ret 
.L_40c958:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40c960:

            movzx EDX,BYTE PTR [RDI]
            movzx EAX,BYTE PTR [RDI+1]
            mov RCX,RDX
            shl RAX,16
            shl RCX,24
            lea RDX,QWORD PTR [RCX+RAX*1]
            movzx EAX,BYTE PTR [RDI+2]
            shl RAX,8
            add RAX,RDX
            movzx EDX,BYTE PTR [RDI+3]
            add RAX,RDX
            ret 
.L_40c989:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40c990:

            movzx EAX,BYTE PTR [RDI]
            movzx EDX,BYTE PTR [RDI+1]
            shl EAX,8
            add EAX,EDX
            ret 
.L_40c99d:

            nop
            nop
            nop
.L_40c9a0:

            test RDI,RDI
            je .L_40c9b0

            jmp .L_40c8a0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c9b0:

            ret 
.L_40c9b2:

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
.L_40c9c0:

            push RBX
            mov RBX,RDI
            sub RSP,16
.L_40c9c8:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            test BYTE PTR [RDI+620],32
            mov RAX,QWORD PTR [RDI+288]
            je .L_40ca60

            and EAX,768
            cmp RAX,768
            je .L_40ca65
.L_40c9f5:

            lea RSI,QWORD PTR [RSP+4]
            mov EDX,4
            mov RDI,RBX
            call .L_405c50

            movzx EAX,BYTE PTR [RSP+4]
            movzx EDX,BYTE PTR [RSP+7]
            shl RAX,24
            mov RCX,RAX
            movzx EAX,BYTE PTR [RSP+5]
            shl RAX,16
            add RAX,RCX
            add RDX,RAX
            movzx EAX,BYTE PTR [RSP+6]
            shl RAX,8
            add RAX,RDX
            cmp RAX,QWORD PTR [RBX+600]
            setne AL
            movzx EAX,AL
.L_40ca40:

            mov RCX,QWORD PTR [RSP+8]
            xor RCX,QWORD PTR FS:[40]
            jne .L_40ca7b

            add RSP,16
.L_40ca54:

            pop RBX
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
.L_40ca60:

            test AH,8
            je .L_40c9f5
.L_40ca65:

            lea RSI,QWORD PTR [RSP+4]
            mov EDX,4
            mov RDI,RBX
            call .L_405c50

            xor EAX,EAX
            jmp .L_40ca40
.L_40ca7b:

            call __stack_chk_fail@PLT
.L_40ca80:

            push R12
            push RBP
            mov RBP,RSI
            push RBX
.L_40ca87:

            mov R12,QWORD PTR [RDI+424]
            mov RBX,RDI
            cmp R12,RSI
            jae .L_40cb30

            mov RDX,R12
            jmp .L_40caa7
          .byte 0x90
.L_40caa0:

            mov RDX,QWORD PTR [RBX+424]
.L_40caa7:

            mov RSI,QWORD PTR [RBX+416]
            mov RDI,RBX
            sub RBP,R12
            call .L_40c8a0

            cmp R12,RBP
            jb .L_40caa0
.L_40cabe:

            mov RSI,QWORD PTR [RBX+416]
            mov RDX,RBP
            mov RDI,RBX
            call .L_40c8a0
.L_40cad0:

            mov RDI,RBX
            call .L_40c9c0

            test EAX,EAX
            je .L_40cb05

            test BYTE PTR [RBX+620],32
            mov RAX,QWORD PTR [RBX+288]
            je .L_40cb10

            test AH,2
            je .L_40cb15
.L_40caf1:

            lea RSI,QWORD PTR [RIP+.L_414136]
            mov RDI,RBX
            call .L_40c640

            mov EAX,1
.L_40cb05:

            pop RBX
.L_40cb06:

            pop RBP
            pop R12
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40cb10:

            test AH,4
            je .L_40caf1
.L_40cb15:

            lea RSI,QWORD PTR [RIP+.L_414136]
            mov RDI,RBX
            call .L_40c680

            pop RBX
            mov EAX,1
            pop RBP
            pop R12
            ret 
          .byte 0x66
          .byte 0x90
.L_40cb30:

            test RSI,RSI
            je .L_40cad0

            jmp .L_40cabe
.L_40cb37:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40cb40:

            push R15
            push R14
            push R13
            push R12
            mov R13,R8
            push RBP
            push RBX
            mov RBP,RDI
            sub RSP,88
.L_40cb54:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+72],RAX
            xor EAX,EAX
            cmp RCX,RDX
            ja .L_40cd18

            test ESI,ESI
            mov RBX,RCX
            je .L_40cc20

            lea R12,QWORD PTR [RSP+16]
            lea R8,QWORD PTR [RIP+.L_413bd8]
            mov R9D,ESI
            mov ECX,50
            mov ESI,50
            mov EDX,1
            mov RDI,R12
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RSI,R12
            mov RDI,RBP
            call .L_40c5f0
.L_40cbab:

            lea RSI,QWORD PTR [RBX+1]
            mov RDI,RBP
            call .L_40c170

            test RAX,RAX
            mov R12,RAX
            je .L_40cbf1

            test RBX,RBX
            mov RSI,QWORD PTR [RBP+1208]
            je .L_40cbdd

            mov RDX,RBX
            mov RDI,RAX
            call memcpy@PLT
.L_40cbd6:

            mov RSI,QWORD PTR [RBP+1208]
.L_40cbdd:

            mov RDI,RBP
            call .L_40c120

            mov QWORD PTR [RBP+1208],R12
            mov BYTE PTR [R12+RBX*1],0
.L_40cbf1:

            mov QWORD PTR [R13],RBX
.L_40cbf5:

            mov RAX,QWORD PTR [RSP+72]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40cd7c

            add RSP,88
.L_40cc0d:

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
.L_40cc20:

            mov RSI,QWORD PTR [RDI+1208]
            sub RDX,RCX
            xor R8D,R8D
            mov R12,RDX
            add RSI,RCX
            xor ECX,ECX
            call .L_40c740

            cmp RBX,-3
            mov R14,RAX
            ja .L_40cd00

            mov RAX,-2
            sub RAX,RBX
            cmp RAX,R14
            jbe .L_40cd00

            lea R15,QWORD PTR [RBX+R14*1]
            cmp R15,7999998
            ja .L_40cd00

            test R14,R14
            je .L_40cbab

            lea RSI,QWORD PTR [R15+1]
            mov RDI,RBP
            call .L_40c170

            test RAX,RAX
            je .L_40cd44

            mov RSI,QWORD PTR [RBP+1208]
            mov RDX,RBX
            mov RDI,RAX
            call memcpy@PLT

            mov RSI,QWORD PTR [RBP+1208]
            lea RCX,QWORD PTR [RAX+RBX*1]
            mov R8,R14
            mov RDX,R12
            mov RDI,RBP
            mov QWORD PTR [RSP+8],RAX
            add RSI,RBX
            call .L_40c740

            mov R9,QWORD PTR [RSP+8]
            cmp R14,RAX
            mov BYTE PTR [R9+R15*1],0
            je .L_40cd58

            lea RSI,QWORD PTR [RIP+.L_414154]
            mov RDI,RBP
            mov QWORD PTR [RSP+8],R9
            call .L_40c5f0

            mov R9,QWORD PTR [RSP+8]
            mov RDI,RBP
            mov RSI,R9
            call .L_40c120

            jmp .L_40cbab
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40cd00:

            lea RSI,QWORD PTR [RIP+.L_413b80]
            mov RDI,RBP
            call .L_40c5f0

            jmp .L_40cbab
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40cd18:

            lea RSI,QWORD PTR [RIP+.L_414140]
            xor EBX,EBX
            call .L_40c5f0

            mov ESI,1
            mov RDI,RBP
            call .L_40c170

            test RAX,RAX
            mov R12,RAX
            jne .L_40cbd6

            jmp .L_40cbf1
.L_40cd44:

            lea RSI,QWORD PTR [RIP+.L_413bb0]
            mov RDI,RBP
            call .L_40c5f0

            jmp .L_40cbab
.L_40cd58:

            mov RSI,QWORD PTR [RBP+1208]
            mov RDI,RBP
            call .L_40c120

            mov R9,QWORD PTR [RSP+8]
            mov QWORD PTR [RBP+1208],R9
            mov QWORD PTR [R13],R15
            jmp .L_40cbf5
.L_40cd7c:

            call __stack_chk_fail@PLT
.L_40cd81:

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
.L_40cd90:

            push R14
            push R13
            push R12
            push RBP
            mov RBP,RSI
            push RBX
            mov RBX,RDI
            sub RSP,48
.L_40cda2:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+40],RAX
            xor EAX,EAX
            test BYTE PTR [RDI+280],1
            jne .L_40cf40
.L_40cdbf:

            cmp RDX,13
            je .L_40cdd4

            lea RSI,QWORD PTR [RIP+.L_41417e]
            mov RDI,RBX
            call .L_40c520
.L_40cdd4:

            or QWORD PTR [RBX+280],1
            lea R13,QWORD PTR [RSP+27]
            mov EDX,13
            mov RDI,RBX
            mov RSI,R13
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            mov RSI,R13
            mov RDI,RBX
            call .L_40c8d0

            lea RSI,QWORD PTR [R13+4]
            mov RDI,RBX
            mov R12,RAX
            call .L_40c8d0

            movzx R9D,BYTE PTR [RSP+36]
            movzx R8D,BYTE PTR [RSP+35]
            mov RCX,RAX
            movzx ESI,BYTE PTR [RSP+37]
            movzx EDI,BYTE PTR [RSP+38]
            movzx EDX,BYTE PTR [RSP+39]
            mov QWORD PTR [RBX+456],R12
            mov QWORD PTR [RBX+464],RCX
            cmp R9B,6
            mov EAX,R8D
            mov BYTE PTR [RBX+631],R8B
            mov BYTE PTR [RBX+630],R9B
            mov BYTE PTR [RBX+1056],DIL
            mov BYTE PTR [RBX+627],DL
            mov BYTE PTR [RBX+1136],SIL
            ja .L_40cf30

            lea R11,QWORD PTR [RIP+.L_4149d8]
            movsxd R10,DWORD PTR [R11+R9*4]
            add R10,R11
            jmp R10
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40ce88:

            mov BYTE PTR [RBX+634],4
            shl EAX,2
.L_40ce92:

            cmp AL,7
            mov BYTE PTR [RBX+633],AL
            ja .L_40cf03
.L_40ce9c:

            movzx EAX,AL
            imul RAX,R12
            add RAX,7
            shr RAX,3
.L_40ceab:

            sub RSP,8
.L_40ceaf:

            mov QWORD PTR [RBX+488],RAX
            push RDI
            push RSI
            mov RDI,RBX
            push RDX
            mov RSI,RBP
            mov RDX,R12
            call .L_411640

            add RSP,32
            mov RAX,QWORD PTR [RSP+40]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40cf5b

            add RSP,48
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40cef0:

            add EAX,EAX
            mov BYTE PTR [RBX+634],2
            cmp AL,7
            mov BYTE PTR [RBX+633],AL
            jbe .L_40ce9c
.L_40cf03:

            shr AL,3
            movzx EAX,AL
            imul RAX,R12
            jmp .L_40ceab
          .byte 0x90
.L_40cf10:

            mov BYTE PTR [RBX+634],3
            lea EAX,DWORD PTR [R8+R8*2]
            jmp .L_40ce92
.L_40cf20:

            mov BYTE PTR [RBX+634],1
            jmp .L_40ce92
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40cf30:

            mul BYTE PTR [RBX+634]
            jmp .L_40ce92
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40cf40:

            lea RSI,QWORD PTR [RIP+.L_41416c]
            mov QWORD PTR [RSP+8],RDX
            call .L_40c520

            mov RDX,QWORD PTR [RSP+8]
            jmp .L_40cdbf
.L_40cf5b:

            call __stack_chk_fail@PLT
.L_40cf60:

            push R15
            push R14
            mov R15,RDI
            push R13
            push R12
            mov R14,RSI
            push RBP
            push RBX
            mov RBX,RDX
            sub RSP,808
.L_40cf7a:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+792],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40d160

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_4141aa]
            jne .L_40d11f

            test AL,2
            jne .L_40d198
.L_40cfb3:

            movzx ECX,BYTE PTR [R15+630]
            or RAX,2
            mov QWORD PTR [R15+280],RAX
            test CL,2
            je .L_40d118

            cmp RBX,768
            ja .L_40cff4

            mov RAX,RBX
            movabs RDX,-6148914691236517205
            mul RDX
            shr RDX,1
            lea RAX,QWORD PTR [RDX+RDX*2]
            cmp RBX,RAX
            je .L_40d014
.L_40cff4:

            cmp CL,3
            lea RSI,QWORD PTR [RIP+.L_4141d7]
            mov RDI,R15
            jne .L_40d122

            call .L_40c520

            movzx ECX,BYTE PTR [R15+630]
.L_40d014:

            mov EAX,EBX
            mov EDX,1431655766
            mov EBP,256
            imul EDX
            mov EAX,EBX
            sar EAX,31
            sub EDX,EAX
            cmp CL,3
            je .L_40d180
.L_40d032:

            cmp EBP,EDX
            cmovg EBP,EDX
            test EBP,EBP
            jle .L_40d1b0

            lea EAX,DWORD PTR [RBP-1]
            lea RCX,QWORD PTR [RSP+16]
            lea R13,QWORD PTR [RSP+789]
            lea R12,QWORD PTR [RAX+RAX*2+3]
            mov QWORD PTR [RSP+8],RCX
            add R12,RCX
            mov QWORD PTR [RSP],R12
            mov R12,RCX
            nop
            nop
            nop
            nop
            nop
.L_40d068:

            mov EDX,3
            mov RSI,R13
            mov RDI,R15
            call .L_40c8a0

            movzx EDX,BYTE PTR [RSP+789]
            add R12,3
            mov BYTE PTR [R12-3],DL
            movzx EDX,BYTE PTR [RSP+790]
            mov BYTE PTR [R12-2],DL
            movzx EDX,BYTE PTR [RSP+791]
            mov BYTE PTR [R12-1],DL
            cmp R12,QWORD PTR [RSP]
            jne .L_40d068
.L_40d0a9:

            lea EAX,DWORD PTR [RBP*4]
            mov ESI,EBP
            mov RDI,R15
            sub ESI,EAX
            add ESI,EBX
            movsxd RSI,ESI
            call .L_40ca80

            mov RDX,QWORD PTR [RSP+8]
            mov ECX,EBP
            mov RSI,R14
            mov RDI,R15
            call .L_411a00

            cmp BYTE PTR [R15+630],3
            jne .L_40d132

            test R14,R14
            je .L_40d132

            test BYTE PTR [R14+16],16
            je .L_40d132

            cmp WORD PTR [R15+618],BP
            ja .L_40d1bf
.L_40d0f7:

            cmp BP,WORD PTR [R14+42]
            jae .L_40d132

            lea RSI,QWORD PTR [RIP+.L_413c50]
            mov RDI,R15
            call .L_40c5f0

            mov WORD PTR [R14+42],BP
            jmp .L_40d132
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40d118:

            lea RSI,QWORD PTR [RIP+.L_413c00]
.L_40d11f:

            mov RDI,R15
.L_40d122:

            call .L_40c5f0

            mov RSI,RBX
            mov RDI,R15
            call .L_40ca80
.L_40d132:

            mov RAX,QWORD PTR [RSP+792]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40d1db

            add RSP,808
.L_40d150:

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
.L_40d160:

            lea RSI,QWORD PTR [RIP+.L_414191]
            call .L_40c520

            mov RAX,QWORD PTR [R15+280]
            jmp .L_40cfb3
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d180:

            movzx ECX,BYTE PTR [R15+631]
            mov EBP,1
            shl EBP,CL
            jmp .L_40d032
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40d198:

            lea RSI,QWORD PTR [RIP+.L_4141c2]
            call .L_40c520

            mov RAX,QWORD PTR [R15+280]
            jmp .L_40cfb3
.L_40d1b0:

            lea RAX,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+8],RAX
            jmp .L_40d0a9
.L_40d1bf:

            lea RSI,QWORD PTR [RIP+.L_413c28]
            mov RDI,R15
            call .L_40c5f0

            mov WORD PTR [R15+618],BP
            jmp .L_40d0f7
.L_40d1db:

            call __stack_chk_fail@PLT
.L_40d1e0:

            push RBP
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,8
.L_40d1ec:

            mov RAX,QWORD PTR [RDI+280]
            mov RDX,RAX
            and EDX,5
            cmp RDX,5
            je .L_40d212

            lea RSI,QWORD PTR [RIP+.L_4141ed]
            call .L_40c520

            mov RAX,QWORD PTR [RBX+280]
.L_40d212:

            or RAX,24
            test RBP,RBP
            mov QWORD PTR [RBX+280],RAX
            je .L_40d231

            lea RSI,QWORD PTR [RIP+.L_4141fe]
            mov RDI,RBX
            call .L_40c5f0
.L_40d231:

            add RSP,8
.L_40d235:

            mov RSI,RBP
            mov RDI,RBX
            pop RBX
            pop RBP
            jmp .L_40ca80
.L_40d242:

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
.L_40d250:

            push R12
            push RBP
            mov R12,RDX
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,16
.L_40d261:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40d3b0

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_414233]
            jne .L_40d380

            test AL,2
            jne .L_40d400
.L_40d297:

            test RBP,RBP
            je .L_40d2af

            mov RAX,QWORD PTR [RBP+16]
            and EAX,2049
            cmp RAX,1
            je .L_40d370
.L_40d2af:

            cmp R12,4
            lea RSI,QWORD PTR [RIP+.L_414278]
            jne .L_40d380

            lea RSI,QWORD PTR [RSP+4]
            mov EDX,4
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40d393

            movzx EDX,BYTE PTR [RSP+4]
            movzx R12D,BYTE PTR [RSP+6]
            mov RCX,RDX
            movzx EDX,BYTE PTR [RSP+5]
            shl R12,8
            shl RCX,24
            shl RDX,16
            add RDX,RCX
            movzx ECX,BYTE PTR [RSP+7]
            add RDX,RCX
            add R12,RDX
            je .L_40d418

            test RBP,RBP
            je .L_40d3c8

            test BYTE PTR [RBP+17],8
            je .L_40d3c8

            lea RAX,QWORD PTR [R12-45000]
            cmp RAX,1000
            jbe .L_40d3c8

            lea RSI,QWORD PTR [RIP+.L_413ca8]
            mov RDI,RBX
            call .L_40c5f0

            mov RDI,QWORD PTR [RIP+stderr]
            lea RDX,QWORD PTR [RIP+.L_414294]
            mov ECX,R12D
            mov ESI,1
            xor EAX,EAX
            call __fprintf_chk@PLT

            jmp .L_40d393
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40d370:

            lea RSI,QWORD PTR [RIP+.L_414263]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d380:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,R12
            mov RDI,RBX
            call .L_40ca80
.L_40d393:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40d42c

            add RSP,16
.L_40d3ab:

            pop RBX
            pop RBP
            pop R12
            ret 
.L_40d3b0:

            lea RSI,QWORD PTR [RIP+.L_41421a]
            call .L_40c520

            jmp .L_40d297
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d3c8:

            pxor XMM0,XMM0
            mov RSI,RBP
            mov RDI,RBX
            cvtsi2ss XMM0,R12
            divss XMM0,DWORD PTR [RIP+.L_414a08]
            movss DWORD PTR [RBX+700],XMM0
            cvtss2sd XMM0,XMM0
            call .L_411400

            mov RDX,R12
            mov RSI,RBP
            mov RDI,RBX
            call .L_4114a0

            jmp .L_40d393
.L_40d400:

            lea RSI,QWORD PTR [RIP+.L_41424b]
            call .L_40c5f0

            jmp .L_40d297
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d418:

            lea RSI,QWORD PTR [RIP+.L_413c80]
            mov RDI,RBX
            call .L_40c5f0

            jmp .L_40d393
.L_40d42c:

            call __stack_chk_fail@PLT
.L_40d431:

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
.L_40d440:

            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,16
.L_40d451:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            mov DWORD PTR [RSP+4],0
            test AL,1
            je .L_40d568

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_4142c1]
            jne .L_40d537

            test AL,2
            jne .L_40d590
.L_40d48f:

            test R12,R12
            je .L_40d4a0

            test BYTE PTR [R12+16],2
            jne .L_40d530
.L_40d4a0:

            cmp BYTE PTR [RBX+630],3
            mov EDX,3
            je .L_40d4b5

            movzx EDX,BYTE PTR [RBX+634]
.L_40d4b5:

            cmp RDX,RBP
            jne .L_40d580

            cmp RBP,4
            ja .L_40d580

            lea RSI,QWORD PTR [RSP+4]
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40d54a

            test BYTE PTR [RBX+630],2
            movzx EAX,BYTE PTR [RSP+4]
            movzx EDX,BYTE PTR [RSP+5]
            je .L_40d5a8

            mov BYTE PTR [RBX+760],AL
            movzx EAX,BYTE PTR [RSP+6]
            mov BYTE PTR [RBX+761],DL
            mov BYTE PTR [RBX+762],AL
            movzx EAX,BYTE PTR [RSP+7]
            mov BYTE PTR [RBX+764],AL
.L_40d51c:

            lea RDX,QWORD PTR [RBX+760]
            mov RSI,R12
            mov RDI,RBX
            call .L_411b00

            jmp .L_40d54a
.L_40d530:

            lea RSI,QWORD PTR [RIP+.L_4142f1]
.L_40d537:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,RBP
            mov RDI,RBX
            call .L_40ca80
.L_40d54a:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40d5cb

            add RSP,16
.L_40d55e:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d568:

            lea RSI,QWORD PTR [RIP+.L_4142a8]
            call .L_40c520

            jmp .L_40d48f
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d580:

            lea RSI,QWORD PTR [RIP+.L_414306]
            jmp .L_40d537
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d590:

            lea RSI,QWORD PTR [RIP+.L_4142d9]
            call .L_40c5f0

            jmp .L_40d48f
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d5a8:

            mov BYTE PTR [RBX+763],AL
            mov BYTE PTR [RBX+760],AL
            mov BYTE PTR [RBX+761],AL
            mov BYTE PTR [RBX+762],AL
            mov BYTE PTR [RBX+764],DL
            jmp .L_40d51c
.L_40d5cb:

            call __stack_chk_fail@PLT
.L_40d5d0:

            push R15
            push R14
            push R13
            push R12
            mov R12,RDX
            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,104
.L_40d5e7:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+88],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40d678

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_41433b]
            jne .L_40d63d

            test AL,2
            jne .L_40da10
.L_40d615:

            test RBP,RBP
            je .L_40d630

            mov RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RIP+.L_41436c]
            and EAX,2052
            cmp RAX,4
            je .L_40d63d
.L_40d630:

            cmp R12,32
            je .L_40d690

            lea RSI,QWORD PTR [RIP+.L_414381]
.L_40d63d:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,R12
            mov RDI,RBX
            call .L_40ca80
.L_40d650:

            mov RAX,QWORD PTR [RSP+88]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40da9e

            add RSP,104
.L_40d668:

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
.L_40d678:

            lea RSI,QWORD PTR [RIP+.L_414322]
            call .L_40c520

            jmp .L_40d615
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
.L_40d690:

            lea RSI,QWORD PTR [RSP+48]
            mov EDX,32
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40d650

            movzx EDX,BYTE PTR [RSP+48]
            movzx ECX,BYTE PTR [RSP+52]
            movzx R8D,BYTE PTR [RSP+56]
            movzx R9D,BYTE PTR [RSP+60]
            movzx R13D,BYTE PTR [RSP+55]
            movzx R12D,BYTE PTR [RSP+51]
            movzx R14D,BYTE PTR [RSP+59]
            movzx R15D,BYTE PTR [RSP+63]
            mov RAX,RDX
            movzx EDX,BYTE PTR [RSP+49]
            shl RAX,24
            pxor XMM0,XMM0
            pxor XMM1,XMM1
            pxor XMM2,XMM2
            shl RDX,16
            pxor XMM3,XMM3
            add RDX,RAX
            mov RAX,RCX
            movzx ECX,BYTE PTR [RSP+53]
            shl RAX,24
            add RDX,R12
            movzx R12D,BYTE PTR [RSP+50]
            pxor XMM4,XMM4
            pxor XMM5,XMM5
            shl RCX,16
            pxor XMM6,XMM6
            add RCX,RAX
            mov RAX,R8
            movzx R8D,BYTE PTR [RSP+57]
            shl RAX,24
            add RCX,R13
            movzx R13D,BYTE PTR [RSP+54]
            shl R12,8
            pxor XMM7,XMM7
            add R12,RDX
            movzx EDX,BYTE PTR [RSP+67]
            shl R8,16
            add R8,RAX
            mov RAX,R9
            movzx R9D,BYTE PTR [RSP+61]
            shl RAX,24
            shl R13,8
            add R8,R14
            add R13,RCX
            movzx R14D,BYTE PTR [RSP+58]
            cvtsi2ss XMM0,R12
            shl R9,16
            add R9,RAX
            movzx EAX,BYTE PTR [RSP+64]
            add R9,R15
            movzx R15D,BYTE PTR [RSP+62]
            shl R14,8
            add R14,R8
            movzx R8D,BYTE PTR [RSP+77]
            cvtsi2ss XMM1,R13
            shl RAX,24
            mov RCX,RAX
            movzx EAX,BYTE PTR [RSP+65]
            shl R15,8
            add R15,R9
            cvtsi2ss XMM2,R14
            shl RAX,16
            add RAX,RCX
            movzx ECX,BYTE PTR [RSP+71]
            add RDX,RAX
            movzx EAX,BYTE PTR [RSP+66]
            cvtsi2ss XMM3,R15
            shl RAX,8
            add RAX,RDX
            movzx EDX,BYTE PTR [RSP+68]
            cvtsi2ss XMM4,RAX
            shl RDX,24
            mov RSI,RDX
            movzx EDX,BYTE PTR [RSP+69]
            shl RDX,16
            add RDX,RSI
            movzx ESI,BYTE PTR [RSP+75]
            add RCX,RDX
            movzx EDX,BYTE PTR [RSP+70]
            shl RDX,8
            add RDX,RCX
            movzx ECX,BYTE PTR [RSP+72]
            cvtsi2ss XMM5,RDX
            shl RCX,24
            mov RDI,RCX
            movzx ECX,BYTE PTR [RSP+73]
            shl RCX,16
            add RCX,RDI
            mov RDI,R8
            movzx R8D,BYTE PTR [RSP+76]
            add RSI,RCX
            movzx ECX,BYTE PTR [RSP+74]
            shl RDI,16
            shl R8,24
            shl RCX,8
            add R8,RDI
            add RCX,RSI
            movzx ESI,BYTE PTR [RSP+79]
            cvtsi2ss XMM6,RCX
            add RSI,R8
            movzx R8D,BYTE PTR [RSP+78]
            movss XMM8,DWORD PTR [RIP+.L_414a08]
            divss XMM0,XMM8
            shl R8,8
            add R8,RSI
            test RBP,RBP
            cvtsi2ss XMM7,R8
            divss XMM1,XMM8
            divss XMM2,XMM8
            divss XMM3,XMM8
            divss XMM4,XMM8
            divss XMM5,XMM8
            divss XMM6,XMM8
            divss XMM7,XMM8
            je .L_40da28

            test BYTE PTR [RBP+17],8
            je .L_40da28

            sub R12,30270
            cmp R12,2000
            ja .L_40d930

            sub R13,31900
            cmp R13,2000
            ja .L_40d930

            sub R14,63000
            cmp R14,2000
            ja .L_40d930

            sub R15,32000
            cmp R15,2000
            ja .L_40d930

            sub RAX,29000
            cmp RAX,2000
            ja .L_40d930

            sub RDX,59000
            cmp RDX,2000
            ja .L_40d930

            sub RCX,14000
            cmp RCX,2000
            ja .L_40d930

            sub R8,5000
            cmp R8,2000
            jbe .L_40d650

            nop
            nop
            nop
.L_40d930:

            lea RSI,QWORD PTR [RIP+.L_413ce0]
            mov RDI,RBX
            movss DWORD PTR [RSP+44],XMM7
            movss DWORD PTR [RSP+40],XMM6
            movss DWORD PTR [RSP+36],XMM5
            movss DWORD PTR [RSP+32],XMM4
            movss DWORD PTR [RSP+24],XMM3
            movss DWORD PTR [RSP+16],XMM2
            movss DWORD PTR [RSP+8],XMM1
            movss DWORD PTR [RSP],XMM0
            call .L_40c5f0

            movss XMM0,DWORD PTR [RSP]
            lea RDX,QWORD PTR [RIP+.L_41439d]
            movss XMM3,DWORD PTR [RSP+24]
            mov RDI,QWORD PTR [RIP+stderr]
            movss XMM2,DWORD PTR [RSP+16]
            mov ESI,1
            movss XMM1,DWORD PTR [RSP+8]
            mov EAX,4
            cvtss2sd XMM0,XMM0
            cvtss2sd XMM3,XMM3
            cvtss2sd XMM2,XMM2
            cvtss2sd XMM1,XMM1
            call __fprintf_chk@PLT

            pxor XMM0,XMM0
            mov RDI,QWORD PTR [RIP+stderr]
            pxor XMM3,XMM3
            lea RDX,QWORD PTR [RIP+.L_4143b9]
            pxor XMM2,XMM2
            mov ESI,1
            pxor XMM1,XMM1
            mov EAX,4
            movss XMM4,DWORD PTR [RSP+32]
            movss XMM7,DWORD PTR [RSP+44]
            movss XMM6,DWORD PTR [RSP+40]
            movss XMM5,DWORD PTR [RSP+36]
            cvtss2sd XMM0,XMM4
            cvtss2sd XMM3,XMM7
            cvtss2sd XMM2,XMM6
            cvtss2sd XMM1,XMM5
            call __fprintf_chk@PLT

            jmp .L_40d650
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40da10:

            lea RSI,QWORD PTR [RIP+.L_414353]
            call .L_40c5f0

            jmp .L_40d615
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40da28:

            cvtss2sd XMM0,XMM0
            mov RSI,RBP
            mov RDI,RBX
            cvtss2sd XMM7,XMM7
            mov QWORD PTR [RSP+24],RAX
            mov QWORD PTR [RSP+16],RDX
            cvtss2sd XMM6,XMM6
            mov QWORD PTR [RSP+8],RCX
            mov QWORD PTR [RSP],R8
            cvtss2sd XMM5,XMM5
            cvtss2sd XMM4,XMM4
            cvtss2sd XMM3,XMM3
            cvtss2sd XMM2,XMM2
            cvtss2sd XMM1,XMM1
            call .L_4110c0

            mov R8,QWORD PTR [RSP]
            mov R9,R15
            mov RSI,RBP
            mov RDI,RBX
            push R8
.L_40da75:

            mov RCX,QWORD PTR [RSP+16]
            mov R8,R14
            push RCX
            mov RDX,QWORD PTR [RSP+32]
            mov RCX,R13
            push RDX
            mov RAX,QWORD PTR [RSP+48]
            mov RDX,R12
            push RAX
            call .L_411240

            add RSP,32
            jmp .L_40d650
.L_40da9e:

            call __stack_chk_fail@PLT
.L_40daa3:

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
.L_40dab0:

            push R12
            push RBP
            mov R12,RDX
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,16
.L_40dac1:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40db40

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_4143ee]
            jne .L_40db0e

            test AL,2
            jne .L_40dc88
.L_40daef:

            test RBP,RBP
            je .L_40db01

            test BYTE PTR [RBP+17],8
            lea RSI,QWORD PTR [RIP+.L_41441e]
            jne .L_40db0e
.L_40db01:

            cmp R12,1
            je .L_40db50

            lea RSI,QWORD PTR [RIP+.L_414433]
.L_40db0e:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,R12
            mov RDI,RBX
            call .L_40ca80
.L_40db21:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40dcec

            add RSP,16
.L_40db39:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0x66
          .byte 0x90
.L_40db40:

            lea RSI,QWORD PTR [RIP+.L_4143d5]
            call .L_40c520

            jmp .L_40daef
          .byte 0x66
          .byte 0x90
.L_40db50:

            lea RSI,QWORD PTR [RSP+7]
            mov EDX,1
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40db21

            movzx R12D,BYTE PTR [RSP+7]
            cmp R12D,3
            jg .L_40dca0

            test RBP,RBP
            je .L_40dc6f

            mov RAX,QWORD PTR [RBP+16]
            test AL,1
            je .L_40dbac

            mov RCX,QWORD PTR [RBP+392]
            lea RDX,QWORD PTR [RCX-45000]
            cmp RDX,1000
            ja .L_40dcb4
.L_40dbac:

            test AL,4
            je .L_40dc6f

            mov RAX,QWORD PTR [RBP+400]
            sub RAX,30270
            cmp RAX,2000
            ja .L_40dc60

            mov RAX,QWORD PTR [RBP+408]
            sub RAX,31900
            cmp RAX,2000
            ja .L_40dc60

            mov RAX,QWORD PTR [RBP+416]
            sub RAX,63000
            cmp RAX,2000
            ja .L_40dc60

            mov RAX,QWORD PTR [RBP+424]
            sub RAX,32000
            cmp RAX,2000
            ja .L_40dc60

            mov RAX,QWORD PTR [RBP+432]
            sub RAX,29000
            cmp RAX,2000
            ja .L_40dc60

            mov RAX,QWORD PTR [RBP+440]
            sub RAX,59000
            cmp RAX,2000
            ja .L_40dc60

            mov RAX,QWORD PTR [RBP+448]
            sub RAX,14000
            cmp RAX,2000
            ja .L_40dc60

            mov RAX,QWORD PTR [RBP+456]
            sub RAX,5000
            cmp RAX,2000
            jbe .L_40dc6f
.L_40dc60:

            lea RSI,QWORD PTR [RIP+.L_413ce0]
            mov RDI,RBX
            call .L_40c5f0
.L_40dc6f:

            mov EDX,R12D
            mov RSI,RBP
            mov RDI,RBX
            call .L_411b40

            jmp .L_40db21
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40dc88:

            lea RSI,QWORD PTR [RIP+.L_414406]
            call .L_40c5f0

            jmp .L_40daef
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40dca0:

            lea RSI,QWORD PTR [RIP+.L_41444f]
            mov RDI,RBX
            call .L_40c5f0

            jmp .L_40db21
.L_40dcb4:

            lea RSI,QWORD PTR [RIP+.L_413ca8]
            mov RDI,RBX
            call .L_40c5f0

            mov ECX,DWORD PTR [RBX+1048]
            mov RDI,QWORD PTR [RIP+stderr]
            lea RDX,QWORD PTR [RIP+.L_414463]
            mov ESI,1
            xor EAX,EAX
            call __fprintf_chk@PLT

            mov RAX,QWORD PTR [RBP+16]
            jmp .L_40dbac
.L_40dcec:

            call __stack_chk_fail@PLT
.L_40dcf1:

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
.L_40dd00:

            push R13
            push R12
            mov R12,RSI
            push RBP
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,24
.L_40dd13:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40def8

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_414499]
            jne .L_40de97

            test AL,2
            jne .L_40df70
.L_40dd49:

            test R12,R12
            je .L_40dd5a

            test BYTE PTR [R12+17],16
            jne .L_40de90
.L_40dd5a:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            lea RSI,QWORD PTR [RBP+1]
            mov RDI,RBX
            call .L_40c040

            mov RDX,RBP
            mov RSI,RAX
            mov QWORD PTR [RBX+1208],RAX
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40df20

            mov RAX,QWORD PTR [RBX+1208]
            mov BYTE PTR [RAX+RBP*1],0
            mov RSI,QWORD PTR [RBX+1208]
            cmp BYTE PTR [RSI],0
            mov RAX,RSI
            je .L_40ddc9

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
.L_40ddc0:

            add RAX,1
            cmp BYTE PTR [RAX],0
            jne .L_40ddc0
.L_40ddc9:

            test RBP,RBP
            je .L_40ded0

            lea RDX,QWORD PTR [RSI+RBP*1-1]
            lea RCX,QWORD PTR [RAX+1]
            cmp RDX,RCX
            jbe .L_40ded0

            cmp BYTE PTR [RAX+1],0
            lea R13,QWORD PTR [RAX+2]
            jne .L_40df88
.L_40ddf2:

            sub R13,RSI
            mov R8,RSP
            xor ESI,ESI
            mov RCX,R13
            mov RDX,RBP
            mov RDI,RBX
            call .L_40cb40

            mov RAX,QWORD PTR [RSP]
            mov RSI,QWORD PTR [RBX+1208]
            mov RCX,RAX
            sub RCX,R13
            cmp RCX,3
            jbe .L_40df40

            cmp RAX,R13
            jb .L_40df40

            lea R8,QWORD PTR [RSI+R13*1]
            movzx R9D,BYTE PTR [R8]
            movzx EAX,BYTE PTR [R8+1]
            shl R9D,24
            shl EAX,16
            or R9D,EAX
            movzx EAX,BYTE PTR [R8+2]
            shl EAX,8
            or R9D,EAX
            movzx EAX,BYTE PTR [R8+3]
            movsxd R9,R9D
            or R9,RAX
            cmp RCX,R9
            ja .L_40df0c

            jae .L_40df09

            mov RDI,RBX
            call .L_40c120

            lea RSI,QWORD PTR [RIP+.L_413d78]
            mov QWORD PTR [RBX+1208],0
            mov RDI,RBX
            call .L_40c5f0

            jmp .L_40deaa
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40de90:

            lea RSI,QWORD PTR [RIP+.L_4144c9]
.L_40de97:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,RBP
            mov RDI,RBX
            call .L_40ca80
.L_40deaa:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40dfa3

            add RSP,24
.L_40dec2:

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
.L_40ded0:

            mov RDI,RBX
            call .L_40c120

            lea RSI,QWORD PTR [RIP+.L_4144de]
            mov QWORD PTR [RBX+1208],0
            mov RDI,RBX
            call .L_40c5f0

            jmp .L_40deaa
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40def8:

            lea RSI,QWORD PTR [RIP+.L_414480]
            call .L_40c520

            jmp .L_40dd49
.L_40df09:

            mov R9,RCX
.L_40df0c:

            mov RDX,RSI
            xor ECX,ECX
            mov RSI,R12
            mov RDI,RBX
            call .L_411c60

            nop
            nop
            nop
            nop
.L_40df20:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            mov QWORD PTR [RBX+1208],0
            jmp .L_40deaa
          .byte 0x90
.L_40df40:

            mov RDI,RBX
            call .L_40c120

            lea RSI,QWORD PTR [RIP+.L_413d48]
            mov QWORD PTR [RBX+1208],0
            mov RDI,RBX
            call .L_40c5f0

            jmp .L_40deaa
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40df70:

            lea RSI,QWORD PTR [RIP+.L_4144b1]
            call .L_40c5f0

            jmp .L_40dd49
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40df88:

            lea RSI,QWORD PTR [RIP+.L_413d18]
            mov RDI,RBX
            call .L_40c5f0

            mov RSI,QWORD PTR [RBX+1208]
            jmp .L_40ddf2
.L_40dfa3:

            call __stack_chk_fail@PLT
.L_40dfa8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40dfb0:

            push R13
            push R12
            mov R12,RSI
            push RBP
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,56
.L_40dfc3:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+40],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+496]
            test RAX,RAX
            je .L_40dffe

            cmp RAX,1
            je .L_40e157

            sub RAX,1
            cmp RAX,1
            mov QWORD PTR [RDI+496],RAX
            je .L_40e148
.L_40dffe:

            mov RAX,QWORD PTR [RBX+280]
            test AL,1
            je .L_40e190

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_41450c]
            jne .L_40e14f
.L_40e01c:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            lea RSI,QWORD PTR [RBP+1]
            mov RDI,RBX
            call .L_40c040

            mov RDX,RBP
            mov RSI,RAX
            mov QWORD PTR [RBX+1208],RAX
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40e108

            mov RAX,QWORD PTR [RBX+1208]
            mov BYTE PTR [RAX+RBP*1],0
            mov RSI,QWORD PTR [RBX+1208]
            cmp BYTE PTR [RSI],0
            mov RDX,RSI
            je .L_40e089

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40e080:

            add RDX,1
            cmp BYTE PTR [RDX],0
            jne .L_40e080
.L_40e089:

            cmp RBP,1
            lea RAX,QWORD PTR [RDX+1]
            jbe .L_40e168

            lea RCX,QWORD PTR [RSI+RBP*1-2]
            cmp RAX,RCX
            ja .L_40e168

            movzx EAX,BYTE PTR [RDX+1]
            lea R13,QWORD PTR [RDX+2]
            xor ECX,ECX
            mov EDI,EBP
            cmp AL,8
            mov BYTE PTR [RSP+8],AL
            mov RAX,R13
            setne CL
            sub RAX,RSI
            sub EDI,EAX
            lea ECX,DWORD PTR [RCX*4+6]
            mov EAX,EDI
            cdq 
            idiv ECX
            test EDX,EDX
            jne .L_40e280

            cdqe 
            movabs RDX,1844674407370955161
            cmp RAX,RDX
            mov QWORD PTR [RSP+24],RAX
            jbe .L_40e1a8

            lea RSI,QWORD PTR [RIP+.L_414553]
            mov RDI,RBX
            call .L_40c5f0

            jmp .L_40e122
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e108:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            mov QWORD PTR [RBX+1208],0
.L_40e122:

            mov RAX,QWORD PTR [RSP+40]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40e30a

            add RSP,56
.L_40e13a:

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
.L_40e148:

            lea RSI,QWORD PTR [RIP+.L_413da0]
.L_40e14f:

            mov RDI,RBX
            call .L_40c5f0
.L_40e157:

            mov RSI,RBP
            mov RDI,RBX
            call .L_40ca80

            jmp .L_40e122
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40e168:

            mov RDI,RBX
            call .L_40c120

            lea RSI,QWORD PTR [RIP+.L_414524]
            mov QWORD PTR [RBX+1208],0
            mov RDI,RBX
            call .L_40c5f0

            jmp .L_40e122
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40e190:

            lea RSI,QWORD PTR [RIP+.L_4144f3]
            mov RDI,RBX
            call .L_40c520

            jmp .L_40e01c
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40e1a8:

            lea RSI,QWORD PTR [RAX+RAX*4]
            mov RDI,RBX
            add RSI,RSI
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RSP+16],RAX
            je .L_40e2a7

            mov RDX,QWORD PTR [RSP+24]
            test RDX,RDX
            jle .L_40e2c0

            lea RDX,QWORD PTR [RDX+RDX*4]
            movzx EDI,BYTE PTR [RSP+8]
            lea RSI,QWORD PTR [RAX+RDX*2]
            jmp .L_40e251
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40e1e8:

            movzx ECX,BYTE PTR [R13+1]
            shl EDX,8
            add EDX,ECX
            mov WORD PTR [RAX],DX
            movzx EDX,BYTE PTR [R13+2]
            movzx ECX,BYTE PTR [R13+3]
            shl EDX,8
            add EDX,ECX
            mov WORD PTR [RAX+2],DX
            movzx EDX,BYTE PTR [R13+4]
            movzx ECX,BYTE PTR [R13+5]
            shl EDX,8
            add EDX,ECX
            mov WORD PTR [RAX+4],DX
            movzx EDX,BYTE PTR [R13+6]
            movzx ECX,BYTE PTR [R13+7]
            shl EDX,8
            add EDX,ECX
            lea RCX,QWORD PTR [R13+8]
            mov WORD PTR [RAX+6],DX
.L_40e232:

            movzx EDX,BYTE PTR [RCX]
            movzx R8D,BYTE PTR [RCX+1]
            add RAX,10
            lea R13,QWORD PTR [RCX+2]
            shl EDX,8
            add EDX,R8D
            mov WORD PTR [RAX-2],DX
            cmp RSI,RAX
            je .L_40e2c0
.L_40e251:

            cmp DIL,8
            movzx EDX,BYTE PTR [R13]
            jne .L_40e1e8

            mov WORD PTR [RAX],DX
            movzx EDX,BYTE PTR [R13+1]
            lea RCX,QWORD PTR [R13+4]
            mov WORD PTR [RAX+2],DX
            movzx EDX,BYTE PTR [R13+2]
            mov WORD PTR [RAX+4],DX
            movzx EDX,BYTE PTR [R13+3]
            mov WORD PTR [RAX+6],DX
            jmp .L_40e232
.L_40e280:

            mov RDI,RBX
            call .L_40c120

            lea RSI,QWORD PTR [RIP+.L_414539]
            mov QWORD PTR [RBX+1208],0
            mov RDI,RBX
            call .L_40c5f0

            jmp .L_40e122
.L_40e2a7:

            lea RSI,QWORD PTR [RIP+.L_413dc8]
            mov RDI,RBX
            call .L_40c5f0

            jmp .L_40e122
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40e2c0:

            mov RAX,QWORD PTR [RBX+1208]
            mov RDX,RSP
            mov ECX,1
            mov RSI,R12
            mov RDI,RBX
            mov QWORD PTR [RSP],RAX
            call .L_412030

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            mov RSI,QWORD PTR [RSP+16]
            mov QWORD PTR [RBX+1208],0
            mov RDI,RBX
            call .L_40c120

            jmp .L_40e122
.L_40e30a:

            call __stack_chk_fail@PLT
.L_40e30f:

            nop
.L_40e310:

            push R13
            push R12
            mov R12,RSI
            push RBP
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,280
.L_40e326:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+264],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40e410

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_414580]
            jne .L_40e383

            test R12,R12
            je .L_40e367

            test BYTE PTR [R12+16],16
            lea RSI,QWORD PTR [RIP+.L_414598]
            jne .L_40e383
.L_40e367:

            movzx EAX,BYTE PTR [RBX+630]
            test AL,AL
            jne .L_40e3c0

            cmp RBP,2
            je .L_40e4a8
.L_40e37c:

            lea RSI,QWORD PTR [RIP+.L_4145ad]
.L_40e383:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,RBP
            mov RDI,RBX
            call .L_40ca80
.L_40e396:

            mov RAX,QWORD PTR [RSP+264]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40e55a

            add RSP,280
.L_40e3b4:

            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40e3c0:

            cmp AL,2
            je .L_40e438

            cmp AL,3
            jne .L_40e428

            test BYTE PTR [RBX+280],2
            je .L_40e528
.L_40e3d5:

            movzx EAX,WORD PTR [RBX+616]
            cmp RAX,RBP
            jb .L_40e37c

            cmp RBP,256
            ja .L_40e37c

            test RBP,RBP
            jne .L_40e540

            lea RSI,QWORD PTR [RIP+.L_4145e2]
            mov RDI,RBX
            call .L_40c5f0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            jmp .L_40e396
          .byte 0x66
          .byte 0x90
.L_40e410:

            lea RSI,QWORD PTR [RIP+.L_414567]
            call .L_40c520

            jmp .L_40e367
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e428:

            lea RSI,QWORD PTR [RIP+.L_413df0]
            jmp .L_40e383
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40e438:

            cmp RBP,6
            jne .L_40e37c

            mov R13,RSP
            mov EDX,6
            mov RDI,RBX
            mov RSI,R13
            call .L_40c8a0

            mov EDX,1
            movzx EAX,BYTE PTR [RSP]
            mov WORD PTR [RBX+618],DX
            movzx EDX,BYTE PTR [RSP+1]
            shl EAX,8
            add EAX,EDX
            movzx EDX,BYTE PTR [RSP+3]
            mov WORD PTR [RBX+786],AX
            movzx EAX,BYTE PTR [RSP+2]
            shl EAX,8
            add EAX,EDX
            movzx EDX,BYTE PTR [RSP+5]
            mov WORD PTR [RBX+788],AX
            movzx EAX,BYTE PTR [RSP+4]
            shl EAX,8
            add EAX,EDX
            mov WORD PTR [RBX+790],AX
            jmp .L_40e4dc
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40e4a8:

            mov R13,RSP
            mov EDX,2
            mov RDI,RBX
            mov RSI,R13
            call .L_40c8a0

            movzx EAX,BYTE PTR [RSP]
            movzx EDX,BYTE PTR [RSP+1]
            mov ECX,1
            mov WORD PTR [RBX+618],CX
            shl EAX,8
            add EAX,EDX
            mov WORD PTR [RBX+792],AX
.L_40e4dc:

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            je .L_40e500

            xor EAX,EAX
            mov WORD PTR [RBX+618],AX
            jmp .L_40e396
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e500:

            movzx ECX,WORD PTR [RBX+618]
            lea R8,QWORD PTR [RBX+784]
            mov RDX,R13
            mov RSI,R12
            mov RDI,RBX
            call .L_411e60

            jmp .L_40e396
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e528:

            lea RSI,QWORD PTR [RIP+.L_4145c9]
            mov RDI,RBX
            call .L_40c5f0

            jmp .L_40e3d5
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40e540:

            mov R13,RSP
            mov RDX,RBP
            mov RDI,RBX
            mov RSI,R13
            call .L_40c8a0

            mov WORD PTR [RBX+618],BP
            jmp .L_40e4dc
.L_40e55a:

            call __stack_chk_fail@PLT
.L_40e55f:

            nop
.L_40e560:

            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,16
.L_40e571:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40e608

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_414612]
            jne .L_40e5d5

            movzx ECX,BYTE PTR [RDI+630]
            cmp CL,3
            je .L_40e6c0

            test R12,R12
            je .L_40e5b8

            test BYTE PTR [R12+16],32
            jne .L_40e6e4
.L_40e5b8:

            and ECX,2
            cmp CL,1
            sbb RDX,RDX
            and RDX,-4
            add RDX,6
            cmp RDX,RBP
            je .L_40e62a
.L_40e5ce:

            lea RSI,QWORD PTR [RIP+.L_414658]
.L_40e5d5:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,RBP
            mov RDI,RBX
            call .L_40ca80
.L_40e5e8:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40e776

            add RSP,16
.L_40e600:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40e608:

            lea RSI,QWORD PTR [RIP+.L_4145f9]
            call .L_40c520

            movzx ECX,BYTE PTR [RBX+630]
            cmp CL,3
            jne .L_40e5b8
.L_40e620:

            mov EDX,1
            cmp RDX,RBP
            jne .L_40e5ce
.L_40e62a:

            lea RSI,QWORD PTR [RSP+2]
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40e5e8

            movzx EDX,BYTE PTR [RBX+630]
            movzx EAX,BYTE PTR [RSP+2]
            cmp DL,3
            je .L_40e710

            movzx ECX,BYTE PTR [RSP+3]
            shl EAX,8
            add EAX,ECX
            and EDX,2
            je .L_40e6f0

            mov WORD PTR [RBX+650],AX
            movzx EAX,BYTE PTR [RSP+4]
            movzx EDX,BYTE PTR [RSP+5]
            shl EAX,8
            add EAX,EDX
            movzx EDX,BYTE PTR [RSP+7]
            mov WORD PTR [RBX+652],AX
            movzx EAX,BYTE PTR [RSP+6]
            shl EAX,8
            add EAX,EDX
            mov WORD PTR [RBX+654],AX
.L_40e6a0:

            lea RDX,QWORD PTR [RBX+648]
            mov RSI,R12
            mov RDI,RBX
            call .L_411090

            jmp .L_40e5e8
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e6c0:

            test AL,2
            lea RSI,QWORD PTR [RIP+.L_41462a]
            je .L_40e5d5

            test R12,R12
            je .L_40e620

            test BYTE PTR [R12+16],32
            je .L_40e620
.L_40e6e4:

            lea RSI,QWORD PTR [RIP+.L_414643]
            jmp .L_40e5d5
.L_40e6f0:

            mov WORD PTR [RBX+656],AX
            mov WORD PTR [RBX+654],AX
            mov WORD PTR [RBX+652],AX
            mov WORD PTR [RBX+650],AX
            jmp .L_40e6a0
          .byte 0x66
          .byte 0x90
.L_40e710:

            test R12,R12
            mov BYTE PTR [RBX+648],AL
            je .L_40e6a0

            movzx EDX,WORD PTR [R12+40]
            test DX,DX
            je .L_40e6a0

            movzx ECX,AL
            cmp DX,CX
            jbe .L_40e762

            lea RAX,QWORD PTR [RAX+RAX*2]
            add RAX,QWORD PTR [RBX+608]
            movzx EDX,BYTE PTR [RAX]
            mov WORD PTR [RBX+650],DX
            movzx EDX,BYTE PTR [RAX+1]
            mov WORD PTR [RBX+652],DX
            movzx EAX,BYTE PTR [RAX+2]
            mov WORD PTR [RBX+654],AX
            jmp .L_40e6a0
.L_40e762:

            lea RSI,QWORD PTR [RIP+.L_413e20]
            mov RDI,RBX
            call .L_40c5f0

            jmp .L_40e5e8
.L_40e776:

            call __stack_chk_fail@PLT
.L_40e77b:

            nop
            nop
            nop
            nop
            nop
.L_40e780:

            push R15
            push R14
            push R13
            push R12
            mov R12,RDX
            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,536
.L_40e79a:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+520],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40e840

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_41468d]
            jne .L_40e801

            test AL,2
            je .L_40e850

            test RBP,RBP
            je .L_40e7e1

            test BYTE PTR [RBP+16],64
            lea RSI,QWORD PTR [RIP+.L_4146be]
            jne .L_40e801
.L_40e7e1:

            cmp R12,512
            ja .L_40e7fa

            movzx EAX,WORD PTR [RBX+616]
            add EAX,EAX
            cdqe 
            cmp RAX,R12
            je .L_40e860
.L_40e7fa:

            lea RSI,QWORD PTR [RIP+.L_4146d3]
.L_40e801:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,R12
            mov RDI,RBX
            call .L_40ca80
.L_40e814:

            mov RAX,QWORD PTR [RSP+520]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40e8da

            add RSP,536
.L_40e832:

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
.L_40e840:

            lea RSI,QWORD PTR [RIP+.L_414674]
            call .L_40c520

            jmp .L_40e7e1
          .byte 0x66
          .byte 0x90
.L_40e850:

            lea RSI,QWORD PTR [RIP+.L_4146a5]
            jmp .L_40e801
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e860:

            shr R12,1
            je .L_40e8b5

            mov R15,RSP
            lea EAX,DWORD PTR [R12-1]
            lea R12,QWORD PTR [RSP+518]
            lea R14,QWORD PTR [R15+2]
            lea R13,QWORD PTR [R14+RAX*2]
            jmp .L_40e884
          .byte 0x90
.L_40e880:

            add R14,2
.L_40e884:

            mov EDX,2
            mov RSI,R12
            mov RDI,RBX
            call .L_40c8a0

            movzx EAX,BYTE PTR [RSP+518]
            movzx EDX,BYTE PTR [RSP+519]
            shl EAX,8
            add EAX,EDX
            cmp R14,R13
            mov WORD PTR [R15],AX
            mov R15,R14
            jne .L_40e880
.L_40e8b5:

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40e814

            mov RDX,RSP
            mov RSI,RBP
            mov RDI,RBX
            call .L_411570

            jmp .L_40e814
.L_40e8da:

            call __stack_chk_fail@PLT
.L_40e8df:

            nop
.L_40e8e0:

            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,32
.L_40e8f1:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40ea10

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_414708]
            jne .L_40e9e0

            test R12,R12
            je .L_40e930

            test BYTE PTR [R12+16],128
            jne .L_40e9d0
.L_40e930:

            cmp RBP,9
            lea RSI,QWORD PTR [RIP+.L_414735]
            jne .L_40e9e0

            lea RSI,QWORD PTR [RSP+15]
            mov EDX,9
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40e9f3

            movzx ECX,BYTE PTR [RSP+19]
            movzx EAX,BYTE PTR [RSP+22]
            mov RDI,RBX
            movzx R8D,BYTE PTR [RSP+23]
            shl RCX,24
            mov RDX,RCX
            movzx ECX,BYTE PTR [RSP+20]
            shl RCX,16
            add RCX,RDX
            movzx EDX,BYTE PTR [RSP+15]
            add RAX,RCX
            movzx ECX,BYTE PTR [RSP+21]
            shl RDX,24
            mov RSI,RDX
            movzx EDX,BYTE PTR [RSP+16]
            shl RCX,8
            add RCX,RAX
            movzx EAX,BYTE PTR [RSP+18]
            shl RDX,16
            add RDX,RSI
            mov RSI,R12
            add RAX,RDX
            movzx EDX,BYTE PTR [RSP+17]
            shl RDX,8
            add RDX,RAX
            call .L_4119d0

            jmp .L_40e9f3
.L_40e9d0:

            lea RSI,QWORD PTR [RIP+.L_414720]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40e9e0:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,RBP
            mov RDI,RBX
            call .L_40ca80
.L_40e9f3:

            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40ea21

            add RSP,32
.L_40ea07:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40ea10:

            lea RSI,QWORD PTR [RIP+.L_4146ef]
            call .L_40c520

            jmp .L_40e930
.L_40ea21:

            call __stack_chk_fail@PLT
.L_40ea26:

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
.L_40ea30:

            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,32
.L_40ea41:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40eb60

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_41476a]
            jne .L_40eb30

            test R12,R12
            je .L_40ea80

            test BYTE PTR [R12+17],1
            jne .L_40eb20
.L_40ea80:

            cmp RBP,9
            lea RSI,QWORD PTR [RIP+.L_414797]
            jne .L_40eb30

            lea RSI,QWORD PTR [RSP+15]
            mov EDX,9
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40eb43

            movzx EAX,BYTE PTR [RSP+19]
            movzx ECX,BYTE PTR [RSP+20]
            mov RSI,R12
            movzx EDX,BYTE PTR [RSP+16]
            movzx R8D,BYTE PTR [RSP+23]
            mov RDI,RBX
            shl RCX,16
            shl RAX,24
            lea RAX,QWORD PTR [RAX+RCX*1]
            movzx ECX,BYTE PTR [RSP+21]
            shl RDX,16
            shl RCX,8
            add RCX,RAX
            movzx EAX,BYTE PTR [RSP+22]
            add RCX,RAX
            movzx EAX,BYTE PTR [RSP+15]
            shl RAX,24
            lea RAX,QWORD PTR [RAX+RDX*1]
            movzx EDX,BYTE PTR [RSP+17]
            shl RDX,8
            add RDX,RAX
            movzx EAX,BYTE PTR [RSP+18]
            add RDX,RAX
            call .L_411780

            jmp .L_40eb43
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40eb20:

            lea RSI,QWORD PTR [RIP+.L_414782]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40eb30:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,RBP
            mov RDI,RBX
            call .L_40ca80
.L_40eb43:

            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40eb71

            add RSP,32
.L_40eb57:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40eb60:

            lea RSI,QWORD PTR [RIP+.L_414751]
            call .L_40c520

            jmp .L_40ea80
.L_40eb71:

            call __stack_chk_fail@PLT
.L_40eb76:

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
.L_40eb80:

            push R15
            push R14
            push R13
            push R12
            mov R12,RDX
            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,24
.L_40eb97:

            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40ed00

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_4147cc]
            jne .L_40ec97

            test RBP,RBP
            je .L_40ebc4

            test BYTE PTR [RBP+17],4
            jne .L_40ec90
.L_40ebc4:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            lea RSI,QWORD PTR [R12+1]
            mov RDI,RBX
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RBX+1208],RAX
            lea RSI,QWORD PTR [RIP+.L_4147f9]
            je .L_40ed32

            mov RSI,RAX
            mov RDX,R12
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40eccf

            mov RAX,QWORD PTR [RBX+1208]
            mov BYTE PTR [RAX+R12*1],0
            mov R15,QWORD PTR [RBX+1208]
            cmp BYTE PTR [R15],0
            mov RAX,R15
            je .L_40ec41

            nop
            nop
            nop
            nop
            nop
.L_40ec38:

            add RAX,1
            cmp BYTE PTR [RAX],0
            jne .L_40ec38
.L_40ec41:

            cmp R12,11
            jbe .L_40ecc0

            add R15,R12
            mov RDX,R15
            sub RDX,RAX
            cmp RDX,12
            jle .L_40ecc0

            movzx R14D,BYTE PTR [RAX+9]
            movzx R13D,BYTE PTR [RAX+10]
            test R14B,R14B
            jne .L_40ec6b

            cmp R13B,2
            jne .L_40ec86
.L_40ec6b:

            lea ECX,DWORD PTR [R14-1]
            cmp CL,1
            setbe SIL
            cmp R13B,3
            setne CL
            test SIL,CL
            je .L_40ed50
.L_40ec86:

            lea RSI,QWORD PTR [RIP+.L_413e48]
            jmp .L_40ecc7
          .byte 0x90
.L_40ec90:

            lea RSI,QWORD PTR [RIP+.L_4147e4]
.L_40ec97:

            mov RDI,RBX
            call .L_40c5f0

            add RSP,24
.L_40eca3:

            mov RSI,R12
            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40ca80
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40ecc0:

            lea RSI,QWORD PTR [RIP+.L_414815]
.L_40ecc7:

            mov RDI,RBX
            call .L_40c5f0
.L_40eccf:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            mov QWORD PTR [RBX+1208],0
            add RSP,24
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
.L_40ed00:

            lea RSI,QWORD PTR [RIP+.L_4147b3]
            call .L_40c520

            jmp .L_40ebc4
.L_40ed11:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            lea RSI,QWORD PTR [RIP+.L_414827]
            mov QWORD PTR [RBX+1208],0
.L_40ed32:

            add RSP,24
            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40c5f0
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40ed50:

            cmp R14B,3
            jne .L_40ed60

            cmp R13B,4
            jne .L_40ec86
.L_40ed60:

            movzx ECX,BYTE PTR [RAX+1]
            cmp R14B,3
            mov BYTE PTR [RSP+12],CL
            movzx ECX,BYTE PTR [RAX+2]
            mov BYTE PTR [RSP+13],CL
            movzx ECX,BYTE PTR [RAX+3]
            mov BYTE PTR [RSP+14],CL
            movzx ECX,BYTE PTR [RAX+4]
            mov BYTE PTR [RSP+15],CL
            movzx ECX,BYTE PTR [RAX+5]
            mov BYTE PTR [RSP+8],CL
            movzx ECX,BYTE PTR [RAX+6]
            mov BYTE PTR [RSP+9],CL
            movzx ECX,BYTE PTR [RAX+7]
            mov BYTE PTR [RSP+10],CL
            movzx ECX,BYTE PTR [RAX+8]
            mov BYTE PTR [RSP+11],CL
            jbe .L_40edbd

            lea RSI,QWORD PTR [RIP+.L_413e78]
            mov RDI,RBX
            mov QWORD PTR [RSP],RAX
            call .L_40c5f0

            mov RAX,QWORD PTR [RSP]
.L_40edbd:

            cmp BYTE PTR [RAX+11],0
            lea R8,QWORD PTR [RAX+11]
            mov R12,R8
            je .L_40eddb

            nop
            nop
            nop
            nop
            nop
            nop
.L_40edd0:

            add R12,1
            cmp BYTE PTR [R12],0
            jne .L_40edd0
.L_40eddb:

            movzx ESI,R13B
            mov RDI,RBX
            mov QWORD PTR [RSP],R8
            shl RSI,3
            call .L_40c170

            test RAX,RAX
            je .L_40ed11

            movzx ESI,R13B
            mov R8,QWORD PTR [RSP]
            test ESI,ESI
            je .L_40eea0

            lea EDX,DWORD PTR [RSI-1]
            mov RDI,RAX
            lea R11,QWORD PTR [RAX+RDX*8+8]
            lea RDX,QWORD PTR [R15+1]
.L_40ee17:

            lea RCX,QWORD PTR [R12+1]
            cmp R15,RCX
            mov QWORD PTR [RDI],RCX
            jb .L_40ee3e

            cmp BYTE PTR [R12+1],0
            jne .L_40ee35

            jmp .L_40ee90
          .byte 0x66
          .byte 0x90
.L_40ee30:

            cmp BYTE PTR [RCX],0
            je .L_40ee90
.L_40ee35:

            add RCX,1
            cmp RDX,RCX
            jne .L_40ee30
.L_40ee3e:

            lea RSI,QWORD PTR [RIP+.L_414815]
            mov RDI,RBX
            mov QWORD PTR [RSP],RAX
            call .L_40c5f0
.L_40ee51:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            mov QWORD PTR [RBX+1208],0
            mov RAX,QWORD PTR [RSP]
            add RSP,24
.L_40ee73:

            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            mov RSI,RAX
            jmp .L_40c120
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40ee90:

            add RDI,8
            mov R12,RCX
            cmp RDI,R11
            jne .L_40ee17
.L_40eea0:

            movzx EDI,BYTE PTR [RSP+8]
            movzx EDX,BYTE PTR [RSP+9]
            sub RSP,8
.L_40eeae:

            movzx ECX,BYTE PTR [RSP+20]
            movzx R12D,BYTE PTR [RSP+21]
            movzx R9D,R14B
            movzx R13D,BYTE PTR [RSP+22]
            movzx R10D,BYTE PTR [RSP+19]
            shl RDX,16
            shl RDI,24
            add RDI,RDX
            movzx EDX,BYTE PTR [RSP+18]
            shl RCX,24
            shl R12,16
            shl R13,8
            add RCX,R12
            add RCX,R13
            shl RDX,8
            add RDI,RDX
            movzx EDX,BYTE PTR [RSP+23]
            push RAX
.L_40eef8:

            mov QWORD PTR [RSP+16],RAX
            push R8
            lea R8,QWORD PTR [RDI+R10*1]
            push RSI
            mov RDI,RBX
            mov RSI,RBP
            add RCX,RDX
            mov RDX,QWORD PTR [RBX+1208]
            call .L_4117b0

            add RSP,32
            jmp .L_40ee51
.L_40ef22:

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
.L_40ef30:

            push R14
            push R13
            mov R13,RSI
            push R12
            push RBP
            mov RBP,RDX
            push RBX
            mov RBX,RDI
            sub RSP,32
.L_40ef45:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40f140

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_41485b]
            jne .L_40f0d0

            test R13,R13
            je .L_40ef83

            test BYTE PTR [R13+17],64
            jne .L_40f0c0
.L_40ef83:

            cmp RBP,3
            lea RSI,QWORD PTR [RIP+.L_414888]
            jbe .L_40f0d0
.L_40ef94:

            lea RSI,QWORD PTR [RBP+1]
            mov RDI,RBX
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RBX+1208],RAX
            lea RSI,QWORD PTR [RIP+.L_413ea8]
            je .L_40f0d0

            mov RSI,RAX
            mov RDX,RBP
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40f120

            mov RAX,QWORD PTR [RBX+1208]
            lea R14,QWORD PTR [RSP+16]
            mov RSI,R14
            mov BYTE PTR [RAX+RBP*1],0
            mov RAX,QWORD PTR [RBX+1208]
            lea RDI,QWORD PTR [RAX+1]
            call strtod@PLT

            mov RAX,QWORD PTR [RSP+16]
            movapd XMM2,XMM0
            lea RSI,QWORD PTR [RIP+.L_413ed8]
            cmp BYTE PTR [RAX],0
            jne .L_40f098

            mov RAX,QWORD PTR [RBX+1208]
            cmp BYTE PTR [RAX+1],0
            lea RDI,QWORD PTR [RAX+1]
            je .L_40f031

            nop
            nop
            nop
            nop
.L_40f028:

            add RDI,1
            cmp BYTE PTR [RDI],0
            jne .L_40f028
.L_40f031:

            lea R12,QWORD PTR [RDI+1]
            add RAX,RBP
            lea RSI,QWORD PTR [RIP+.L_41489d]
            cmp R12,RAX
            ja .L_40f098

            mov RSI,R14
            mov RDI,R12
            movsd QWORD PTR [RSP+8],XMM2
            call strtod@PLT

            mov RAX,QWORD PTR [RSP+16]
            lea RSI,QWORD PTR [RIP+.L_413f00]
            movsd XMM2,QWORD PTR [RSP+8]
            cmp BYTE PTR [RAX],0
            jne .L_40f098

            mov RAX,QWORD PTR [RBX+1208]
            add RBP,RAX
            cmp R12,RBP
            ja .L_40f08b

            pxor XMM1,XMM1
            ucomisd XMM1,XMM2
            jae .L_40f08b

            ucomisd XMM1,XMM0
            jb .L_40f100
.L_40f08b:

            lea RSI,QWORD PTR [RIP+.L_4148b2]
            nop
            nop
            nop
            nop
            nop
            nop
.L_40f098:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            mov QWORD PTR [RBX+1208],0
            jmp .L_40f0e3
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40f0c0:

            lea RSI,QWORD PTR [RIP+.L_414873]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40f0d0:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,RBP
            mov RDI,RBX
            call .L_40ca80
.L_40f0e3:

            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40f151

            add RSP,32
.L_40f0f7:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
.L_40f100:

            movsx EDX,BYTE PTR [RAX]
            movapd XMM1,XMM0
            movapd XMM0,XMM2
            mov RSI,R13
            mov RDI,RBX
            call .L_4119a0

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
.L_40f120:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            mov QWORD PTR [RBX+1208],0
            jmp .L_40f0e3
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40f140:

            lea RSI,QWORD PTR [RIP+.L_414842]
            call .L_40c520

            jmp .L_40ef94
.L_40f151:

            call __stack_chk_fail@PLT
.L_40f156:

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
.L_40f160:

            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,32
.L_40f171:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40f270

            test RSI,RSI
            je .L_40f1a4

            test BYTE PTR [R12+17],2
            lea RSI,QWORD PTR [RIP+.L_4148dc]
            jne .L_40f1b5
.L_40f1a4:

            test AL,4
            jne .L_40f1e8
.L_40f1a8:

            cmp RBP,7
            je .L_40f1f9
.L_40f1ae:

            lea RSI,QWORD PTR [RIP+.L_4148f1]
.L_40f1b5:

            mov RDI,RBX
            call .L_40c5f0

            mov RSI,RBP
            mov RDI,RBX
            call .L_40ca80
.L_40f1c8:

            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40f290

            add RSP,32
.L_40f1e0:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40f1e8:

            or RAX,8
            cmp RBP,7
            mov QWORD PTR [RBX+280],RAX
            jne .L_40f1ae
.L_40f1f9:

            lea RSI,QWORD PTR [RSP+17]
            mov EDX,7
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40f1c8

            movzx EAX,BYTE PTR [RSP+23]
            movzx EDX,BYTE PTR [RSP+18]
            mov RSI,R12
            mov RDI,RBX
            mov BYTE PTR [RSP+14],AL
            movzx EAX,BYTE PTR [RSP+22]
            mov BYTE PTR [RSP+13],AL
            movzx EAX,BYTE PTR [RSP+21]
            mov BYTE PTR [RSP+12],AL
            movzx EAX,BYTE PTR [RSP+20]
            mov BYTE PTR [RSP+11],AL
            movzx EAX,BYTE PTR [RSP+19]
            mov BYTE PTR [RSP+10],AL
            movzx EAX,BYTE PTR [RSP+17]
            shl EAX,8
            add EAX,EDX
            lea RDX,QWORD PTR [RSP+8]
            mov WORD PTR [RSP+8],AX
            call .L_411e00

            jmp .L_40f1c8
          .byte 0x90
.L_40f270:

            lea RSI,QWORD PTR [RIP+.L_4148c4]
            call .L_40c520

            mov RAX,QWORD PTR [RBX+280]
            test AL,4
            je .L_40f1a8

            jmp .L_40f1e8
.L_40f290:

            call __stack_chk_fail@PLT
.L_40f295:

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
.L_40f2a0:

            push R14
            push R13
            push R12
            push RBP
            mov R12,RSI
            push RBX
.L_40f2ab:

            mov RAX,QWORD PTR [RDI+496]
            mov RBX,RDI
            mov RBP,RDX
            test RAX,RAX
            je .L_40f2dc

            cmp RAX,1
            je .L_40f47c

            sub RAX,1
            cmp RAX,1
            mov QWORD PTR [RDI+496],RAX
            je .L_40f470
.L_40f2dc:

            mov RAX,QWORD PTR [RBX+280]
            test AL,1
            je .L_40f450
.L_40f2eb:

            test AL,4
            jne .L_40f3f0
.L_40f2f3:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            lea RSI,QWORD PTR [RBP+1]
            mov RDI,RBX
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RBX+1208],RAX
            lea RSI,QWORD PTR [RIP+.L_413f50]
            je .L_40f43f

            mov RSI,RAX
            mov RDX,RBP
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40f40f

            mov R14,QWORD PTR [RBX+1208]
            lea RAX,QWORD PTR [R14+RBP*1]
            mov RBP,R14
            mov BYTE PTR [RAX],0
            cmp BYTE PTR [R14],0
            je .L_40f36a

            nop
            nop
            nop
            nop
.L_40f360:

            add RBP,1
            cmp BYTE PTR [RBP],0
            jne .L_40f360
.L_40f36a:

            cmp RAX,RBP
            mov ESI,32
            mov RDI,RBX
            setne AL
            movzx EAX,AL
            add RBP,RAX
            call .L_40c170

            test RAX,RAX
            mov R13,RAX
            je .L_40f400

            mov RDI,RBP
            mov QWORD PTR [RAX+16],RBP
            mov DWORD PTR [RAX],4294967295
            mov QWORD PTR [RAX+8],R14
            call strlen@PLT

            mov ECX,1
            mov RDX,R13
            mov RSI,R12
            mov RDI,RBX
            mov QWORD PTR [R13+24],RAX
            call .L_411dd0

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            mov EBP,EAX
            call .L_40c120

            mov QWORD PTR [RBX+1208],0
            mov RSI,R13
            mov RDI,RBX
            call .L_40c120

            test EBP,EBP
            jne .L_40f438

            pop RBX
.L_40f3e4:

            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40f3f0:

            or RAX,8
            mov QWORD PTR [RBX+280],RAX
            jmp .L_40f2f3
.L_40f400:

            lea RSI,QWORD PTR [RIP+.L_413f78]
            mov RDI,RBX
            call .L_40c5f0
.L_40f40f:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            mov QWORD PTR [RBX+1208],0
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
.L_40f438:

            lea RSI,QWORD PTR [RIP+.L_413fa8]
.L_40f43f:

            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            jmp .L_40c5f0
          .byte 0x90
.L_40f450:

            lea RSI,QWORD PTR [RIP+.L_41490d]
            mov RDI,RBX
            call .L_40c520

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40f2eb
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40f470:

            lea RSI,QWORD PTR [RIP+.L_413f28]
            call .L_40c5f0
.L_40f47c:

            mov RSI,RBP
            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            jmp .L_40ca80
.L_40f48f:

            nop
.L_40f490:

            push R13
            push R12
            mov R13,RSI
            push RBP
            push RBX
            mov R12,RDX
            mov RBX,RDI
            sub RSP,24
.L_40f4a3:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+496]
            test RAX,RAX
            je .L_40f4de

            cmp RAX,1
            je .L_40f6e4

            sub RAX,1
            cmp RAX,1
            mov QWORD PTR [RDI+496],RAX
            je .L_40f6d8
.L_40f4de:

            mov RAX,QWORD PTR [RBX+280]
            test AL,1
            je .L_40f6a0
.L_40f4ed:

            test AL,4
            jne .L_40f638
.L_40f4f5:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            lea RSI,QWORD PTR [R12+1]
            mov RDI,RBX
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RBX+1208],RAX
            je .L_40f6c0

            mov RSI,RAX
            mov RDX,R12
            mov RDI,RBX
            call .L_40c8a0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40ca80

            test EAX,EAX
            jne .L_40f65f

            mov RAX,QWORD PTR [RBX+1208]
            mov BYTE PTR [RAX+R12*1],0
            mov RAX,QWORD PTR [RBX+1208]
            cmp BYTE PTR [RAX],0
            mov RBP,RAX
            je .L_40f56a

            nop
            nop
            nop
            nop
.L_40f560:

            add RBP,1
            cmp BYTE PTR [RBP],0
            jne .L_40f560
.L_40f56a:

            cmp R12,1
            jbe .L_40f650

            lea RDX,QWORD PTR [RAX+R12*1-2]
            cmp RBP,RDX
            jae .L_40f650

            cmp BYTE PTR [RBP+1],0
            jne .L_40f6f8
.L_40f58c:

            add RBP,2
            mov RDX,R12
            xor ESI,ESI
            sub RBP,RAX
            mov R8,RSP
            mov RDI,RBX
            mov RCX,RBP
            call .L_40cb40

            mov ESI,32
            mov RDI,RBX
            call .L_40c170

            test RAX,RAX
            mov R12,RAX
            je .L_40f718

            mov DWORD PTR [RAX],0
            mov RAX,QWORD PTR [RBX+1208]
            mov ECX,1
            mov RDX,R12
            mov RSI,R13
            mov RDI,RBX
            add RBP,RAX
            mov QWORD PTR [R12+8],RAX
            mov RAX,QWORD PTR [RSP]
            mov QWORD PTR [R12+16],RBP
            mov QWORD PTR [R12+24],RAX
            call .L_411dd0

            mov RSI,R12
            mov RDI,RBX
            mov EBP,EAX
            call .L_40c120

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            test EBP,EBP
            mov QWORD PTR [RBX+1208],0
            je .L_40f679

            lea RSI,QWORD PTR [RIP+.L_414080]
            mov RDI,RBX
            call .L_40c520

            jmp .L_40f679
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f638:

            or RAX,8
            mov QWORD PTR [RBX+280],RAX
            jmp .L_40f4f5
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f650:

            lea RSI,QWORD PTR [RIP+.L_41493f]
.L_40f657:

            mov RDI,RBX
            call .L_40c5f0
.L_40f65f:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40c120

            mov QWORD PTR [RBX+1208],0
.L_40f679:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40f724

            add RSP,24
.L_40f691:

            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f6a0:

            lea RSI,QWORD PTR [RIP+.L_414926]
            mov RDI,RBX
            call .L_40c520

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40f4ed
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40f6c0:

            lea RSI,QWORD PTR [RIP+.L_414000]
            mov RDI,RBX
            call .L_40c5f0

            jmp .L_40f679
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f6d8:

            lea RSI,QWORD PTR [RIP+.L_413fd8]
            call .L_40c5f0
.L_40f6e4:

            mov RSI,R12
            mov RDI,RBX
            call .L_40ca80

            jmp .L_40f679
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f6f8:

            lea RSI,QWORD PTR [RIP+.L_414028]
            mov RDI,RBX
            call .L_40c5f0

            mov RAX,QWORD PTR [RBX+1208]
            jmp .L_40f58c
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40f718:

            lea RSI,QWORD PTR [RIP+.L_414050]
            jmp .L_40f657
.L_40f724:

            call __stack_chk_fail@PLT
.L_40f729:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40f730:

            push R14
            push R13
            push R12
            push RBP
            mov R12,RSI
            push RBX
.L_40f73b:

            mov RAX,QWORD PTR [RDI+496]
            mov RBX,RDI
            mov RBP,RDX
            test RAX,RAX
            je .L_40f76c

            cmp RAX,1
            je .L_40f848

            sub RAX,1
            cmp RAX,1
            mov QWORD PTR [RDI+496],RAX
            je .L_40f8c8
.L_40f76c:

            mov RAX,QWORD PTR [RBX+280]
            test AL,4
            je .L_40f790

            mov ECX,DWORD PTR [RIP+.L_6191a7]
            cmp DWORD PTR [RBX+620],ECX
            je .L_40f790

            or RAX,8
            mov QWORD PTR [RBX+280],RAX
.L_40f790:

            test BYTE PTR [RBX+620],32
            je .L_40f888
.L_40f79d:

            test BYTE PTR [RBX+289],128
            jne .L_40f7b4

            cmp QWORD PTR [RBX+1008],0
            je .L_40f848
.L_40f7b4:

            lea R13,QWORD PTR [RBX+620]
.L_40f7bb:

            mov EAX,DWORD PTR [R13]
            test RBP,RBP
            lea R14,QWORD PTR [RBX+1160]
            mov BYTE PTR [RBX+1164],0
            mov QWORD PTR [RBX+1176],RBP
            mov DWORD PTR [RBX+1160],EAX
            jne .L_40f860

            mov QWORD PTR [RBX+1168],0
.L_40f7ee:

            mov RAX,QWORD PTR [RBX+1008]
            test RAX,RAX
            je .L_40f819

            mov RSI,R14
            mov RDI,RBX
            call RAX

            test EAX,EAX
            js .L_40f8e0

            jne .L_40f82c

            test BYTE PTR [RBX+620],32
            je .L_40f8f8
.L_40f819:

            mov ECX,1
            mov RDX,R14
            mov RSI,R12
            mov RDI,RBX
            call .L_412210
.L_40f82c:

            mov RSI,QWORD PTR [RBX+1168]
            mov RDI,RBX
            xor EBP,EBP
            call .L_40c120

            mov QWORD PTR [RBX+1168],0
.L_40f848:

            mov RSI,RBP
            mov RDI,RBX
            pop RBX
.L_40f84f:

            pop RBP
            pop R12
            pop R13
            pop R14
            jmp .L_40ca80
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40f860:

            mov RSI,RBP
            mov RDI,RBX
            call .L_40c040

            mov RDX,RBP
            mov QWORD PTR [RBX+1168],RAX
            mov RSI,RAX
            mov RDI,RBX
            call .L_40c8a0

            jmp .L_40f7ee
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40f888:

            lea R13,QWORD PTR [RBX+620]
            mov RDI,RBX
            mov RSI,R13
            call .L_402000

            cmp EAX,3
            je .L_40f79d

            cmp QWORD PTR [RBX+1008],0
            jne .L_40f7bb

            lea RSI,QWORD PTR [RIP+.L_414954]
            mov RDI,RBX
            call .L_40c640

            jmp .L_40f79d
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40f8c8:

            lea RSI,QWORD PTR [RIP+.L_4140b0]
            call .L_40c5f0

            jmp .L_40f848
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f8e0:

            lea RSI,QWORD PTR [RIP+.L_41496b]
            mov RDI,RBX
            call .L_40c640

            jmp .L_40f82c
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40f8f8:

            mov RSI,R13
            mov RDI,RBX
            call .L_402000

            cmp EAX,3
            je .L_40f819

            lea RSI,QWORD PTR [RIP+.L_414954]
            mov RDI,RBX
            call .L_40c640

            jmp .L_40f819
.L_40f920:

            movzx EAX,BYTE PTR [RSI]
            lea EDX,DWORD PTR [RAX-65]
            cmp DL,57
            ja .L_40f970

            sub EAX,91
            cmp AL,5
            jbe .L_40f970

            movzx EAX,BYTE PTR [RSI+1]
            lea EDX,DWORD PTR [RAX-65]
            cmp DL,57
            ja .L_40f970

            sub EAX,91
            cmp AL,5
            jbe .L_40f970

            movzx EAX,BYTE PTR [RSI+2]
            lea EDX,DWORD PTR [RAX-65]
            cmp DL,57
            ja .L_40f970

            sub EAX,91
            cmp AL,5
            jbe .L_40f970

            movzx EAX,BYTE PTR [RSI+3]
            lea EDX,DWORD PTR [RAX-65]
            cmp DL,57
            ja .L_40f970

            sub EAX,91
            cmp AL,5
            jbe .L_40f970

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40f970:

            lea RSI,QWORD PTR [RIP+.L_41497f]
            jmp .L_40c640
.L_40f97c:

            nop
            nop
            nop
            nop
.L_40f980:

            push R12
            push RBP
            mov EDX,8
            push RBX
            mov RBX,RDI
            sub RSP,16
.L_40f990:

            mov RBP,RSP
            mov RSI,RBP
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            call .L_405c50

            mov RSI,RBP
            mov RDI,RBX
            lea RBP,QWORD PTR [RBX+620]
            call .L_40c8d0

            mov R12,RAX
            mov EAX,DWORD PTR [RSP+4]
            mov RDI,RBX
            mov DWORD PTR [RBX+620],EAX
            call .L_4016a0

            mov EDX,4
            mov RSI,RBP
            mov RDI,RBX
            call .L_4016c0

            mov RSI,RBP
            mov RDI,RBX
            call .L_40f920

            mov RCX,QWORD PTR [RSP+8]
            xor RCX,QWORD PTR FS:[40]
            jne .L_40fa09

            add RSP,16
.L_40fa01:

            mov RAX,R12
            pop RBX
            pop RBP
            pop R12
            ret 
.L_40fa09:

            call __stack_chk_fail@PLT
.L_40fa0e:

            nop
            nop
.L_40fa10:

            push R15
            push R14
            cmp EDX,255
            push R13
            push R12
            mov RAX,RSI
            push RBP
            push RBX
.L_40fa23:

            mov RBX,QWORD PTR [RDI+528]
            movzx ECX,BYTE PTR [RDI+587]
            mov R8,QWORD PTR [RDI+456]
            lea RSI,QWORD PTR [RBX+1]
            je .L_40fb00

            cmp CL,2
            je .L_40fb40

            cmp CL,4
            je .L_40fcb0

            cmp CL,1
            je .L_40fbf8

            shr CL,3
            test R8,R8
            movzx ECX,CL
            je .L_40faf0

            mov EBX,ECX
            mov EDI,4294967168
            mov R14D,ECX
            and EBX,2
            xor R9D,R9D
            mov R12D,ECX
            and R14D,4
            mov DWORD PTR [RSP-20],EBX
            mov R11D,EDI
            jmp .L_40fab0
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40fa90:

            mov R10D,EDI
            add RSI,RCX
            add RAX,RCX
            shr R10B,1
            cmp DIL,1
            mov EDI,R10D
            cmove EDI,R11D
            add R9,1
            cmp R8,R9
            je .L_40faf0
.L_40fab0:

            movzx R10D,DIL
            test R10D,EDX
            je .L_40fa90

            cmp ECX,8
            jae .L_40fd68

            test R14D,R14D
            jne .L_40fdc8

            test ECX,ECX
            je .L_40fa90

            movzx R10D,BYTE PTR [RSI]
            mov BYTE PTR [RAX],R10B
            mov R10D,DWORD PTR [RSP-20]
            test R10D,R10D
            je .L_40fa90

            movzx R10D,WORD PTR [RSI+R12*1-2]
            mov WORD PTR [RAX+R12*1-2],R10W
            jmp .L_40fa90
          .byte 0x66
          .byte 0x90
.L_40faf0:

            pop RBX
.L_40faf1:

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
.L_40fb00:

            cmp CL,7
            ja .L_40fb30

            movzx EDX,CL
            imul R8,RDX
            lea RDX,QWORD PTR [R8+7]
            shr RDX,3
.L_40fb14:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            mov RDI,RAX
            jmp memcpy@PLT
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
.L_40fb30:

            shr CL,3
            movzx EDX,CL
            imul RDX,R8
            jmp .L_40fb14
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40fb40:

            mov RCX,QWORD PTR [RDI+296]
            and ECX,65536
            cmp RCX,1
            sbb R12D,R12D
            and R12D,4294967292
            add R12D,2
            cmp RCX,1
            sbb EBP,EBP
            not EBP
            and EBP,6
            cmp RCX,1
            sbb R14D,R14D
            and R14D,6
            test R8,R8
            je .L_40faf0

            mov R10D,R14D
            xor EBX,EBX
            mov R11D,128
            mov R15D,6
            mov R13D,128
            jmp .L_40fbb8
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40fb98:

            add R10D,R12D
.L_40fb9b:

            mov ECX,R11D
            sar ECX,1
            cmp R11D,1
            cmove ECX,R13D
            add RBX,1
            cmp R8,RBX
            mov R11D,ECX
            je .L_40faf0
.L_40fbb8:

            test EDX,R11D
            je .L_40fbe2

            movzx EDI,BYTE PTR [RSI]
            mov ECX,R15D
            mov R9D,16191
            sub ECX,R10D
            sar R9D,CL
            mov ECX,R10D
            and R9B,BYTE PTR [RAX]
            sar EDI,CL
            and EDI,3
            shl EDI,CL
            or EDI,R9D
            mov BYTE PTR [RAX],DIL
.L_40fbe2:

            cmp EBP,R10D
            jne .L_40fb98

            add RSI,1
            add RAX,1
            mov R10D,R14D
            jmp .L_40fb9b
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40fbf8:

            mov RCX,QWORD PTR [RDI+296]
            and ECX,65536
            cmp RCX,1
            sbb EBP,EBP
            not EBP
            and EBP,7
            cmp RCX,1
            sbb R14D,R14D
            and R14D,7
            cmp RCX,1
            sbb R12D,R12D
            or R12D,1
            test R8,R8
            je .L_40faf0

            mov R10D,R14D
            xor EBX,EBX
            mov R11D,128
            mov R15D,7
            mov R13D,128
            jmp .L_40fc70
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40fc50:

            add R10D,R12D
.L_40fc53:

            mov ECX,R11D
            sar ECX,1
            cmp R11D,1
            cmove ECX,R13D
            add RBX,1
            cmp R8,RBX
            mov R11D,ECX
            je .L_40faf0
.L_40fc70:

            test EDX,R11D
            je .L_40fc9a

            movzx EDI,BYTE PTR [RSI]
            mov ECX,R15D
            mov R9D,32639
            sub ECX,R10D
            sar R9D,CL
            mov ECX,R10D
            and R9B,BYTE PTR [RAX]
            sar EDI,CL
            and EDI,1
            shl EDI,CL
            or EDI,R9D
            mov BYTE PTR [RAX],DIL
.L_40fc9a:

            cmp EBP,R10D
            jne .L_40fc50

            add RSI,1
            add RAX,1
            mov R10D,R14D
            jmp .L_40fc53
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40fcb0:

            mov RCX,QWORD PTR [RDI+296]
            and ECX,65536
            cmp RCX,1
            sbb R12D,R12D
            and R12D,4294967288
            add R12D,4
            cmp RCX,1
            sbb EBP,EBP
            not EBP
            and EBP,4
            cmp RCX,1
            sbb R14D,R14D
            and R14D,4
            test R8,R8
            je .L_40faf0

            mov R10D,R14D
            xor EBX,EBX
            mov R11D,128
            mov R15D,4
            mov R13D,128
            jmp .L_40fd28
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40fd08:

            add R10D,R12D
.L_40fd0b:

            mov ECX,R11D
            sar ECX,1
            cmp R11D,1
            cmove ECX,R13D
            add RBX,1
            cmp R8,RBX
            mov R11D,ECX
            je .L_40faf0
.L_40fd28:

            test EDX,R11D
            je .L_40fd52

            movzx EDI,BYTE PTR [RSI]
            mov ECX,R15D
            mov R9D,3855
            sub ECX,R10D
            sar R9D,CL
            mov ECX,R10D
            and R9B,BYTE PTR [RAX]
            sar EDI,CL
            and EDI,15
            shl EDI,CL
            or EDI,R9D
            mov BYTE PTR [RAX],DIL
.L_40fd52:

            cmp EBP,R10D
            jne .L_40fd08

            add RSI,1
            add RAX,1
            mov R10D,R14D
            jmp .L_40fd0b
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40fd68:

            mov R10,QWORD PTR [RSI]
            lea RBX,QWORD PTR [RAX+8]
            mov R15,RSI
            and RBX,-8
            mov QWORD PTR [RAX],R10
            mov R10,QWORD PTR [RSI+R12*1-8]
            mov QWORD PTR [RAX+R12*1-8],R10
            mov R10,RAX
            sub R10,RBX
            sub R15,R10
            add R10D,ECX
            and R10D,4294967288
            cmp R10D,8
            jb .L_40fa90

            and R10D,4294967288
            xor EBP,EBP
            mov QWORD PTR [RSP-16],RAX
.L_40fda8:

            mov R13D,EBP
            add EBP,8
            mov RAX,QWORD PTR [R15+R13*1]
            cmp EBP,R10D
            mov QWORD PTR [RBX+R13*1],RAX
            jb .L_40fda8

            mov RAX,QWORD PTR [RSP-16]
            jmp .L_40fa90
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40fdc8:

            mov R10D,DWORD PTR [RSI]
            mov DWORD PTR [RAX],R10D
            mov R10D,DWORD PTR [RSI+R12*1-4]
            mov DWORD PTR [RAX+R12*1-4],R10D
            jmp .L_40fa90
.L_40fddd:

            nop
            nop
            nop
.L_40fde0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,88
.L_40fdee:

            mov RDX,QWORD PTR [RDI+528]
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+72],RAX
            xor EAX,EAX
            cmp RDX,-1
            je .L_40ff8e

            cmp RDI,-568
            mov R13,RDI
            je .L_40ff8e

            lea RCX,QWORD PTR [RDX+1]
            movzx EDX,BYTE PTR [R13+628]
            lea RAX,QWORD PTR [RIP+.L_412ff0]
            mov R8,QWORD PTR [RDI+296]
            mov RDI,QWORD PTR [RDI+568]
            movsxd RDX,DWORD PTR [RAX+RDX*4]
            lea R9,QWORD PTR [RDI-1]
            mov RBX,RDX
            imul RDX,RDI
            mov RAX,RDX
            mov QWORD PTR [RSP+16],RDX
            movzx EDX,BYTE PTR [R13+587]
            sub RAX,1
            cmp DL,2
            je .L_40ffb8

            cmp DL,4
            je .L_410238

            cmp DL,1
            je .L_4100a0

            mov EBP,EDX
            shr BPL,3
            movzx EBP,BPL
            imul R9,RBP
            imul RAX,RBP
            lea RSI,QWORD PTR [RCX+R9*1]
            add RAX,RCX
            test RDI,RDI
            mov QWORD PTR [RSP+24],RSI
            mov QWORD PTR [RSP+32],RAX
            je .L_40ff68

            lea EAX,DWORD PTR [RBX-1]
            mov R12,RBP
            xor EDI,EDI
            neg R12
            mov R15D,EBP
            lea R8,QWORD PTR [RSP+64]
            add RAX,1
            mov QWORD PTR [RSP+48],R13
            and R15D,4
            imul RAX,R12
            mov R13,RDI
            mov QWORD PTR [RSP+56],RAX
            mov EAX,EBP
            and EAX,2
            mov DWORD PTR [RSP+44],EAX
            nop
.L_40fee0:

            mov RSI,QWORD PTR [RSP+24]
            mov RDI,R8
            mov ECX,8
            mov RDX,RBP
            call __memcpy_chk@PLT

            test EBX,EBX
            mov R8,RAX
            jle .L_40ff46

            mov R11D,EBP
            mov RDX,QWORD PTR [RSP+32]
            xor ESI,ESI
            lea R14,QWORD PTR [RAX+R11*1]
.L_40ff0a:

            cmp EBP,8
            jae .L_410180

            test R15D,R15D
            jne .L_410220

            test EBP,EBP
            je .L_40ff32

            movzx EAX,BYTE PTR [R8]
            mov BYTE PTR [RDX],AL
            mov EAX,DWORD PTR [RSP+44]
            test EAX,EAX
            jne .L_410338
.L_40ff32:

            add ESI,1
            add RDX,R12
            cmp EBX,ESI
            jne .L_40ff0a

            mov RDI,QWORD PTR [RSP+56]
            add QWORD PTR [RSP+32],RDI
.L_40ff46:

            mov RAX,QWORD PTR [RSP+48]
            add QWORD PTR [RSP+24],R12
            add R13,1
            cmp QWORD PTR [RAX+568],R13
            ja .L_40fee0

            mov R13,RAX
.L_40ff60:

            movzx EDX,BYTE PTR [R13+587]
.L_40ff68:

            mov RAX,QWORD PTR [RSP+16]
            cmp DL,7
            mov QWORD PTR [R13+568],RAX
            jbe .L_4101ec

            shr DL,3
            movzx EDX,DL
            imul RDX,RAX
.L_40ff87:

            mov QWORD PTR [R13+576],RDX
.L_40ff8e:

            mov RAX,QWORD PTR [RSP+72]
            xor RAX,QWORD PTR FS:[40]
            jne .L_4103c8

            add RSP,88
.L_40ffa6:

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
.L_40ffb8:

            shr R9,2
            shr RAX,2
            lea RSI,QWORD PTR [RCX+R9*1]
            add RAX,RCX
            mov RCX,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+24],RSI
            lea RSI,QWORD PTR [RDI+3]
            add RCX,3
            test R8D,65536
            je .L_4103a0

            lea RBP,QWORD PTR [RSI+RSI*1]
            lea RSI,QWORD PTR [RCX+RCX*1]
            mov R12D,4294967294
            xor R9D,R9D
            mov R10D,6
            and EBP,6
            and ESI,6
.L_410003:

            test RDI,RDI
            je .L_4101e0

            xor R15D,R15D
            mov R14D,6
            mov R11D,16191
            nop
            nop
            nop
            nop
            nop
.L_410020:

            mov RDI,QWORD PTR [RSP+24]
            mov ECX,EBP
            movzx R8D,BYTE PTR [RDI]
            sar R8D,CL
            and R8D,3
            test EBX,EBX
            jle .L_410080

            movzx R8D,R8B
            xor EDI,EDI
            mov DWORD PTR [RSP+8],EBP
            jmp .L_410052
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_410048:

            add EDI,1
            add ESI,R12D
            cmp EBX,EDI
            je .L_41007c
.L_410052:

            mov ECX,R14D
            mov EDX,R11D
            mov EBP,R8D
            sub ECX,ESI
            sar EDX,CL
            and DL,BYTE PTR [RAX]
            mov ECX,ESI
            shl EBP,CL
            or EDX,EBP
            cmp R9D,ESI
            mov BYTE PTR [RAX],DL
            jne .L_410048

            add EDI,1
            sub RAX,1
            mov ESI,R10D
            cmp EBX,EDI
            jne .L_410052
.L_41007c:

            mov EBP,DWORD PTR [RSP+8]
.L_410080:

            cmp R9D,EBP
            je .L_410200

            add EBP,R12D
.L_41008c:

            add R15,1
            cmp QWORD PTR [R13+568],R15
            ja .L_410020

            jmp .L_40ff60
          .byte 0x66
          .byte 0x90
.L_4100a0:

            shr R9,3
            shr RAX,3
            lea R12D,DWORD PTR [RDI+7]
            lea RSI,QWORD PTR [RCX+R9*1]
            add RAX,RCX
            mov QWORD PTR [RSP+24],RSI
            mov ESI,DWORD PTR [RSP+16]
            add ESI,7
            test R8D,65536
            je .L_410350

            and R12D,7
            and ESI,7
            mov EBP,4294967295
            xor R9D,R9D
            mov R11D,7
.L_4100e1:

            test RDI,RDI
            je .L_4101e0

            xor R15D,R15D
            mov R14D,7
            mov R10D,32639
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_410100:

            mov RDI,QWORD PTR [RSP+24]
            mov ECX,R12D
            movzx R8D,BYTE PTR [RDI]
            sar R8D,CL
            and R8D,1
            test EBX,EBX
            jle .L_410162

            movzx R8D,R8B
            xor EDI,EDI
            mov DWORD PTR [RSP+8],R12D
            jmp .L_410131
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410128:

            add EDI,1
            add ESI,EBP
            cmp EBX,EDI
            je .L_41015d
.L_410131:

            mov ECX,R14D
            mov EDX,R10D
            mov R12D,R8D
            sub ECX,ESI
            sar EDX,CL
            and DL,BYTE PTR [RAX]
            mov ECX,ESI
            shl R12D,CL
            or EDX,R12D
            cmp R9D,ESI
            mov BYTE PTR [RAX],DL
            jne .L_410128

            add EDI,1
            sub RAX,1
            mov ESI,R11D
            cmp EBX,EDI
            jne .L_410131
.L_41015d:

            mov R12D,DWORD PTR [RSP+8]
.L_410162:

            cmp R9D,R12D
            je .L_410210

            add R12D,EBP
.L_41016e:

            add R15,1
            cmp QWORD PTR [R13+568],R15
            ja .L_410100

            jmp .L_40ff60
.L_410180:

            mov RAX,QWORD PTR [R8]
            lea RCX,QWORD PTR [RDX+8]
            mov R10,R8
            and RCX,-8
            mov QWORD PTR [RDX],RAX
            mov RAX,QWORD PTR [R14-8]
            mov QWORD PTR [RDX+R11*1-8],RAX
            mov RAX,RDX
            sub RAX,RCX
            sub R10,RAX
            add EAX,EBP
            and EAX,4294967288
            cmp EAX,8
            jb .L_40ff32

            and EAX,4294967288
            xor EDI,EDI
            mov QWORD PTR [RSP+8],RDX
.L_4101bb:

            mov R9D,EDI
            add EDI,8
            mov RDX,QWORD PTR [R10+R9*1]
            cmp EDI,EAX
            mov QWORD PTR [RCX+R9*1],RDX
            jb .L_4101bb

            mov RDX,QWORD PTR [RSP+8]
            jmp .L_40ff32
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4101e0:

            mov RAX,QWORD PTR [RSP+16]
            mov QWORD PTR [R13+568],RAX
.L_4101ec:

            imul RDX,QWORD PTR [RSP+16]
            add RDX,7
            shr RDX,3
            jmp .L_40ff87
          .byte 0x90
.L_410200:

            sub QWORD PTR [RSP+24],1
            mov EBP,R10D
            jmp .L_41008c
          .byte 0x66
          .byte 0x90
.L_410210:

            sub QWORD PTR [RSP+24],1
            mov R12D,R11D
            jmp .L_41016e
          .byte 0x66
          .byte 0x90
.L_410220:

            mov EAX,DWORD PTR [R8]
            mov DWORD PTR [RDX],EAX
            mov EAX,DWORD PTR [R14-4]
            mov DWORD PTR [RDX+R11*1-4],EAX
            jmp .L_40ff32
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_410238:

            shr R9,1
            shr RAX,1
            lea RSI,QWORD PTR [RCX+R9*1]
            add RAX,RCX
            mov RCX,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+24],RSI
            lea RSI,QWORD PTR [RDI+1]
            add RCX,1
            test R8D,65536
            je .L_410370

            lea R12,QWORD PTR [RSI*4]
            lea RSI,QWORD PTR [RCX*4]
            mov EBP,4294967292
            xor R10D,R10D
            mov R9D,4
            and R12D,4
            and ESI,4
.L_410289:

            test RDI,RDI
            je .L_4101e0

            xor R15D,R15D
            mov R14D,4
            mov R11D,3855
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4102a8:

            mov RDI,QWORD PTR [RSP+24]
            mov ECX,R12D
            movzx R8D,BYTE PTR [RDI]
            sar R8D,CL
            and R8D,15
            test EBX,EBX
            jle .L_41030a

            movzx R8D,R8B
            xor EDI,EDI
            mov DWORD PTR [RSP+8],R12D
            jmp .L_4102d9
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4102d0:

            add EDI,1
            add ESI,EBP
            cmp EBX,EDI
            je .L_410305
.L_4102d9:

            mov ECX,R14D
            mov EDX,R11D
            mov R12D,R8D
            sub ECX,ESI
            sar EDX,CL
            and DL,BYTE PTR [RAX]
            mov ECX,ESI
            shl R12D,CL
            or EDX,R12D
            cmp R10D,ESI
            mov BYTE PTR [RAX],DL
            jne .L_4102d0

            add EDI,1
            sub RAX,1
            mov ESI,R9D
            cmp EBX,EDI
            jne .L_4102d9
.L_410305:

            mov R12D,DWORD PTR [RSP+8]
.L_41030a:

            cmp R10D,R12D
            je .L_410328

            add R12D,EBP
.L_410312:

            add R15,1
            cmp QWORD PTR [R13+568],R15
            ja .L_4102a8

            jmp .L_40ff60
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410328:

            sub QWORD PTR [RSP+24],1
            mov R12D,R9D
            jmp .L_410312
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_410338:

            movzx EAX,WORD PTR [R14-2]
            mov WORD PTR [RDX+R11*1-2],AX
            jmp .L_40ff32
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410350:

            not R12D
            not ESI
            mov EBP,1
            and R12D,7
            and ESI,7
            mov R9D,7
            xor R11D,R11D
            jmp .L_4100e1
          .byte 0x90
.L_410370:

            xor R12D,R12D
            and ESI,1
            mov EBP,4
            sete R12B
            and ECX,1
            xor R9D,R9D
            shl R12D,2
            cmp RCX,1
            mov R10D,4
            sbb ESI,ESI
            and ESI,4
            jmp .L_410289
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4103a0:

            not RSI
            not RCX
            mov R12D,2
            lea RBP,QWORD PTR [RSI+RSI*1]
            lea RSI,QWORD PTR [RCX+RCX*1]
            mov R9D,6
            xor R10D,R10D
            and EBP,6
            and ESI,6
            jmp .L_410003
.L_4103c8:

            call __stack_chk_fail@PLT
.L_4103cd:

            nop
            nop
            nop
.L_4103d0:

            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,16
            cmp R8D,4
            ja .L_4103f8

            lea RDI,QWORD PTR [RIP+.L_4149f4]
            mov R8D,R8D
            movsxd RAX,DWORD PTR [RDI+R8*4]
            add RAX,RDI
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4103f8:

            lea RSI,QWORD PTR [RIP+.L_4140e0]
            mov QWORD PTR [RSP+8],RDX
            call .L_40c5f0

            mov RDX,QWORD PTR [RSP+8]
            mov BYTE PTR [RDX],0
.L_410411:

            add RSP,16
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
          .byte 0x66
          .byte 0x90
.L_410420:

            movzx EAX,BYTE PTR [RSI+19]
            mov R9,QWORD PTR [RSI+8]
            add EAX,7
            sar EAX,3
            movsxd RDI,EAX
            sub R9,RDI
            test EAX,EAX
            je .L_4105c0

            xor EAX,EAX
            nop
            nop
.L_410440:

            movzx ESI,BYTE PTR [RCX+RAX*1]
            shr SIL,1
            add BYTE PTR [RDX+RAX*1],SIL
            add RAX,1
            cmp RDI,RAX
            jne .L_410440

            add RCX,RDI
            add RDI,RDX
.L_41045a:

            test R9,R9
            je .L_410411

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_410468:

            movzx ESI,BYTE PTR [RCX+RAX*1]
            movzx R8D,BYTE PTR [RDX+RAX*1]
            add ESI,R8D
            sar ESI,1
            add BYTE PTR [RDI+RAX*1],SIL
            add RAX,1
            cmp R9,RAX
            jne .L_410468

            add RSP,16
.L_410487:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
.L_410490:

            movzx EAX,BYTE PTR [RSI+19]
            mov R12,QWORD PTR [RSI+8]
            add EAX,7
            sar EAX,3
            movsxd R10,EAX
            sub R12,R10
            test EAX,EAX
            je .L_4105d0

            xor EAX,EAX
            nop
            nop
.L_4104b0:

            movzx ESI,BYTE PTR [RCX+RAX*1]
            add BYTE PTR [RDX+RAX*1],SIL
            add RAX,1
            cmp R10,RAX
            jne .L_4104b0

            lea R13,QWORD PTR [RCX+R10*1]
            add R10,RDX
.L_4104c8:

            test R12,R12
            je .L_410411

            xor ESI,ESI
            jmp .L_4104ed
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4104d8:

            cmp EDI,EAX
            jg .L_41053a
.L_4104dc:

            add BYTE PTR [R10+RSI*1],R11B
            add RSI,1
            cmp R12,RSI
            je .L_410411
.L_4104ed:

            movzx EBP,BYTE PTR [R13+RSI*1]
            movzx EBX,BYTE PTR [RCX+RSI*1]
            movzx R11D,BYTE PTR [RDX+RSI*1]
            mov EAX,EBP
            sub EAX,EBX
            mov R8D,EAX
            mov R9D,R11D
            sub R9D,EBX
            sar R8D,31
            mov EDI,R8D
            mov R14D,R9D
            xor EDI,EAX
            sar R14D,31
            add EAX,R9D
            sub EDI,R8D
            mov R8D,R14D
            xor R8D,R9D
            mov R9D,EAX
            sar R9D,31
            sub R8D,R14D
            xor EAX,R9D
            sub EAX,R9D
            cmp EDI,R8D
            jle .L_4104d8
.L_41053a:

            cmp R8D,EAX
            cmovle EBX,EBP
            mov R11D,EBX
            jmp .L_4104dc
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_410548:

            movzx ECX,BYTE PTR [RSI+19]
            mov RDI,QWORD PTR [RSI+8]
            lea RSI,QWORD PTR [RDX+RDI*1]
            add ECX,7
            sar ECX,3
            movsxd RCX,ECX
            cmp RDI,RCX
            lea RAX,QWORD PTR [RDX+RCX*1]
            jbe .L_410411

            nop
            nop
            nop
            nop
            nop
            nop
.L_410570:

            add RDX,1
            movzx ECX,BYTE PTR [RDX-1]
            add BYTE PTR [RAX],CL
            add RAX,1
            cmp RAX,RSI
            jne .L_410570

            add RSP,16
.L_410587:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
.L_410590:

            mov RSI,QWORD PTR [RSI+8]
            test RSI,RSI
            je .L_410411

            add RSI,RDX
.L_4105a0:

            add RCX,1
            movzx EAX,BYTE PTR [RCX-1]
            add BYTE PTR [RDX],AL
            add RDX,1
            cmp RDX,RSI
            jne .L_4105a0

            add RSP,16
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
.L_4105c0:

            mov RDI,RDX
            jmp .L_41045a
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4105d0:

            mov R13,RCX
            mov R10,RDX
            jmp .L_4104c8
.L_4105db:

            nop
            nop
            nop
            nop
            nop
.L_4105e0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,24
.L_4105ee:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+512]
            add RAX,1
            cmp RAX,QWORD PTR [RDI+472]
            mov QWORD PTR [RDI+512],RAX
            jb .L_410670

            cmp BYTE PTR [RDI+627],0
            mov R15,RDI
            jne .L_4107f0
.L_410629:

            test BYTE PTR [R15+288],32
            lea R13,QWORD PTR [R15+304]
            je .L_410698

            mov RAX,QWORD PTR [R15+592]
.L_410641:

            test RAX,RAX
            jne .L_410651

            mov EAX,DWORD PTR [R15+312]
            test EAX,EAX
            je .L_410660
.L_410651:

            lea RSI,QWORD PTR [RIP+.L_4149bd]
            mov RDI,R15
            call .L_40c5f0
.L_410660:

            mov RDI,R13
            call inflateReset@PLT

            or QWORD PTR [R15+280],8
.L_410670:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_41094e

            add RSP,24
.L_410688:

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
.L_410698:

            lea RAX,QWORD PTR [RSP+3]
            mov DWORD PTR [R15+336],1
            lea R12,QWORD PTR [R15+620]
            lea RBX,QWORD PTR [RSP+4]
            lea R14,QWORD PTR [RIP+.L_41341b]
            mov QWORD PTR [R15+328],RAX
            jmp .L_41070e
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4106c8:

            mov ESI,1
            mov RDI,R13
            call inflate@PLT

            cmp EAX,1
            je .L_4108c8

            test EAX,EAX
            je .L_4106ff

            mov RSI,QWORD PTR [R15+352]
            lea RAX,QWORD PTR [RIP+.L_414992]
            mov RDI,R15
            test RSI,RSI
            cmove RSI,RAX
            call .L_40c520
.L_4106ff:

            mov EDX,DWORD PTR [R15+336]
            test EDX,EDX
            je .L_410918
.L_41070e:

            mov EDI,DWORD PTR [R15+312]
            test EDI,EDI
            jne .L_4106c8

            mov RAX,QWORD PTR [R15+592]
            test RAX,RAX
            jne .L_4107a3

            lea RBP,QWORD PTR [RIP+.L_6191a7]
            jmp .L_41073c
          .byte 0x66
          .byte 0x90
.L_410730:

            mov RAX,QWORD PTR [R15+592]
            test RAX,RAX
            jne .L_4107a3
.L_41073c:

            xor ESI,ESI
            mov RDI,R15
            call .L_40ca80

            mov EDX,4
            mov RSI,RBX
            mov RDI,R15
            call .L_405c50

            mov RSI,RBX
            mov RDI,R15
            call .L_40c8d0

            mov RDI,R15
            mov QWORD PTR [R15+592],RAX
            call .L_4016a0

            mov EDX,4
            mov RSI,R12
            mov RDI,R15
            call .L_40c8a0

            mov EAX,DWORD PTR [R15+620]
            cmp DWORD PTR [RBP],EAX
            je .L_410730

            mov RSI,R14
            mov RDI,R15
            call .L_40c520

            mov RAX,QWORD PTR [R15+592]
            test RAX,RAX
            je .L_41073c
.L_4107a3:

            mov RCX,QWORD PTR [R15+424]
            mov RSI,QWORD PTR [R15+416]
            cmp RCX,RAX
            mov EDX,ECX
            mov DWORD PTR [R15+312],ECX
            mov QWORD PTR [R15+304],RSI
            jbe .L_4107cf

            mov EDX,EAX
            mov DWORD PTR [R15+312],EAX
.L_4107cf:

            mov RDI,R15
            call .L_40c8a0

            mov EAX,DWORD PTR [R15+312]
            sub QWORD PTR [R15+592],RAX
            jmp .L_4106c8
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4107f0:

            mov RAX,QWORD PTR [RDI+488]
            mov RSI,QWORD PTR [RDI+520]
            xor EDX,EDX
            mov QWORD PTR [RDI+512],0
            lea RBX,QWORD PTR [RIP+.L_412fb0]
            lea RCX,QWORD PTR [RAX+1]
            call .L_40c1d0

            movzx EAX,BYTE PTR [R15+628]
            lea R10,QWORD PTR [RIP+.L_412ff0]
            lea R9,QWORD PTR [RIP+.L_413010]
            lea R11,QWORD PTR [RIP+.L_412fd0]
            lea EDI,DWORD PTR [RAX+1]
            movzx ECX,DIL
            shl RCX,2
            jmp .L_4108b1

            nop
            nop
            nop
.L_410848:

            movsxd RSI,DWORD PTR [R10+RCX*1]
            mov RAX,QWORD PTR [R15+456]
            movsxd RDX,DWORD PTR [R9+RCX*1]
            lea RAX,QWORD PTR [RSI+RAX*1-1]
            sub RAX,RDX
            xor EDX,EDX
            div RSI
            test BYTE PTR [R15+296],2
            mov RBP,RAX
            mov QWORD PTR [R15+504],RAX
            jne .L_410953

            movsxd RSI,DWORD PTR [RBX+RCX*1]
            mov RAX,QWORD PTR [R15+464]
            movsxd RDX,DWORD PTR [R11+RCX*1]
            add RCX,4
            lea RAX,QWORD PTR [RSI+RAX*1-1]
            sub RAX,RDX
            xor EDX,EDX
            div RSI
            test RBP,RBP
            mov QWORD PTR [R15+472],RAX
            lea EAX,DWORD PTR [RDI+1]
            jne .L_410953

            mov EDI,EAX
.L_4108b1:

            cmp DIL,6
            jbe .L_410848

            mov BYTE PTR [R15+628],DIL
            jmp .L_410629
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4108c8:

            mov ESI,DWORD PTR [R15+336]
            test ESI,ESI
            je .L_4108de

            mov ECX,DWORD PTR [R15+312]
            test ECX,ECX
            je .L_410940
.L_4108de:

            lea RSI,QWORD PTR [RIP+.L_4149a6]
            mov RDI,R15
            call .L_40c5f0

            mov RAX,QWORD PTR [R15+592]
.L_4108f4:

            or QWORD PTR [R15+280],8
            or QWORD PTR [R15+288],32
.L_410904:

            mov DWORD PTR [R15+336],0
            jmp .L_410641
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410918:

            lea RSI,QWORD PTR [RIP+.L_4149a6]
            mov RDI,R15
            call .L_40c5f0

            or QWORD PTR [R15+280],8
            or QWORD PTR [R15+288],32
            mov RAX,QWORD PTR [R15+592]
            jmp .L_410904
.L_410940:

            mov RAX,QWORD PTR [R15+592]
            test RAX,RAX
            je .L_4108f4

            jmp .L_4108de
.L_41094e:

            call __stack_chk_fail@PLT
.L_410953:

            mov BYTE PTR [R15+628],DIL
            jmp .L_410670
.L_41095f:

            nop
.L_410960:

            push R12
            push RBP
            push RBX
.L_410964:

            mov RBX,RDI
            mov DWORD PTR [RDI+312],0
            call .L_40afc0

            cmp BYTE PTR [RBX+627],0
            je .L_4109e0

            mov RCX,QWORD PTR [RBX+296]
            mov RDX,QWORD PTR [RBX+464]
            test CL,2
            je .L_410b80

            mov QWORD PTR [RBX+472],RDX
.L_41099d:

            movzx EDX,BYTE PTR [RBX+628]
            lea RAX,QWORD PTR [RIP+.L_412ff0]
            lea RDI,QWORD PTR [RIP+.L_413010]
            mov RBP,QWORD PTR [RBX+456]
            movsxd RSI,DWORD PTR [RAX+RDX*4]
            movsxd RDX,DWORD PTR [RDI+RDX*4]
            lea RAX,QWORD PTR [RBP+RSI*1-1]
            sub RAX,RDX
            xor EDX,EDX
            div RSI
            mov QWORD PTR [RBX+504],RAX
            jmp .L_410a03
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4109e0:

            mov RAX,QWORD PTR [RBX+464]
            mov RBP,QWORD PTR [RBX+456]
            mov RCX,QWORD PTR [RBX+296]
            mov QWORD PTR [RBX+472],RAX
            mov QWORD PTR [RBX+504],RBP
.L_410a03:

            test CL,4
            movzx EDX,BYTE PTR [RBX+633]
            je .L_410a1e

            cmp BYTE PTR [RBX+631],7
            mov EAX,8
            cmovbe EDX,EAX
.L_410a1e:

            mov R8,RCX
            mov R10,RCX
            and R8D,32768
            and R10D,4096
            je .L_410ab0

            movzx EDI,BYTE PTR [RBX+630]
            cmp DIL,3
            je .L_410d20

            test DIL,DIL
            je .L_410d48

            cmp DIL,2
            je .L_410df0
.L_410a58:

            lea RAX,QWORD PTR [RBP+7]
            mov R9,RCX
            and R9D,1048576
            and RAX,-8
            and CH,64
            mov RSI,RAX
            je .L_410be8

            cmp WORD PTR [RBX+618],0
            je .L_410d98

            test R10,R10
            je .L_410d98
.L_410a8d:

            cmp EDX,16
            jg .L_410ae9
.L_410a92:

            test R9,R9
            jne .L_410db0

            mov ECX,4
            mov EBP,4
            jmp .L_410d07
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_410ab0:

            test R8,R8
            je .L_410b20

            movzx EDI,BYTE PTR [RBX+630]
            cmp DIL,3
            jne .L_410bb0
.L_410ac6:

            lea RAX,QWORD PTR [RBP+7]
            mov R9,RCX
            mov EDX,32
            and R9D,1048576
            and RAX,-8
            and CH,64
            mov RSI,RAX
            je .L_410be8
.L_410ae9:

            test R9,R9
            jne .L_410dc0

            mov ECX,8
            mov EBP,8
            jmp .L_410d07
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410b08:

            test R8,R8
            mov EDX,24
            jne .L_410d37

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
.L_410b20:

            lea RAX,QWORD PTR [RBP+7]
            mov R9,RCX
            and R9D,1048576
            and RAX,-8
            and CH,64
            mov RSI,RAX
            je .L_410be8

            movzx EDI,BYTE PTR [RBX+630]
.L_410b45:

            cmp DIL,4
            je .L_410a8d

            cmp EDX,8
            jg .L_410dd0

            cmp DIL,6
            je .L_410a92

            test R9,R9
            jne .L_410e40

            mov ECX,3
            mov EBP,3
            jmp .L_410d07
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_410b80:

            movsxd RSI,DWORD PTR [RIP+.L_412fb0]
            movsxd RDI,DWORD PTR [RIP+.L_412fd0]
            lea RAX,QWORD PTR [RSI-1]
            sub RAX,RDI
            add RAX,RDX
            xor EDX,EDX
            div RSI
            mov QWORD PTR [RBX+472],RAX
            jmp .L_41099d
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410bb0:

            test DIL,DIL
            je .L_410d68

            cmp DIL,2
            je .L_410e11

            lea RAX,QWORD PTR [RBP+7]
            mov R9,RCX
            and R9D,1048576
            and RAX,-8
            and CH,64
            mov RSI,RAX
            jne .L_410a8d

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_410be8:

            test R9,R9
            je .L_410c03
.L_410bed:

            movzx EAX,BYTE PTR [RBX+272]
            movzx ECX,BYTE PTR [RBX+273]
            imul EAX,ECX
            cmp EDX,EAX
            cmovl EDX,EAX
.L_410c03:

            lea ECX,DWORD PTR [RDX+7]
            movsxd RAX,EDX
            sar ECX,3
            cmp EDX,7
            movsxd RCX,ECX
            jg .L_410d00

            imul RAX,RSI
            shr RAX,3
            lea RBP,QWORD PTR [RAX+1]
.L_410c24:

            add RBP,RCX
            lea R12,QWORD PTR [RBP+64]
            cmp R12,QWORD PTR [RBX+1192]
            ja .L_410ca0

            cmp RBP,-1
            je .L_410cea
.L_410c3e:

            lea R12,QWORD PTR [RBP+1]
            cmp R12,QWORD PTR [RBX+1200]
            jbe .L_410c83

            mov RSI,QWORD PTR [RBX+520]
            mov RDI,RBX
            call .L_40c120

            mov RSI,R12
            mov RDI,RBX
            call .L_40c040

            mov RCX,R12
            mov QWORD PTR [RBX+520],RAX
            xor EDX,EDX
            mov RSI,RAX
            mov RDI,RBX
            call .L_40c1d0

            mov QWORD PTR [RBX+1200],R12
.L_410c83:

            mov QWORD PTR [RBX+488],RBP
            or QWORD PTR [RBX+288],64
            pop RBX
.L_410c93:

            pop RBP
            pop R12
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
.L_410ca0:

            mov RSI,QWORD PTR [RBX+1104]
            mov RDI,RBX
            call .L_40c120

            cmp BYTE PTR [RBX+627],0
            mov RSI,R12
            mov RDI,RBX
            jne .L_410d80

            call .L_40c040

            mov QWORD PTR [RBX+1104],RAX
.L_410cce:

            add RAX,32
            cmp RBP,-1
            mov QWORD PTR [RBX+1192],R12
            mov QWORD PTR [RBX+528],RAX
            jne .L_410c3e
.L_410cea:

            lea RSI,QWORD PTR [RIP+.L_414108]
            mov RDI,RBX
            call .L_40c520

            jmp .L_410c83
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_410d00:

            shr RAX,3
            mov RBP,RAX
.L_410d07:

            mov RAX,RSI
            imul RAX,RBP
            lea RBP,QWORD PTR [RAX+1]
            jmp .L_410c24
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410d20:

            cmp WORD PTR [RBX+618],0
            je .L_410b08

            test R8,R8
            je .L_410ac6
.L_410d37:

            mov EDX,32
            jmp .L_410a58
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410d48:

            cmp EDX,8
            mov EAX,8
            cmovl EDX,EAX
            cmp WORD PTR [RBX+618],0
            je .L_410d5f

            add EDX,EDX
.L_410d5f:

            test R8,R8
            je .L_410a58
.L_410d68:

            cmp EDX,8
            mov EAX,32
            mov EDX,16
            cmovg EDX,EAX
            jmp .L_410a58
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_410d80:

            call .L_40c0d0

            mov QWORD PTR [RBX+1104],RAX
            jmp .L_410cce
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410d98:

            test R8,R8
            jne .L_410a8d

            jmp .L_410b45
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
.L_410db0:

            mov EDX,32
            jmp .L_410bed
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_410dc0:

            mov EDX,64
            jmp .L_410bed
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_410dd0:

            cmp DIL,6
            je .L_410ae9

            test R9,R9
            jne .L_410e30

            mov ECX,6
            mov EBP,6
            jmp .L_410d07
          .byte 0x66
          .byte 0x90
.L_410df0:

            cmp WORD PTR [RBX+618],0
            je .L_410e08

            shl EDX,2
            mov ESI,2863311531
            mov EAX,EDX
            mul ESI
            shr EDX,1
.L_410e08:

            test R8,R8
            je .L_410a58
.L_410e11:

            cmp EDX,32
            mov EAX,32
            mov EDX,64
            cmovle EDX,EAX
            jmp .L_410a58
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
.L_410e30:

            mov EDX,48
            jmp .L_410bed
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_410e40:

            mov EDX,24
            jmp .L_410bed
.L_410e4a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_410e50:

            push R15
            push R14
            mov R14,RDI
            push R13
            push R12
            mov R12,RSI
            push RBP
            push RBX
            mov EBP,ECX
            mov RBX,RDX
            sub RSP,24
.L_410e69:

            mov R15D,DWORD PTR [RSI+68]
            mov R13D,DWORD PTR [RSI+72]
            lea EAX,DWORD PTR [R15+RCX*1]
            cmp EAX,R13D
            jle .L_410ed4

            mov RCX,QWORD PTR [RSI+80]
            test RCX,RCX
            mov QWORD PTR [RSP],RCX
            je .L_411020

            add EAX,8
            mov DWORD PTR [RSI+72],EAX
            movsxd RSI,EAX
            shl RSI,5
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [R12+80],RAX
            mov RCX,QWORD PTR [RSP]
            je .L_411058

            movsxd RDX,R13D
            mov RSI,RCX
            mov RDI,RAX
            shl RDX,5
            mov QWORD PTR [RSP],RCX
            call memcpy@PLT

            mov RCX,QWORD PTR [RSP]
            mov RDI,R14
            mov RSI,RCX
            call .L_40c120
.L_410ed4:

            test EBP,EBP
            jle .L_410fc0

            lea EAX,DWORD PTR [RBP-1]
            shl RAX,5
            lea RAX,QWORD PTR [RBX+RAX*1+32]
            mov QWORD PTR [RSP],RAX
            jmp .L_410f8c
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410ef8:

            movsxd RBP,DWORD PTR [R12+68]
            mov RDI,QWORD PTR [RBX+16]
            shl RBP,5
            add RBP,QWORD PTR [R12+80]
            test RDI,RDI
            je .L_410fd8

            cmp BYTE PTR [RDI],0
            je .L_410fd8

            mov DWORD PTR [RSP+12],EDX
            call strlen@PLT

            mov EDX,DWORD PTR [RSP+12]
            mov R13,RAX
            mov DWORD PTR [RBP],EDX
.L_410f2f:

            lea RSI,QWORD PTR [R13+R15*1+4]
            mov RDI,R14
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RBP+8],RAX
            je .L_411008

            mov RSI,QWORD PTR [RBX+8]
            mov RDI,RAX
            mov RDX,R15
            call memcpy@PLT

            mov RAX,QWORD PTR [RBP+8]
            test R13,R13
            mov BYTE PTR [RAX+R15*1],0
            mov RAX,QWORD PTR [RBP+8]
            lea RDI,QWORD PTR [RAX+R15*1+1]
            mov QWORD PTR [RBP+16],RDI
            jne .L_410ff0
.L_410f73:

            mov BYTE PTR [RDI+R13*1],0
            mov QWORD PTR [RBP+24],R13
            add DWORD PTR [R12+68],1
.L_410f82:

            add RBX,32
            cmp QWORD PTR [RSP],RBX
            je .L_410fc0
.L_410f8c:

            mov RDI,QWORD PTR [RBX+8]
            test RDI,RDI
            je .L_410f82

            call strlen@PLT

            mov EDX,DWORD PTR [RBX]
            mov R15,RAX
            test EDX,EDX
            jle .L_410ef8

            lea RSI,QWORD PTR [RIP+.L_414a0c]
            mov RDI,R14
            add RBX,32
            call .L_40c5f0

            cmp QWORD PTR [RSP],RBX
            jne .L_410f8c
.L_410fc0:

            xor EAX,EAX
.L_410fc2:

            add RSP,24
.L_410fc6:

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
.L_410fd8:

            mov DWORD PTR [RBP],4294967295
            xor R13D,R13D
            jmp .L_410f2f
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410ff0:

            mov RSI,QWORD PTR [RBX+16]
            mov RDX,R13
            call memcpy@PLT

            mov RDI,QWORD PTR [RBP+16]
            jmp .L_410f73
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_411008:

            add RSP,24
            mov EAX,1
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
.L_411020:

            lea EAX,DWORD PTR [RBP+8]
            mov DWORD PTR [RSI+68],0
            mov DWORD PTR [RSI+72],EAX
            movsxd RSI,EAX
            shl RSI,5
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [R12+80],RAX
            je .L_411076

            or QWORD PTR [R12+272],16384
            jmp .L_410ed4
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_411058:

            mov DWORD PTR [R12+72],R13D
            mov QWORD PTR [R12+80],RCX
            add RSP,24
.L_411066:

            pop RBX
            mov EAX,1
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_411076:

            mov DWORD PTR [R12+68],R15D
            mov DWORD PTR [R12+72],R13D
            mov EAX,1
            jmp .L_410fc2
.L_41108a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_411090:

            test RDI,RDI
            je .L_4110b1

            test RSI,RSI
            je .L_4110b1

            mov RAX,QWORD PTR [RDX]
            mov QWORD PTR [RSI+122],RAX
            movzx EAX,WORD PTR [RDX+8]
            or QWORD PTR [RSI+16],32
            mov WORD PTR [RSI+130],AX
.L_4110b1:

            ret 
.L_4110b3:

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
.L_4110c0:

            test RDI,RDI
            je .L_411231

            test RSI,RSI
            je .L_411231

            pxor XMM10,XMM10
            or QWORD PTR [RSI+16],4
            movsd XMM9,QWORD PTR [RIP+.L_4139d8]
            movsd XMM8,QWORD PTR [RIP+.L_4139e0]
            cvtsd2ss XMM10,XMM0
            mulsd XMM0,XMM9
            pxor XMM11,XMM11
            pxor XMM12,XMM12
            pxor XMM13,XMM13
            addsd XMM0,XMM8
            pxor XMM14,XMM14
            cvtsd2ss XMM11,XMM1
            cvttsd2si RAX,XMM0
            mulsd XMM1,XMM9
            cvtsd2ss XMM12,XMM2
            addsd XMM1,XMM8
            mulsd XMM2,XMM9
            movss DWORD PTR [RSI+192],XMM10
            cvtsd2ss XMM13,XMM3
            addsd XMM2,XMM8
            mulsd XMM3,XMM9
            cvtsd2ss XMM14,XMM4
            mov QWORD PTR [RSI+400],RAX
            cvttsd2si RAX,XMM1
            addsd XMM3,XMM8
            mulsd XMM4,XMM9
            pxor XMM15,XMM15
            movss DWORD PTR [RSI+196],XMM11
            pxor XMM10,XMM10
            movss DWORD PTR [RSI+200],XMM12
            pxor XMM11,XMM11
            addsd XMM4,XMM8
            cvtsd2ss XMM15,XMM5
            mulsd XMM5,XMM9
            movss DWORD PTR [RSI+204],XMM13
            cvtsd2ss XMM10,XMM6
            mov QWORD PTR [RSI+408],RAX
            cvttsd2si RAX,XMM2
            addsd XMM5,XMM8
            mulsd XMM6,XMM9
            cvtsd2ss XMM11,XMM7
            addsd XMM6,XMM8
            mulsd XMM7,XMM9
            movss DWORD PTR [RSI+208],XMM14
            movss DWORD PTR [RSI+212],XMM15
            addsd XMM7,XMM8
            movss DWORD PTR [RSI+216],XMM10
            mov QWORD PTR [RSI+416],RAX
            cvttsd2si RAX,XMM3
            movss DWORD PTR [RSI+220],XMM11
            mov QWORD PTR [RSI+424],RAX
            cvttsd2si RAX,XMM4
            mov QWORD PTR [RSI+432],RAX
            cvttsd2si RAX,XMM5
            mov QWORD PTR [RSI+440],RAX
            cvttsd2si RAX,XMM6
            mov QWORD PTR [RSI+448],RAX
            cvttsd2si RAX,XMM7
            mov QWORD PTR [RSI+456],RAX
.L_411231:

            ret 
.L_411233:

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
.L_411240:

            test RDI,RDI
            je .L_4113f0

            test RSI,RSI
            je .L_4113f0

            push R14
            push R13
            mov R14,RDX
            push R12
            push RBP
            mov RBP,R9
            push RBX
            mov R12,R8
            mov R13,RCX
            mov RBX,RSI
            mov R8,RBP
            mov RCX,R12
            sub RSP,8
            mov RDX,R13
            mov RSI,R14
            push QWORD PTR [RSP+80]
            push QWORD PTR [RSP+80]
            push QWORD PTR [RSP+80]
            mov R9,QWORD PTR [RSP+80]
            call .L_402100

            add RSP,32
.L_411293:

            test EAX,EAX
            je .L_4113e2

            pxor XMM0,XMM0
            mov RAX,QWORD PTR [RSP+48]
            or QWORD PTR [RBX+16],4
            movsd XMM1,QWORD PTR [RIP+.L_4139d8]
            mov QWORD PTR [RBX+400],R14
            pxor XMM2,XMM2
            mov QWORD PTR [RBX+408],R13
            cvtsi2sd XMM0,R14
            pxor XMM3,XMM3
            mov QWORD PTR [RBX+432],RAX
            pxor XMM4,XMM4
            mov RAX,QWORD PTR [RSP+56]
            mov QWORD PTR [RBX+416],R12
            pxor XMM5,XMM5
            mov QWORD PTR [RBX+424],RBP
            pxor XMM6,XMM6
            pxor XMM7,XMM7
            mov QWORD PTR [RBX+440],RAX
            mov RAX,QWORD PTR [RSP+64]
            mov QWORD PTR [RBX+448],RAX
            mov RAX,QWORD PTR [RSP+72]
            divsd XMM0,XMM1
            mov QWORD PTR [RBX+456],RAX
            cvtsd2ss XMM2,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,R13
            movss DWORD PTR [RBX+192],XMM2
            pxor XMM2,XMM2
            divsd XMM0,XMM1
            cvtsd2ss XMM3,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,R12
            movss DWORD PTR [RBX+196],XMM3
            pxor XMM3,XMM3
            divsd XMM0,XMM1
            cvtsd2ss XMM4,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,RBP
            movss DWORD PTR [RBX+200],XMM4
            divsd XMM0,XMM1
            cvtsd2ss XMM5,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,QWORD PTR [RSP+48]
            divsd XMM0,XMM1
            movss DWORD PTR [RBX+204],XMM5
            cvtsd2ss XMM6,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,QWORD PTR [RSP+56]
            divsd XMM0,XMM1
            movss DWORD PTR [RBX+208],XMM6
            cvtsd2ss XMM7,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,QWORD PTR [RSP+64]
            divsd XMM0,XMM1
            movss DWORD PTR [RBX+212],XMM7
            cvtsd2ss XMM2,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,RAX
            movss DWORD PTR [RBX+216],XMM2
            divsd XMM0,XMM1
            cvtsd2ss XMM3,XMM0
            movss DWORD PTR [RBX+220],XMM3
.L_4113e2:

            pop RBX
.L_4113e3:

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
.L_4113f0:

            ret 
.L_4113f2:

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
.L_411400:

            test RDI,RDI
            je .L_411460

            test RSI,RSI
            je .L_411460

            ucomisd XMM0,QWORD PTR [RIP+.L_414e68]
            ja .L_411468

            movsd XMM1,QWORD PTR [RIP+.L_4139d8]
            or QWORD PTR [RSI+16],1
            pxor XMM2,XMM2
            mulsd XMM1,XMM0
            ucomisd XMM0,QWORD PTR [RIP+.L_414e70]
            cvtsd2ss XMM2,XMM0
            addsd XMM1,QWORD PTR [RIP+.L_4139e0]
            cvttsd2si EAX,XMM1
            movss DWORD PTR [RSI+60],XMM2
            cdqe 
            mov QWORD PTR [RSI+392],RAX
            jp .L_411460

            jne .L_411460

            lea RSI,QWORD PTR [RIP+.L_414a41]
            jmp .L_40c5f0
          .byte 0x90
.L_411460:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411468:

            push RBX
.L_411469:

            mov RBX,RSI
            lea RSI,QWORD PTR [RIP+.L_414a26]
            call .L_40c5f0

            or QWORD PTR [RBX+16],1
            mov DWORD PTR [RBX+60],1185400233
            mov QWORD PTR [RBX+392],2147483000
            pop RBX
            ret 
.L_411491:

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
.L_4114a0:

            test RDI,RDI
            je .L_411540

            test RSI,RSI
            je .L_411540

            push RBP
            push RBX
            mov RBP,RDI
            mov RBX,RSI
            sub RSP,8
.L_4114be:

            cmp RDX,2147483647
            jg .L_411510

            test RDX,RDX
            js .L_411548

            pxor XMM0,XMM0
            or QWORD PTR [RSI+16],1
            test RDX,RDX
            pxor XMM1,XMM1
            mov QWORD PTR [RSI+392],RDX
            cvtsi2sd XMM0,RDX
            divsd XMM0,QWORD PTR [RIP+.L_4139d8]
            cvtsd2ss XMM1,XMM0
            movss DWORD PTR [RSI+60],XMM1
            jne .L_411533
.L_4114fb:

            add RSP,8
.L_4114ff:

            mov RDI,RBP
            lea RSI,QWORD PTR [RIP+.L_414a41]
            pop RBX
            pop RBP
            jmp .L_40c5f0
.L_411510:

            lea RSI,QWORD PTR [RIP+.L_414a26]
            call .L_40c5f0

            or QWORD PTR [RBX+16],1
            mov DWORD PTR [RBX+60],1185400236
            mov QWORD PTR [RBX+392],2147483647
.L_411533:

            add RSP,8
            pop RBX
            pop RBP
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411540:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411548:

            lea RSI,QWORD PTR [RIP+.L_414ad0]
            call .L_40c5f0

            mov DWORD PTR [RBX+60],0
            mov QWORD PTR [RBX+392],0
            or QWORD PTR [RBX+16],1
            jmp .L_4114fb
.L_41156d:

            nop
            nop
            nop
.L_411570:

            test RDI,RDI
            je .L_411618

            test RSI,RSI
            je .L_411618

            movzx EAX,WORD PTR [RSI+40]
            sub EAX,1
            cmp AX,255
            ja .L_411608

            push R12
            push RBP
            xor ECX,ECX
            push RBX
.L_411595:

            mov RBP,RDI
            mov R12,RDX
            mov EDX,8
            mov RBX,RSI
            call .L_401860

            mov ESI,512
            mov RDI,RBP
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RBP+976],RAX
            je .L_411620

            cmp WORD PTR [RBX+40],0
            mov ECX,1
            je .L_4115e9

            nop
            nop
            nop
.L_4115d0:

            movzx EDX,WORD PTR [R12+RCX*2-2]
            mov WORD PTR [RAX+RCX*2-2],DX
            movzx ESI,WORD PTR [RBX+40]
            mov EDX,ECX
            add RCX,1
            cmp ESI,EDX
            jg .L_4115d0
.L_4115e9:

            or QWORD PTR [RBX+16],64
            or QWORD PTR [RBX+272],8
            mov QWORD PTR [RBX+184],RAX
            pop RBX
.L_4115fe:

            pop RBP
            pop R12
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411608:

            lea RSI,QWORD PTR [RIP+.L_414af0]
            jmp .L_40c5f0
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_411618:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411620:

            pop RBX
            mov RDI,RBP
            lea RSI,QWORD PTR [RIP+.L_414b20]
            pop RBP
            pop R12
            jmp .L_40c5f0
.L_411633:

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
.L_411640:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,8
.L_41164e:

            test RDI,RDI
            mov R15D,DWORD PTR [RSP+64]
            mov R13D,DWORD PTR [RSP+72]
            mov R14D,DWORD PTR [RSP+80]
            je .L_41170e

            test RSI,RSI
            je .L_41170e

            mov RBX,RSI
            mov R11D,R9D
            mov R10,RCX
            mov QWORD PTR [RBX],RDX
            mov QWORD PTR [RBX+8],RCX
            mov R12,RDX
            mov BYTE PTR [RSI+44],R8B
            mov BYTE PTR [RBX+45],R9B
            movzx ECX,R8B
            mov BYTE PTR [RSI+46],R13B
            mov BYTE PTR [RSI+47],R14B
            movzx R13D,R13B
            movzx R14D,R14B
            mov BYTE PTR [RSI+48],R15B
            mov RDX,R10
            push R14
.L_4116a7:

            push R13
            movzx R9D,R15B
            movzx R8D,R11B
            mov RSI,R12
            mov RBP,RDI
            call .L_402380

            movzx EDX,BYTE PTR [RBX+45]
            pop RAX
            pop RCX
.L_4116c2:

            cmp DL,3
            je .L_411748

            test DL,2
            jne .L_411720

            mov BYTE PTR [RBX+49],1
            mov EAX,1
.L_4116d9:

            and EDX,4
            je .L_4116e4

            add EAX,1
            mov BYTE PTR [RBX+49],AL
.L_4116e4:

            mul BYTE PTR [RBX+44]
            movabs RDX,2305843009213693822
            cmp R12,RDX
            mov BYTE PTR [RBX+50],AL
            ja .L_411758

            cmp AL,7
            jbe .L_411730

            shr AL,3
            movzx EAX,AL
            imul RAX,R12
            mov RDX,RAX
.L_41170a:

            mov QWORD PTR [RBX+24],RDX
.L_41170e:

            add RSP,8
.L_411712:

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
.L_411720:

            mov BYTE PTR [RBX+49],3
            mov EAX,3
            jmp .L_4116d9
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411730:

            movzx EDX,AL
            imul RDX,R12
            add RDX,7
            shr RDX,3
            jmp .L_41170a
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_411748:

            mov BYTE PTR [RBX+49],1
            mov EAX,1
            jmp .L_4116e4
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411758:

            mov QWORD PTR [RBX+24],0
            add RSP,8
.L_411764:

            mov RDI,RBP
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            lea RSI,QWORD PTR [RIP+.L_414b50]
            jmp .L_40c520
.L_41177d:

            nop
            nop
            nop
.L_411780:

            test RDI,RDI
            je .L_4117a7

            test RSI,RSI
            je .L_4117a7

            or QWORD PTR [RSI+16],256
            mov QWORD PTR [RSI+136],RDX
            mov QWORD PTR [RSI+144],RCX
            mov BYTE PTR [RSI+152],R8B
.L_4117a7:

            ret 
.L_4117a9:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4117b0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,40
.L_4117be:

            test RDI,RDI
            mov R14D,DWORD PTR [RSP+96]
            mov R15,QWORD PTR [RSP+104]
            mov R12,QWORD PTR [RSP+112]
            je .L_411983

            test RSI,RSI
            je .L_411983

            mov RBP,RDI
            mov RDI,RDX
            mov RBX,RSI
            mov DWORD PTR [RSP+28],R9D
            mov QWORD PTR [RSP+16],R8
            mov R13,RDX
            mov QWORD PTR [RSP+8],RCX
            call strlen@PLT

            lea RDX,QWORD PTR [RAX+1]
            mov RDI,RBP
            mov RSI,RDX
            mov QWORD PTR [RSP],RDX
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RBX+224],RAX
            lea RSI,QWORD PTR [RIP+.L_414b80]
            mov RDX,QWORD PTR [RSP]
            je .L_411952

            mov RSI,R13
            mov RDI,RAX
            call memcpy@PLT

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,R15
            mov BYTE PTR [RBX+265],R14B
            mov QWORD PTR [RBX+232],RAX
            mov RAX,QWORD PTR [RSP+16]
            mov QWORD PTR [RBX+240],RAX
            movzx EAX,BYTE PTR [RSP+28]
            mov BYTE PTR [RBX+264],AL
            call strlen@PLT

            lea R13,QWORD PTR [RAX+1]
            mov RDI,RBP
            mov RSI,R13
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RBX+248],RAX
            lea RSI,QWORD PTR [RIP+.L_414ba8]
            je .L_411952

            mov RDX,R13
            lea R13D,DWORD PTR [R14+1]
            mov RSI,R15
            mov RDI,RAX
            movsxd R13,R13D
            shl R13,3
            call memcpy@PLT

            mov RSI,R13
            mov RDI,RBP
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RBX+256],RAX
            lea RSI,QWORD PTR [RIP+.L_414bd0]
            je .L_411952

            xor ESI,ESI
            mov RDX,R13
            mov RDI,RAX
            call memset@PLT

            test R14D,R14D
            jle .L_411970

            lea EAX,DWORD PTR [R14-1]
            xor R13D,R13D
            lea RAX,QWORD PTR [RAX*8+8]
            mov QWORD PTR [RSP],RAX
            jmp .L_411916
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
.L_411900:

            mov RSI,QWORD PTR [R12+R13*1]
            mov RDX,R14
            add R13,8
            call memcpy@PLT

            cmp QWORD PTR [RSP],R13
            je .L_411970
.L_411916:

            mov RDI,QWORD PTR [R12+R13*1]
            call strlen@PLT

            mov R15,QWORD PTR [RBX+256]
            lea R14,QWORD PTR [RAX+1]
            mov RDI,RBP
            mov RSI,R14
            add R15,R13
            call .L_40c170

            mov QWORD PTR [R15],RAX
            mov RAX,QWORD PTR [RBX+256]
            mov RDI,QWORD PTR [RAX+R13*1]
            test RDI,RDI
            jne .L_411900

            lea RSI,QWORD PTR [RIP+.L_414bf8]
.L_411952:

            add RSP,40
.L_411956:

            mov RDI,RBP
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40c5f0
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_411970:

            or QWORD PTR [RBX+16],1024
            or QWORD PTR [RBX+272],128
.L_411983:

            add RSP,40
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_411992:

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
.L_4119a0:

            test RDI,RDI
            je .L_4119c8

            test RSI,RSI
            je .L_4119c8

            or QWORD PTR [RSI+16],16384
            movsd QWORD PTR [RSI+352],XMM0
            mov BYTE PTR [RSI+344],DL
            movsd QWORD PTR [RSI+360],XMM1
.L_4119c8:

            ret 
.L_4119ca:

            nop
            nop
            nop
            nop
            nop
            nop
.L_4119d0:

            test RDI,RDI
            je .L_4119f7

            test RSI,RSI
            je .L_4119f7

            or QWORD PTR [RSI+16],128
            mov QWORD PTR [RSI+160],RDX
            mov QWORD PTR [RSI+168],RCX
            mov BYTE PTR [RSI+176],R8B
.L_4119f7:

            ret 
.L_4119f9:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_411a00:

            test RDI,RDI
            je .L_411a50

            test RSI,RSI
            je .L_411a50

            push R13
            push R12
            mov R13,RDX
            push RBP
            push RBX
            mov R12D,ECX
            mov RBX,RSI
            mov RBP,RDI
            sub RSP,8
            cmp BYTE PTR [RSI+45],3
            je .L_411a58

            test ECX,ECX
            jns .L_411af0
.L_411a2e:

            add RSP,8
            mov RDI,RBP
            lea RSI,QWORD PTR [RIP+.L_414a51]
            pop RBX
            pop RBP
            pop R12
            pop R13
            jmp .L_40c5f0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_411a50:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411a58:

            movzx ECX,BYTE PTR [RSI+44]
            mov EAX,1
            shl EAX,CL
            test R12D,R12D
            js .L_411a6d

            cmp EAX,R12D
            jge .L_411a7c
.L_411a6d:

            lea RSI,QWORD PTR [RIP+.L_414a51]
            mov RDI,RBP
            call .L_40c520
.L_411a7c:

            xor ECX,ECX
            mov EDX,4096
            mov RSI,RBX
            mov RDI,RBP
            call .L_401860

            mov RDI,RBP
            mov ESI,768
            call .L_40c0d0

            movsxd RDX,R12D
            mov QWORD PTR [RBP+608],RAX
            mov RSI,R13
            lea RDX,QWORD PTR [RDX+RDX*2]
            mov RDI,RAX
            call memcpy@PLT

            mov RAX,QWORD PTR [RBP+608]
            mov QWORD PTR [RBX+32],RAX
            mov WORD PTR [RBP+616],R12W
            mov WORD PTR [RBX+40],R12W
            or QWORD PTR [RBX+272],4096
            or QWORD PTR [RBX+16],8
            add RSP,8
.L_411ae0:

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
.L_411af0:

            cmp ECX,256
            jle .L_411a7c

            jmp .L_411a2e
.L_411afd:

            nop
            nop
            nop
.L_411b00:

            test RDI,RDI
            je .L_411b1b

            test RSI,RSI
            je .L_411b1b

            mov EAX,DWORD PTR [RDX]
            mov DWORD PTR [RSI+96],EAX
            movzx EAX,BYTE PTR [RDX+4]
            or QWORD PTR [RSI+16],2
            mov BYTE PTR [RSI+100],AL
.L_411b1b:

            ret 
.L_411b1d:

            nop
            nop
            nop
.L_411b20:

            test RDI,RDI
            je .L_411b35

            test RSI,RSI
            je .L_411b35

            or QWORD PTR [RSI+16],2048
            mov BYTE PTR [RSI+64],DL
.L_411b35:

            ret 
.L_411b37:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_411b40:

            test RDI,RDI
            je .L_411c50

            test RSI,RSI
            je .L_411c50

            mov RAX,QWORD PTR [RSI+16]
            push RBX
            mov R9D,33000
            push 6000
            push 15000
            mov R8D,64000
            push 60000
            push 30000
.L_411b77:

            mov ECX,32900
            or RAX,2049
            mov BYTE PTR [RSI+64],DL
            mov DWORD PTR [RSI+60],1055439559
            mov QWORD PTR [RSI+16],RAX
            mov QWORD PTR [RSI+392],45455
            mov EDX,31270
            mov RBX,RSI
            call .L_411240

            movabs RAX,4514984727729412663
            or QWORD PTR [RBX+16],4
            add RSP,32
.L_411bbb:

            mov QWORD PTR [RBX+192],RAX
            movabs RAX,4515128845365663498
            mov QWORD PTR [RBX+400],31270
            mov QWORD PTR [RBX+200],RAX
            movabs RAX,4546834186561493402
            mov QWORD PTR [RBX+408],32900
            mov QWORD PTR [RBX+208],RAX
            movabs RAX,4428659729066727834
            mov QWORD PTR [RBX+216],RAX
            mov QWORD PTR [RBX+416],64000
            mov QWORD PTR [RBX+424],33000
            mov QWORD PTR [RBX+432],30000
            mov QWORD PTR [RBX+440],60000
            mov QWORD PTR [RBX+448],15000
            mov QWORD PTR [RBX+456],6000
            pop RBX

            ret 
          .byte 0x90
.L_411c50:

            ret 
.L_411c52:

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
.L_411c60:

            test RDI,RDI
            je .L_411d58

            test RSI,RSI
            je .L_411d58

            test RDX,RDX
            je .L_411d58

            test R8,R8
            je .L_411d58

            push R15
            push R14
            mov R15,RDI
            push R13
            push R12
            mov RDI,RDX
            push RBP
            push RBX
            mov R12,R9
            mov R13D,ECX
            mov RBX,RDX
            mov R14,RSI
            sub RSP,24
.L_411ca4:

            mov QWORD PTR [RSP+8],R8
            call strlen@PLT

            lea RDX,QWORD PTR [RAX+1]
            mov RDI,R15
            mov RSI,RDX
            mov QWORD PTR [RSP],RDX
            call .L_40c170

            test RAX,RAX
            mov RBP,RAX
            lea RSI,QWORD PTR [RIP+.L_414c20]
            mov RDX,QWORD PTR [RSP]
            je .L_411d72

            mov RSI,RBX
            mov RDI,RAX
            call memcpy@PLT

            mov RSI,R12
            mov RDI,R15
            call .L_40c170

            test RAX,RAX
            mov RBX,RAX
            je .L_411d60

            mov RSI,QWORD PTR [RSP+8]
            mov RDX,R12
            mov RDI,RAX
            call memcpy@PLT

            mov RSI,R14
            mov RDI,R15
            xor ECX,ECX
            mov EDX,16
            call .L_401860

            mov QWORD PTR [R14+312],R12
            mov QWORD PTR [R14+296],RBP
            mov QWORD PTR [R14+304],RBX
            mov BYTE PTR [R14+320],R13B
            or QWORD PTR [R14+272],16
            or QWORD PTR [R14+16],4096
            add RSP,24
.L_411d48:

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
.L_411d58:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411d60:

            mov RSI,RBP
            mov RDI,R15
            call .L_40c120

            lea RSI,QWORD PTR [RIP+.L_414c50]
.L_411d72:

            add RSP,24
            mov RDI,R15
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40c5f0
.L_411d88:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_411d90:

            test RSI,RSI
            sete R8B
            test ECX,ECX
            sete AL
            or R8B,AL
            jne .L_411da6

            test RDI,RDI
            jne .L_411db0
.L_411da6:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_411db0:

            push RBX
            mov RBX,RDI
            call .L_410e50

            test EAX,EAX
            jne .L_411dc0

            pop RBX
            ret 

            nop
.L_411dc0:

            mov RDI,RBX
            lea RSI,QWORD PTR [RIP+.L_414c80]
            pop RBX
            jmp .L_40c520
.L_411dd0:

            test RSI,RSI
            sete R8B
            test ECX,ECX
            sete AL
            or R8B,AL
            jne .L_411de6

            test RDI,RDI
            jne .L_411df0
.L_411de6:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_411df0:

            jmp .L_410e50
.L_411df5:

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
.L_411e00:

            test RDI,RDI
            je .L_411e59

            test RSI,RSI
            je .L_411e59

            test BYTE PTR [RDI+281],2
            jne .L_411e59

            movzx EAX,BYTE PTR [RDX+2]
            sub EAX,1
            cmp AL,11
            ja .L_411e29

            movzx EAX,BYTE PTR [RDX+3]
            sub EAX,1
            cmp AL,30
            jbe .L_411e38
.L_411e29:

            lea RSI,QWORD PTR [RIP+.L_414a68]
            jmp .L_40c5f0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_411e38:

            cmp BYTE PTR [RDX+4],23
            ja .L_411e29

            cmp BYTE PTR [RDX+5],59
            ja .L_411e29

            cmp BYTE PTR [RDX+6],60
            ja .L_411e29

            mov RAX,QWORD PTR [RDX]
            or QWORD PTR [RSI+16],512
            mov QWORD PTR [RSI+88],RAX
.L_411e59:

            ret 
.L_411e5b:

            nop
            nop
            nop
            nop
            nop
.L_411e60:

            test RDI,RDI
            je .L_411f40

            test RSI,RSI
            je .L_411f40

            cmp ECX,256
            ja .L_411f48

            test RDX,RDX
            push R14
            mov R14,RDX
            push R13
            mov R13,R8
            push R12
            mov R12D,ECX
            push RBP
            mov RBP,RDI
            push RBX
.L_411e95:

            mov RBX,RSI
            je .L_411ecf

            xor ECX,ECX
            mov EDX,8192
            call .L_401860

            mov ESI,256
            mov RDI,RBP
            call .L_40c040

            lea EDX,DWORD PTR [R12-1]
            mov QWORD PTR [RBX+104],RAX
            mov QWORD PTR [RBP+776],RAX
            cmp EDX,255
            jbe .L_411f80
.L_411ecf:

            test R13,R13
            je .L_411fc0

            movzx ECX,BYTE PTR [RBX+44]
            movzx EDX,BYTE PTR [RBX+45]
            mov EAX,1
            shl EAX,CL
            test DL,DL
            jne .L_411f58

            movzx EDX,WORD PTR [R13+8]
            cmp EDX,EAX
            jle .L_411f03
.L_411ef4:

            lea RSI,QWORD PTR [RIP+.L_414cd0]
            mov RDI,RBP
            call .L_40c5f0
.L_411f03:

            mov RAX,QWORD PTR [R13]
            test R12D,R12D
            mov ECX,1
            cmovne ECX,R12D
            mov QWORD PTR [RBX+112],RAX
            movzx EAX,WORD PTR [R13+8]
            mov WORD PTR [RBX+42],CX
            mov WORD PTR [RBX+120],AX
.L_411f24:

            or QWORD PTR [RBX+16],16
            or QWORD PTR [RBX+272],8192
            pop RBX
.L_411f35:

            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_411f40:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411f48:

            lea RSI,QWORD PTR [RIP+.L_414ca8]
            jmp .L_40c5f0
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_411f58:

            cmp DL,2
            jne .L_411f03

            movzx EDX,WORD PTR [R13+2]
            cmp EDX,EAX
            jg .L_411ef4

            movzx EDX,WORD PTR [R13+4]
            cmp EDX,EAX
            jg .L_411ef4

            movzx EDX,WORD PTR [R13+6]
            cmp EDX,EAX
            jle .L_411f03

            jmp .L_411ef4
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_411f80:

            cmp R12D,8
            jae .L_411fe0

            test R12B,4
            jne .L_412014

            test R12D,R12D
            je .L_411ecf

            movzx EDX,BYTE PTR [R14]
            test R12B,2
            mov BYTE PTR [RAX],DL
            je .L_411ecf

            mov EDX,R12D
            movzx ECX,WORD PTR [R14+RDX*1-2]
            mov WORD PTR [RAX+RDX*1-2],CX
            jmp .L_411ecf
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_411fc0:

            test R12D,R12D
            mov WORD PTR [RBX+42],R12W
            jne .L_411f24

            pop RBX
.L_411fcf:

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
.L_411fe0:

            mov RDX,QWORD PTR [R14]
            lea RDI,QWORD PTR [RAX+8]
            mov RSI,R14
            and RDI,-8
            mov QWORD PTR [RAX],RDX
            mov EDX,R12D
            mov RCX,QWORD PTR [R14+RDX*1-8]
            mov QWORD PTR [RAX+RDX*1-8],RCX
            sub RAX,RDI
            sub RSI,RAX
            add EAX,R12D
            shr EAX,3
            mov ECX,EAX

            rep movsq 

            jmp .L_411ecf
.L_412014:

            mov EDX,DWORD PTR [R14]
            mov DWORD PTR [RAX],EDX
            mov EDX,R12D
            mov ECX,DWORD PTR [R14+RDX*1-4]
            mov DWORD PTR [RAX+RDX*1-4],ECX
            jmp .L_411ecf
.L_41202a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_412030:

            test RDI,RDI
            je .L_4121c0

            test RSI,RSI
            je .L_4121c0

            push R15
            push R14
            movsxd RAX,ECX
            push R13
            push R12
            mov R15,RDX
            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RAX
            mov R12,RDI
            sub RSP,40
.L_41205f:

            mov RSI,QWORD PTR [RSI+336]
            mov QWORD PTR [RSP+24],RAX
            add RSI,RAX
            shl RSI,5
            call .L_40c170

            test RAX,RAX
            mov R14,RAX
            je .L_4121f0

            mov RDX,QWORD PTR [RBP+336]
            mov RSI,QWORD PTR [RBP+328]
            mov RDI,RAX
            shl RDX,5
            call memcpy@PLT

            mov RSI,QWORD PTR [RBP+328]
            mov RDI,R12
            call .L_40c120

            test EBX,EBX
            mov QWORD PTR [RBP+328],0
            jle .L_41218d

            lea EAX,DWORD PTR [RBX-1]
            xor R13D,R13D
            add RAX,1
            mov QWORD PTR [RSP+16],RAX
            jmp .L_412131
.L_4120d0:

            mov RSI,QWORD PTR [R15]
            mov RDI,RAX
            call memcpy@PLT

            mov RAX,QWORD PTR [R15+24]
            mov RDI,R12
            lea RSI,QWORD PTR [RAX+RAX*4]
            add RSI,RSI
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RBX+16],RAX
            je .L_4121c8

            mov RDX,QWORD PTR [R15+24]
            mov RSI,QWORD PTR [R15+16]
            mov RDI,RAX
            lea RDX,QWORD PTR [RDX+RDX*4]
            add RDX,RDX
            call memcpy@PLT

            mov RAX,QWORD PTR [R15+24]
            mov QWORD PTR [RBX+24],RAX
            movzx EAX,BYTE PTR [R15+8]
            mov BYTE PTR [RBX+8],AL
.L_412122:

            add R13,1
            add R15,32
            cmp QWORD PTR [RSP+16],R13
            je .L_41218d
.L_412131:

            mov RDI,QWORD PTR [R15]
            mov RBX,QWORD PTR [RBP+336]
            call strlen@PLT

            lea RDX,QWORD PTR [RAX+1]
            add RBX,R13
            mov RDI,R12
            shl RBX,5
            mov RSI,RDX
            add RBX,R14
            mov QWORD PTR [RSP+8],RDX
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RBX],RAX
            mov RDX,QWORD PTR [RSP+8]
            jne .L_4120d0

            lea RSI,QWORD PTR [RIP+.L_414d08]
            mov RDI,R12
            add R13,1
            add R15,32
            call .L_40c5f0

            cmp QWORD PTR [RSP+16],R13
            jne .L_412131
.L_41218d:

            mov QWORD PTR [RBP+328],R14
            or QWORD PTR [RBP+16],8192
            or QWORD PTR [RBP+272],32
            mov RAX,QWORD PTR [RSP+24]
            add QWORD PTR [RBP+336],RAX
            add RSP,40
.L_4121b4:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x90
.L_4121c0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4121c8:

            lea RSI,QWORD PTR [RIP+.L_414d08]
            mov RDI,R12
            call .L_40c5f0

            mov RSI,QWORD PTR [RBX]
            mov RDI,R12
            call .L_40c120

            mov QWORD PTR [RBX],0
            jmp .L_412122
          .byte 0x66
          .byte 0x90
.L_4121f0:

            add RSP,40
            mov RDI,R12
            lea RSI,QWORD PTR [RIP+.L_414a84]
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40c5f0
.L_41220d:

            nop
            nop
            nop
.L_412210:

            test RSI,RSI
            sete R8B
            test ECX,ECX
            sete AL
            or R8B,AL
            jne .L_412226

            test RDI,RDI
            jne .L_412230
.L_412226:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412230:

            push R15
            push R14
            mov R14,RSI
            push R13
            push R12
            movsxd RAX,ECX
            push RBP
            push RBX
            mov R15,RDX
            mov RBX,RAX
            mov R12,RDI
            sub RSP,24
.L_41224d:

            mov RSI,QWORD PTR [RSI+288]
            mov QWORD PTR [RSP+8],RAX
            add RSI,RAX
            shl RSI,5
            call .L_40c170

            test RAX,RAX
            mov RBP,RAX
            je .L_412390

            mov RDX,QWORD PTR [R14+288]
            mov RSI,QWORD PTR [R14+280]
            mov RDI,RAX
            shl RDX,5
            call memcpy@PLT

            mov RSI,QWORD PTR [R14+280]
            mov RDI,R12
            call .L_40c120

            test EBX,EBX
            mov QWORD PTR [R14+280],0
            jle .L_41233b

            lea EAX,DWORD PTR [RBX-1]
            xor R13D,R13D
            add RAX,1
            mov QWORD PTR [RSP],RAX
            jmp .L_4122d6
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4122c0:

            mov QWORD PTR [RBX+8],0
.L_4122c8:

            add R13,1
            add R15,32
            cmp QWORD PTR [RSP],R13
            je .L_41233b
.L_4122d6:

            mov RBX,QWORD PTR [R14+288]
            mov EAX,DWORD PTR [R15]
            add RBX,R13
            shl RBX,5
            add RBX,RBP
            mov DWORD PTR [RBX],EAX
            mov BYTE PTR [RBX+4],0
            mov RAX,QWORD PTR [R15+16]
            mov QWORD PTR [RBX+16],RAX
            mov RAX,QWORD PTR [R12+280]
            mov BYTE PTR [RBX+24],AL
            mov RSI,QWORD PTR [R15+16]
            test RSI,RSI
            je .L_4122c0

            mov RDI,R12
            call .L_40c170

            test RAX,RAX
            mov QWORD PTR [RBX+8],RAX
            je .L_412370

            mov RSI,QWORD PTR [R15+8]
            mov RDX,QWORD PTR [R15+16]
            mov RDI,RAX
            add R13,1
            add R15,32
            call memcpy@PLT

            cmp QWORD PTR [RSP],R13
            jne .L_4122d6
.L_41233b:

            mov QWORD PTR [R14+280],RBP
            or QWORD PTR [R14+272],512
            mov RAX,QWORD PTR [RSP+8]
            add QWORD PTR [R14+288],RAX
            add RSP,24
.L_41235d:

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
.L_412370:

            lea RSI,QWORD PTR [RIP+.L_414d38]
            mov RDI,R12
            call .L_40c5f0

            mov QWORD PTR [RBX+16],0
            jmp .L_4122c8
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_412390:

            add RSP,24
            mov RDI,R12
            lea RSI,QWORD PTR [RIP+.L_414d38]
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40c5f0
.L_4123ad:

            nop
            nop
            nop
.L_4123b0:

            mov EAX,EDX
            test RSI,RSI
            not EAX
            setne R8B
            shr EAX,31
            test R8B,AL
            je .L_4123e1

            test RDI,RDI
            je .L_4123e1

            cmp EDX,DWORD PTR [RSI+288]
            jge .L_4123e1

            movsxd RDX,EDX
            shl RDX,5
            add RDX,QWORD PTR [RSI+280]
            mov BYTE PTR [RDX+24],CL
.L_4123e1:

            ret 
.L_4123e3:

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
.L_4123f0:

            test RDI,RDI
            je .L_41240f

            movzx EAX,BYTE PTR [RDI+1040]
            and ESI,1
            and EAX,4294967294
            or ESI,EAX
            movzx ESI,SIL
            mov QWORD PTR [RDI+1040],RSI
.L_41240f:

            ret 
.L_412411:

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
.L_412420:

            xor EAX,EAX
            test RDI,RDI
            je .L_412434

            mov RAX,RSI
            and EAX,5
            mov QWORD PTR [RDI+1040],RAX
.L_412434:

            ret 
.L_412436:

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
.L_412440:

            test RDI,RDI
            je .L_412558

            test ECX,ECX
            jne .L_412478

            mov RAX,QWORD PTR [RDI+288]
            lea ECX,DWORD PTR [RSI-2]
            mov RDX,RAX
            and DH,127
            cmp ECX,1
            jbe .L_412560
.L_412466:

            and RDX,-65537
            mov QWORD PTR [RDI+288],RDX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_412478:

            test RDX,RDX
            je .L_412558

            push R15
.L_412483:

            push R14
            push R13
            push R12
            mov R12D,ECX
            push RBP
            push RBX
            mov EBP,ESI
            mov RBX,RDI
            sub RSP,24
.L_412497:

            mov R15D,DWORD PTR [RDI+1016]
            mov QWORD PTR [RSP+8],RDX
            lea R14D,DWORD PTR [RCX+R15*1]
            lea R15D,DWORD PTR [R15+R15*4]
            lea ESI,DWORD PTR [R14+R14*4]
            movsxd R15,R15D
            movsxd RSI,ESI
            call .L_40c040

            mov RSI,QWORD PTR [RBX+1024]
            mov R13,RAX
            test RSI,RSI
            je .L_4124ee

            mov RDX,R15
            mov RDI,RAX
            call memcpy@PLT

            mov RSI,QWORD PTR [RBX+1024]
            mov RDI,RBX
            call .L_40c120

            mov QWORD PTR [RBX+1024],0
.L_4124ee:

            lea EDX,DWORD PTR [R12+R12*4]
            mov RSI,QWORD PTR [RSP+8]
            lea RDI,QWORD PTR [R13+R15*1]
            movsxd RDX,EDX
            call memcpy@PLT

            test R12D,R12D
            lea RAX,QWORD PTR [R13+R15*1+4]
            jle .L_41252c

            lea EDX,DWORD PTR [R12-1]
            lea RDX,QWORD PTR [RDX+RDX*4+5]
            add RDX,RAX
            nop
            nop
            nop
            nop
            nop
.L_412520:

            mov BYTE PTR [RAX],BPL
            add RAX,5
            cmp RDX,RAX
            jne .L_412520
.L_41252c:

            mov DWORD PTR [RBX+1016],R14D
            mov QWORD PTR [RBX+1024],R13
            or QWORD PTR [RBX+992],1024
            add RSP,24
.L_412549:

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
.L_412558:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_412560:

            cmp ESI,3
            jne .L_412573

            or RAX,98304
            mov QWORD PTR [RDI+288],RAX
            ret 
.L_412573:

            or AH,128
            mov RDX,RAX
            jmp .L_412466
.L_41257e:

            nop
            nop
.L_412580:

            test RDI,RDI
            je .L_412593

            mov QWORD PTR [RDI+1008],RDX
            mov QWORD PTR [RDI+1000],RSI
.L_412593:

            ret 
.L_412595:

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
.L_4125a0:

            test RDI,RDI
            je .L_4125f0

            test RSI,RSI
            je .L_4125f0

            push RBP
            push RBX
            mov RBP,RDX
            mov RBX,RSI
            sub RSP,8
            mov RAX,QWORD PTR [RSI+384]
            test RAX,RAX
            je .L_4125d3

            cmp RAX,RDX
            je .L_4125df

            xor ECX,ECX
            mov EDX,64
            call .L_401860
.L_4125d3:

            test RBP,RBP
            mov QWORD PTR [RBX+384],RBP
            je .L_4125e7
.L_4125df:

            or QWORD PTR [RBX+16],32768
.L_4125e7:

            add RSP,8
            pop RBX
            pop RBP
            ret 
          .byte 0x66
          .byte 0x90
.L_4125f0:

            ret 
.L_4125f2:

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
.L_412600:

            test RDI,RDI
            je .L_412658

            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,8
            mov RSI,QWORD PTR [RDI+416]
            call .L_40c120

            mov QWORD PTR [RBX+424],RBP
            mov RSI,RBP
            mov RDI,RBX
            call .L_40c040

            mov QWORD PTR [RBX+416],RAX
            mov QWORD PTR [RBX+328],RAX
            mov RAX,QWORD PTR [RBX+424]
            mov DWORD PTR [RBX+336],EAX
            add RSP,8
            pop RBX
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412658:

            ret 
.L_41265a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_412660:

            test RDI,RDI
            je .L_412673

            test RSI,RSI
            je .L_412673

            not EDX
            movsxd RDX,EDX
            and QWORD PTR [RSI+16],RDX
.L_412673:

            ret 
.L_412675:

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
.L_412680:

            test RDI,RDI
            je .L_412690

            mov QWORD PTR [RDI+1072],0
.L_412690:

            ret 
.L_412692:

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
.L_4126a0:

            ret 
.L_4126a2:

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
.L_4126b0:

            test RDI,RDI
            je .L_4126c3

            mov QWORD PTR [RDI+1144],RSI
            mov QWORD PTR [RDI+1152],RDX
.L_4126c3:

            ret 
.L_4126c5:

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
.L_4126d0:

            push R15
            push R14
            push R13
            push R12
            mov R12,RDI
            push RBP
            push RBX
            sub RSP,72
.L_4126e1:

            mov QWORD PTR [RDX],0
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+56],RAX
            xor EAX,EAX
            test RSI,RSI
            je .L_412718

            mov RDI,RSI
            mov RBP,RSI
            mov R13,RDX
            call strlen@PLT

            test RAX,RAX
            mov RBX,RAX
            mov QWORD PTR [RSP+8],RAX
            jne .L_412750
.L_412718:

            lea RSI,QWORD PTR [RIP+.L_414aa1]
            mov RDI,R12
            xor EBX,EBX
            call .L_40c5f0
.L_412729:

            mov RCX,QWORD PTR [RSP+56]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBX
            jne .L_412968

            add RSP,72
.L_412744:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x90
.L_412750:

            lea RSI,QWORD PTR [RAX+2]
            mov RDI,R12
            call .L_40c170

            test RAX,RAX
            mov R15,RAX
            mov QWORD PTR [R13],RAX
            je .L_412948

            movzx R9D,BYTE PTR [RBP]
            lea R14,QWORD PTR [RSP+16]
            test R9B,R9B
            jne .L_41279d

            jmp .L_4127d8
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_412780:

            lea EAX,DWORD PTR [R9-127]
            cmp AL,33
            jbe .L_4127a3

            mov BYTE PTR [R15],R9B
.L_41278b:

            add RBP,1
            movzx R9D,BYTE PTR [RBP]
            add R15,1
            test R9B,R9B
            je .L_4127d8
.L_41279d:

            cmp R9B,31
            ja .L_412780
.L_4127a3:

            lea R8,QWORD PTR [RIP+.L_414d90]
            mov ECX,40
            mov EDX,1
            mov ESI,40
            mov RDI,R14
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RSI,R14
            mov RDI,R12
            call .L_40c5f0

            mov BYTE PTR [R15],32
            jmp .L_41278b
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4127d8:

            mov BYTE PTR [R15],0
            mov RAX,QWORD PTR [RSP+8]
            mov RBP,QWORD PTR [R13]
            cmp BYTE PTR [RBP+RAX*1-1],32
            je .L_412910
.L_4127f0:

            movzx EAX,BYTE PTR [RBP]
            mov RDX,RBP
            cmp AL,32
            je .L_4128d0
.L_4127ff:

            test AL,AL
            je .L_412960

            xor ESI,ESI
            xor ECX,ECX
            jmp .L_412824

            nop
            nop
            nop
.L_412810:

            mov BYTE PTR [RDX],AL
            xor ECX,ECX
            add RDX,1
.L_412818:

            add RBP,1
            movzx EAX,BYTE PTR [RBP]
            test AL,AL
            je .L_412848
.L_412824:

            cmp AL,32
            jne .L_412810

            test ECX,ECX
            jne .L_412880

            add RBP,1
            mov BYTE PTR [RDX],32
            add RDX,1
            movzx EAX,BYTE PTR [RBP]
            mov ECX,1
            test AL,AL
            jne .L_412824

            nop
            nop
            nop
            nop
.L_412848:

            test ESI,ESI
            mov BYTE PTR [RDX],0
            jne .L_412890
.L_41284f:

            test RBX,RBX
            je .L_4128a8

            cmp RBX,79
            jbe .L_412729

            lea RSI,QWORD PTR [RIP+.L_414e38]
            mov RDI,R12
            mov EBX,79
            call .L_40c5f0

            mov RAX,QWORD PTR [R13]
            mov BYTE PTR [RAX+79],0
            jmp .L_412729
          .byte 0x90
.L_412880:

            sub RBX,1
            mov ESI,ECX
            jmp .L_412818
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412890:

            lea RSI,QWORD PTR [RIP+.L_414e08]
            mov RDI,R12
            call .L_40c5f0

            jmp .L_41284f
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4128a8:

            mov RSI,QWORD PTR [R13]
            mov RDI,R12
            call .L_40c120

            lea RSI,QWORD PTR [RIP+.L_414ab5]
            mov QWORD PTR [R13],0
            mov RDI,R12
            call .L_40c5f0

            jmp .L_412729
.L_4128d0:

            lea RSI,QWORD PTR [RIP+.L_414de0]
            mov RDI,R12
            call .L_40c5f0

            movzx EAX,BYTE PTR [RBP]
            cmp AL,32
            jne .L_412900

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4128f0:

            add RBP,1
            movzx EAX,BYTE PTR [RBP]
            sub RBX,1
            cmp AL,32
            je .L_4128f0
.L_412900:

            mov RDX,QWORD PTR [R13]
            jmp .L_4127ff
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412910:

            lea RSI,QWORD PTR [RIP+.L_414db8]
            mov RDI,R12
            call .L_40c5f0

            lea RAX,QWORD PTR [RBP-1]
            nop
            nop
            nop
            nop
            nop
.L_412928:

            cmp BYTE PTR [RAX+RBX*1],32
            jne .L_412938

            mov BYTE PTR [RAX+RBX*1],0
            sub RBX,1
            jne .L_412928
.L_412938:

            mov RBP,QWORD PTR [R13]
            jmp .L_4127f0
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412948:

            lea RSI,QWORD PTR [RIP+.L_414d68]
            mov RDI,R12
            xor EBX,EBX
            call .L_40c5f0

            jmp .L_412729
          .byte 0x66
          .byte 0x90
.L_412960:

            mov BYTE PTR [RDX],0
            jmp .L_41284f
.L_412968:

            call __stack_chk_fail@PLT
.L_41296d:

            nop
            nop
            nop
.L_412970:

            push R15
            push R14
            mov R15,RDX
            push R13
            push R12
            lea R12,QWORD PTR [RIP+.L_618dd0]
            push RBP
            lea RBP,QWORD PTR [RIP+.L_618dd8]
            push RBX
            mov R13D,EDI
            mov R14,RSI
            sub RBP,R12
            sub RSP,8
            sar RBP,3
            call 4197712

            test RBP,RBP
            je .L_4129c6

            xor EBX,EBX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4129b0:

            mov RDX,R15
            mov RSI,R14
            mov EDI,R13D
            call QWORD PTR [R12+RBX*8]

            add RBX,1
            cmp RBP,RBX
            jne .L_4129b0
.L_4129c6:

            add RSP,8
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_4129d5:

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
.L_4129e0:

            ret 
.L_4129e2:
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
.L_412a04:
          .string "read error"
.L_412a0f:
          .byte 0x31
          .byte 0x2e
          .byte 0x32
          .byte 0x2e
          .byte 0x35
          .byte 0x36
          .byte 0x0
.L_412a16:
          .string "target.cc"
.L_412a20:
          .string "png_ptr"
.L_412a28:
          .string "info_ptr"
.L_412a31:
          .string "rb"
.L_412a34:
          .string "malloc error!\n"
.L_412a43:
          .string "read error!\n"
          .zero 16
.L_412a60:
          .string "int LLVMFuzzerTestOneInput(const uint8_t*, size_t)"
          .zero 5
.L_412a98:
          .string "Too many bytes for PNG signature."
          .zero 6
.L_412ac0:
          .string "Unknown freer parameter in png_data_freer."
          .zero 5
.L_412af0:
          .string "\nlibpng version 1.2.56 - December 17, 2015\nCopyright (c) 1998-2002,2004,2006-2015 Glenn Randers-Pehrson\nCopyright (c) 1996-1997 Andreas Dilger\nCopyright (c) 1995-1996 Guy Eric Schalnat, Group 42, Inc.\n"
          .zero 6
.L_412bc0:
          .string " libpng version 1.2.56 - December 17, 2015\n\n"
          .zero 3
.L_412bf0:
          .string "Ignoring attempt to set negative chromaticity value"
          .zero 4
.L_412c28:
          .string "Ignoring attempt to set chromaticity value exceeding 21474.83"
          .zero 2
.L_412c68:
          .string "Ignoring attempt to set cHRM RGB triangle with zero area"
          .zero 7
.L_412ca8:
          .string "Image width exceeds user limit in IHDR"
          .zero 1
.L_412cd0:
          .string "Image height exceeds user limit in IHDR"
.L_412cf8:
          .string "Invalid color type/bit depth combination in IHDR"
          .zero 7
.L_412d30:
          .string "Unknown interlace method in IHDR"
          .zero 7
.L_412d58:
          .string "Unknown compression method in IHDR"
          .zero 5
.L_412d80:
          .string "MNG features are not allowed in a PNG datastream"
.L_412db1:
          .string "%d %s %d %02d:%02d:%02d +0000"
.L_412dcf:
          .string "Invalid cHRM white point"
.L_412de8:
          .string "Invalid cHRM red point"
.L_412dff:
          .string "Invalid cHRM green point"
.L_412e18:
          .string "Invalid cHRM blue point"
.L_412e30:
          .string "Image width is zero in IHDR"
.L_412e4c:
          .string "Image height is zero in IHDR"
.L_412e69:
          .string "Invalid image width in IHDR"
.L_412e85:
          .string "Invalid image height in IHDR"
.L_412ea2:
          .string "Invalid bit depth in IHDR"
.L_412ebc:
          .string "Invalid color type in IHDR"
.L_412ed7:
          .string "Unknown filter method in IHDR"
.L_412ef5:
          .string "Invalid filter method in IHDR"
.L_412f13:
          .string "Invalid IHDR data"
          .zero 27
.L_412f40:
          .string "Jan"
          .byte 0x46
          .byte 0x65
          .byte 0x62
          .byte 0x0
          .byte 0x4d
          .byte 0x61
          .byte 0x72
          .byte 0x0
          .byte 0x41
          .byte 0x70
          .byte 0x72
          .byte 0x0
          .byte 0x4d
          .byte 0x61
          .byte 0x79
          .byte 0x0
          .byte 0x4a
          .byte 0x75
          .byte 0x6e
          .byte 0x0
          .byte 0x4a
          .byte 0x75
          .byte 0x6c
          .byte 0x0
          .byte 0x41
          .byte 0x75
          .byte 0x67
          .byte 0x0
          .byte 0x53
          .byte 0x65
          .byte 0x70
          .byte 0x0
          .byte 0x4f
          .byte 0x63
          .byte 0x74
          .byte 0x0
          .byte 0x4e
          .byte 0x6f
          .byte 0x76
          .byte 0x0
          .byte 0x44
          .byte 0x65
          .byte 0x63
          .byte 0x0
.L_412f70:
          .byte 0xff
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412f74:
          .byte 0xf
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412f78:
          .byte 0xff
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412f7c:
          .byte 0x33
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412f80:
          .byte 0xff
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412f84:
          .byte 0x55
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xff
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412f90:
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x88
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x22
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xaa
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x55
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xff
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412fb0:
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412fd0:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412ff0:
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_413010:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x89
          .byte 0x50
          .byte 0x4e
          .byte 0x47
          .byte 0xd
          .byte 0xa
          .byte 0x1a
          .byte 0xa
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_413040:
          .byte 0x31
          .byte 0x2e
.L_413042:
          .byte 0x32
          .byte 0x2e
          .byte 0x35
          .byte 0x36
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_413060:
          .byte 0x0
          .byte 0x10
          .byte 0x20
          .byte 0x30
          .byte 0x40
          .byte 0x50
          .byte 0x60
          .byte 0x70
          .byte 0x80
          .byte 0x90
          .byte 0xa0
          .byte 0xb0
          .byte 0xc0
          .byte 0xd0
          .byte 0xe0
          .byte 0xf0
          .byte 0x1
          .byte 0x11
          .byte 0x21
          .byte 0x31
          .byte 0x41
          .byte 0x51
          .byte 0x61
          .byte 0x71
          .byte 0x81
          .byte 0x91
          .byte 0xa1
          .byte 0xb1
          .byte 0xc1
          .byte 0xd1
          .byte 0xe1
          .byte 0xf1
          .byte 0x2
          .byte 0x12
          .byte 0x22
          .byte 0x32
          .byte 0x42
          .byte 0x52
          .byte 0x62
          .byte 0x72
          .byte 0x82
          .byte 0x92
          .byte 0xa2
          .byte 0xb2
          .byte 0xc2
          .byte 0xd2
          .byte 0xe2
          .byte 0xf2
          .byte 0x3
          .byte 0x13
          .byte 0x23
          .byte 0x33
          .byte 0x43
          .byte 0x53
          .byte 0x63
          .byte 0x73
          .byte 0x83
          .byte 0x93
          .byte 0xa3
          .byte 0xb3
          .byte 0xc3
          .byte 0xd3
          .byte 0xe3
          .byte 0xf3
          .byte 0x4
          .byte 0x14
          .byte 0x24
          .byte 0x34
          .byte 0x44
          .byte 0x54
          .byte 0x64
          .byte 0x74
          .byte 0x84
          .byte 0x94
          .byte 0xa4
          .byte 0xb4
          .byte 0xc4
          .byte 0xd4
          .byte 0xe4
          .byte 0xf4
          .byte 0x5
          .byte 0x15
          .byte 0x25
          .byte 0x35
          .byte 0x45
          .byte 0x55
          .byte 0x65
          .byte 0x75
          .byte 0x85
          .byte 0x95
          .byte 0xa5
          .byte 0xb5
          .byte 0xc5
          .byte 0xd5
          .byte 0xe5
          .byte 0xf5
          .byte 0x6
          .byte 0x16
          .byte 0x26
          .byte 0x36
          .byte 0x46
          .byte 0x56
          .byte 0x66
          .byte 0x76
          .byte 0x86
          .byte 0x96
          .byte 0xa6
          .byte 0xb6
          .byte 0xc6
          .byte 0xd6
          .byte 0xe6
          .byte 0xf6
          .byte 0x7
          .byte 0x17
          .byte 0x27
          .byte 0x37
          .byte 0x47
          .byte 0x57
          .byte 0x67
          .byte 0x77
          .byte 0x87
          .byte 0x97
          .byte 0xa7
          .byte 0xb7
          .byte 0xc7
          .byte 0xd7
          .byte 0xe7
          .byte 0xf7
          .byte 0x8
          .byte 0x18
          .byte 0x28
          .byte 0x38
          .byte 0x48
          .byte 0x58
          .byte 0x68
          .byte 0x78
          .byte 0x88
          .byte 0x98
          .byte 0xa8
          .byte 0xb8
          .byte 0xc8
          .byte 0xd8
          .byte 0xe8
          .byte 0xf8
          .byte 0x9
          .byte 0x19
          .byte 0x29
          .byte 0x39
          .byte 0x49
          .byte 0x59
          .byte 0x69
          .byte 0x79
          .byte 0x89
          .byte 0x99
          .byte 0xa9
          .byte 0xb9
          .byte 0xc9
          .byte 0xd9
          .byte 0xe9
          .byte 0xf9
          .byte 0xa
          .byte 0x1a
          .byte 0x2a
          .byte 0x3a
          .byte 0x4a
          .byte 0x5a
          .byte 0x6a
          .byte 0x7a
          .byte 0x8a
          .byte 0x9a
          .byte 0xaa
          .byte 0xba
          .byte 0xca
          .byte 0xda
          .byte 0xea
          .byte 0xfa
          .byte 0xb
          .byte 0x1b
          .byte 0x2b
          .byte 0x3b
          .byte 0x4b
          .byte 0x5b
          .byte 0x6b
          .byte 0x7b
          .byte 0x8b
          .byte 0x9b
          .byte 0xab
          .byte 0xbb
          .byte 0xcb
          .byte 0xdb
          .byte 0xeb
          .byte 0xfb
          .byte 0xc
          .byte 0x1c
          .byte 0x2c
          .byte 0x3c
          .byte 0x4c
          .byte 0x5c
          .byte 0x6c
          .byte 0x7c
          .byte 0x8c
          .byte 0x9c
          .byte 0xac
          .byte 0xbc
          .byte 0xcc
          .byte 0xdc
          .byte 0xec
          .byte 0xfc
          .byte 0xd
          .byte 0x1d
          .byte 0x2d
          .byte 0x3d
          .byte 0x4d
          .byte 0x5d
          .byte 0x6d
          .byte 0x7d
          .byte 0x8d
          .byte 0x9d
          .byte 0xad
          .byte 0xbd
          .byte 0xcd
          .byte 0xdd
          .byte 0xed
          .byte 0xfd
          .byte 0xe
          .byte 0x1e
          .byte 0x2e
          .byte 0x3e
          .byte 0x4e
          .byte 0x5e
          .byte 0x6e
          .byte 0x7e
          .byte 0x8e
          .byte 0x9e
          .byte 0xae
          .byte 0xbe
          .byte 0xce
          .byte 0xde
          .byte 0xee
          .byte 0xfe
          .byte 0xf
          .byte 0x1f
          .byte 0x2f
          .byte 0x3f
          .byte 0x4f
          .byte 0x5f
          .byte 0x6f
          .byte 0x7f
          .byte 0x8f
          .byte 0x9f
          .byte 0xaf
          .byte 0xbf
          .byte 0xcf
          .byte 0xdf
          .byte 0xef
          .byte 0xff
.L_413160:
          .byte 0x0
          .byte 0x40
          .byte 0x80
          .byte 0xc0
          .byte 0x10
          .byte 0x50
          .byte 0x90
          .byte 0xd0
          .byte 0x20
          .byte 0x60
          .byte 0xa0
          .byte 0xe0
          .byte 0x30
          .byte 0x70
          .byte 0xb0
          .byte 0xf0
          .byte 0x4
          .byte 0x44
          .byte 0x84
          .byte 0xc4
          .byte 0x14
          .byte 0x54
          .byte 0x94
          .byte 0xd4
          .byte 0x24
          .byte 0x64
          .byte 0xa4
          .byte 0xe4
          .byte 0x34
          .byte 0x74
          .byte 0xb4
          .byte 0xf4
          .byte 0x8
          .byte 0x48
          .byte 0x88
          .byte 0xc8
          .byte 0x18
          .byte 0x58
          .byte 0x98
          .byte 0xd8
          .byte 0x28
          .byte 0x68
          .byte 0xa8
          .byte 0xe8
          .byte 0x38
          .byte 0x78
          .byte 0xb8
          .byte 0xf8
          .byte 0xc
          .byte 0x4c
          .byte 0x8c
          .byte 0xcc
          .byte 0x1c
          .byte 0x5c
          .byte 0x9c
          .byte 0xdc
          .byte 0x2c
          .byte 0x6c
          .byte 0xac
          .byte 0xec
          .byte 0x3c
          .byte 0x7c
          .byte 0xbc
          .byte 0xfc
          .byte 0x1
          .byte 0x41
          .byte 0x81
          .byte 0xc1
          .byte 0x11
          .byte 0x51
          .byte 0x91
          .byte 0xd1
          .byte 0x21
          .byte 0x61
          .byte 0xa1
          .byte 0xe1
          .byte 0x31
          .byte 0x71
          .byte 0xb1
          .byte 0xf1
          .byte 0x5
          .byte 0x45
          .byte 0x85
          .byte 0xc5
          .byte 0x15
          .byte 0x55
          .byte 0x95
          .byte 0xd5
          .byte 0x25
          .byte 0x65
          .byte 0xa5
          .byte 0xe5
          .byte 0x35
          .byte 0x75
          .byte 0xb5
          .byte 0xf5
          .byte 0x9
          .byte 0x49
          .byte 0x89
          .byte 0xc9
          .byte 0x19
          .byte 0x59
          .byte 0x99
          .byte 0xd9
          .byte 0x29
          .byte 0x69
          .byte 0xa9
          .byte 0xe9
          .byte 0x39
          .byte 0x79
          .byte 0xb9
          .byte 0xf9
          .byte 0xd
          .byte 0x4d
          .byte 0x8d
          .byte 0xcd
          .byte 0x1d
          .byte 0x5d
          .byte 0x9d
          .byte 0xdd
          .byte 0x2d
          .byte 0x6d
          .byte 0xad
          .byte 0xed
          .byte 0x3d
          .byte 0x7d
          .byte 0xbd
          .byte 0xfd
          .byte 0x2
          .byte 0x42
          .byte 0x82
          .byte 0xc2
          .byte 0x12
          .byte 0x52
          .byte 0x92
          .byte 0xd2
          .byte 0x22
          .byte 0x62
          .byte 0xa2
          .byte 0xe2
          .byte 0x32
          .byte 0x72
          .byte 0xb2
          .byte 0xf2
          .byte 0x6
          .byte 0x46
          .byte 0x86
          .byte 0xc6
          .byte 0x16
          .byte 0x56
          .byte 0x96
          .byte 0xd6
          .byte 0x26
          .byte 0x66
          .byte 0xa6
          .byte 0xe6
          .byte 0x36
          .byte 0x76
          .byte 0xb6
          .byte 0xf6
          .byte 0xa
          .byte 0x4a
          .byte 0x8a
          .byte 0xca
          .byte 0x1a
          .byte 0x5a
          .byte 0x9a
          .byte 0xda
          .byte 0x2a
          .byte 0x6a
          .byte 0xaa
          .byte 0xea
          .byte 0x3a
          .byte 0x7a
          .byte 0xba
          .byte 0xfa
          .byte 0xe
          .byte 0x4e
          .byte 0x8e
          .byte 0xce
          .byte 0x1e
          .byte 0x5e
          .byte 0x9e
          .byte 0xde
          .byte 0x2e
          .byte 0x6e
          .byte 0xae
          .byte 0xee
          .byte 0x3e
          .byte 0x7e
          .byte 0xbe
          .byte 0xfe
          .byte 0x3
          .byte 0x43
          .byte 0x83
          .byte 0xc3
          .byte 0x13
          .byte 0x53
          .byte 0x93
          .byte 0xd3
          .byte 0x23
          .byte 0x63
          .byte 0xa3
          .byte 0xe3
          .byte 0x33
          .byte 0x73
          .byte 0xb3
          .byte 0xf3
          .byte 0x7
          .byte 0x47
          .byte 0x87
          .byte 0xc7
          .byte 0x17
          .byte 0x57
          .byte 0x97
          .byte 0xd7
          .byte 0x27
          .byte 0x67
          .byte 0xa7
          .byte 0xe7
          .byte 0x37
          .byte 0x77
          .byte 0xb7
          .byte 0xf7
          .byte 0xb
          .byte 0x4b
          .byte 0x8b
          .byte 0xcb
          .byte 0x1b
          .byte 0x5b
          .byte 0x9b
          .byte 0xdb
          .byte 0x2b
          .byte 0x6b
          .byte 0xab
          .byte 0xeb
          .byte 0x3b
          .byte 0x7b
          .byte 0xbb
          .byte 0xfb
          .byte 0xf
          .byte 0x4f
          .byte 0x8f
          .byte 0xcf
          .byte 0x1f
          .byte 0x5f
          .byte 0x9f
          .byte 0xdf
          .byte 0x2f
          .byte 0x6f
          .byte 0xaf
          .byte 0xef
          .byte 0x3f
          .byte 0x7f
          .byte 0xbf
          .byte 0xff
.L_413260:
          .byte 0x0
          .byte 0x80
          .byte 0x40
          .byte 0xc0
          .byte 0x20
          .byte 0xa0
          .byte 0x60
          .byte 0xe0
          .byte 0x10
          .byte 0x90
          .byte 0x50
          .byte 0xd0
          .byte 0x30
          .byte 0xb0
          .byte 0x70
          .byte 0xf0
          .byte 0x8
          .byte 0x88
          .byte 0x48
          .byte 0xc8
          .byte 0x28
          .byte 0xa8
          .byte 0x68
          .byte 0xe8
          .byte 0x18
          .byte 0x98
          .byte 0x58
          .byte 0xd8
          .byte 0x38
          .byte 0xb8
          .byte 0x78
          .byte 0xf8
          .byte 0x4
          .byte 0x84
          .byte 0x44
          .byte 0xc4
          .byte 0x24
          .byte 0xa4
          .byte 0x64
          .byte 0xe4
          .byte 0x14
          .byte 0x94
          .byte 0x54
          .byte 0xd4
          .byte 0x34
          .byte 0xb4
          .byte 0x74
          .byte 0xf4
          .byte 0xc
          .byte 0x8c
          .byte 0x4c
          .byte 0xcc
          .byte 0x2c
          .byte 0xac
          .byte 0x6c
          .byte 0xec
          .byte 0x1c
          .byte 0x9c
          .byte 0x5c
          .byte 0xdc
          .byte 0x3c
          .byte 0xbc
          .byte 0x7c
          .byte 0xfc
          .byte 0x2
          .byte 0x82
          .byte 0x42
          .byte 0xc2
          .byte 0x22
          .byte 0xa2
          .byte 0x62
          .byte 0xe2
          .byte 0x12
          .byte 0x92
          .byte 0x52
          .byte 0xd2
          .byte 0x32
          .byte 0xb2
          .byte 0x72
          .byte 0xf2
          .byte 0xa
          .byte 0x8a
          .byte 0x4a
          .byte 0xca
          .byte 0x2a
          .byte 0xaa
          .byte 0x6a
          .byte 0xea
          .byte 0x1a
          .byte 0x9a
          .byte 0x5a
          .byte 0xda
          .byte 0x3a
          .byte 0xba
          .byte 0x7a
          .byte 0xfa
          .byte 0x6
          .byte 0x86
          .byte 0x46
          .byte 0xc6
          .byte 0x26
          .byte 0xa6
          .byte 0x66
          .byte 0xe6
          .byte 0x16
          .byte 0x96
          .byte 0x56
          .byte 0xd6
          .byte 0x36
          .byte 0xb6
          .byte 0x76
          .byte 0xf6
          .byte 0xe
          .byte 0x8e
          .byte 0x4e
          .byte 0xce
          .byte 0x2e
          .byte 0xae
          .byte 0x6e
          .byte 0xee
          .byte 0x1e
          .byte 0x9e
          .byte 0x5e
          .byte 0xde
          .byte 0x3e
          .byte 0xbe
          .byte 0x7e
          .byte 0xfe
          .byte 0x1
          .byte 0x81
          .byte 0x41
          .byte 0xc1
          .byte 0x21
          .byte 0xa1
          .byte 0x61
          .byte 0xe1
          .byte 0x11
          .byte 0x91
          .byte 0x51
          .byte 0xd1
          .byte 0x31
          .byte 0xb1
          .byte 0x71
          .byte 0xf1
          .byte 0x9
          .byte 0x89
          .byte 0x49
          .byte 0xc9
          .byte 0x29
          .byte 0xa9
          .byte 0x69
          .byte 0xe9
          .byte 0x19
          .byte 0x99
          .byte 0x59
          .byte 0xd9
          .byte 0x39
          .byte 0xb9
          .byte 0x79
          .byte 0xf9
          .byte 0x5
          .byte 0x85
          .byte 0x45
          .byte 0xc5
          .byte 0x25
          .byte 0xa5
          .byte 0x65
          .byte 0xe5
          .byte 0x15
          .byte 0x95
          .byte 0x55
          .byte 0xd5
          .byte 0x35
          .byte 0xb5
          .byte 0x75
          .byte 0xf5
          .byte 0xd
          .byte 0x8d
          .byte 0x4d
          .byte 0xcd
          .byte 0x2d
          .byte 0xad
          .byte 0x6d
          .byte 0xed
          .byte 0x1d
          .byte 0x9d
          .byte 0x5d
          .byte 0xdd
          .byte 0x3d
          .byte 0xbd
          .byte 0x7d
          .byte 0xfd
          .byte 0x3
          .byte 0x83
          .byte 0x43
          .byte 0xc3
          .byte 0x23
          .byte 0xa3
          .byte 0x63
          .byte 0xe3
          .byte 0x13
          .byte 0x93
          .byte 0x53
          .byte 0xd3
          .byte 0x33
          .byte 0xb3
          .byte 0x73
          .byte 0xf3
          .byte 0xb
          .byte 0x8b
          .byte 0x4b
          .byte 0xcb
          .byte 0x2b
          .byte 0xab
          .byte 0x6b
          .byte 0xeb
          .byte 0x1b
          .byte 0x9b
          .byte 0x5b
          .byte 0xdb
          .byte 0x3b
          .byte 0xbb
          .byte 0x7b
          .byte 0xfb
          .byte 0x7
          .byte 0x87
          .byte 0x47
          .byte 0xc7
          .byte 0x27
          .byte 0xa7
          .byte 0x67
          .byte 0xe7
          .byte 0x17
          .byte 0x97
          .byte 0x57
          .byte 0xd7
          .byte 0x37
          .byte 0xb7
          .byte 0x77
          .byte 0xf7
          .byte 0xf
          .byte 0x8f
          .byte 0x4f
          .byte 0xcf
          .byte 0x2f
          .byte 0xaf
          .byte 0x6f
          .byte 0xef
          .byte 0x1f
          .byte 0x9f
          .byte 0x5f
          .byte 0xdf
          .byte 0x3f
          .byte 0xbf
          .byte 0x7f
          .byte 0xff
.L_413360:
          .string "Not a PNG file"
.L_41336f:
          .string "Missing IHDR before IDAT"
.L_413388:
          .string "Missing PLTE before IDAT"
.L_4133a1:
          .string "Too many IDAT\'s found"
.L_4133b7:
          .string "1.2.11"
.L_4133be:
          .string "zlib memory error"
.L_4133d0:
          .string "zlib version error"
.L_4133e3:
          .string "Unknown zlib error"
.L_4133f6:
          .string "1.0.6 or earlier"
.L_413407:
          .string "Decompression error"
.L_41341b:
          .string "Not enough image data"
.L_413431:
          .string "Extra compressed data"
          .zero 1
.L_413448:
          .string "PNG file corrupted by ASCII conversion"
          .zero 1
.L_413470:
          .string "Application  is  running with png.c from libpng-%.20s"
          .zero 2
.L_4134a8:
          .string "Application was compiled with png.h from libpng-%.20s"
          .zero 2
.L_4134e0:
          .string "Incompatible libpng version in application and library"
          .zero 1
.L_413518:
          .string "Application uses deprecated png_read_init() and should be recompiled."
          .zero 2
.L_413560:
          .string "The info struct allocated by application for reading is too small."
          .zero 5
.L_4135a8:
          .string "The png struct allocated by the application for reading is too small."
          .zero 2
.L_4135f0:
          .string "Ignoring extra png_read_update_info() call; row buffer not reallocated"
          .zero 1
.L_413638:
          .string "Invalid attempt to read row data"
          .zero 7
.L_413660:
          .string "Image is too high to process with png_read_png()"
          .zero 3
.L_413694:
          .long .L_40519c-.L_413694
          .long .L_40516a-.L_413694
          .long .L_405132-.L_413694
          .long .L_405107-.L_413694
          .long .L_4050da-.L_413694
          .long .L_40509b-.L_413694
          .long .L_404cb6-.L_413694
.L_4136b0:
          .string "Read Error"
.L_4136bb:
          .string "Call to NULL read function"
          .zero 2
.L_4136d8:
          .string "It\'s an error to set both read_data_fn and write_data_fn in the "
          .zero 7
.L_413720:
          .string "same structure.  Resetting write_data_fn to NULL."
          .zero 6
.L_413758:
          .string "Can\'t discard critical data on CRC error."
          .zero 6
.L_413788:
          .string "Application must supply a known background gamma"
          .zero 7
.L_4137c0:
          .string "ignoring out of range rgb_to_gray coefficients"
          .zero 1
.L_4137f0:
          .string "NULL row buffer for row %ld, pass %d"
          .zero 3
.L_413818:
          .string "Palette is NULL in indexed image"
          .zero 7
.L_413840:
          .string "png_do_rgb_to_gray found nongray pixel"
          .zero 1
.L_413868:
          .string "png_do_dither returned rowbytes=0"
          .zero 22
.L_4138a0:
          .long .L_408254-.L_4138a0
          .long .L_408698-.L_4138a0
          .long .L_408888-.L_4138a0
          .long .L_408254-.L_4138a0
          .long .L_4087f0-.L_4138a0
          .long .L_408254-.L_4138a0
          .long .L_408254-.L_4138a0
          .long .L_408254-.L_4138a0
          .long .L_4087a0-.L_4138a0
          .long .L_408254-.L_4138a0
          .long .L_408254-.L_4138a0
          .long .L_408254-.L_4138a0
          .long .L_408254-.L_4138a0
          .long .L_408254-.L_4138a0
          .long .L_408254-.L_4138a0
          .long .L_408254-.L_4138a0
          .long .L_408720-.L_4138a0
.L_4138e4:
          .long .L_40b56c-.L_4138e4
          .long .L_40b8a0-.L_4138e4
          .long .L_40b850-.L_4138e4
          .long .L_40b56c-.L_4138e4
          .long .L_40b7e0-.L_4138e4
          .long .L_40b56c-.L_4138e4
          .long .L_40b56c-.L_4138e4
          .long .L_40b56c-.L_4138e4
          .long .L_40b550-.L_4138e4
          .long .L_40b56c-.L_4138e4
          .long .L_40b56c-.L_4138e4
          .long .L_40b56c-.L_4138e4
          .long .L_40b56c-.L_4138e4
          .long .L_40b56c-.L_4138e4
          .long .L_40b56c-.L_4138e4
          .long .L_40b56c-.L_4138e4
          .long .L_40b550-.L_4138e4
          .zero 24
.L_413940:
          .byte 0xff
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x55
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x11
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_413960:
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
.L_413980:
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x21
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x42
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x48
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x50
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0xf0
          .byte 0xf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4139a4:
          .string "Uninitialized row"
          .zero 2
.L_4139b8:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf0
          .byte 0x3f
.L_4139c0:
          .byte 0x9a
          .byte 0x99
          .byte 0x99
          .byte 0x99
          .byte 0x99
          .byte 0x99
          .byte 0xa9
          .byte 0x3f
.L_4139c8:
          .byte 0x85
          .byte 0x77
          .byte 0xb9
          .byte 0x88
          .byte 0xb5
          .byte 0xf8
          .byte 0xd4
          .byte 0x40
.L_4139d0:
          .byte 0xf1
          .byte 0x68
          .byte 0xe3
          .byte 0x88
          .byte 0xb5
          .byte 0xf8
          .byte 0xd4
          .byte 0xc0
.L_4139d8:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6a
          .byte 0xf8
          .byte 0x40
.L_4139e0:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe0
          .byte 0x3f
.L_4139e8:
          .byte 0x8d
          .byte 0xed
          .byte 0xb5
          .byte 0xa0
          .byte 0xf7
          .byte 0xc6
          .byte 0xb0
          .byte 0x3e
.L_4139f0:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe0
          .byte 0x6f
          .byte 0x40
.L_4139f8:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x70
          .byte 0x3f
.L_413a00:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe0
          .byte 0x43
.L_413a08:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe0
          .byte 0xff
          .byte 0xef
          .byte 0x40
.L_413a10:
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0x7f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_413a20:
          .string "Out of Memory!"
.L_413a2f:
          .string "libpng error no. %s: %s"
.L_413a47:
          .string "libpng error: %s, offset=%d"
.L_413a63:
          .string "libpng error: %s"
.L_413a74:
          .string "libpng warning no. %s: %s"
.L_413a8e:
          .string "libpng warning: %s"
          .zero 15
.L_413ab0:
          .byte 0x30
          .byte 0x31
          .byte 0x32
          .byte 0x33
          .byte 0x34
          .byte 0x35
          .byte 0x36
          .byte 0x37
          .byte 0x38
          .byte 0x39
          .byte 0x41
          .byte 0x42
          .byte 0x43
          .byte 0x44
          .byte 0x45
          .byte 0x46
.L_413ac0:
          .string "Buffer error in compressed datastream in %s chunk"
          .zero 6
.L_413af8:
          .string "Data error in compressed datastream in %s chunk"
.L_413b28:
          .string "Incomplete compressed datastream in %s chunk"
          .zero 3
.L_413b58:
          .string "PNG unsigned integer out of range."
          .zero 5
.L_413b80:
          .string "Exceeded size limit while expanding chunk"
          .zero 6
.L_413bb0:
          .string "Not enough memory to decompress chunk."
          .zero 1
.L_413bd8:
          .string "Unknown zTXt compression type %d"
          .zero 7
.L_413c00:
          .string "Ignoring PLTE chunk in grayscale PNG"
          .zero 3
.L_413c28:
          .string "Truncating incorrect tRNS chunk length"
          .zero 1
.L_413c50:
          .string "Truncating incorrect info tRNS chunk length"
          .zero 4
.L_413c80:
          .string "Ignoring gAMA chunk with gamma=0"
          .zero 7
.L_413ca8:
          .string "Ignoring incorrect gAMA value when sRGB is also present"
.L_413ce0:
          .string "Ignoring incorrect cHRM value when sRGB is also present"
.L_413d18:
          .string "Ignoring nonzero compression type in iCCP chunk"
.L_413d48:
          .string "Profile size field missing from iCCP chunk"
          .zero 5
.L_413d78:
          .string "Ignoring truncated iCCP profile."
          .zero 7
.L_413da0:
          .string "No space in chunk cache for sPLT"
          .zero 7
.L_413dc8:
          .string "sPLT chunk requires too much memory"
          .zero 4
.L_413df0:
          .string "tRNS chunk not allowed with alpha channel"
          .zero 6
.L_413e20:
          .string "Incorrect bKGD chunk index value"
          .zero 7
.L_413e48:
          .string "Invalid pCAL parameters for equation type"
          .zero 6
.L_413e78:
          .string "Unrecognized equation type for pCAL chunk"
          .zero 6
.L_413ea8:
          .string "Out of memory while processing sCAL chunk"
          .zero 6
.L_413ed8:
          .string "malformed width string in sCAL chunk"
          .zero 3
.L_413f00:
          .string "malformed height string in sCAL chunk"
          .zero 2
.L_413f28:
          .string "No space in chunk cache for tEXt"
          .zero 7
.L_413f50:
          .string "No memory to process text chunk."
          .zero 7
.L_413f78:
          .string "Not enough memory to process text chunk."
          .zero 7
.L_413fa8:
          .string "Insufficient memory to process text chunk."
          .zero 5
.L_413fd8:
          .string "No space in chunk cache for zTXt"
          .zero 7
.L_414000:
          .string "Out of memory processing zTXt chunk."
          .zero 3
.L_414028:
          .string "Unknown compression type in zTXt chunk"
          .zero 1
.L_414050:
          .string "Not enough memory to process zTXt chunk."
          .zero 7
.L_414080:
          .string "Insufficient memory to store zTXt chunk."
          .zero 7
.L_4140b0:
          .string "No space in chunk cache for unknown chunk"
          .zero 6
.L_4140e0:
          .string "Ignoring bad adaptive filter type"
          .zero 6
.L_414108:
          .string "Row has too many bytes to allocate in memory."
.L_414136:
          .string "CRC error"
.L_414140:
          .string "invalid chunklength"
.L_414154:
          .string "png_inflate logic error"
.L_41416c:
          .byte 0x4f
          .byte 0x75
          .byte 0x74
          .byte 0x20
          .byte 0x6f
          .byte 0x66
          .byte 0x20
          .byte 0x70
          .byte 0x6c
          .byte 0x61
          .byte 0x63
          .byte 0x65
          .byte 0x20
.L_414179:
          .string "IHDR"
.L_41417e:
          .string "Invalid IHDR chunk"
.L_414191:
          .string "Missing IHDR before PLTE"
.L_4141aa:
          .string "Invalid PLTE after IDAT"
.L_4141c2:
          .string "Duplicate PLTE chunk"
.L_4141d7:
          .string "Invalid palette chunk"
.L_4141ed:
          .string "No image in file"
.L_4141fe:
          .string "Incorrect IEND chunk length"
.L_41421a:
          .string "Missing IHDR before gAMA"
.L_414233:
          .string "Invalid gAMA after IDAT"
.L_41424b:
          .string "Out of place gAMA chunk"
.L_414263:
          .string "Duplicate gAMA chunk"
.L_414278:
          .string "Incorrect gAMA chunk length"
.L_414294:
          .string "gamma = (%d/100000)"
.L_4142a8:
          .string "Missing IHDR before sBIT"
.L_4142c1:
          .string "Invalid sBIT after IDAT"
.L_4142d9:
          .string "Out of place sBIT chunk"
.L_4142f1:
          .string "Duplicate sBIT chunk"
.L_414306:
          .string "Incorrect sBIT chunk length"
.L_414322:
          .string "Missing IHDR before cHRM"
.L_41433b:
          .string "Invalid cHRM after IDAT"
.L_414353:
          .string "Missing PLTE before cHRM"
.L_41436c:
          .string "Duplicate cHRM chunk"
.L_414381:
          .string "Incorrect cHRM chunk length"
.L_41439d:
          .string "wx=%f, wy=%f, rx=%f, ry=%f\n"
.L_4143b9:
          .string "gx=%f, gy=%f, bx=%f, by=%f\n"
.L_4143d5:
          .string "Missing IHDR before sRGB"
.L_4143ee:
          .string "Invalid sRGB after IDAT"
.L_414406:
          .string "Out of place sRGB chunk"
.L_41441e:
          .string "Duplicate sRGB chunk"
.L_414433:
          .string "Incorrect sRGB chunk length"
.L_41444f:
          .string "Unknown sRGB intent"
.L_414463:
          .string "incorrect gamma=(%d/100000)\n"
.L_414480:
          .string "Missing IHDR before iCCP"
.L_414499:
          .string "Invalid iCCP after IDAT"
.L_4144b1:
          .string "Out of place iCCP chunk"
.L_4144c9:
          .string "Duplicate iCCP chunk"
.L_4144de:
          .string "Malformed iCCP chunk"
.L_4144f3:
          .string "Missing IHDR before sPLT"
.L_41450c:
          .string "Invalid sPLT after IDAT"
.L_414524:
          .string "malformed sPLT chunk"
.L_414539:
          .string "sPLT chunk has bad length"
.L_414553:
          .string "sPLT chunk too long"
.L_414567:
          .string "Missing IHDR before tRNS"
.L_414580:
          .string "Invalid tRNS after IDAT"
.L_414598:
          .string "Duplicate tRNS chunk"
.L_4145ad:
          .string "Incorrect tRNS chunk length"
.L_4145c9:
          .string "Missing PLTE before tRNS"
.L_4145e2:
          .string "Zero length tRNS chunk"
.L_4145f9:
          .string "Missing IHDR before bKGD"
.L_414612:
          .string "Invalid bKGD after IDAT"
.L_41462a:
          .string "Missing PLTE before bKGD"
.L_414643:
          .string "Duplicate bKGD chunk"
.L_414658:
          .string "Incorrect bKGD chunk length"
.L_414674:
          .string "Missing IHDR before hIST"
.L_41468d:
          .string "Invalid hIST after IDAT"
.L_4146a5:
          .string "Missing PLTE before hIST"
.L_4146be:
          .string "Duplicate hIST chunk"
.L_4146d3:
          .string "Incorrect hIST chunk length"
.L_4146ef:
          .string "Missing IHDR before pHYs"
.L_414708:
          .string "Invalid pHYs after IDAT"
.L_414720:
          .string "Duplicate pHYs chunk"
.L_414735:
          .string "Incorrect pHYs chunk length"
.L_414751:
          .string "Missing IHDR before oFFs"
.L_41476a:
          .string "Invalid oFFs after IDAT"
.L_414782:
          .string "Duplicate oFFs chunk"
.L_414797:
          .string "Incorrect oFFs chunk length"
.L_4147b3:
          .string "Missing IHDR before pCAL"
.L_4147cc:
          .string "Invalid pCAL after IDAT"
.L_4147e4:
          .string "Duplicate pCAL chunk"
.L_4147f9:
          .string "No memory for pCAL purpose."
.L_414815:
          .string "Invalid pCAL data"
.L_414827:
          .string "No memory for pCAL params."
.L_414842:
          .string "Missing IHDR before sCAL"
.L_41485b:
          .string "Invalid sCAL after IDAT"
.L_414873:
          .string "Duplicate sCAL chunk"
.L_414888:
          .string "sCAL chunk too short"
.L_41489d:
          .string "Truncated sCAL chunk"
.L_4148b2:
          .string "Invalid sCAL data"
.L_4148c4:
          .string "Out of place tIME chunk"
.L_4148dc:
          .string "Duplicate tIME chunk"
.L_4148f1:
          .string "Incorrect tIME chunk length"
.L_41490d:
          .string "Missing IHDR before tEXt"
.L_414926:
          .string "Missing IHDR before zTXt"
.L_41493f:
          .string "Truncated zTXt chunk"
.L_414954:
          .string "unknown critical chunk"
.L_41496b:
          .string "error in user chunk"
.L_41497f:
          .string "invalid chunk type"
.L_414992:
          .string "Decompression Error"
.L_4149a6:
          .string "Extra compressed data."
.L_4149bd:
          .string "Extra compression data."
          .zero 3
.L_4149d8:
          .long .L_40cf20-.L_4149d8
          .long .L_40cf30-.L_4149d8
          .long .L_40cf10-.L_4149d8
          .long .L_40cf20-.L_4149d8
          .long .L_40cef0-.L_4149d8
          .long .L_40cf30-.L_4149d8
          .long .L_40ce88-.L_4149d8
.L_4149f4:
          .long .L_410411-.L_4149f4
          .long .L_410548-.L_4149f4
          .long .L_410590-.L_4149f4
          .long .L_410420-.L_4149f4
          .long .L_410490-.L_4149f4
.L_414a08:
          .byte 0x0
          .byte 0x50
          .byte 0xc3
          .byte 0x47
.L_414a0c:
          .string "iTXt chunk not supported."
.L_414a26:
          .string "Limiting gamma to 21474.83"
.L_414a41:
          .string "Setting gamma=0"
.L_414a51:
          .string "Invalid palette length"
.L_414a68:
          .string "Ignoring invalid time value"
.L_414a84:
          .string "No memory for sPLT palettes."
.L_414aa1:
          .string "zero length keyword"
.L_414ab5:
          .string "Zero length keyword"
          .zero 7
.L_414ad0:
          .string "Setting negative gamma to zero"
          .zero 1
.L_414af0:
          .string "Invalid palette size, hIST allocation skipped."
          .zero 1
.L_414b20:
          .string "Insufficient memory for hIST chunk data."
          .zero 7
.L_414b50:
          .string "Image width is too large for this architecture"
          .zero 1
.L_414b80:
          .string "Insufficient memory for pCAL purpose."
          .zero 2
.L_414ba8:
          .string "Insufficient memory for pCAL units."
          .zero 4
.L_414bd0:
          .string "Insufficient memory for pCAL params."
          .zero 3
.L_414bf8:
          .string "Insufficient memory for pCAL parameter."
.L_414c20:
          .string "Insufficient memory to process iCCP chunk."
          .zero 5
.L_414c50:
          .string "Insufficient memory to process iCCP profile."
          .zero 3
.L_414c80:
          .string "Insufficient memory to store text"
          .zero 6
.L_414ca8:
          .string "Ignoring invalid num_trans value"
          .zero 7
.L_414cd0:
          .string "tRNS chunk has out-of-range samples for bit_depth"
          .zero 6
.L_414d08:
          .string "Out of memory while processing sPLT chunk"
          .zero 6
.L_414d38:
          .string "Out of memory while processing unknown chunk."
          .zero 2
.L_414d68:
          .string "Out of memory while procesing keyword"
          .zero 2
.L_414d90:
          .string "invalid keyword character 0x%02X"
          .zero 7
.L_414db8:
          .string "trailing spaces removed from keyword"
          .zero 3
.L_414de0:
          .string "leading spaces removed from keyword"
          .zero 4
.L_414e08:
          .string "extra interior spaces removed from keyword"
          .zero 5
.L_414e38:
          .string "keyword length must be 1 - 79 characters"
          .zero 7
.L_414e68:
          .byte 0xec
          .byte 0x51
          .byte 0xb8
          .byte 0x1e
          .byte 0xb5
          .byte 0xf8
          .byte 0xd4
          .byte 0x40
.L_414e70:
          .zero 8
#===================================
# end section .rodata
#===================================

#===================================
.section .gcc_except_table ,"a",@progbits
.align 8
#===================================

.L_417ef8:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417f0d-.L_417efc
.L_417efc:
          .uleb128 .L_401295-.L_401220
          .uleb128 .L_40129a-.L_401295
          .uleb128 .L_4014a7-.L_401220
          .zero 1
          .uleb128 .L_40130b-.L_401220
          .uleb128 .L_401481-.L_40130b
          .uleb128 .L_4014a7-.L_401220
          .zero 1
          .uleb128 .L_4014ea-.L_401220
          .uleb128 .L_4014ef-.L_4014ea
          .zero 2
.L_417f0d:
#===================================
# end section .gcc_except_table
#===================================

#===================================
.section .init_array ,"wa"
.align 8
#===================================

.L_618dd0:
          .quad .L_401160
#===================================
# end section .init_array
#===================================

#===================================
.section .fini_array ,"wa"
.align 8
#===================================

.L_618dd8:
#===================================
# end section .fini_array
#===================================

#===================================
.data
.align 16
#===================================

          .zero 16
.L_619140:
          .quad __gxx_personality_v0
.L_619148:
          .byte 0x7a
          .byte 0x54
          .byte 0x58
          .byte 0x74
          .byte 0x0
.L_61914d:
          .byte 0x74
          .byte 0x52
          .byte 0x4e
          .byte 0x53
          .byte 0x0
.L_619152:
          .byte 0x74
          .byte 0x49
          .byte 0x4d
          .byte 0x45
          .byte 0x0
.L_619157:
          .byte 0x74
          .byte 0x45
          .byte 0x58
          .byte 0x74
          .byte 0x0
.L_61915c:
          .byte 0x73
          .byte 0x52
          .byte 0x47
          .byte 0x42
          .byte 0x0
.L_619161:
          .byte 0x73
          .byte 0x50
          .byte 0x4c
          .byte 0x54
          .byte 0x0
.L_619166:
          .byte 0x73
          .byte 0x42
          .byte 0x49
          .byte 0x54
          .byte 0x0
.L_61916b:
          .byte 0x70
          .byte 0x48
          .byte 0x59
          .byte 0x73
          .byte 0x0
.L_619170:
          .byte 0x73
          .byte 0x43
          .byte 0x41
          .byte 0x4c
          .byte 0x0
.L_619175:
          .byte 0x70
          .byte 0x43
          .byte 0x41
          .byte 0x4c
          .byte 0x0
.L_61917a:
          .byte 0x6f
          .byte 0x46
          .byte 0x46
          .byte 0x73
          .byte 0x0
          .byte 0x69
          .byte 0x54
          .byte 0x58
          .byte 0x74
          .byte 0x0
.L_619184:
          .byte 0x69
          .byte 0x43
          .byte 0x43
          .byte 0x50
          .byte 0x0
.L_619189:
          .byte 0x68
          .byte 0x49
          .byte 0x53
          .byte 0x54
          .byte 0x0
.L_61918e:
          .byte 0x67
          .byte 0x41
          .byte 0x4d
          .byte 0x41
          .byte 0x0
.L_619193:
          .byte 0x63
          .byte 0x48
          .byte 0x52
          .byte 0x4d
          .byte 0x0
.L_619198:
          .byte 0x62
          .byte 0x4b
          .byte 0x47
          .byte 0x44
          .byte 0x0
.L_61919d:
          .byte 0x50
          .byte 0x4c
          .byte 0x54
          .byte 0x45
          .byte 0x0
.L_6191a2:
          .byte 0x49
          .byte 0x45
          .byte 0x4e
          .byte 0x44
          .byte 0x0
.L_6191a7:
          .byte 0x49
          .byte 0x44
          .byte 0x41
          .byte 0x54
          .byte 0x0
.L_6191ac:
          .byte 0x49
          .byte 0x48
          .byte 0x44
          .byte 0x52
          .byte 0x0
#===================================
# end section .data
#===================================

#===================================
.bss
.align 16
#===================================

#-----------------------------------
.align 16
.globl stderr_copy
.type stderr_copy, @object
#-----------------------------------
stderr_copy:
          .zero 8
.L_6191c8:
          .zero 8
#===================================
# end section .bss
#===================================
# WARNING: integral symbol .L_4157d4 may not have been correctly relocated
.set .L_4157d4, 0x4157d4
