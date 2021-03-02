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
.align 16
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
.L_400fc4:

            mov RDI,QWORD PTR [RSI+8]
            lea RSI,QWORD PTR [RIP+.L_414e16]
            call fopen@PLT

            test RAX,RAX
            je .L_401048

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
            je .L_40106f

            mov RCX,RBX
            mov RDX,RBP
            mov ESI,1
            mov RDI,RAX
            call fread@PLT

            cmp RBP,RAX
            jne .L_401052

            mov RSI,RBP
            mov RDI,R12
            call .L_401230

            mov RDI,R12
            call free@PLT

            mov RDI,RBX
            call fclose@PLT

            pop RBX
.L_401042:

            xor EAX,EAX
            pop RBP
            pop R12
            ret 
.L_401048:

            mov EDI,1
            call exit@PLT
.L_401052:

            lea RSI,QWORD PTR [RIP+.L_414e28]
            mov EDI,1
            xor EAX,EAX
            call __printf_chk@PLT

            mov EDI,3
            call exit@PLT
.L_40106f:

            lea RSI,QWORD PTR [RIP+.L_414e19]
            mov EDI,1
            xor EAX,EAX
            call __printf_chk@PLT

            mov EDI,2
            call exit@PLT
.L_40108c:

            nop
            nop
            nop
            nop
.L_4010c0:

            ret 
.L_4010c2:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4010d0:

            push RBP
            mov EAX,6394296
            cmp RAX,6394296
            mov RBP,RSP
            je .L_4010f8

            mov EAX,0
            test RAX,RAX
            je .L_4010f8

            pop RBP
            mov EDI,6394296
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4010f8:

            pop RBP
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401100:

            mov ESI,6394296
            push RBP
            sub RSI,6394296
            mov RBP,RSP
            sar RSI,3
            mov RAX,RSI
            shr RAX,63
            add RSI,RAX
            sar RSI,1
            je .L_401138

            mov EAX,0
            test RAX,RAX
            je .L_401138

            pop RBP
            mov EDI,6394296
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401138:

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
.L_401170:

            push RBP
            mov RBP,RSP
            pop RBP
            jmp .L_401100
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401180:

            push R13
            push R12
            mov R13,RSI
            push RBP
            push RBX
            mov RBP,RDX
            mov R12,RDI
            sub RSP,8
            call .L_401e70

            cmp QWORD PTR [RAX+8],RBP
            mov RBX,RAX
            jae .L_4011b0

            lea RSI,QWORD PTR [RIP+.L_414de4]
            mov RDI,R12
            call .L_40d4b0
.L_4011b0:

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
.L_4011d0:

            push RBP
            push RBX
            lea RDX,QWORD PTR [RIP+.L_414def]
            mov ECX,4
            mov RBX,RDI
            mov RBP,RSI
            sub RSP,8
            call memmem@PLT

            mov RDX,RAX
            xor EAX,EAX
            test RDX,RDX
            je .L_40121e

            lea RCX,QWORD PTR [RDX+12]
            add RBX,RBP
            cmp RCX,RBX
            ja .L_40121e

            mov EAX,DWORD PTR [RDX+4]
            mov EDX,DWORD PTR [RDX+8]
            bswap EAX
            bswap EDX
            mov EAX,EAX
            mov EDX,EDX
            imul RAX,RDX
            cmp RAX,100000
            seta AL
.L_40121e:

            add RSP,8
            pop RBX
            pop RBP
            ret 
.L_401225:

            nop
            nop
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
            ja .L_401278
.L_401255:

            xor EAX,EAX
            mov RCX,QWORD PTR [RBP-40]
            xor RCX,QWORD PTR FS:[40]
            jne .L_4014b2

            lea RSP,QWORD PTR [RBP-24]
            pop RBX
            pop R12
            pop R14
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401278:

            mov RBX,RSI
            mov EDX,8
            xor ESI,ESI
            mov R12,RDI
            mov QWORD PTR [RBP-80],0
            mov QWORD PTR [RBP-72],0
            mov QWORD PTR [RBP-64],0
            mov QWORD PTR [RBP-56],0
.L_4012a5:

            call .L_4015a0
.L_4012aa:

            test EAX,EAX
            je .L_4012f8
.L_4012ae:

            mov RSI,QWORD PTR [RBP-72]
.L_4012b2:

            test RSI,RSI
            mov RDI,QWORD PTR [RBP-64]
            je .L_4012c9

            test RDI,RDI
            je .L_4012e4

            call .L_40d0a0

            mov RDI,QWORD PTR [RBP-64]
.L_4012c9:

            test RDI,RDI
            je .L_4012e4

            cmp QWORD PTR [RBP-80],0
            je .L_4012e4

            lea RSI,QWORD PTR [RBP-80]
            xor EDX,EDX
            lea RDI,QWORD PTR [RSI+16]
            call .L_406030
.L_4012e4:

            mov RDI,QWORD PTR [RBP-56]
            call _ZdlPv@PLT

            jmp .L_401255
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4012f8:

            lea RAX,QWORD PTR [RBP-80]
            lea RDI,QWORD PTR [RIP+.L_414df4]
            xor ECX,ECX
            xor EDX,EDX
            xor ESI,ESI
            mov QWORD PTR [RBP-152],RAX
            add RAX,16
            mov QWORD PTR [RBP-136],RAX
.L_40131b:

            call .L_404f90

            test RAX,RAX
            mov QWORD PTR [RBP-64],RAX
            je .L_40151e

            mov RDX,QWORD PTR [RAX+288]
            lea RCX,QWORD PTR [RBP-80]
            mov RDI,RAX
            mov QWORD PTR [RBP-144],RCX
            and DH,240
            or DH,10
            mov QWORD PTR [RAX+288],RDX
            call .L_4017a0

            test RAX,RAX
            mov QWORD PTR [RBP-80],RAX
            je .L_4014ff

            mov EDI,16
            call _Znwm@PLT

            mov RCX,R12
            mov RDI,QWORD PTR [RBP-64]
            sub RBX,8
            add RCX,8
            lea RDX,QWORD PTR [RIP+.L_401180]
            mov QWORD PTR [RAX+8],RBX
            mov QWORD PTR [RAX],RCX
            mov RSI,RAX
            mov QWORD PTR [RBP-56],RAX
            call .L_406890

            mov RDI,QWORD PTR [RBP-64]
            mov ESI,8
            call .L_401540

            mov RDI,QWORD PTR [RBP-64]
            call _setjmp@PLT

            test EAX,EAX
            mov R14D,EAX
            jne .L_4012ae

            mov RBX,QWORD PTR [RBP-144]
            mov R12,QWORD PTR [RBP-152]
            mov RSI,QWORD PTR [RBX]
            mov RDI,QWORD PTR [R12+16]
            call .L_405480

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
.L_4013fc:

            call .L_4033d0

            add RSP,32
            test RAX,RAX
            je .L_4012ae

            mov RAX,QWORD PTR [RBP-88]
            imul RAX,QWORD PTR [RBP-96]
            cmp RAX,2000000
            ja .L_4012ae

            mov RBX,QWORD PTR [RBP-152]
            mov RDI,QWORD PTR [RBX+16]
            call .L_403960

            mov RDI,QWORD PTR [RBX+16]
            mov R12D,EAX
            call .L_405500

            mov RAX,QWORD PTR [RBP-144]
            mov RDI,QWORD PTR [RBX+16]
            mov RSI,QWORD PTR [RAX]
            call .L_402cc0

            mov RDI,QWORD PTR [RBX+16]
            mov RSI,RAX
            call .L_40cfc0

            test R12D,R12D
            mov RSI,RAX
            mov QWORD PTR [RBP-72],RAX
            jle .L_4012b2

            nop
            nop
.L_401470:

            cmp QWORD PTR [RBP-88],0
            je .L_40149f

            xor EBX,EBX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401480:

            mov RAX,QWORD PTR [RBP-136]
            xor EDX,EDX
            mov RDI,QWORD PTR [RAX]
            call .L_405520
.L_401491:

            add RBX,1
            cmp QWORD PTR [RBP-88],RBX
            mov RSI,QWORD PTR [RBP-72]
            ja .L_401480
.L_40149f:

            mov EAX,R14D
            add EAX,1
            cmp R12D,EAX
            mov R14D,EAX
            jne .L_401470

            jmp .L_4012b2
.L_4014b2:

            call __stack_chk_fail@PLT
.L_4014b7:

            mov RSI,QWORD PTR [RBP-72]
            mov RBX,RAX
            mov RDI,QWORD PTR [RBP-64]
            test RSI,RSI
            je .L_4014d1

            test RDI,RDI
            je .L_4014ee

            call .L_40d0a0
.L_4014d1:

            cmp QWORD PTR [RBP-64],0
            je .L_4014ee

            cmp QWORD PTR [RBP-80],0
            je .L_4014ee

            lea RSI,QWORD PTR [RBP-80]
            xor EDX,EDX
            lea RDI,QWORD PTR [RSI+16]
            call .L_406030
.L_4014ee:

            mov RDI,QWORD PTR [RBP-56]
            call _ZdlPv@PLT

            mov RDI,RBX
.L_4014fa:

            call _Unwind_Resume@PLT
.L_4014ff:

            lea RCX,QWORD PTR [RIP+.L_414e40]
            lea RSI,QWORD PTR [RIP+.L_414dfb]
            lea RDI,QWORD PTR [RIP+.L_414e0d]
            mov EDX,87
            call __assert_fail@PLT
.L_40151e:

            lea RCX,QWORD PTR [RIP+.L_414e40]
            lea RSI,QWORD PTR [RIP+.L_414dfb]
            lea RDI,QWORD PTR [RIP+.L_414e05]
            mov EDX,77
            call __assert_fail@PLT
.L_40153d:

            nop
            nop
            nop
.L_401540:

            test RDI,RDI
            je .L_401590

            push RBP
            push RBX
            mov EBP,ESI
            mov RBX,RDI
            sub RSP,8
            cmp ESI,8
            jg .L_401570

            xor EAX,EAX
            test ESI,ESI
            jns .L_40157c

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
.L_401570:

            lea RSI,QWORD PTR [RIP+.L_4026e0]
            call .L_40d4b0
.L_40157c:

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
.L_401590:

            ret 
.L_401592:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4015a0:

            sub RSP,24
.L_4015a4:

            mov RAX,RSI
            movabs RCX,727905341920923785
            mov RSI,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RSI
            xor ESI,ESI
            cmp RDX,8
            mov QWORD PTR [RSP],RCX
            ja .L_401610

            test RDX,RDX
            je .L_401620
.L_4015d0:

            cmp RAX,7
            ja .L_401620

            lea RSI,QWORD PTR [RDX+RAX*1]
            mov ECX,8
            sub RCX,RAX
            cmp RSI,8
            lea RSI,QWORD PTR [RSP+RAX*1]
            cmova RDX,RCX
            add RDI,RAX
            call memcmp@PLT
.L_4015f6:

            mov RCX,QWORD PTR [RSP+8]
            xor RCX,QWORD PTR FS:[40]
            jne .L_401627

            add RSP,24
.L_40160a:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401610:

            mov EDX,8
            jmp .L_4015d0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401620:

            mov EAX,4294967295
            jmp .L_4015f6
.L_401627:

            call __stack_chk_fail@PLT
.L_40162c:

            nop
            nop
            nop
            nop
.L_401630:

            sub RSP,8
            movsxd RDX,ESI
            xor ESI,ESI
            call .L_4015a0

            test EAX,EAX
            sete AL
            add RSP,8
            movzx EAX,AL
            ret 
.L_40164b:

            nop
            nop
            nop
            nop
            nop
.L_401650:

            test RDI,RDI
            je .L_401690

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
            call .L_40cfc0

            mov QWORD PTR [RBX+288],RBP
            add RSP,8
            pop RBX
            pop RBP
            ret 
.L_401690:

            xor EAX,EAX
            ret 
.L_401693:

            nop
            nop
            nop
            nop
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

            jmp .L_40d0a0
.L_4016a5:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4016b0:

            push RBX
            xor EDX,EDX
            mov RBX,RDI
            xor ESI,ESI
            xor EDI,EDI
            call crc32@PLT

            mov QWORD PTR [RBX+600],RAX
            pop RBX
            ret 
.L_4016c8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4016d0:

            test BYTE PTR [RDI+620],32
            mov RAX,QWORD PTR [RDI+288]
            je .L_401710

            and EAX,768
            cmp RAX,768
            je .L_401720
.L_4016ed:

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
.L_401710:

            test AH,8
            je .L_4016ed

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
.L_401720:

            ret 
.L_401722:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401730:

            mov RAX,QWORD PTR [RDI]
            test RAX,RAX
            je .L_401790

            cmp RSI,463
            push RBX

            ja .L_40175f

            mov RBX,RDI
            mov RDI,RAX
            call .L_40cfb0

            mov EDI,2
            call .L_40cf20

            test RAX,RAX
            mov QWORD PTR [RBX],RAX
            je .L_40178a
.L_40175f:

            lea RDI,QWORD PTR [RAX+8]
            mov QWORD PTR [RAX],0
            mov QWORD PTR [RAX+456],0
            and RDI,-8
            sub RAX,RDI
            lea ECX,DWORD PTR [RAX+464]
            xor EAX,EAX
            shr ECX,3

            rep stosq QWORD PTR [RDI]
.L_40178a:

            pop RBX

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_401790:

            ret 
.L_401792:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4017a0:

            sub RSP,24
.L_4017a4:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            test RDI,RDI
            je .L_401800

            mov RDX,QWORD PTR [RDI+1080]
            mov RSI,QWORD PTR [RDI+1088]
            mov EDI,2
            call .L_40ce40

            test RAX,RAX
            mov QWORD PTR [RSP],RAX
            je .L_4017eb

            mov RDI,RSP
            mov ESI,464
            call .L_401730

            mov RAX,QWORD PTR [RSP]
.L_4017eb:

            mov RCX,QWORD PTR [RSP+8]
            xor RCX,QWORD PTR FS:[40]
            jne .L_401804

            add RSP,24
.L_4017ff:

            ret 
.L_401800:

            xor EAX,EAX
            jmp .L_4017eb
.L_401804:

            call __stack_chk_fail@PLT
.L_401809:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401810:

            sub RSP,24
            xor ESI,ESI
            mov QWORD PTR [RSP+8],RDI
            lea RDI,QWORD PTR [RSP+8]
            call .L_401730

            add RSP,24
            ret 
.L_40182a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_401830:

            test RDI,RDI
            je .L_401850

            test RSI,RSI
            je .L_401850

            cmp EDX,1
            je .L_401868

            cmp EDX,2
            je .L_401858

            lea RSI,QWORD PTR [RIP+.L_402708]
            jmp .L_40d580
.L_401850:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401858:

            not RCX
            and QWORD PTR [RSI+272],RCX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401868:

            or QWORD PTR [RSI+272],RCX
            ret 
.L_401870:

            test RDI,RDI
            je .L_401880

            test RSI,RSI
            je .L_401880

            jmp .L_401890
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_401880:

            ret 
.L_401882:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401890:

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
.L_4018b0:

            mov RAX,QWORD PTR [RSI+272]
            test RDX,RAX
            je .L_401900

            cmp ECX,-1
            je .L_401cd0

            mov RDX,QWORD PTR [RSI+80]
            test RDX,RDX
            je .L_401900

            movsxd R13,ECX
            shl R13,5
            mov RSI,QWORD PTR [RDX+R13*1+8]
            test RSI,RSI
            je .L_401900

            call .L_40d0a0

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
.L_401900:

            mov RDX,RBP
            and EDX,8192
            test RDX,RAX
            jne .L_401c40
.L_401912:

            mov RDX,RBP
            and RDX,RAX
            test DH,1
            je .L_401925

            and QWORD PTR [RBX+16],-16385
.L_401925:

            and EDX,128
            jne .L_401b90
.L_401931:

            mov RDX,RBP
            and EDX,16
            test RDX,RAX
            jne .L_401b10
.L_401940:

            mov RDX,RBP
            and EDX,32
            test RDX,RAX
            je .L_4019a0

            cmp R14D,-1
            je .L_401c68

            mov RAX,QWORD PTR [RBX+328]
            test RAX,RAX
            je .L_4019a0

            movsxd R13,R14D
            mov RDI,R12
            shl R13,5
            mov RSI,QWORD PTR [RAX+R13*1]
            call .L_40d0a0

            mov RAX,QWORD PTR [RBX+328]
            mov RDI,R12
            mov RSI,QWORD PTR [RAX+R13*1+16]
            call .L_40d0a0

            add R13,QWORD PTR [RBX+328]
            mov QWORD PTR [R13],0
            mov QWORD PTR [R13+16],0
            nop
.L_4019a0:

            mov RSI,QWORD PTR [R12+1168]
            test RSI,RSI
            je .L_4019c1

            mov RDI,R12
            call .L_40d0a0

            mov QWORD PTR [R12+1168],0
.L_4019c1:

            mov RAX,QWORD PTR [RBX+272]
            mov RDX,RBP
            and EDX,512
            test RDX,RAX
            je .L_401a20

            cmp R14D,-1
            je .L_401d20

            mov RDX,QWORD PTR [RBX+280]
            test RDX,RDX
            je .L_401a20

            movsxd R13,R14D
            mov RDI,R12
            shl R13,5
            mov RSI,QWORD PTR [RDX+R13*1+8]
            call .L_40d0a0

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
.L_401a20:

            mov RDX,RBP
            and EDX,8
            test RDX,RAX
            jne .L_401b60
.L_401a2f:

            mov RDX,RBP
            and EDX,4096
            test RDX,RAX
            jne .L_401ae0
.L_401a41:

            mov RDX,RBP
            and EDX,64
            test RDX,RAX
            je .L_401ab3

            mov RSI,QWORD PTR [RBX+384]
            test RSI,RSI
            je .L_401aab

            mov EAX,DWORD PTR [RBX+8]
            test EAX,EAX
            jle .L_401a91

            xor R13D,R13D
            xor R15D,R15D
            nop
            nop
            nop
.L_401a68:

            mov RSI,QWORD PTR [RSI+R13*1]
            mov RDI,R12
            add R15D,1
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+384]
            mov QWORD PTR [RSI+R13*1],0
            add R13,8
            cmp R15D,DWORD PTR [RBX+8]
            jl .L_401a68
.L_401a91:

            mov RDI,R12
            call .L_40d0a0

            mov RAX,QWORD PTR [RBX+272]
            mov QWORD PTR [RBX+384],0
.L_401aab:

            and QWORD PTR [RBX+16],-32769
.L_401ab3:

            cmp R14D,-1
            je .L_401ac0

            and RBP,-16929
.L_401ac0:

            not RBP
            and RBP,RAX
            mov QWORD PTR [RBX+272],RBP
            add RSP,8
.L_401ad1:

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
.L_401ae0:

            mov RSI,QWORD PTR [RBX+32]
            mov RDI,R12
            call .L_40d0a0

            xor EDX,EDX
            mov QWORD PTR [RBX+32],0
            and QWORD PTR [RBX+16],-9
            mov WORD PTR [RBX+40],DX
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401a41
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401b10:

            mov RSI,QWORD PTR [RBX+296]
            mov RDI,R12
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+304]
            mov RDI,R12
            call .L_40d0a0

            mov QWORD PTR [RBX+296],0
            mov QWORD PTR [RBX+304],0
            and QWORD PTR [RBX+16],-4097
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401940
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_401b60:

            mov RSI,QWORD PTR [RBX+184]
            mov RDI,R12
            call .L_40d0a0

            mov QWORD PTR [RBX+184],0
            and QWORD PTR [RBX+16],-65
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401a2f
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401b90:

            mov RSI,QWORD PTR [RBX+224]
            mov RDI,R12
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+248]
            mov RDI,R12
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+256]
            mov QWORD PTR [RBX+224],0
            mov QWORD PTR [RBX+248],0
            test RSI,RSI
            je .L_401c22

            cmp BYTE PTR [RBX+265],0
            je .L_401c0f

            xor R13D,R13D
            xor R15D,R15D
            nop
.L_401be0:

            mov RSI,QWORD PTR [RSI+R13*1]
            mov RDI,R12
            add R15D,1
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+256]
            mov QWORD PTR [RSI+R13*1],0
            movzx EAX,BYTE PTR [RBX+265]
            add R13,8
            cmp R15D,EAX
            jl .L_401be0
.L_401c0f:

            mov RDI,R12
            call .L_40d0a0

            mov QWORD PTR [RBX+256],0
.L_401c22:

            and QWORD PTR [RBX+16],-1025
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401931
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
.L_401c40:

            mov RSI,QWORD PTR [RBX+104]
            mov RDI,R12
            call .L_40d0a0

            mov QWORD PTR [RBX+104],0
            and QWORD PTR [RBX+16],-17
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401912
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401c68:

            mov RAX,QWORD PTR [RBX+336]
            test RAX,RAX
            je .L_401cc0

            test EAX,EAX
            jle .L_401c9b

            xor R13D,R13D
.L_401c7b:

            mov ECX,R13D
            mov EDX,32
            mov RSI,RBX
            mov RDI,R12
            add R13D,1
            call .L_401870

            cmp R13D,DWORD PTR [RBX+336]
            jl .L_401c7b
.L_401c9b:

            mov RSI,QWORD PTR [RBX+328]
            mov RDI,R12
            call .L_40d0a0

            mov QWORD PTR [RBX+328],0
            mov QWORD PTR [RBX+336],0
.L_401cc0:

            and QWORD PTR [RBX+16],-8193
            jmp .L_4019a0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401cd0:

            mov ECX,DWORD PTR [RSI+68]
            xor R13D,R13D
            test ECX,ECX
            jle .L_401cf7
.L_401cda:

            mov ECX,R13D
            mov EDX,16384
            mov RSI,RBX
            mov RDI,R12
            add R13D,1
            call .L_401870

            cmp R13D,DWORD PTR [RBX+68]
            jl .L_401cda
.L_401cf7:

            mov RSI,QWORD PTR [RBX+80]
            mov RDI,R12
            call .L_40d0a0

            mov QWORD PTR [RBX+80],0
            mov DWORD PTR [RBX+68],0
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401900
          .byte 0x66
          .byte 0x90
.L_401d20:

            mov RDX,QWORD PTR [RBX+288]
            test RDX,RDX
            je .L_401a20

            test EDX,EDX
            jle .L_401d57

            xor R13D,R13D
.L_401d37:

            mov ECX,R13D
            mov EDX,512
            mov RSI,RBX
            mov RDI,R12
            add R13D,1
            call .L_401870

            cmp R13D,DWORD PTR [RBX+288]
            jl .L_401d37
.L_401d57:

            mov RSI,QWORD PTR [RBX+280]
            mov RDI,R12
            call .L_40d0a0

            mov QWORD PTR [RBX+280],0
            mov QWORD PTR [RBX+288],0
            mov RAX,QWORD PTR [RBX+272]
            jmp .L_401a20
.L_401d88:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401d90:

            push RBX
            mov RBX,RDI
            sub RSP,16
.L_401d98:

            test RDI,RDI
            mov QWORD PTR [RSP+8],RSI
            je .L_401da7

            test RSI,RSI
            jne .L_401df0
.L_401da7:

            mov EAX,DWORD PTR [RBX+1016]
            test EAX,EAX
            je .L_401dd5

            mov RSI,QWORD PTR [RBX+1024]
            mov RDI,RBX
            call .L_40d0a0

            mov QWORD PTR [RBX+1024],0
            mov DWORD PTR [RBX+1016],0
.L_401dd5:

            lea RDI,QWORD PTR [RSP+8]
            mov ESI,464
            call .L_401730

            add RSP,16
.L_401de8:

            pop RBX
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_401df0:

            mov ECX,4294967295
            mov EDX,32767
            call .L_401890

            jmp .L_401da7
.L_401e01:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401e10:

            test RDI,RDI
            je .L_401e60

            test RSI,RSI
            je .L_401e60

            push R12
            push RBP
            push RBX
            mov R12,QWORD PTR [RSI]
            test R12,R12
            je .L_401e52

            mov RBX,RDI
            mov RBP,RSI
            mov RSI,R12
            call .L_401d90

            mov RDX,QWORD PTR [RBX+1080]
            mov RSI,QWORD PTR [RBX+1096]
            mov RDI,R12
            call .L_40cf30

            mov QWORD PTR [RBP],0
.L_401e52:

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
.L_401e60:

            ret 
.L_401e62:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401e70:

            test RDI,RDI
            je .L_401e80

            mov RAX,QWORD PTR [RDI+240]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_401e80:

            xor EAX,EAX
            ret 
.L_401e83:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401e90:

            test RDI,RDI
            je .L_401e9c

            mov QWORD PTR [RDI+240],RSI
.L_401e9c:

            ret 
.L_401e9e:

            nop
            nop
.L_401ea0:

            test RDI,RDI
            je .L_401fc0

            push RBP
            push RBX
            mov RBX,RDI
            mov RBP,RSI
            sub RSP,8
            mov RDI,QWORD PTR [RDI+984]
            test RDI,RDI
            je .L_401fa0
.L_401ec5:

            movzx ECX,BYTE PTR [RBP+6]
            sub RSP,8
            movzx R9D,BYTE PTR [RBP+3]
            lea R8,QWORD PTR [RIP+.L_4029f9]
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
            lea RAX,QWORD PTR [RIP+.L_402b80]
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
.L_401fa0:

            mov RDI,RBX
            mov ESI,29
            call .L_40cfc0

            mov RDI,RAX
            mov QWORD PTR [RBX+984],RAX
            jmp .L_401ec5
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_401fc0:

            xor EAX,EAX
            ret 
.L_401fc3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401fd0:

            lea RAX,QWORD PTR [RIP+.L_402738]
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

            lea RAX,QWORD PTR [RIP+.L_402a17]
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

            lea RAX,QWORD PTR [RIP+.L_402a17]
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

            lea RAX,QWORD PTR [RIP+.L_402808]
            ret 
.L_402008:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402010:

            test RDI,RDI
            je .L_40205f

            test RSI,RSI
            je .L_40205f

            mov EDX,DWORD PTR [RDI+1016]
            xor EAX,EAX
            test EDX,EDX
            jle .L_402061

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
.L_402050:

            mov ECX,DWORD PTR [RSI]
            cmp DWORD PTR [RAX],ECX
            je .L_402068

            sub RAX,5
            cmp RAX,RDX
            jne .L_402050
.L_40205f:

            xor EAX,EAX
.L_402061:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402068:

            movzx EAX,BYTE PTR [RAX+4]
            ret 
.L_40206d:

            nop
            nop
            nop
.L_402070:

            test RDI,RDI
            je .L_402088

            add RDI,304
            jmp inflateReset@PLT
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402088:

            mov EAX,4294967294
            ret 
.L_40208e:

            nop
            nop
.L_402090:

            mov EAX,10256
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

            mov EAX,4294967295
            ret 
.L_4020a6:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4020b0:

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
.L_402107:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402110:

            push R15
            push R14
            xor R11D,R11D
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,56
.L_402121:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+40],RAX
            xor EAX,EAX
            test RDI,RDI
            je .L_4022a5

            test RSI,RSI
            mov RBP,RDI
            mov R14,RSI
            mov R12,RDX
            mov R13,RCX
            mov R15,R8
            mov RBX,R9
            js .L_402190

            test RDX,RDX
            jle .L_402190

            test RCX,RCX
            js .L_402190

            test R8,R8
            js .L_402190

            test R9,R9
            js .L_402190

            cmp QWORD PTR [RSP+112],0
            js .L_402190

            cmp QWORD PTR [RSP+120],0
            js .L_402190

            cmp QWORD PTR [RSP+128],0
            mov R11D,1
            jns .L_4021a2

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402190:

            lea RSI,QWORD PTR [RIP+.L_402838]
            mov RDI,RBP
            call .L_40d580

            xor R11D,R11D
.L_4021a2:

            cmp R14,2147483647
            jg .L_4021f8

            cmp R12,2147483647
            jg .L_4021f8

            cmp R13,2147483647
            jg .L_4021f8

            cmp R15,2147483647
            jg .L_4021f8

            cmp RBX,2147483647
            jg .L_4021f8

            cmp QWORD PTR [RSP+112],2147483647
            jg .L_4021f8

            cmp QWORD PTR [RSP+120],2147483647
            jg .L_4021f8

            cmp QWORD PTR [RSP+128],2147483647
            jle .L_40220a

            nop
            nop
            nop
            nop
            nop
.L_4021f8:

            lea RSI,QWORD PTR [RIP+.L_402870]
            mov RDI,RBP
            call .L_40d580

            xor R11D,R11D
.L_40220a:

            mov ECX,100000
            mov RDX,RCX
            sub RDX,R12
            cmp RDX,R14
            jl .L_402360

            mov EAX,100000
            sub RAX,R15
            cmp RAX,R13
            jl .L_402330
.L_40222f:

            mov EAX,100000
            sub RAX,QWORD PTR [RSP+112]
            cmp RAX,RBX
            jl .L_402310
.L_402242:

            mov EAX,100000
            sub RAX,QWORD PTR [RSP+128]
            cmp RAX,QWORD PTR [RSP+120]
            jl .L_4022f0
.L_40225a:

            mov RSI,QWORD PTR [RSP+128]
            lea RCX,QWORD PTR [RSP+16]
            lea RDX,QWORD PTR [RSP+8]
            sub RBX,R13
            mov RDI,RBX
            sub RSI,R15
            call .L_4020b0

            mov RSI,QWORD PTR [RSP+120]
            mov RDI,QWORD PTR [RSP+112]
            lea RCX,QWORD PTR [RSP+32]
            lea RDX,QWORD PTR [RSP+24]
            sub RSI,R13
            sub RDI,R15
            call .L_4020b0

            mov RAX,QWORD PTR [RSP+24]
            cmp QWORD PTR [RSP+8],RAX
            je .L_4022d0
.L_4022a5:

            mov RBX,QWORD PTR [RSP+40]
            xor RBX,QWORD PTR FS:[40]
            mov EAX,R11D
            jne .L_402385

            add RSP,56
.L_4022c0:

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
.L_4022d0:

            mov RAX,QWORD PTR [RSP+32]
            cmp QWORD PTR [RSP+16],RAX
            jne .L_4022a5

            lea RSI,QWORD PTR [RIP+.L_4028b0]
            mov RDI,RBP
            call .L_40d580

            xor R11D,R11D
            jmp .L_4022a5
.L_4022f0:

            lea RSI,QWORD PTR [RIP+.L_402a67]
            mov RDI,RBP
            call .L_40d580

            xor R11D,R11D
            jmp .L_40225a
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402310:

            lea RSI,QWORD PTR [RIP+.L_402a4e]
            mov RDI,RBP
            call .L_40d580

            xor R11D,R11D
            jmp .L_402242
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402330:

            lea RSI,QWORD PTR [RIP+.L_402a37]
            mov RDI,RBP
            call .L_40d580

            mov EAX,100000
            sub RAX,QWORD PTR [RSP+112]
            xor R11D,R11D
            cmp RAX,RBX
            jge .L_402242

            jmp .L_402310
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402360:

            lea RSI,QWORD PTR [RIP+.L_414de0-74690]
            mov RDI,RBP
            call .L_40d580

            mov EAX,100000
            xor R11D,R11D
            sub RAX,R15
            cmp RAX,R13
            jge .L_40222f

            jmp .L_402330
.L_402385:

            call __stack_chk_fail@PLT
.L_40238a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_402390:

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
.L_4023ad:

            test RSI,RSI
            mov EAX,DWORD PTR [RSP+80]
            mov DWORD PTR [RSP+4],R9D
            mov R14D,DWORD PTR [RSP+88]
            mov DWORD PTR [RSP+8],EAX
            je .L_402620

            cmp RSI,1000000
            seta AL
            test RDX,RDX
            je .L_402540

            cmp QWORD PTR [RDI+1144],RSI
            jb .L_4023ec

            test AL,AL
            je .L_4026b8
.L_4023ec:

            lea RSI,QWORD PTR [RIP+.L_4028f0]
            mov RDI,RBX
            call .L_40d580

            mov EAX,1
.L_402400:

            cmp QWORD PTR [RBX+1152],R13
            jb .L_402412

            cmp R13,1000000
            jbe .L_402426
.L_402412:

            lea RSI,QWORD PTR [RIP+.L_402918]
            mov RDI,RBX
            call .L_40d580

            mov EAX,1
.L_402426:

            cmp R15,2147483647
            ja .L_402698
.L_402433:

            cmp R13,2147483647
            ja .L_402678
.L_402440:

            cmp R12D,16
            jbe .L_4025e0
.L_40244a:

            lea RSI,QWORD PTR [RIP+.L_402af1]
            mov RDI,RBX
            call .L_40d580

            mov EAX,1
.L_40245e:

            mov R13D,EBP
            and R13D,4294967291
            cmp R13D,1
            je .L_402470

            cmp EBP,6
            jbe .L_402484
.L_402470:

            lea RSI,QWORD PTR [RIP+.L_402b0b]
            mov RDI,RBX
            call .L_40d580

            mov EAX,1
.L_402484:

            cmp EBP,3
            jne .L_4025f8

            cmp R12D,8
            jle .L_4025f8
.L_402497:

            lea RSI,QWORD PTR [RIP+.L_402940]
            mov RDI,RBX
            call .L_40d580

            mov EAX,1
.L_4024ab:

            cmp DWORD PTR [RSP+4],1
            jle .L_4024c6

            lea RSI,QWORD PTR [RIP+.L_402978]
            mov RDI,RBX
            call .L_40d580

            mov EAX,1
.L_4024c6:

            mov EDX,DWORD PTR [RSP+8]
            test EDX,EDX
            jne .L_402658
.L_4024d2:

            test BYTE PTR [RBX+281],16
            je .L_40258f

            cmp QWORD PTR [RBX+1040],0
            jne .L_402578

            test R14D,R14D
            je .L_4025c8
.L_4024f6:

            lea RSI,QWORD PTR [RIP+.L_414de0-74426]
            mov RDI,RBX
            call .L_40d580

            test BYTE PTR [RBX+281],16
            je .L_40251d

            lea RSI,QWORD PTR [RIP+.L_402b44]
            mov RDI,RBX
            call .L_40d580
.L_40251d:

            add RSP,24
.L_402521:

            mov RDI,RBX
            lea RSI,QWORD PTR [RIP+.L_414de0-74366]
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40d4b0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402540:

            lea RSI,QWORD PTR [RIP+.L_402a9b]
            mov BYTE PTR [RSP+15],AL
            call .L_40d580

            cmp R15,QWORD PTR [RBX+1144]
            ja .L_4023ec

            movzx EAX,BYTE PTR [RSP+15]
            test AL,AL
            jne .L_4023ec

            mov EAX,1
            jmp .L_402426
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_402578:

            lea RSI,QWORD PTR [RIP+.L_4029c8]
            mov RDI,RBX
            mov DWORD PTR [RSP+4],EAX
            call .L_40d580

            mov EAX,DWORD PTR [RSP+4]
.L_40258f:

            test R14D,R14D
            je .L_4025c8

            test BYTE PTR [RBX+1040],4
            je .L_4024f6

            cmp R14D,64
            jne .L_4024f6

            test BYTE PTR [RBX+281],16
            jne .L_4024f6

            cmp R13D,2
            jne .L_4024f6

            nop
            nop
            nop
            nop
            nop
            nop
.L_4025c8:

            cmp EAX,1
            je .L_40251d

            add RSP,24
.L_4025d5:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_4025e0:

            mov EDX,65814
            bt RDX,R12
            jb .L_40245e

            jmp .L_40244a
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4025f8:

            cmp EBP,4
            je .L_402607

            cmp R13D,2
            jne .L_4024ab
.L_402607:

            cmp R12D,7
            jg .L_4024ab

            jmp .L_402497
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
.L_402620:

            lea RSI,QWORD PTR [RIP+.L_402a7f]
            call .L_40d580

            test R13,R13
            je .L_4026c0

            cmp R13,QWORD PTR [RBX+1152]
            ja .L_402412

            cmp R13,1000000
            ja .L_402412

            jmp .L_4026a7
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402658:

            lea RSI,QWORD PTR [RIP+.L_4029a0]
            mov RDI,RBX
            call .L_40d580

            mov EAX,1
            jmp .L_4024d2
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402678:

            lea RSI,QWORD PTR [RIP+.L_402ad4]
            mov RDI,RBX
            call .L_40d580

            mov EAX,1
            jmp .L_402440
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402698:

            lea RSI,QWORD PTR [RIP+.L_414de0-74536]
            mov RDI,RBX
            call .L_40d580
.L_4026a7:

            mov EAX,1
            jmp .L_402433
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4026b8:

            xor EAX,EAX
            jmp .L_402400
          .byte 0x90
.L_4026c0:

            lea RSI,QWORD PTR [RIP+.L_402a9b]
            mov RDI,RBX
            call .L_40d580

            mov EAX,1
            jmp .L_402440
.L_4026d9:
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4026e0:
          .string "Too many bytes for PNG signature."
          .zero 6
.L_402708:
          .string "Unknown freer parameter in png_data_freer."
          .zero 5
.L_402738:
          .string "\nlibpng version 1.2.56 - December 17, 2015\nCopyright (c) 1998-2002,2004,2006-2015 Glenn Randers-Pehrson\nCopyright (c) 1996-1997 Andreas Dilger\nCopyright (c) 1995-1996 Guy Eric Schalnat, Group 42, Inc.\n"
          .zero 6
.L_402808:
          .string " libpng version 1.2.56 - December 17, 2015\n\n"
          .zero 3
.L_402838:
          .string "Ignoring attempt to set negative chromaticity value"
          .zero 4
.L_402870:
          .string "Ignoring attempt to set chromaticity value exceeding 21474.83"
          .zero 2
.L_4028b0:
          .string "Ignoring attempt to set cHRM RGB triangle with zero area"
          .zero 7
.L_4028f0:
          .string "Image width exceeds user limit in IHDR"
          .zero 1
.L_402918:
          .string "Image height exceeds user limit in IHDR"
.L_402940:
          .string "Invalid color type/bit depth combination in IHDR"
          .zero 7
.L_402978:
          .string "Unknown interlace method in IHDR"
          .zero 7
.L_4029a0:

            push RBP
            outsb DX,BYTE PTR [RSI]
            imul EBP,DWORD PTR [RSI+111],119
            outsb DX,BYTE PTR [RSI]
          .byte 0x20
          .byte 0x63
          .byte 0x6f
          .byte 0x6d
          .byte 0x70
          .byte 0x72
          .byte 0x65
          .byte 0x73
          .byte 0x73
          .byte 0x69
          .byte 0x6f
          .byte 0x6e
          .byte 0x20
          .byte 0x6d
          .byte 0x65
          .byte 0x74
          .byte 0x68
          .byte 0x6f
          .byte 0x64
          .byte 0x20
          .byte 0x69
          .byte 0x6e
          .byte 0x20
          .byte 0x49
          .byte 0x48
          .byte 0x44
          .byte 0x52
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4029c8:
          .string "MNG features are not allowed in a PNG datastream"
.L_4029f9:

            and EAX,1931812964
            and BYTE PTR [RIP+.L_6191d0+805550232],AH
            xor AH,BYTE PTR [RDX+RDI*1+37]
            xor BYTE PTR [RDX],DH
            cmp AH,BYTE PTR FS:[RIP+543437360]
            sub ESI,DWORD PTR [RAX]
            xor BYTE PTR [RAX],DH
            xor BYTE PTR [RAX],AL
.L_402a17:

            xor DWORD PTR [RSI],EBP
            xor CH,BYTE PTR [RSI]
            xor EAX,1850277942
            jbe .L_402a83
          .byte 0x6c
          .byte 0x69
          .byte 0x64
          .byte 0x20
          .byte 0x63
          .byte 0x48
          .byte 0x52
          .byte 0x4d
          .byte 0x20
          .byte 0x77
          .byte 0x68
          .byte 0x69
          .byte 0x74
          .byte 0x65
          .byte 0x20
          .byte 0x70
          .byte 0x6f
          .byte 0x69
          .byte 0x6e
          .byte 0x74
          .byte 0x0
.L_402a37:
          .string "Invalid cHRM red point"
.L_402a4e:

            outsb DX,BYTE PTR [RSI]
            jbe .L_402ab3

            insb BYTE PTR [RDI],DX
            imul ESP,DWORD PTR [RAX+RIZ*1+99],541938248
          .byte 0x67
          .byte 0x72
          .byte 0x65
          .byte 0x65
          .byte 0x6e
          .byte 0x20
          .byte 0x70
          .byte 0x6f
          .byte 0x69
          .byte 0x6e
          .byte 0x74
          .byte 0x0
.L_402a67:
          .string "Invalid cHRM blue point"
.L_402a7f:
          .byte 0x49
          .byte 0x6d
          .byte 0x61
          .byte 0x67
.L_402a83:

            and BYTE PTR GS:[RDI+105],DH
            je .L_402af2
          .byte 0x20
          .byte 0x69
          .byte 0x73
          .byte 0x20
          .byte 0x7a
          .byte 0x65
          .byte 0x72
          .byte 0x6f
          .byte 0x20
          .byte 0x69
          .byte 0x6e
          .byte 0x20
          .byte 0x49
          .byte 0x48
          .byte 0x44
          .byte 0x52
          .byte 0x0
.L_402a9b:
          .byte 0x49
          .byte 0x6d
          .byte 0x61
          .byte 0x67
          .byte 0x65
          .byte 0x20
          .byte 0x68
          .byte 0x65
          .byte 0x69
          .byte 0x67
          .byte 0x68
          .byte 0x74
          .byte 0x20
          .byte 0x69
          .byte 0x73
          .byte 0x20
          .byte 0x7a
          .byte 0x65
          .byte 0x72
          .byte 0x6f
          .byte 0x20
          .byte 0x69
          .byte 0x6e
          .byte 0x20
.L_402ab3:

            push RDX
            add BYTE PTR [RCX+110],CL
            jbe .L_402b1d

            insb BYTE PTR [RDI],DX
            imul ESP,DWORD PTR [RAX+RIZ*1+105],1701273965
            and BYTE PTR [RDI+105],DH
            je .L_402b33
          .byte 0x20
          .byte 0x69
          .byte 0x6e
          .byte 0x20
          .byte 0x49
          .byte 0x48
          .byte 0x44
          .byte 0x52
          .byte 0x0
.L_402ad4:
          .string "Invalid image height in IHDR"
.L_402af1:
          .byte 0x49
.L_402af2:

            outsb DX,BYTE PTR [RSI]
            jbe .L_402b56
          .byte 0x6c
          .byte 0x69
          .byte 0x64
          .byte 0x20
          .byte 0x62
          .byte 0x69
          .byte 0x74
          .byte 0x20
          .byte 0x64
          .byte 0x65
          .byte 0x70
          .byte 0x74
          .byte 0x68
          .byte 0x20
          .byte 0x69
          .byte 0x6e
          .byte 0x20
          .byte 0x49
          .byte 0x48
          .byte 0x44
          .byte 0x52
          .byte 0x0
.L_402b0b:
          .byte 0x49
          .byte 0x6e
          .byte 0x76
          .byte 0x61
          .byte 0x6c
          .byte 0x69
          .byte 0x64
          .byte 0x20
          .byte 0x63
          .byte 0x6f
          .byte 0x6c
          .byte 0x6f
          .byte 0x72
          .byte 0x20
          .byte 0x74
          .byte 0x79
          .byte 0x70
          .byte 0x65
.L_402b1d:

            and BYTE PTR [RCX+110],CH
            and BYTE PTR [RCX+72],CL
            push RDX
            add BYTE PTR [RBP+110],DL
            imul EBP,DWORD PTR [RSI+111],119
            outsb DX,BYTE PTR [RSI]
            and BYTE PTR [RSI+105],AH
            insb BYTE PTR [RDI],DX
          .byte 0x74
          .byte 0x65
.L_402b33:

            jb .L_402b55
          .byte 0x6d
          .byte 0x65
          .byte 0x74
          .byte 0x68
          .byte 0x6f
          .byte 0x64
          .byte 0x20
          .byte 0x69
          .byte 0x6e
          .byte 0x20
          .byte 0x49
          .byte 0x48
          .byte 0x44
          .byte 0x52
          .byte 0x0
.L_402b44:
          .byte 0x49
          .byte 0x6e
          .byte 0x76
          .byte 0x61
          .byte 0x6c
          .byte 0x69
          .byte 0x64
          .byte 0x20
          .byte 0x66
          .byte 0x69
          .byte 0x6c
          .byte 0x74
          .byte 0x65
          .byte 0x72
          .byte 0x20
          .byte 0x6d
          .byte 0x65
.L_402b55:

            je .L_402bbf
# WARNING: found overlapping blocks at address 2906
.set .L_402b56, . - 1

            outsd DX,DWORD PTR [RSI]
            and BYTE PTR FS:[RCX+110],CH
            and BYTE PTR [RCX+72],CL
            push RDX
            add BYTE PTR [RCX+110],CL
# WARNING: found overlapping blocks at address 2907

          .byte 0x76
          .byte 0x61
          .byte 0x6c
          .byte 0x69
          .byte 0x64
          .byte 0x20
          .byte 0x49
          .byte 0x48
          .byte 0x44
          .byte 0x52
          .byte 0x20
          .byte 0x64
          .byte 0x61
          .byte 0x74
          .byte 0x61
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
          .byte 0x66
          .byte 0x90
.L_402b80:
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
.L_402bb0:

            inc DWORD PTR [RAX]
            add BYTE PTR [RAX],AL
.L_402bb4:

            sldt WORD PTR [RAX]
            add BH,BH
            add BYTE PTR [RAX],AL
            add BYTE PTR [RBX],DH
            add BYTE PTR [RAX],AL
.L_402bbf:

            add BH,BH
            add BYTE PTR [RAX],AL
            add BYTE PTR [RBP],DL
            add BYTE PTR [RAX],AL
            inc DWORD PTR [RAX]
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
.L_402bd0:

            add BYTE PTR [RAX],0
            add BYTE PTR [RAX],CL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX+570425344],CL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RDX+1426063360],CH
            add BYTE PTR [RAX],AL
            add BH,BH
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],CL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],CL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],CL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX+RAX*1],AL
            add BYTE PTR [RAX],AL
            add AL,0
            add BYTE PTR [RAX],AL
            add AL,BYTE PTR [RAX]
            add BYTE PTR [RAX],AL
            add AL,BYTE PTR [RAX]
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
.L_402c10:

            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
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
.L_402c30:
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
.L_402c50:
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
.L_402c80:

            xor DWORD PTR [RSI],EBP
.L_402c82:

            xor CH,BYTE PTR [RSI]
            xor EAX,54
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RSI+46],AH
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402ca0:

            test RDI,RDI
            je .L_402cb8

            test RSI,RSI
            je .L_402cb8

            mov RAX,QWORD PTR [RSI+16]
            and RAX,RDX
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402cb8:

            xor EAX,EAX
            ret 
.L_402cbb:

            nop
            nop
            nop
            nop
            nop
.L_402cc0:

            test RDI,RDI
            je .L_402cd0

            test RSI,RSI
            je .L_402cd0

            mov RAX,QWORD PTR [RSI+24]
            ret 
          .byte 0x90
.L_402cd0:

            xor EAX,EAX
            ret 
.L_402cd3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402ce0:

            test RDI,RDI
            je .L_402cf8

            test RSI,RSI
            je .L_402cf8

            mov RAX,QWORD PTR [RSI+384]
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402cf8:

            xor EAX,EAX
            ret 
.L_402cfb:

            nop
            nop
            nop
            nop
            nop
.L_402d00:

            test RDI,RDI
            je .L_402d10

            test RSI,RSI
            je .L_402d10

            mov RAX,QWORD PTR [RSI]
            ret 
          .byte 0x66
          .byte 0x90
.L_402d10:

            xor EAX,EAX
            ret 
.L_402d13:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402d20:

            test RDI,RDI
            je .L_402d30

            test RSI,RSI
            je .L_402d30

            mov RAX,QWORD PTR [RSI+8]
            ret 
          .byte 0x90
.L_402d30:

            xor EAX,EAX
            ret 
.L_402d33:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402d40:

            test RDI,RDI
            je .L_402d50

            test RSI,RSI
            je .L_402d50

            movzx EAX,BYTE PTR [RSI+44]
            ret 
          .byte 0x90
.L_402d50:

            xor EAX,EAX
            ret 
.L_402d53:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402d60:

            test RDI,RDI
            je .L_402d70

            test RSI,RSI
            je .L_402d70

            movzx EAX,BYTE PTR [RSI+45]
            ret 
          .byte 0x90
.L_402d70:

            xor EAX,EAX
            ret 
.L_402d73:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402d80:

            test RDI,RDI
            je .L_402d90

            test RSI,RSI
            je .L_402d90

            movzx EAX,BYTE PTR [RSI+47]
            ret 
          .byte 0x90
.L_402d90:

            xor EAX,EAX
            ret 
.L_402d93:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402da0:

            test RDI,RDI
            je .L_402db0

            test RSI,RSI
            je .L_402db0

            movzx EAX,BYTE PTR [RSI+48]
            ret 
          .byte 0x90
.L_402db0:

            xor EAX,EAX
            ret 
.L_402db3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402dc0:

            test RDI,RDI
            je .L_402dd0

            test RSI,RSI
            je .L_402dd0

            movzx EAX,BYTE PTR [RSI+46]
            ret 
          .byte 0x90
.L_402dd0:

            xor EAX,EAX
            ret 
.L_402dd3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402de0:

            test RDI,RDI
            je .L_402e08

            test RSI,RSI
            je .L_402e08

            mov RAX,QWORD PTR [RSI+16]
            and EAX,128
            je .L_402e00

            xor EAX,EAX
            cmp BYTE PTR [RSI+176],1
            je .L_402e10
.L_402e00:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402e08:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402e10:

            mov RAX,QWORD PTR [RSI+160]
            ret 
.L_402e18:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402e20:

            test RDI,RDI
            je .L_402e48

            test RSI,RSI
            je .L_402e48

            mov RAX,QWORD PTR [RSI+16]
            and EAX,128
            je .L_402e40

            xor EAX,EAX
            cmp BYTE PTR [RSI+176],1
            je .L_402e50
.L_402e40:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402e48:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402e50:

            mov RAX,QWORD PTR [RSI+168]
            ret 
.L_402e58:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402e60:

            test RDI,RDI
            je .L_402e88

            test RSI,RSI
            je .L_402e88

            mov RAX,QWORD PTR [RSI+16]
            and EAX,128
            je .L_402e80

            xor EAX,EAX
            cmp BYTE PTR [RSI+176],1
            je .L_402e90
.L_402e80:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402e88:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402e90:

            mov RAX,QWORD PTR [RSI+168]
            cmp QWORD PTR [RSI+160],RAX
            mov EDX,0
            cmovne RAX,RDX
            ret 
.L_402ea8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402eb0:

            test RDI,RDI
            pxor XMM0,XMM0
            je .L_402f00

            test RSI,RSI
            je .L_402f00

            test BYTE PTR [RSI+16],128
            je .L_402f00

            mov RDX,QWORD PTR [RSI+160]
            test RDX,RDX
            je .L_402f00

            mov RAX,QWORD PTR [RSI+168]
            test RAX,RAX
            js .L_402f08

            pxor XMM0,XMM0
            cvtsi2ss XMM0,RAX
.L_402ee5:

            test RDX,RDX
            js .L_402f28

            pxor XMM1,XMM1
            cvtsi2ss XMM1,RDX
.L_402ef3:

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
.L_402f00:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402f08:

            mov RCX,RAX
            pxor XMM0,XMM0
            shr RCX,1
            and EAX,1
            or RCX,RAX
            cvtsi2ss XMM0,RCX
            addss XMM0,XMM0
            jmp .L_402ee5
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402f28:

            mov RAX,RDX
            pxor XMM1,XMM1
            shr RAX,1
            and EDX,1
            or RAX,RDX
            cvtsi2ss XMM1,RAX
            addss XMM1,XMM1
            jmp .L_402ef3
.L_402f43:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402f50:

            xor EAX,EAX
            test RDI,RDI
            je .L_402f6b

            test RSI,RSI
            je .L_402f6b

            test BYTE PTR [RSI+17],1
            je .L_402f6b

            cmp BYTE PTR [RSI+152],1
            je .L_402f70
.L_402f6b:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_402f70:

            mov RAX,QWORD PTR [RSI+136]
            ret 
.L_402f78:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402f80:

            xor EAX,EAX
            test RDI,RDI
            je .L_402f9b

            test RSI,RSI
            je .L_402f9b

            test BYTE PTR [RSI+17],1
            je .L_402f9b

            cmp BYTE PTR [RSI+152],1
            je .L_402fa0
.L_402f9b:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_402fa0:

            mov RAX,QWORD PTR [RSI+144]
            ret 
.L_402fa8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402fb0:

            xor EAX,EAX
            test RDI,RDI
            je .L_402fd8

            test RSI,RSI
            je .L_402fd8

            test BYTE PTR [RSI+17],1
            je .L_402fd8

            cmp BYTE PTR [RSI+152],0
            jne .L_402fd8

            mov RAX,QWORD PTR [RSI+136]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_402fd8:

            ret 
.L_402fda:

            nop
            nop
            nop
            nop
            nop
            nop
.L_402fe0:

            xor EAX,EAX
            test RDI,RDI
            je .L_403008

            test RSI,RSI
            je .L_403008

            test BYTE PTR [RSI+17],1
            je .L_403008

            cmp BYTE PTR [RSI+152],0
            jne .L_403008

            mov RAX,QWORD PTR [RSI+144]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403008:

            ret 
.L_40300a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_403010:

            test RDI,RDI
            je .L_403020

            test RSI,RSI
            je .L_403020

            movzx EAX,BYTE PTR [RSI+49]
            ret 
          .byte 0x90
.L_403020:

            xor EAX,EAX
            ret 
.L_403023:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403030:

            test RDI,RDI
            je .L_403040

            test RSI,RSI
            je .L_403040

            lea RAX,QWORD PTR [RSI+52]
            ret 
          .byte 0x90
.L_403040:

            xor EAX,EAX
            ret 
.L_403043:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403050:

            test RDI,RDI
            je .L_403065

            test RSI,RSI
            je .L_403065

            test BYTE PTR [RSI+16],32
            je .L_403065

            test RDX,RDX
            jne .L_403070
.L_403065:

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
.L_403070:

            add RSI,122
            mov EAX,32
            mov QWORD PTR [RDX],RSI
            ret 
.L_40307d:

            nop
            nop
            nop
.L_403080:

            test RDI,RDI
            je .L_403170

            test RSI,RSI
            je .L_403170

            mov RAX,QWORD PTR [RSI+16]
            and EAX,4
            je .L_403172

            test RDX,RDX
            je .L_4030b4

            pxor XMM0,XMM0
            cvtss2sd XMM0,DWORD PTR [RSI+192]
            movsd QWORD PTR [RDX],XMM0
.L_4030b4:

            test RCX,RCX
            je .L_4030c9

            pxor XMM0,XMM0
            cvtss2sd XMM0,DWORD PTR [RSI+196]
            movsd QWORD PTR [RCX],XMM0
.L_4030c9:

            test R8,R8
            je .L_4030df

            pxor XMM0,XMM0
            cvtss2sd XMM0,DWORD PTR [RSI+200]
            movsd QWORD PTR [R8],XMM0
.L_4030df:

            test R9,R9
            je .L_4030f5

            pxor XMM0,XMM0
            cvtss2sd XMM0,DWORD PTR [RSI+204]
            movsd QWORD PTR [R9],XMM0
.L_4030f5:

            cmp QWORD PTR [RSP+8],0
            je .L_403112

            pxor XMM0,XMM0
            mov RAX,QWORD PTR [RSP+8]
            cvtss2sd XMM0,DWORD PTR [RSI+208]
            movsd QWORD PTR [RAX],XMM0
.L_403112:

            cmp QWORD PTR [RSP+16],0
            je .L_40312f

            pxor XMM0,XMM0
            mov RAX,QWORD PTR [RSP+16]
            cvtss2sd XMM0,DWORD PTR [RSI+212]
            movsd QWORD PTR [RAX],XMM0
.L_40312f:

            cmp QWORD PTR [RSP+24],0
            je .L_40314c

            pxor XMM0,XMM0
            mov RAX,QWORD PTR [RSP+24]
            cvtss2sd XMM0,DWORD PTR [RSI+216]
            movsd QWORD PTR [RAX],XMM0
.L_40314c:

            cmp QWORD PTR [RSP+32],0
            mov EAX,4
            je .L_403172

            pxor XMM0,XMM0
            mov RDX,QWORD PTR [RSP+32]
            cvtss2sd XMM0,DWORD PTR [RSI+220]
            movsd QWORD PTR [RDX],XMM0
            ret 
          .byte 0x90
.L_403170:

            xor EAX,EAX
.L_403172:

            ret 
.L_403174:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403180:

            test RDI,RDI
            je .L_403240

            test RSI,RSI
            je .L_403240

            mov RAX,QWORD PTR [RSI+16]
            and EAX,4
            je .L_403242

            test RDX,RDX
            je .L_4031ae

            mov RAX,QWORD PTR [RSI+400]
            mov QWORD PTR [RDX],RAX
.L_4031ae:

            test RCX,RCX
            je .L_4031bd

            mov RAX,QWORD PTR [RSI+408]
            mov QWORD PTR [RCX],RAX
.L_4031bd:

            test R8,R8
            je .L_4031cc

            mov RAX,QWORD PTR [RSI+416]
            mov QWORD PTR [R8],RAX
.L_4031cc:

            test R9,R9
            je .L_4031db

            mov RAX,QWORD PTR [RSI+424]
            mov QWORD PTR [R9],RAX
.L_4031db:

            cmp QWORD PTR [RSP+8],0
            je .L_4031f2

            mov RAX,QWORD PTR [RSI+432]
            mov RCX,QWORD PTR [RSP+8]
            mov QWORD PTR [RCX],RAX
.L_4031f2:

            cmp QWORD PTR [RSP+16],0
            je .L_403209

            mov RAX,QWORD PTR [RSI+440]
            mov RDX,QWORD PTR [RSP+16]
            mov QWORD PTR [RDX],RAX
.L_403209:

            cmp QWORD PTR [RSP+24],0
            je .L_403220

            mov RAX,QWORD PTR [RSI+448]
            mov RCX,QWORD PTR [RSP+24]
            mov QWORD PTR [RCX],RAX
.L_403220:

            cmp QWORD PTR [RSP+32],0
            mov EAX,4
            je .L_403242

            mov RDX,QWORD PTR [RSI+456]
            mov RDI,QWORD PTR [RSP+32]
            mov QWORD PTR [RDI],RDX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403240:

            xor EAX,EAX
.L_403242:

            ret 
.L_403244:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403250:

            test RDI,RDI
            je .L_403280

            test RSI,RSI
            je .L_403280

            test BYTE PTR [RSI+16],1
            je .L_403280

            test RDX,RDX
            je .L_403280

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

            test RDI,RDI
            je .L_4032b8

            test RSI,RSI
            je .L_4032b8

            test BYTE PTR [RSI+16],1
            je .L_4032b8

            test RDX,RDX
            je .L_4032b8

            mov RAX,QWORD PTR [RSI+392]
            mov QWORD PTR [RDX],RAX
            mov EAX,1
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4032b8:

            xor EAX,EAX
            ret 
.L_4032bb:

            nop
            nop
            nop
            nop
            nop
.L_4032c0:

            test RDI,RDI
            je .L_4032d5

            test RSI,RSI
            je .L_4032d5

            test BYTE PTR [RSI+17],8
            je .L_4032d5

            test RDX,RDX
            jne .L_4032e0
.L_4032d5:

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
.L_4032e0:

            movzx EAX,BYTE PTR [RSI+64]
            mov DWORD PTR [RDX],EAX
            mov EAX,2048
            ret 
.L_4032ec:

            nop
            nop
            nop
            nop
.L_4032f0:

            test RDI,RDI
            je .L_403350

            test RSI,RSI
            je .L_403350

            mov RAX,QWORD PTR [RSI+16]
            and EAX,4096
            je .L_403352

            test RDX,RDX
            setne DIL
            test R8,R8
            setne AL
            test DIL,AL
            je .L_403350

            test R9,R9
            je .L_403350

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
.L_403350:

            xor EAX,EAX
.L_403352:

            ret 
.L_403354:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403360:

            test RSI,RSI
            setne CL
            test RDX,RDX
            setne AL
            test CL,AL
            je .L_403390

            test RDI,RDI
            je .L_403390

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
.L_403390:

            xor EAX,EAX
            ret 
.L_403393:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4033a0:

            test RDI,RDI
            je .L_4033b5

            test RSI,RSI
            je .L_4033b5

            test BYTE PTR [RSI+16],64
            je .L_4033b5

            test RDX,RDX
            jne .L_4033c0
.L_4033b5:

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
.L_4033c0:

            mov RAX,QWORD PTR [RSI+184]
            mov QWORD PTR [RDX],RAX
            mov EAX,64
            ret 
.L_4033d0:

            test RDI,RDI
            je .L_403490

            test RSI,RSI
            je .L_403490

            test RDX,RDX
            je .L_403490

            test RCX,RCX
            je .L_403490

            test R8,R8
            je .L_403490

            test R9,R9
            je .L_403490

            sub RSP,8
.L_40340a:

            mov RAX,QWORD PTR [RSI]
            cmp QWORD PTR [RSP+24],0
            mov QWORD PTR [RDX],RAX
            mov RAX,QWORD PTR [RSI+8]
            mov QWORD PTR [RCX],RAX
            movzx EAX,BYTE PTR [RSI+44]
            mov DWORD PTR [R8],EAX
            movzx EAX,BYTE PTR [RSI+45]
            mov DWORD PTR [R9],EAX
            je .L_403438

            movzx EAX,BYTE PTR [RSI+46]
            mov RCX,QWORD PTR [RSP+24]
            mov DWORD PTR [RCX],EAX
.L_403438:

            cmp QWORD PTR [RSP+32],0
            je .L_40344b

            movzx EAX,BYTE PTR [RSI+47]
            mov RDX,QWORD PTR [RSP+32]
            mov DWORD PTR [RDX],EAX
.L_40344b:

            cmp QWORD PTR [RSP+16],0
            movzx R9D,BYTE PTR [RSI+48]
            je .L_403465

            mov RAX,QWORD PTR [RSP+16]
            mov DWORD PTR [RAX],R9D
            movzx R9D,BYTE PTR [RSI+48]
.L_403465:

            movzx EAX,BYTE PTR [RSI+47]
            movzx ECX,BYTE PTR [RSI+44]
            mov RDX,QWORD PTR [RSI+8]
            push RAX
.L_403472:

            movzx EAX,BYTE PTR [RSI+46]
            push RAX
            movzx R8D,BYTE PTR [RSI+45]
            mov RSI,QWORD PTR [RSI]
            call .L_402390

            mov EAX,1
            add RSP,24
            ret 
          .byte 0x66
          .byte 0x90
.L_403490:

            xor EAX,EAX
            ret 
.L_403493:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4034a0:

            test RDI,RDI
            je .L_4034f0

            test RSI,RSI
            je .L_4034f0

            mov RAX,QWORD PTR [RSI+16]
            and EAX,256
            je .L_4034f2

            test RDX,RDX
            setne DIL
            test RCX,RCX
            setne AL
            test DIL,AL
            je .L_4034f0

            test R8,R8
            je .L_4034f0

            mov RAX,QWORD PTR [RSI+136]
            mov QWORD PTR [RDX],RAX
            mov RAX,QWORD PTR [RSI+144]
            mov QWORD PTR [RCX],RAX
            movzx EAX,BYTE PTR [RSI+152]
            mov DWORD PTR [R8],EAX
            mov EAX,256
            ret 
.L_4034f0:

            xor EAX,EAX
.L_4034f2:

            ret 
.L_4034f4:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403500:

            test RDI,RDI
            je .L_403550

            test RSI,RSI
            je .L_403550

            mov RAX,QWORD PTR [RSI+16]
            and EAX,1024
            je .L_403552

            test RDX,RDX
            je .L_403550

            test RCX,RCX
            je .L_403550

            test R8,R8
            je .L_403550

            test R9,R9
            je .L_403550

            cmp QWORD PTR [RSP+8],0
            setne DIL
            cmp QWORD PTR [RSP+16],0
            setne AL
            test DIL,AL
            je .L_403550

            cmp QWORD PTR [RSP+24],0
            jne .L_403558

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403550:

            xor EAX,EAX
.L_403552:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_403558:

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
.L_4035b2:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4035c0:

            test RDI,RDI
            je .L_4035e0

            test RSI,RSI
            je .L_4035e0

            mov RAX,QWORD PTR [RSI+16]
            and EAX,16384
            jne .L_4035e8

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
.L_4035e0:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4035e8:

            movzx EAX,BYTE PTR [RSI+344]
            movsd XMM0,QWORD PTR [RSI+352]
            mov DWORD PTR [RDX],EAX
            movsd QWORD PTR [RCX],XMM0
            mov EAX,16384
            movsd XMM0,QWORD PTR [RSI+360]
            movsd QWORD PTR [R8],XMM0
            ret 
.L_403610:

            test RDI,RDI
            je .L_403668

            test RSI,RSI
            je .L_403668

            mov RAX,QWORD PTR [RSI+16]
            and EAX,128
            je .L_40366a

            xor EAX,EAX
            test RDX,RDX
            je .L_40363b

            mov RAX,QWORD PTR [RSI+160]
            mov QWORD PTR [RDX],RAX
            mov EAX,128
.L_40363b:

            test RCX,RCX
            je .L_40364f

            mov RAX,QWORD PTR [RSI+168]
            mov QWORD PTR [RCX],RAX
            mov EAX,128
.L_40364f:

            test R8,R8
            je .L_40366a

            movzx EAX,BYTE PTR [RSI+176]
            mov DWORD PTR [R8],EAX
            mov EAX,128
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_403668:

            xor EAX,EAX
.L_40366a:

            ret 
.L_40366c:

            nop
            nop
            nop
            nop
.L_403670:

            test RDI,RDI
            je .L_403685

            test RSI,RSI
            je .L_403685

            test BYTE PTR [RSI+16],8
            je .L_403685

            test RDX,RDX
            jne .L_403690
.L_403685:

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
.L_403690:

            mov RAX,QWORD PTR [RSI+32]
            mov QWORD PTR [RDX],RAX
            movzx EAX,WORD PTR [RSI+40]
            mov DWORD PTR [RCX],EAX
            mov EAX,8
            ret 
.L_4036a3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4036b0:

            test RDI,RDI
            je .L_4036c5

            test RSI,RSI
            je .L_4036c5

            test BYTE PTR [RSI+16],2
            je .L_4036c5

            test RDX,RDX
            jne .L_4036d0
.L_4036c5:

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
.L_4036d0:

            add RSI,96
            mov EAX,2
            mov QWORD PTR [RDX],RSI
            ret 
.L_4036dd:

            nop
            nop
            nop
.L_4036e0:

            test RDI,RDI
            je .L_403710

            test RSI,RSI
            je .L_403710

            movsxd RAX,DWORD PTR [RSI+68]
            test EAX,EAX
            jle .L_403710

            test RDX,RDX
            je .L_4036fe

            mov RDI,QWORD PTR [RSI+80]
            mov QWORD PTR [RDX],RDI
.L_4036fe:

            test RCX,RCX
            je .L_40371d

            mov DWORD PTR [RCX],EAX
            movsxd RAX,DWORD PTR [RSI+68]
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403710:

            xor EAX,EAX
            test RCX,RCX
            je .L_40371d

            mov DWORD PTR [RCX],0
.L_40371d:

            ret 
.L_40371f:

            nop
.L_403720:

            test RDI,RDI
            je .L_403735

            test RSI,RSI
            je .L_403735

            test BYTE PTR [RSI+17],2
            je .L_403735

            test RDX,RDX
            jne .L_403740
.L_403735:

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
.L_403740:

            add RSI,88
            mov EAX,512
            mov QWORD PTR [RDX],RSI
            ret 
.L_40374d:

            nop
            nop
            nop
.L_403750:

            test RDI,RDI
            je .L_4037a0

            test RSI,RSI
            je .L_4037a0

            mov RAX,QWORD PTR [RSI+16]
            and EAX,16
            je .L_4037a2

            xor EAX,EAX
            cmp BYTE PTR [RSI+45],3
            je .L_4037a8

            test R8,R8
            je .L_40377c

            lea RAX,QWORD PTR [RSI+112]
            mov QWORD PTR [R8],RAX
            mov EAX,16
.L_40377c:

            test RDX,RDX
            je .L_403788

            mov QWORD PTR [RDX],0
.L_403788:

            test RCX,RCX
            je .L_4037a2

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
.L_4037a0:

            xor EAX,EAX
.L_4037a2:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4037a8:

            test RDX,RDX
            je .L_4037b9

            mov RAX,QWORD PTR [RSI+104]
            mov QWORD PTR [RDX],RAX
            mov EAX,16
.L_4037b9:

            test R8,R8
            je .L_403788

            lea RDX,QWORD PTR [RSI+112]
            mov QWORD PTR [R8],RDX
            jmp .L_403788
.L_4037c7:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4037d0:

            test RSI,RSI
            setne CL
            test RDX,RDX
            setne AL
            test CL,AL
            je .L_403800

            test RDI,RDI
            je .L_403800

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
.L_403800:

            xor EAX,EAX
            ret 
.L_403803:

            nop
            nop
            nop
            nop
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

            xor EAX,EAX
            test RDI,RDI
            je .L_40381e

            movzx EAX,BYTE PTR [RDI+1032]
.L_40381e:

            ret 
.L_403820:

            test RDI,RDI
            je .L_403830

            mov RAX,QWORD PTR [RDI+1000]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403830:

            xor EAX,EAX
            ret 
.L_403833:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403840:

            xor EAX,EAX
            test RDI,RDI
            je .L_40384e

            mov RAX,QWORD PTR [RDI+424]
.L_40384e:

            ret 
.L_403850:

            xor EAX,EAX
            ret 
.L_403853:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403860:

            xor EAX,EAX
            ret 
.L_403863:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403870:

            mov DWORD PTR [RSI],4294967295
            xor EAX,EAX
            ret 
.L_403879:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403880:

            xor EAX,EAX
            ret 
.L_403883:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403890:

            xor EAX,EAX
            ret 
.L_403893:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4038a0:

            xor EAX,EAX
            test RDI,RDI
            je .L_4038ae

            mov RAX,QWORD PTR [RDI+1144]
.L_4038ae:

            ret 
.L_4038b0:

            xor EAX,EAX
            test RDI,RDI
            je .L_4038be

            mov RAX,QWORD PTR [RDI+1152]
.L_4038be:

            ret 
.L_4038c0:

            test RDI,RDI
            je .L_4038cd

            or QWORD PTR [RDI+296],1
.L_4038cd:

            ret 
.L_4038cf:

            nop
.L_4038d0:

            test RDI,RDI
            je .L_4038de

            cmp BYTE PTR [RDI+631],16
            je .L_4038e0
.L_4038de:

            ret 
.L_4038e0:

            or QWORD PTR [RDI+296],16
            ret 
.L_4038e9:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4038f0:

            test RDI,RDI
            je .L_40390d

            cmp BYTE PTR [RDI+631],7
            ja .L_40390d

            or QWORD PTR [RDI+296],4
            mov BYTE PTR [RDI+632],8
.L_40390d:

            ret 
.L_40390f:

            nop
.L_403910:

            test RDI,RDI
            je .L_403929

            cmp BYTE PTR [RDI+631],7
            ja .L_403929

            or QWORD PTR [RDI+296],65536
.L_403929:

            ret 
.L_40392b:

            nop
            nop
            nop
            nop
            nop
.L_403930:

            test RDI,RDI
            je .L_40394f

            mov EAX,DWORD PTR [RSI]
            or QWORD PTR [RDI+296],8
            mov DWORD PTR [RDI+765],EAX
            movzx EAX,BYTE PTR [RSI+4]
            mov BYTE PTR [RDI+769],AL
.L_40394f:

            ret 
.L_403951:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403960:

            test RDI,RDI
            mov EAX,1
            je .L_403973

            cmp BYTE PTR [RDI+627],0
            jne .L_403978
.L_403973:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403978:

            or QWORD PTR [RDI+296],2
            mov EAX,7
            ret 
.L_403986:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403990:

            test RDI,RDI
            je .L_4039e3

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
            je .L_4039e8

            test AL,AL
            jne .L_4039e3

            cmp BYTE PTR [RDI+631],7
            jbe .L_4039e3

            mov BYTE PTR [RDI+635],2
.L_4039e3:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4039e8:

            mov BYTE PTR [RDI+635],4
            ret 
.L_4039f0:

            test RDI,RDI
            je .L_403a05

            call .L_403990

            or QWORD PTR [RDI+296],16777216
.L_403a05:

            ret 
.L_403a07:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403a10:

            test RDI,RDI
            je .L_403a20

            or QWORD PTR [RDI+296],131072
.L_403a20:

            ret 
.L_403a22:

            nop
            nop
            nop
            nop
            nop
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

            test RDI,RDI
            je .L_403a40

            or QWORD PTR [RDI+296],524288
.L_403a40:

            ret 
.L_403a42:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403a50:

            test RDI,RDI
            je .L_403a5d

            or QWORD PTR [RDI+296],32
.L_403a5d:

            ret 
.L_403a5f:

            nop
.L_403a60:

            cmp BYTE PTR [RDI+16],0
            jne .L_403a88

            mov RAX,QWORD PTR [RDI+8]
            test RAX,RAX
            je .L_403a98

            add RAX,RSI
            nop
            nop
            nop
            nop
            nop
            nop
.L_403a78:

            not BYTE PTR [RSI]
            add RSI,1
            cmp RAX,RSI
            jne .L_403a78

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403a88:

            movzx EAX,WORD PTR [RDI+16]
            cmp AX,2052
            je .L_403aa0

            cmp AX,4100
            je .L_403ac0
.L_403a98:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403aa0:

            mov RDX,QWORD PTR [RDI+8]
            test RDX,RDX
            je .L_403a98

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
.L_403ab0:

            not BYTE PTR [RSI+RAX*1]
            add RAX,2
            cmp RDX,RAX
            ja .L_403ab0

            ret 
          .byte 0x66
          .byte 0x90
.L_403ac0:

            mov RCX,QWORD PTR [RDI+8]
            test RCX,RCX
            je .L_403a98

            mov RAX,RSI
            nop
            nop
            nop
            nop
.L_403ad0:

            not BYTE PTR [RAX]
            not BYTE PTR [RAX+1]
            add RAX,4
            mov RDX,RAX
            sub RDX,RSI
            cmp RCX,RDX
            ja .L_403ad0

            ret 
.L_403ae6:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403af0:

            cmp BYTE PTR [RDI+17],16
            je .L_403b00
.L_403af6:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403b00:

            movzx EAX,BYTE PTR [RDI+18]
            imul RAX,QWORD PTR [RDI]
            test RAX,RAX
            mov RDI,RAX
            je .L_403af6

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
            nop
.L_403b18:

            movzx EDX,BYTE PTR [RSI]
            movzx ECX,BYTE PTR [RSI+1]
            add RAX,1
            add RSI,2
            mov BYTE PTR [RSI-2],CL
            mov BYTE PTR [RSI-1],DL
            cmp RDI,RAX
            jne .L_403b18

            ret 
.L_403b34:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403b40:

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,7
            ja .L_403b5b

            cmp AL,1
            je .L_403b90

            cmp AL,2
            je .L_403b60

            cmp AL,4
            lea RCX,QWORD PTR [RIP+.L_404000]
            je .L_403b67
.L_403b5b:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403b60:

            lea RCX,QWORD PTR [RIP+.L_404100]
.L_403b67:

            mov RDX,QWORD PTR [RDI+8]
            add RDX,RSI
            cmp RSI,RDX
            jae .L_403b5b

            nop
            nop
            nop
            nop
            nop
.L_403b78:

            movzx EAX,BYTE PTR [RSI]
            add RSI,1
            movzx EAX,BYTE PTR [RCX+RAX*1]
            mov BYTE PTR [RSI-1],AL
            cmp RDX,RSI
            jne .L_403b78

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403b90:

            lea RCX,QWORD PTR [RIP+.L_404200]
            jmp .L_403b67
.L_403b99:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403ba0:

            movzx EAX,BYTE PTR [RDI+16]
            mov R8,RDX
            mov RCX,QWORD PTR [RDI]
            and R8D,4194304
            cmp AL,2
            je .L_403c88

            cmp AL,6
            je .L_403be8

            test AL,AL
            jne .L_403ea0

            cmp BYTE PTR [RDI+18],2
            je .L_403cb8
.L_403bcf:

            test R8,R8
            je .L_403c83
.L_403bd8:

            movzx EAX,BYTE PTR [RDI+16]
.L_403bdc:

            and EAX,4294967291
            mov BYTE PTR [RDI+16],AL
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403be8:

            test R8,R8
            je .L_403ca0

            cmp BYTE PTR [RDI+18],4
            jne .L_403bdc
.L_403bf7:

            and EDX,128
            cmp BYTE PTR [RDI+17],8
            je .L_403d60

            test RDX,RDX
            jne .L_403dc0

            test RCX,RCX
            mov RAX,RSI
            je .L_403c67

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403c20:

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
            jne .L_403c20
.L_403c67:

            lea RAX,QWORD PTR [RCX+RCX*2]
            mov BYTE PTR [RDI+19],48
            add RAX,RAX
            mov QWORD PTR [RDI+8],RAX
.L_403c76:

            test R8,R8
            mov BYTE PTR [RDI+18],3
            jne .L_403bd8
.L_403c83:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403c88:

            cmp BYTE PTR [RDI+18],4
            jne .L_403bcf

            jmp .L_403bf7
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403ca0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403ca8:

            cmp BYTE PTR [RDI+18],2
            jne .L_403bdc

            nop
            nop
            nop
            nop
            nop
            nop
.L_403cb8:

            and EDX,128
            cmp BYTE PTR [RDI+17],8
            je .L_403d00

            test RDX,RDX
            jne .L_403d30

            test RCX,RCX
            je .L_403cea

            nop
            nop
.L_403cd0:

            movzx EAX,BYTE PTR [RSI+RDX*4+2]
            mov BYTE PTR [RSI+RDX*2],AL
            movzx EAX,BYTE PTR [RSI+RDX*4+3]
            mov BYTE PTR [RSI+RDX*2+1],AL
            add RDX,1
            cmp RCX,RDX
            jne .L_403cd0
.L_403cea:

            add RCX,RCX
            mov BYTE PTR [RDI+19],16
            mov QWORD PTR [RDI+8],RCX
.L_403cf5:

            mov BYTE PTR [RDI+18],1
            jmp .L_403bcf
          .byte 0x66
          .byte 0x90
.L_403d00:

            test RDX,RDX
            je .L_403e30

            test RCX,RCX
            je .L_403d20

            xor EAX,EAX
.L_403d10:

            movzx EDX,BYTE PTR [RSI+RAX*2]
            mov BYTE PTR [RSI+RAX*1],DL
            add RAX,1
            cmp RCX,RAX
            jne .L_403d10
.L_403d20:

            mov BYTE PTR [RDI+19],8
            mov QWORD PTR [RDI+8],RCX
            jmp .L_403cf5
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403d30:

            cmp RCX,1
            jbe .L_403cea

            mov EAX,1
            nop
            nop
            nop
            nop
            nop
.L_403d40:

            movzx EDX,BYTE PTR [RSI+RAX*4]
            mov BYTE PTR [RSI+RAX*2],DL
            movzx EDX,BYTE PTR [RSI+RAX*4+1]
            mov BYTE PTR [RSI+RAX*2+1],DL
            add RAX,1
            cmp RCX,RAX
            jne .L_403d40

            jmp .L_403cea
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403d60:

            test RDX,RDX
            je .L_403e60

            cmp RCX,1
            lea RAX,QWORD PTR [RSI+3]
            lea RDX,QWORD PTR [RSI+4]
            jbe .L_403da7

            lea R9,QWORD PTR [RCX+RCX*2]
            add RSI,R9
            nop
            nop
.L_403d80:

            movzx R9D,BYTE PTR [RDX]
            add RAX,3
            add RDX,4
            mov BYTE PTR [RAX-3],R9B
            movzx R9D,BYTE PTR [RDX-3]
            mov BYTE PTR [RAX-2],R9B
            movzx R9D,BYTE PTR [RDX-2]
            cmp RAX,RSI
            mov BYTE PTR [RAX-1],R9B
            jne .L_403d80
.L_403da7:

            lea RAX,QWORD PTR [RCX+RCX*2]
            mov BYTE PTR [RDI+19],24
            mov QWORD PTR [RDI+8],RAX
            jmp .L_403c76
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403dc0:

            lea RAX,QWORD PTR [RSI+8]
            add RSI,6
            cmp RCX,1
            jbe .L_403c67

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
.L_403de0:

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
            jne .L_403de0

            jmp .L_403c67
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403e30:

            test RCX,RCX
            je .L_403d20

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403e40:

            movzx EAX,BYTE PTR [RSI+RDX*2+1]
            mov BYTE PTR [RSI+RDX*1],AL
            add RDX,1
            cmp RCX,RDX
            jne .L_403e40

            jmp .L_403d20
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
.L_403e60:

            test RCX,RCX
            je .L_403da7

            lea R9,QWORD PTR [RCX+RCX*2]
            mov RAX,RSI
            add R9,RSI
            nop
            nop
            nop
            nop
            nop
.L_403e78:

            movzx EDX,BYTE PTR [RSI+1]
            add RSI,4
            add RAX,3
            mov BYTE PTR [RAX-3],DL
            movzx EDX,BYTE PTR [RSI-2]
            mov BYTE PTR [RAX-2],DL
            movzx EDX,BYTE PTR [RSI-1]
            cmp RAX,R9
            mov BYTE PTR [RAX-1],DL
            jne .L_403e78

            jmp .L_403da7
          .byte 0x90
.L_403ea0:

            cmp AL,4
            jne .L_403bcf

            test R8,R8
            jne .L_403ca8

            ret 
.L_403eb3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403ec0:

            movzx EAX,BYTE PTR [RDI+16]
            test AL,2
            je .L_403ed9

            movzx ECX,BYTE PTR [RDI+17]
            mov RDX,QWORD PTR [RDI]
            cmp CL,8
            je .L_403ee0

            cmp CL,16
            je .L_403f10
.L_403ed9:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403ee0:

            cmp AL,2
            je .L_403f50

            cmp AL,6
            jne .L_403ed9

            test RDX,RDX
            je .L_403ed9

            xor EAX,EAX
            nop
.L_403ef0:

            movzx ECX,BYTE PTR [RSI]
            movzx EDI,BYTE PTR [RSI+2]
            add RAX,1
            add RSI,4
            mov BYTE PTR [RSI-4],DIL
            mov BYTE PTR [RSI-2],CL
            cmp RDX,RAX
            jne .L_403ef0

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403f10:

            cmp AL,2
            je .L_403f80

            cmp AL,6
            jne .L_403ed9

            test RDX,RDX
            je .L_403ed9

            xor EAX,EAX
            nop
.L_403f20:

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
            jne .L_403f20

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_403f50:

            test RDX,RDX
            je .L_403ed9

            lea RCX,QWORD PTR [RDX+RDX*2]
            add RCX,RSI
            nop
            nop
            nop
            nop
.L_403f60:

            movzx EAX,BYTE PTR [RSI]
            movzx EDX,BYTE PTR [RSI+2]
            add RSI,3
            mov BYTE PTR [RSI-3],DL
            mov BYTE PTR [RSI-1],AL
            cmp RSI,RCX
            jne .L_403f60

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403f80:

            test RDX,RDX
            je .L_403ed9

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
.L_403f90:

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
            jne .L_403f90

            ret 
.L_403fbc:

            nop
            nop
            nop
            nop
.L_403fc0:

            test RDI,RDI
            je .L_403fd8

            mov QWORD PTR [RDI+264],RSI
            mov BYTE PTR [RDI+272],DL
            mov BYTE PTR [RDI+273],CL
.L_403fd8:

            ret 
.L_403fda:

            nop
            nop
            nop
            nop
            nop
            nop
.L_403fe0:

            test RDI,RDI
            je .L_403ff0

            mov RAX,QWORD PTR [RDI+264]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_403ff0:

            xor EAX,EAX
            ret 
.L_403ff3:
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
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_404000:
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
.L_404100:
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
.L_404200:
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
.L_404300:

            push R15
            push R14
            mov R15,RDI
            push R13
            push R12
            mov R12,RSI
            push RBP
            push RBX
            sub RSP,24
.L_404314:

            movzx EBX,BYTE PTR [RDI+636]
            cmp BL,7
            jbe .L_404602
.L_404324:

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
.L_404350:

            mov RDI,R15
            call .L_410990

            mov RDX,RAX
            mov EAX,DWORD PTR [R15+620]
            cmp DWORD PTR [RBX],EAX
            jne .L_40437b

            mov RAX,QWORD PTR [R15+280]
            test AL,8
            je .L_40437b

            or AH,32
            mov QWORD PTR [R15+280],RAX
.L_40437b:

            mov EAX,DWORD PTR [RBP]
            cmp DWORD PTR [R15+620],EAX
            je .L_4043f0

            mov EAX,DWORD PTR [R15+620]
            cmp DWORD PTR [R13],EAX
            je .L_404500

            mov RSI,QWORD PTR [RSP+8]
            mov RDI,R15
            mov QWORD PTR [RSP],RDX
            call .L_402010

            test EAX,EAX
            mov RDX,QWORD PTR [RSP]
            je .L_404400

            mov EAX,DWORD PTR [RBX]
            cmp DWORD PTR [R15+620],EAX
            jne .L_4043c4

            or QWORD PTR [R15+280],4
.L_4043c4:

            mov RSI,R12
            mov RDI,R15
            call .L_410740

            mov EAX,DWORD PTR [R15+620]
            cmp EAX,DWORD PTR [R14]
            jne .L_404510

            or QWORD PTR [R15+280],2
            jmp .L_404350
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4043f0:

            mov RSI,R12
            mov RDI,R15
            call .L_40dda0

            jmp .L_404350
.L_404400:

            mov EAX,DWORD PTR [R15+620]
            cmp DWORD PTR [R14],EAX
            je .L_404560

            mov EAX,DWORD PTR [R15+620]
            cmp DWORD PTR [RBX],EAX
            je .L_4045b0

            mov EAX,DWORD PTR [R15+620]
            cmp EAX,DWORD PTR [RIP+.L_619198]
            mov RSI,R12
            mov RDI,R15
            je .L_404570

            cmp EAX,DWORD PTR [RIP+.L_619193]
            je .L_404580

            cmp EAX,DWORD PTR [RIP+.L_61918e]
            je .L_404590

            cmp EAX,DWORD PTR [RIP+.L_619189]
            je .L_4045a0

            cmp EAX,DWORD PTR [RIP+.L_61917a]
            je .L_4045f8

            cmp EAX,DWORD PTR [RIP+.L_619175]
            je .L_404682

            cmp EAX,DWORD PTR [RIP+.L_619170]
            je .L_4045ee

            cmp EAX,DWORD PTR [RIP+.L_61916b]
            je .L_4046b9

            cmp EAX,DWORD PTR [RIP+.L_619166]
            je .L_4046af

            cmp EAX,DWORD PTR [RIP+.L_61915c]
            je .L_4046ee

            cmp EAX,DWORD PTR [RIP+.L_619184]
            je .L_404702

            cmp EAX,DWORD PTR [RIP+.L_619161]
            je .L_40470c

            cmp EAX,DWORD PTR [RIP+.L_619157]
            je .L_4046f8

            cmp EAX,DWORD PTR [RIP+.L_619152]
            je .L_40472a

            cmp EAX,DWORD PTR [RIP+.L_61914d]
            je .L_40473e

            cmp EAX,DWORD PTR [RIP+.L_619148]
            jne .L_404734

            call .L_4104a0

            jmp .L_404350
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
.L_404500:

            mov RSI,R12
            mov RDI,R15
            call .L_40e1f0

            jmp .L_404350
.L_404510:

            cmp EAX,DWORD PTR [RBX]
            jne .L_404350

            mov RAX,QWORD PTR [R15+280]
            lea RSI,QWORD PTR [RIP+.L_4064c6]
            test AL,1
            je .L_404547

            cmp BYTE PTR [R15+630],3
            jne .L_4045df

            test AL,2
            jne .L_4045df

            lea RSI,QWORD PTR [RIP+.L_414de0-59649]
.L_404547:

            add RSP,24
.L_40454b:

            mov RDI,R15
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40d4b0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_404560:

            mov RSI,R12
            mov RDI,R15
            call .L_40df70

            jmp .L_404350
.L_404570:

            call .L_40f570

            jmp .L_404350
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404580:

            call .L_40e5e0

            jmp .L_404350
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404590:

            call .L_40e260

            jmp .L_404350
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4045a0:

            call .L_40f790

            jmp .L_404350
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4045b0:

            mov RAX,QWORD PTR [R15+280]
            test AL,1
            je .L_40468c

            cmp BYTE PTR [R15+630],3
            je .L_4046c3
.L_4045cd:

            or RAX,4
            mov QWORD PTR [R15+592],RDX
            mov QWORD PTR [R15+280],RAX
.L_4045df:

            add RSP,24
.L_4045e3:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_4045ee:

            call .L_40ff40

            jmp .L_404350
.L_4045f8:

            call .L_40fa40

            jmp .L_404350
.L_404602:

            movzx R13D,BL
            mov EBP,8
            lea R14,QWORD PTR [R12+52]
            sub RBP,R13
            lea RSI,QWORD PTR [RSI+R13*1+52]
            mov RDX,RBP
            call .L_406870

            mov BYTE PTR [R15+636],8
            mov RDX,RBP
            mov RSI,R13
            mov RDI,R14
            call .L_4015a0

            test EAX,EAX
            je .L_404669

            cmp BL,3
            ja .L_40465a

            mov EDX,4
            mov RSI,R13
            mov RDI,R14
            sub RDX,R13
            call .L_4015a0

            test EAX,EAX
            jne .L_404716
.L_40465a:

            lea RSI,QWORD PTR [RIP+.L_4065a8]
            mov RDI,R15
            call .L_40d4b0
.L_404669:

            cmp BL,2
            ja .L_404324

            or QWORD PTR [R15+280],4096
            jmp .L_404324
.L_404682:

            call .L_40fb90

            jmp .L_404350
.L_40468c:

            lea RSI,QWORD PTR [RIP+.L_4064c6]
            mov RDI,R15
            mov QWORD PTR [RSP],RDX
            call .L_40d4b0

            mov RAX,QWORD PTR [R15+280]
            mov RDX,QWORD PTR [RSP]
            jmp .L_4045cd
.L_4046af:

            call .L_40e450

            jmp .L_404350
.L_4046b9:

            call .L_40f8f0

            jmp .L_404350
.L_4046c3:

            test AL,2
            jne .L_4045cd

            lea RSI,QWORD PTR [RIP+.L_414de0-59649]
            mov RDI,R15
            mov QWORD PTR [RSP],RDX
            call .L_40d4b0

            mov RAX,QWORD PTR [R15+280]
            mov RDX,QWORD PTR [RSP]
            jmp .L_4045cd
.L_4046ee:

            call .L_40eac0

            jmp .L_404350
.L_4046f8:

            call .L_4102b0

            jmp .L_404350
.L_404702:

            call .L_40ed10

            jmp .L_404350
.L_40470c:

            call .L_40efc0

            jmp .L_404350
.L_404716:

            lea RSI,QWORD PTR [RIP+.L_4064b7]
            mov RDI,R15
            call .L_40d4b0

            jmp .L_404669
.L_40472a:

            call .L_410170

            jmp .L_404350
.L_404734:

            call .L_410740

            jmp .L_404350
.L_40473e:

            call .L_40f320

            jmp .L_404350
.L_404748:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_404750:

            push R15
            push R14
            lea R14,QWORD PTR [RIP+.L_4064f8]
            push R13
            push R12
            mov R12,RSI
            push RBP
            push RBX
            xor ESI,ESI
            mov RBX,RDI
            lea RBP,QWORD PTR [RIP+.L_6191ac]
            sub RSP,8
.L_404774:

            lea R13,QWORD PTR [RBX+620]
            call .L_40da90

            jmp .L_4047a5
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404788:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40e1f0

            mov RAX,QWORD PTR [RBX+280]
.L_40479d:

            test AL,16
            jne .L_404842
.L_4047a5:

            mov RDI,RBX
            call .L_410990

            mov R15,RAX
            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RBP],EAX
            je .L_404858

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_6191a2],EAX
            je .L_404788

            mov RSI,R13
            mov RDI,RBX
            call .L_402010

            test EAX,EAX
            je .L_404878

            mov EAX,DWORD PTR [RIP+.L_6191a7]
            cmp DWORD PTR [RBX+620],EAX
            jne .L_404808

            test R15,R15
            jne .L_4049d0

            test BYTE PTR [RBX+281],32
            jne .L_4049d0

            nop
            nop
            nop
            nop
.L_404808:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_410740

            mov EAX,DWORD PTR [RIP+.L_61919d]
            cmp DWORD PTR [RBX+620],EAX
            mov RAX,QWORD PTR [RBX+280]
            jne .L_40479d

            or RAX,2
            test AL,16
            mov QWORD PTR [RBX+280],RAX
            je .L_4047a5
.L_404842:

            add RSP,8
.L_404846:

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
.L_404858:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40dda0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404878:

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_6191a7],EAX
            jne .L_4048c0

            test R15,R15
            jne .L_404894

            test BYTE PTR [RBX+281],32
            je .L_40489f
.L_404894:

            mov RSI,R14
            mov RDI,RBX
            call .L_40d4b0
.L_40489f:

            mov RSI,R15
            mov RDI,RBX
            call .L_40da90

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
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
.L_4048c0:

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_61919d],EAX
            je .L_4049e0

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_619198],EAX
            je .L_404a20

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_619193],EAX
            je .L_404a00

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_61918e],EAX
            je .L_404a3a

            mov EAX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_619189],EAX
            je .L_404a65

            mov EAX,DWORD PTR [RBX+620]
            cmp EAX,DWORD PTR [RIP+.L_61917a]
            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            je .L_404a7f

            cmp EAX,DWORD PTR [RIP+.L_619175]
            je .L_404a54

            cmp EAX,DWORD PTR [RIP+.L_619170]
            je .L_404a90

            cmp EAX,DWORD PTR [RIP+.L_61916b]
            je .L_404aa1

            cmp EAX,DWORD PTR [RIP+.L_619166]
            je .L_404ab2

            cmp EAX,DWORD PTR [RIP+.L_61915c]
            je .L_404ac3

            cmp EAX,DWORD PTR [RIP+.L_619184]
            je .L_404ad4

            cmp EAX,DWORD PTR [RIP+.L_619161]
            je .L_404ae5

            cmp EAX,DWORD PTR [RIP+.L_619157]
            je .L_404af6

            cmp EAX,DWORD PTR [RIP+.L_619152]
            je .L_404b07

            cmp EAX,DWORD PTR [RIP+.L_61914d]
            je .L_404b29

            cmp EAX,DWORD PTR [RIP+.L_619148]
            jne .L_404b18

            call .L_4104a0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4049d0:

            mov RSI,R14
            mov RDI,RBX
            call .L_40d4b0

            jmp .L_404808
.L_4049e0:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40df70

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404a00:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40e5e0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404a20:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40f570

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404a3a:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40e260

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404a54:

            call .L_40fb90

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404a65:

            mov RDX,R15
            mov RSI,R12
            mov RDI,RBX
            call .L_40f790

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404a7f:

            call .L_40fa40

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404a90:

            call .L_40ff40

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404aa1:

            call .L_40f8f0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404ab2:

            call .L_40e450

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404ac3:

            call .L_40eac0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404ad4:

            call .L_40ed10

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404ae5:

            call .L_40efc0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404af6:

            call .L_4102b0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404b07:

            call .L_410170

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404b18:

            call .L_410740

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404b29:

            call .L_40f320

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_40479d
.L_404b3a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_404b40:

            push RBX
            sub RSP,176
.L_404b48:

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
            call .L_40ce40

            mov QWORD PTR [RSP+72],RAX
            mov RAX,QWORD PTR [RSP+72]
            test RAX,RAX
            je .L_404e82

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
            jne .L_404e48

            mov RDI,QWORD PTR [RSP+72]
            mov RCX,QWORD PTR [RSP+24]
            mov RDX,QWORD PTR [RSP+56]
            mov RSI,QWORD PTR [RSP+16]
            call .L_40d160

            mov RDI,QWORD PTR [RSP+72]
            mov RCX,QWORD PTR [RSP+48]
            mov RDX,QWORD PTR [RSP+40]
            mov RSI,QWORD PTR [RSP+32]
            call .L_40d670

            cmp QWORD PTR [RSP+8],0
            je .L_404f10

            xor EDX,EDX
            mov ECX,49
            mov EDI,1
            lea RAX,QWORD PTR [RIP+.L_40650e]
            jmp .L_404c51
.L_404c40:

            add RDX,1
            test SIL,SIL
            je .L_404c90
.L_404c49:

            test CL,CL
            je .L_404c90

            movzx ECX,BYTE PTR [RAX+RDX*1]
.L_404c51:

            mov R10,QWORD PTR [RSP+8]
            mov ESI,ECX
            cmp BYTE PTR [R10+RDX*1],CL
            je .L_404c73

            mov RSI,QWORD PTR [RSP+72]
            or QWORD PTR [RSI+288],131072
            movzx ESI,BYTE PTR [R10+RDX*1]
.L_404c73:

            cmp SIL,46
            jne .L_404c40

            cmp EBX,1
            je .L_404c90

            add RDX,1
            test SIL,SIL
            mov EBX,EDI
            jne .L_404c49

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_404c90:

            mov RAX,QWORD PTR [RSP+72]
            test BYTE PTR [RAX+290],2
            je .L_404d47

            mov RAX,QWORD PTR [RSP+8]
            movzx EAX,BYTE PTR [RAX]
            cmp AL,BYTE PTR [RIP+.L_402c80]
            je .L_404ea8
.L_404cb6:

            lea RBX,QWORD PTR [RSP+80]
            mov R9,QWORD PTR [RSP+8]
            lea R8,QWORD PTR [RIP+.L_414de0-59352]
            mov ESI,80
            mov ECX,80
            mov EDX,1
            mov RDI,RBX
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RDI,QWORD PTR [RSP+72]
            mov RSI,RBX
            call .L_40d580
.L_404ced:

            lea RBX,QWORD PTR [RSP+80]
            lea R9,QWORD PTR [RIP+.L_402c80]
            lea R8,QWORD PTR [RIP+.L_4065d0]
            mov ECX,80
            mov EDX,1
            mov ESI,80
            mov RDI,RBX
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RDI,QWORD PTR [RSP+72]
            mov RSI,RBX
            call .L_40d580

            mov RAX,QWORD PTR [RSP+72]
            mov RDI,QWORD PTR [RSP+72]
            lea RSI,QWORD PTR [RIP+.L_406640]
            mov QWORD PTR [RAX+288],0
            call .L_40d4b0
.L_404d47:

            mov RAX,QWORD PTR [RSP+72]
            mov QWORD PTR [RAX+424],8192
            mov RAX,QWORD PTR [RSP+72]
            mov RDI,QWORD PTR [RSP+72]
            mov RBX,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RAX+424]
            call .L_40cfc0

            mov RDX,OFFSET .L_401650
            mov QWORD PTR [RBX+416],RAX
            lea RSI,QWORD PTR [RIP+.L_406515]
            mov RAX,QWORD PTR [RSP+72]
            mov QWORD PTR [RAX+368],RDX
            mov RAX,QWORD PTR [RSP+72]
            mov RDX,OFFSET .L_4016a0
            mov QWORD PTR [RAX+376],RDX
            mov RAX,QWORD PTR [RSP+72]
            mov RDX,QWORD PTR [RSP+72]
            mov RDI,QWORD PTR [RSP+72]
            mov QWORD PTR [RAX+384],RDX
            add RDI,304
            mov EDX,112
            call inflateInit_@PLT

            cmp EAX,-4
            je .L_404ed0

            jle .L_404ef0

            cmp EAX,-2
            je .L_404ed0

            test EAX,EAX
            jne .L_404f40
.L_404ded:

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
            call .L_406890

            mov RDI,QWORD PTR [RSP+72]
            call _setjmp@PLT

            test EAX,EAX
            jne .L_404f7f

            mov RAX,QWORD PTR [RSP+72]
            jmp .L_404e84
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404e48:

            mov RAX,QWORD PTR [RSP+72]
            mov RDI,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RAX+416]
            call .L_40d0a0

            mov RAX,QWORD PTR [RSP+72]
            mov RDX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+72]
            mov RSI,QWORD PTR [RSP+24]
            mov QWORD PTR [RAX+416],0
            call .L_40cf30
.L_404e82:

            xor EAX,EAX
.L_404e84:

            mov RBX,QWORD PTR [RSP+168]
            xor RBX,QWORD PTR FS:[40]
            jne .L_404f7a

            add RSP,176
.L_404ea2:

            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_404ea8:

            cmp AL,49
            je .L_404f60

            cmp AL,48
            jne .L_404d47

            mov RAX,QWORD PTR [RSP+8]
            cmp BYTE PTR [RAX+2],56
            jg .L_404d47

            jmp .L_404cb6
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_404ed0:

            mov RDI,QWORD PTR [RSP+72]
            lea RSI,QWORD PTR [RIP+.L_40651c]
            call .L_40d4b0

            jmp .L_404ded
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
.L_404ef0:

            cmp EAX,-6
            jne .L_404f40

            mov RDI,QWORD PTR [RSP+72]
            lea RSI,QWORD PTR [RIP+.L_40652e]
            call .L_40d4b0

            jmp .L_404ded
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404f10:

            mov RAX,QWORD PTR [RSP+72]
            or QWORD PTR [RAX+288],131072
            mov RAX,QWORD PTR [RSP+72]
            test BYTE PTR [RAX+290],2
            jne .L_404ced

            jmp .L_404d47
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404f40:

            mov RDI,QWORD PTR [RSP+72]
            lea RSI,QWORD PTR [RIP+.L_406541]
            call .L_40d4b0

            jmp .L_404ded
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
.L_404f60:

            mov RAX,QWORD PTR [RSP+8]
            movzx EBX,BYTE PTR [RIP+.L_402c82]
            cmp BYTE PTR [RAX+2],BL
            jne .L_404cb6

            jmp .L_404d47
.L_404f7a:

            call __stack_chk_fail@PLT
.L_404f7f:

            call abort@PLT
.L_404f84:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_404f90:

            sub RSP,16
            xor R9D,R9D
            xor R8D,R8D
            push 0
            call .L_404b40

            add RSP,24
            ret 
.L_404fa6:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_404fb0:

            push R12
            push RBP
            push RBX
            sub RSP,208
.L_404fbb:

            mov RBX,QWORD PTR [RDI]
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+200],RAX
            xor EAX,EAX
            test RBX,RBX
            je .L_4052b0

            test RSI,RSI
            mov RBP,RDI
            mov R12,RDX
            je .L_405019

            movzx ECX,BYTE PTR [RSI]
            cmp CL,BYTE PTR [RIP+.L_402c80]
            jne .L_405019

            test CL,CL
            mov EAX,1
            lea RDI,QWORD PTR [RIP+.L_402c80]
            jne .L_405010

            jmp .L_405033
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405008:

            add RAX,1
            test CL,CL
            je .L_405033
.L_405010:

            movzx ECX,BYTE PTR [RSI+RAX*1]
            cmp CL,BYTE PTR [RDI+RAX*1]
            je .L_405008
.L_405019:

            lea RSI,QWORD PTR [RIP+.L_406678]
            mov QWORD PTR [RBX+208],0
            mov RDI,RBX
            call .L_40d580
.L_405033:

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
            jbe .L_405290
.L_4050dd:

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
            mov RBP,OFFSET .L_401650
            mov QWORD PTR [RBX+368],RBP
            call .L_40cfc0

            mov QWORD PTR [RBX+416],RAX
            mov RAX,OFFSET .L_4016a0
            lea RDI,QWORD PTR [RBX+304]
            lea RSI,QWORD PTR [RIP+.L_406515]
            mov QWORD PTR [RBX+368],RBP
            mov QWORD PTR [RBX+384],RBX
            mov EDX,112
            mov QWORD PTR [RBX+376],RAX
            call inflateInit_@PLT

            cmp EAX,-2
            je .L_4052e8

            test EAX,EAX
            je .L_405244

            cmp EAX,-6
            je .L_4052d0

            lea RSI,QWORD PTR [RIP+.L_406541]
            mov RDI,RBX
            call .L_40d4b0
.L_405244:

            mov RAX,QWORD PTR [RBX+416]
            mov QWORD PTR [RBX+328],RAX
            mov RAX,QWORD PTR [RBX+424]
            mov DWORD PTR [RBX+336],EAX
            mov RAX,QWORD PTR [RSP+200]
            xor RAX,QWORD PTR FS:[40]
            jne .L_4052fc

            add RSP,208
.L_40527d:

            mov RDI,RBX
            xor EDX,EDX
            pop RBX
            pop RBP
            pop R12
            xor ESI,ESI
            jmp .L_406890
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_405290:

            mov RDI,RBX
            call .L_40cfb0

            mov EDI,1
            call .L_40cf20

            mov RBX,RAX
            mov QWORD PTR [RBP],RAX
            jmp .L_4050dd
          .byte 0x66
          .byte 0x90
.L_4052b0:

            mov RAX,QWORD PTR [RSP+200]
            xor RAX,QWORD PTR FS:[40]
            jne .L_4052fc

            add RSP,208
            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0x90
.L_4052d0:

            lea RSI,QWORD PTR [RIP+.L_40652e]
            mov RDI,RBX
            call .L_40d4b0

            jmp .L_405244
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4052e8:

            lea RSI,QWORD PTR [RIP+.L_40651c]
            mov RDI,RBX
            call .L_40d4b0

            jmp .L_405244
.L_4052fc:

            call __stack_chk_fail@PLT
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

            push R13
            push R12
            mov R12,RCX
            push RBP
            push RBX
            sub RSP,120
.L_40531d:

            mov RCX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+104],RCX
            xor ECX,ECX
            test RDI,RDI
            mov QWORD PTR [RSP+8],RDI
            je .L_40535f

            cmp RDX,1215
            mov RBP,RSI
            mov RBX,RDX
            jbe .L_405380

            cmp R12,463
            jbe .L_405380
.L_40534f:

            lea RDI,QWORD PTR [RSP+8]
            mov RDX,RBX
            mov RSI,RBP
            call .L_404fb0
.L_40535f:

            mov RAX,QWORD PTR [RSP+104]
            xor RAX,QWORD PTR FS:[40]
            jne .L_405462

            add RSP,120
.L_405377:

            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
          .byte 0x66
          .byte 0x90
.L_405380:

            test RBP,RBP
            mov QWORD PTR [RDI+208],0
            lea R13,QWORD PTR [RSP+16]
            je .L_4053c5

            lea R8,QWORD PTR [RIP+.L_414de0-59352]
            mov ESI,80
            mov RDI,R13
            mov R9,RBP
            mov ECX,80
            mov EDX,1
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RDI,QWORD PTR [RSP+8]
            mov RSI,R13
            call .L_40d580
.L_4053c5:

            lea R9,QWORD PTR [RIP+.L_402c80]
            lea R8,QWORD PTR [RIP+.L_4065d0]
            mov ECX,80
            mov EDX,1
            mov ESI,80
            mov RDI,R13
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RDI,QWORD PTR [RSP+8]
            mov RSI,R13
            call .L_40d580

            cmp RBX,1215
            ja .L_405436

            mov RDI,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RIP+.L_406708]
            mov QWORD PTR [RDI+200],0
            mov QWORD PTR [RDI+288],0
            call .L_40d4b0

            cmp R12,463
            ja .L_40534f
.L_405436:

            mov RDI,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RIP+.L_4066c0]
            mov QWORD PTR [RDI+200],0
            mov QWORD PTR [RDI+288],0
            call .L_40d4b0

            jmp .L_40534f
.L_405462:

            call __stack_chk_fail@PLT
.L_405467:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405470:

            lea RSI,QWORD PTR [RIP+.L_406554]
            xor ECX,ECX
            xor EDX,EDX
            jmp .L_405310
.L_405480:

            test RDI,RDI
            je .L_405490

            test RSI,RSI
            je .L_405490

            jmp .L_404300
          .byte 0x90
.L_405490:

            ret 
.L_405492:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4054a0:

            test RDI,RDI
            je .L_4054f0

            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,8
            test BYTE PTR [RDI+288],64
            je .L_4054e0

            lea RSI,QWORD PTR [RIP+.L_406750]
            call .L_40d580
.L_4054c6:

            add RSP,8
            mov RSI,RBP
            mov RDI,RBX
            pop RBX
            pop RBP
            jmp .L_4077d0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4054e0:

            call .L_411970

            jmp .L_4054c6
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4054f0:

            ret 
.L_4054f2:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405500:

            test RDI,RDI
            je .L_40550e

            test BYTE PTR [RDI+288],64
            je .L_405510
.L_40550e:

            ret 
.L_405510:

            jmp .L_411970
.L_405515:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405520:

            test RDI,RDI
            je .L_405940

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
.L_405540:

            test BYTE PTR [RDI+288],64
            je .L_4056d8

            cmp BYTE PTR [RBX+627],0
            je .L_405590
.L_405556:

            test BYTE PTR [RBX+296],2
            je .L_405590

            cmp BYTE PTR [RBX+628],6
            mov RCX,QWORD PTR [RBX+512]
            ja .L_405590

            movzx EAX,BYTE PTR [RBX+628]
            lea RDX,QWORD PTR [RIP+.L_4067f4]
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
.L_405586:

            and ECX,1
            je .L_405994

            nop
.L_405590:

            test BYTE PTR [RBX+280],4
            je .L_4056f0
.L_40559d:

            mov RAX,QWORD PTR [RBX+528]
            mov RDX,QWORD PTR [RBX+504]
            mov QWORD PTR [RBX+328],RAX
            movzx EAX,BYTE PTR [RBX+633]
            cmp AL,7
            ja .L_4056c0

            imul RAX,RDX
            add RAX,7
            shr RAX,3
            add EAX,1
.L_4055d0:

            mov DWORD PTR [RBX+336],EAX
            lea RBP,QWORD PTR [RBX+304]
            lea R15,QWORD PTR [RIP+.L_406579]
            lea R14,QWORD PTR [RIP+.L_414de0-59515]
            jmp .L_40562e
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4055f0:

            mov ESI,1
            mov RDI,RBP
            call inflate@PLT

            cmp EAX,1
            je .L_405720

            test EAX,EAX
            je .L_405620

            mov RSI,QWORD PTR [RBX+352]
            mov RDI,RBX
            test RSI,RSI
            cmove RSI,R14
            call .L_40d4b0
.L_405620:

            mov EAX,DWORD PTR [RBX+336]
            test EAX,EAX
            je .L_405757
.L_40562e:

            mov ESI,DWORD PTR [RBX+312]
            test ESI,ESI
            jne .L_4055f0
.L_405638:

            mov RAX,QWORD PTR [RBX+592]
            jmp .L_405673
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405648:

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            mov RDI,RBX
            call .L_410990

            mov ECX,DWORD PTR [RBX+620]
            cmp DWORD PTR [RIP+.L_6191a7],ECX
            mov QWORD PTR [RBX+592],RAX
            jne .L_405708
.L_405673:

            test RAX,RAX
            je .L_405648

            mov RCX,QWORD PTR [RBX+424]
            mov RSI,QWORD PTR [RBX+416]
            cmp RCX,RAX
            mov EDX,ECX
            mov DWORD PTR [RBX+312],ECX
            mov QWORD PTR [RBX+304],RSI
            jbe .L_4056a2

            mov EDX,EAX
            mov DWORD PTR [RBX+312],EAX
.L_4056a2:

            mov RDI,RBX
            call .L_40d9b0

            mov EAX,DWORD PTR [RBX+312]
            sub QWORD PTR [RBX+592],RAX
            jmp .L_4055f0
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4056c0:

            shr AL,3
            movzx EAX,AL
            imul EAX,EDX
            add EAX,1
            jmp .L_4055d0
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4056d8:

            call .L_411970

            cmp BYTE PTR [RBX+627],0
            je .L_405590

            jmp .L_405556
          .byte 0x90
.L_4056f0:

            lea RSI,QWORD PTR [RIP+.L_406798]
            mov RDI,RBX
            call .L_40d4b0

            jmp .L_40559d
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_405708:

            mov RSI,R15
            mov RDI,RBX
            call .L_40d4b0

            jmp .L_405638
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405720:

            mov ECX,DWORD PTR [RBX+336]
            test ECX,ECX
            jne .L_405738

            mov EDX,DWORD PTR [RBX+312]
            test EDX,EDX
            je .L_40592a
.L_405738:

            lea RSI,QWORD PTR [RIP+.L_40658f]
            mov RDI,RBX
            call .L_40d4b0
.L_405747:

            or QWORD PTR [RBX+280],8
            or QWORD PTR [RBX+288],32
.L_405757:

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
            jbe .L_4058e0

            shr AL,3
            movzx EAX,AL
            imul RAX,RDX
.L_4057ab:

            mov RDX,QWORD PTR [RBX+528]
            mov QWORD PTR [RBX+576],RAX
            mov RSI,QWORD PTR [RBX+520]
            movzx R8D,BYTE PTR [RDX]
            test R8B,R8B
            jne .L_405900
.L_4057cd:

            mov RAX,QWORD PTR [RBX+488]
            mov RDI,RBX
            lea RCX,QWORD PTR [RAX+1]
            call .L_40d140

            test BYTE PTR [RBX+1040],4
            je .L_4057f6

            cmp BYTE PTR [RBX+1056],64
            je .L_405942
.L_4057f6:

            cmp QWORD PTR [RBX+296],0
            jne .L_405809

            test BYTE PTR [RBX+290],64
            je .L_405878
.L_405809:

            mov RDI,RBX
            call .L_40ad00

            cmp BYTE PTR [RBX+627],0
            je .L_405878

            test BYTE PTR [RBX+296],2
            je .L_405878

            cmp BYTE PTR [RBX+628],5
            jbe .L_40595e
.L_405830:

            test R12,R12
            je .L_405851

            movzx EDX,BYTE PTR [RBX+628]
            lea RAX,QWORD PTR [RIP+.L_402bb0]
            mov RSI,R12
            mov RDI,RBX
            mov EDX,DWORD PTR [RAX+RDX*4]
            call .L_410a20
.L_405851:

            test R13,R13
            je .L_4058a2

            movzx EDX,BYTE PTR [RBX+628]
            lea RAX,QWORD PTR [RIP+.L_402bd0]
            mov RSI,R13
            mov RDI,RBX
            mov EDX,DWORD PTR [RAX+RDX*4]
            call .L_410a20

            jmp .L_4058a2
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_405878:

            test R13,R13
            je .L_40588d

            mov EDX,255
            mov RSI,R13
            mov RDI,RBX
            call .L_410a20
.L_40588d:

            test R12,R12
            je .L_4058a2

            mov EDX,255
            mov RSI,R12
            mov RDI,RBX
            call .L_410a20
.L_4058a2:

            mov RDI,RBX
            call .L_4115f0

            mov RAX,QWORD PTR [RBX+800]
            test RAX,RAX
            je .L_4058f1

            movzx EDX,BYTE PTR [RBX+628]
            mov RSI,QWORD PTR [RBX+512]
            add RSP,8
.L_4058c8:

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
.L_4058e0:

            imul RAX,RDX
            add RAX,7
            shr RAX,3
            jmp .L_4057ab
.L_4058f1:

            add RSP,8
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_405900:

            lea RCX,QWORD PTR [RSI+1]
            lea RSI,QWORD PTR [RBX+568]
            add RDX,1
            mov RDI,RBX
            call .L_4113e0

            mov RDX,QWORD PTR [RBX+528]
            mov RSI,QWORD PTR [RBX+520]
            jmp .L_4057cd
.L_40592a:

            cmp QWORD PTR [RBX+592],0
            je .L_405747

            jmp .L_405738
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_405940:

            ret 
.L_405942:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_40cab0

            jmp .L_4057f6
.L_40595e:

            mov RDI,RBX
            call .L_410df0

            jmp .L_405830
.L_40596b:

            and ECX,1
            jne .L_40597e

            cmp QWORD PTR [RBX+456],1
            ja .L_405590
.L_40597e:

            test R12,R12
            je .L_405994

            mov EDX,DWORD PTR [RIP+.L_414de0-74268]
            mov RSI,R12
            mov RDI,RBX
            call .L_410a20
.L_405994:

            add RSP,8
.L_405998:

            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_4115f0
.L_4059aa:

            mov RAX,RCX
            and EAX,3
            cmp RAX,2
            je .L_405590

            test R12,R12
            je .L_405994

            and ECX,2
            je .L_405994

            mov EDX,DWORD PTR [RIP+.L_414de0-74272]
            mov RSI,R12
            mov RDI,RBX
            call .L_410a20

            jmp .L_405994
.L_4059d7:

            and ECX,3
            jne .L_4059ea

            cmp QWORD PTR [RBX+456],2
            ja .L_405590
.L_4059ea:

            test R12,R12
            je .L_405994

            mov EDX,DWORD PTR [RIP+.L_414de0-74276]
            mov RSI,R12
            mov RDI,RBX
            call .L_410a20

            jmp .L_405994
.L_405a02:

            mov RAX,RCX
            and EAX,7
            cmp RAX,4
            je .L_405590

            test R12,R12
            je .L_405994

            and ECX,4
            je .L_405994

            mov EDX,DWORD PTR [RIP+.L_414de0-74280]
            mov RSI,R12
            mov RDI,RBX
            call .L_410a20

            jmp .L_405994
.L_405a3a:

            and ECX,7
            jne .L_405a4d

            cmp QWORD PTR [RBX+456],4
            ja .L_405590
.L_405a4d:

            test R12,R12
            je .L_405994

            mov EDX,DWORD PTR [RIP+.L_402bb4]
            mov RSI,R12
            mov RDI,RBX
            call .L_410a20

            jmp .L_405994
.L_405a6c:

            and ECX,7
            je .L_405590

            test R12,R12
            je .L_405994

            mov EDX,DWORD PTR [RIP+.L_402bb0]
            mov RSI,R12
            mov RDI,RBX
            call .L_410a20

            jmp .L_405994
.L_405a94:

            nop
            nop
            nop
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
.L_405ab7:

            call .L_403960

            mov RBP,QWORD PTR [R12+464]
            test EAX,EAX
            mov R15D,EAX
            mov QWORD PTR [R12+472],RBP
            jle .L_405b01

            nop
            nop
            nop
            nop
            nop
.L_405ad8:

            xor EBX,EBX
            test RBP,RBP
            je .L_405af8

            nop
.L_405ae0:

            mov RSI,QWORD PTR [R13+RBX*8]
            xor EDX,EDX
            mov RDI,R12
            add RBX,1
            call .L_405520

            cmp RBP,RBX
            jne .L_405ae0
.L_405af8:

            add R14D,1
            cmp R15D,R14D
            jne .L_405ad8
.L_405b01:

            add RSP,8
.L_405b05:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_405b10:

            test RDI,RDI
            je .L_405ba0

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
            je .L_405b68

            test RDX,RDX
            je .L_405b68

            test RCX,RCX
            je .L_405b5a

            xor EBX,EBX
            nop
            nop
.L_405b40:

            mov RDX,QWORD PTR [R14+RBX*8]
            mov RSI,QWORD PTR [R13+RBX*8]
            mov RDI,RBP
            add RBX,1
            call .L_405520

            cmp R12,RBX
            jne .L_405b40
.L_405b5a:

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
.L_405b68:

            test R13,R13
            je .L_405ba8

            test R12,R12
            je .L_405b5a

            xor EBX,EBX
            nop
            nop
            nop
            nop
.L_405b78:

            mov RSI,QWORD PTR [R13+RBX*8]
            xor EDX,EDX
            mov RDI,RBP
            add RBX,1
            call .L_405520

            cmp R12,RBX
            jne .L_405b78

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
.L_405ba0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405ba8:

            test R14,R14
            je .L_405b5a

            test R12,R12
            je .L_405b5a

            xor EBX,EBX
            nop
            nop
            nop
            nop
.L_405bb8:

            mov RDX,QWORD PTR [R14+RBX*8]
            xor ESI,ESI
            mov RDI,RBP
            add RBX,1
            call .L_405520

            cmp R12,RBX
            jne .L_405bb8

            jmp .L_405b5a
.L_405bd1:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405be0:

            test RDI,RDI
            je .L_405bf0

            jmp .L_405aa0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405bf0:

            ret 
.L_405bf2:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405c00:

            test RDI,RDI
            je .L_405c10

            jmp .L_404750
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405c10:

            ret 
.L_405c12:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405c20:

            push R12
            push RBP
            mov RBP,RDX
            push RBX
            mov RBX,RDI
            sub RSP,208
.L_405c31:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+200],RAX
            xor EAX,EAX
            test RSI,RSI
            je .L_405c4e

            call .L_401d90
.L_405c4e:

            test RBP,RBP
            je .L_405c5e

            mov RSI,RBP
            mov RDI,RBX
            call .L_401d90
.L_405c5e:

            mov RSI,QWORD PTR [RBX+416]
            mov RDI,RBX
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+1104]
            mov RDI,RBX
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+520]
            mov RDI,RBX
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+960]
            mov RDI,RBX
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+968]
            mov RDI,RBX
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+712]
            mov RDI,RBX
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+720]
            mov RDI,RBX
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+728]
            mov RDI,RBX
            call .L_40d0a0

            mov RAX,QWORD PTR [RBX+992]
            test AH,16
            jne .L_405fd0
.L_405cf5:

            mov RDX,RAX
            and DH,239
            test AH,32
            mov QWORD PTR [RBX+992],RDX
            jne .L_406010
.L_405d0b:

            mov RAX,RDX
            and AH,223
            and EDX,8
            mov QWORD PTR [RBX+992],RAX
            jne .L_405ff0
.L_405d21:

            mov RSI,QWORD PTR [RBX+736]
            and RAX,-9
            mov QWORD PTR [RBX+992],RAX
            test RSI,RSI
            je .L_405d84

            mov ECX,8
            sub ECX,DWORD PTR [RBX+696]
            mov EAX,1
            shl EAX,CL
            test EAX,EAX
            jle .L_405d7c

            sub EAX,1
            xor EBP,EBP
            lea R12,QWORD PTR [RAX*8+8]
            nop
            nop
            nop
            nop
            nop
.L_405d60:

            mov RSI,QWORD PTR [RSI+RBP*1]
            mov RDI,RBX
            add RBP,8
            call .L_40d0a0

            cmp RBP,R12
            mov RSI,QWORD PTR [RBX+736]
            jne .L_405d60
.L_405d7c:

            mov RDI,RBX
            call .L_40d0a0
.L_405d84:

            mov RSI,QWORD PTR [RBX+744]
            test RSI,RSI
            je .L_405ddc

            mov ECX,8
            sub ECX,DWORD PTR [RBX+696]
            mov EAX,1
            shl EAX,CL
            test EAX,EAX
            jle .L_405dd4

            sub EAX,1
            xor EBP,EBP
            lea R12,QWORD PTR [RAX*8+8]
            nop
            nop
            nop
            nop
            nop
.L_405db8:

            mov RSI,QWORD PTR [RSI+RBP*1]
            mov RDI,RBX
            add RBP,8
            call .L_40d0a0

            cmp R12,RBP
            mov RSI,QWORD PTR [RBX+744]
            jne .L_405db8
.L_405dd4:

            mov RDI,RBX
            call .L_40d0a0
.L_405ddc:

            mov RSI,QWORD PTR [RBX+752]
            test RSI,RSI
            je .L_405e34

            mov ECX,8
            sub ECX,DWORD PTR [RBX+696]
            mov EAX,1
            shl EAX,CL
            test EAX,EAX
            jle .L_405e2c

            sub EAX,1
            xor EBP,EBP
            lea R12,QWORD PTR [RAX*8+8]
            nop
            nop
            nop
            nop
            nop
.L_405e10:

            mov RSI,QWORD PTR [RSI+RBP*1]
            mov RDI,RBX
            add RBP,8
            call .L_40d0a0

            cmp R12,RBP
            mov RSI,QWORD PTR [RBX+752]
            jne .L_405e10
.L_405e2c:

            mov RDI,RBX
            call .L_40d0a0
.L_405e34:

            mov RSI,QWORD PTR [RBX+984]
            mov RDI,RBX
            call .L_40d0a0

            lea RDI,QWORD PTR [RBX+304]
            call inflateEnd@PLT

            mov RSI,QWORD PTR [RBX+848]
            mov RDI,RBX
            call .L_40d0a0

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
            jne .L_40602b

            add RSP,208
.L_405fc6:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405fd0:

            mov RSI,QWORD PTR [RBX+608]
            mov RDI,RBX
            call .L_4016a0

            mov RAX,QWORD PTR [RBX+992]
            jmp .L_405cf5
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405ff0:

            mov RSI,QWORD PTR [RBX+976]
            mov RDI,RBX
            call .L_40d0a0

            mov RAX,QWORD PTR [RBX+992]
            jmp .L_405d21
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406010:

            mov RSI,QWORD PTR [RBX+776]
            mov RDI,RBX
            call .L_40d0a0

            mov RDX,QWORD PTR [RBX+992]
            jmp .L_405d0b
.L_40602b:

            call __stack_chk_fail@PLT
.L_406030:

            test RDI,RDI
            je .L_406130

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,24
.L_406047:

            mov RBP,QWORD PTR [RDI]
            test RBP,RBP
            je .L_40611a

            test RSI,RSI
            mov R12,RDX
            mov QWORD PTR [RSP],RDI
            mov R14,QWORD PTR [RBP+1096]
            mov R15,QWORD PTR [RBP+1080]
            je .L_406138

            test RDX,RDX
            mov RBX,QWORD PTR [RSI]
            mov QWORD PTR [RSP+8],RSI
            je .L_406150

            mov R13,QWORD PTR [RDX]
            mov RSI,RBX
            mov RDI,RBP
            mov RDX,R13
            call .L_405c20

            test RBX,RBX
            mov RAX,QWORD PTR [RSP+8]
            je .L_4060d1
.L_40609d:

            mov ECX,4294967295
            mov EDX,16384
            mov RSI,RBX
            mov RDI,RBP
            mov QWORD PTR [RSP+8],RAX
            call .L_401870

            mov RDX,R15
            mov RSI,R14
            mov RDI,RBX
            call .L_40cf30

            mov RAX,QWORD PTR [RSP+8]
            mov QWORD PTR [RAX],0
.L_4060d1:

            test R13,R13
            je .L_406101

            mov ECX,4294967295
            mov EDX,16384
            mov RSI,R13
            mov RDI,RBP
            call .L_401870

            mov RDX,R15
            mov RSI,R14
            mov RDI,R13
            call .L_40cf30

            mov QWORD PTR [R12],0
.L_406101:

            mov RDX,R15
            mov RSI,R14
            mov RDI,RBP
            call .L_40cf30

            mov RAX,QWORD PTR [RSP]
            mov QWORD PTR [RAX],0
.L_40611a:

            add RSP,24
.L_40611e:

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
.L_406130:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406138:

            test RDX,RDX
            je .L_406170

            mov R13,QWORD PTR [RDX]
            xor ESI,ESI
            mov RDI,RBP
            mov RDX,R13
            call .L_405c20

            jmp .L_4060d1
          .byte 0x90
.L_406150:

            xor EDX,EDX
            mov RSI,RBX
            mov RDI,RBP
            call .L_405c20

            xor R13D,R13D
            test RBX,RBX
            mov RAX,QWORD PTR [RSP+8]
            jne .L_40609d

            jmp .L_406101
.L_406170:

            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBP
            call .L_405c20

            jmp .L_406101
.L_40617e:

            nop
            nop
.L_406180:

            test RDI,RDI
            je .L_40618c

            mov QWORD PTR [RDI+800],RSI
.L_40618c:

            ret 
.L_40618e:

            nop
            nop
.L_406190:

            test RDI,RDI
            je .L_406410

            push R13
            push R12
            mov R13D,EDX
            push RBP
            push RBX
            mov R12D,EDX
            mov RBX,RSI
            mov RBP,RDI
            sub RSP,8
.L_4061af:

            and R13D,1024
            jne .L_406378

            test RBX,RBX
            jne .L_406350
.L_4061c5:

            movabs RAX,2305843009213693951
            cmp QWORD PTR [RBX+8],RAX
            ja .L_406330
.L_4061d9:

            test R12B,1
            jne .L_406318
.L_4061e3:

            test R12B,2
            jne .L_406300
.L_4061ed:

            test R12B,8
            jne .L_4062e0
.L_4061f7:

            test R12B,16
            je .L_40621d
.L_4061fd:

            cmp BYTE PTR [RBP+631],7
            jbe .L_406215

            cmp BYTE PTR [RBP+630],3
            je .L_406215

            test BYTE PTR [RBX+16],16
            je .L_40621d
.L_406215:

            mov RDI,RBP
            call .L_407520
.L_40621d:

            test R12B,32
            jne .L_4062c8

            test R12B,64
            je .L_406237
.L_40622d:

            test BYTE PTR [RBX+16],2
            jne .L_406418
.L_406237:

            test R12B,128
            jne .L_4063f0
.L_406241:

            test R12D,256
            jne .L_4063d8
.L_40624e:

            test R12D,512
            jne .L_4063c0
.L_40625b:

            test R13D,R13D
            jne .L_4063a0
.L_406264:

            and R12D,8192
            jne .L_406390
.L_406271:

            mov RSI,RBX
            mov RDI,RBP
            call .L_4054a0

            xor ECX,ECX
            mov RSI,RBX
            mov EDX,64
            mov RDI,RBP
            call .L_401870

            mov RSI,QWORD PTR [RBX+384]
            test RSI,RSI
            je .L_406430
.L_40629e:

            mov RDI,RBP
            call .L_405aa0

            or QWORD PTR [RBX+16],32768
            add RSP,8
.L_4062b2:

            mov RSI,RBX
            mov RDI,RBP
            pop RBX
            pop RBP
            pop R12
            pop R13
            jmp .L_404750
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4062c8:

            mov RDI,RBP
            call .L_403a50

            test R12B,64
            je .L_406237

            jmp .L_40622d
          .byte 0x90
.L_4062e0:

            mov RDI,RBP
            call .L_403910

            test R12B,16
            je .L_40621d

            jmp .L_4061fd
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406300:

            mov RDI,RBP
            call .L_406ba0

            test R12B,8
            je .L_4061f7

            jmp .L_4062e0
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_406318:

            mov RDI,RBP
            call .L_406b80

            test R12B,2
            je .L_4061ed

            jmp .L_406300
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_406330:

            lea RSI,QWORD PTR [RIP+.L_4067c0]
            mov RDI,RBP
            call .L_40d4b0

            test R12B,1
            je .L_4061e3

            jmp .L_406318
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406350:

            mov RSI,RBX
            mov RDI,RBP
            call .L_404300

            movabs RAX,2305843009213693951
            cmp QWORD PTR [RBX+8],RAX
            jbe .L_4061d9

            jmp .L_406330
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406378:

            call .L_403a30

            test RBX,RBX
            je .L_4061c5

            jmp .L_406350
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406390:

            mov RDI,RBP
            call .L_4075b0

            jmp .L_406271
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4063a0:

            mov RDI,RBP
            call .L_403a30

            and R12D,8192
            je .L_406271

            jmp .L_406390
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4063c0:

            mov RDI,RBP
            call .L_4038d0

            test R13D,R13D
            je .L_406264

            jmp .L_4063a0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4063d8:

            mov RDI,RBP
            call .L_403a10

            test R12D,512
            je .L_40625b

            jmp .L_4063c0
          .byte 0x90
.L_4063f0:

            mov RDI,RBP
            call .L_4038c0

            test R12D,256
            je .L_40624e

            jmp .L_4063d8
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406410:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406418:

            lea RSI,QWORD PTR [RBX+96]
            mov RDI,RBP
            call .L_403930

            test R12B,128
            je .L_406241

            jmp .L_4063f0
.L_406430:

            mov RAX,QWORD PTR [RBX+8]
            mov RDI,RBP
            xor R12D,R12D
            lea RSI,QWORD PTR [RAX*8]
            call .L_40cfc0

            mov RCX,QWORD PTR [RBX+8]
            xor ESI,ESI
            mov QWORD PTR [RBX+384],RAX
            mov RDI,RAX
            lea RDX,QWORD PTR [RCX*8]
            call memset@PLT

            mov EAX,DWORD PTR [RBX+8]
            or QWORD PTR [RBX+272],64
            test EAX,EAX
            jle .L_4064ab

            nop
            nop
            nop
            nop
            nop
.L_406478:

            mov RSI,RBX
            mov RDI,RBP
            call .L_402cc0

            mov RDX,QWORD PTR [RBX+384]
            mov RSI,RAX
            mov RDI,RBP
            lea R13,QWORD PTR [RDX+R12*8]
            call .L_40cfc0

            mov QWORD PTR [R13],RAX
            lea EAX,DWORD PTR [R12+1]
            add R12,1
            cmp EAX,DWORD PTR [RBX+8]
            jl .L_406478
.L_4064ab:

            mov RSI,QWORD PTR [RBX+384]
            jmp .L_40629e
.L_4064b7:
          .string "Not a PNG file"
.L_4064c6:

            imul R14,QWORD PTR [R11+115],543649385
            push RDX
            and BYTE PTR [RDX+101],AH
            outsw DX,WORD PTR [RSI]
            jb .L_40653e

            and BYTE PTR [RCX+68],CL
            push R12
            add BYTE PTR [RBP+105],CL
            jae .L_406556

            imul EBP,DWORD PTR [RSI+103],1414287392
          .byte 0x45
          .byte 0x20
          .byte 0x62
          .byte 0x65
          .byte 0x66
          .byte 0x6f
          .byte 0x72
          .byte 0x65
          .byte 0x20
          .byte 0x49
          .byte 0x44
          .byte 0x41
          .byte 0x54
          .byte 0x0
.L_4064f8:
          .string "Too many IDAT\'s found"
.L_40650e:
          .byte 0x31
          .byte 0x2e
          .byte 0x32
          .byte 0x2e
          .byte 0x35
          .byte 0x36
          .byte 0x0
.L_406515:
          .string "1.2.11"
.L_40651c:
          .string "zlib memory error"
.L_40652e:
          .byte 0x7a
          .byte 0x6c
          .byte 0x69
          .byte 0x62
          .byte 0x20
          .byte 0x76
          .byte 0x65
          .byte 0x72
          .byte 0x73
          .byte 0x69
          .byte 0x6f
          .byte 0x6e
          .byte 0x20
          .byte 0x65
          .byte 0x72
          .byte 0x72
.L_40653e:

            outsd DX,DWORD PTR [RSI]
            jb .L_406541
.L_406541:

            push RBP
            outsb DX,BYTE PTR [RSI]
            imul EBP,DWORD PTR [RSI+111],119
            outsb DX,BYTE PTR [RSI]
            and BYTE PTR [RDX+108],BH
            imul ESP,DWORD PTR [RDX+32],1869771365
            jb .L_406554
.L_406554:

            xor DWORD PTR [RSI],EBP
.L_406556:

            xor BYTE PTR [RSI],CH
            and BYTE PTR SS:[RDI+114],CH
            and BYTE PTR [RBP+97],AH
            jb .L_4065cd

            imul ESP,DWORD PTR [RBP+114],1667580928
            outsd DX,DWORD PTR [RSI]
            insd DWORD PTR [RDI],DX
            jo .L_4065de
          .byte 0x65
          .byte 0x73
          .byte 0x73
          .byte 0x69
          .byte 0x6f
          .byte 0x6e
          .byte 0x20
          .byte 0x65
          .byte 0x72
          .byte 0x72
          .byte 0x6f
          .byte 0x72
          .byte 0x0
.L_406579:
          .string "Not enough image data"
.L_40658f:
          .string "Extra compressed data"
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4065a8:
          .byte 0x50
          .byte 0x4e
          .byte 0x47
          .byte 0x20
          .byte 0x66
          .byte 0x69
          .byte 0x6c
          .byte 0x65
          .byte 0x20
          .byte 0x63
          .byte 0x6f
          .byte 0x72
          .byte 0x72
          .byte 0x75
          .byte 0x70
          .byte 0x74
          .byte 0x65
          .byte 0x64
          .byte 0x20
          .byte 0x62
          .byte 0x79
          .byte 0x20
          .byte 0x41
          .byte 0x53
          .byte 0x43
          .byte 0x49
          .byte 0x49
          .byte 0x20
          .byte 0x63
          .byte 0x6f
          .byte 0x6e
          .byte 0x76
          .byte 0x65
          .byte 0x72
          .byte 0x73
          .byte 0x69
          .byte 0x6f
.L_4065cd:

            outsb DX,BYTE PTR [RSI]
            add BYTE PTR [RAX],AL
.L_4065d0:
          .byte 0x41
          .byte 0x70
          .byte 0x70
          .byte 0x6c
          .byte 0x69
          .byte 0x63
          .byte 0x61
          .byte 0x74
          .byte 0x69
          .byte 0x6f
          .byte 0x6e
          .byte 0x20
          .byte 0x20
          .byte 0x69
.L_4065de:

            jae .L_406600
          .byte 0x20
          .byte 0x72
          .byte 0x75
          .byte 0x6e
          .byte 0x6e
          .byte 0x69
          .byte 0x6e
          .byte 0x67
          .byte 0x20
          .byte 0x77
          .byte 0x69
          .byte 0x74
          .byte 0x68
          .byte 0x20
          .byte 0x70
          .byte 0x6e
          .byte 0x67
          .byte 0x2e
          .byte 0x63
          .byte 0x20
          .byte 0x66
          .byte 0x72
          .byte 0x6f
          .byte 0x6d
          .byte 0x20
          .byte 0x6c
          .byte 0x69
          .byte 0x62
          .byte 0x70
          .byte 0x6e
          .byte 0x67
          .byte 0x2d
.L_406600:

            and EAX,1932538414
            add BYTE PTR [RAX],AL
            add BYTE PTR [RCX+112],AL
            jo .L_406678
          .byte 0x69
          .byte 0x63
          .byte 0x61
          .byte 0x74
          .byte 0x69
          .byte 0x6f
          .byte 0x6e
          .byte 0x20
          .byte 0x77
          .byte 0x61
          .byte 0x73
          .byte 0x20
          .byte 0x63
          .byte 0x6f
          .byte 0x6d
          .byte 0x70
          .byte 0x69
          .byte 0x6c
          .byte 0x65
          .byte 0x64
          .byte 0x20
          .byte 0x77
          .byte 0x69
          .byte 0x74
          .byte 0x68
          .byte 0x20
          .byte 0x70
          .byte 0x6e
          .byte 0x67
          .byte 0x2e
          .byte 0x68
          .byte 0x20
          .byte 0x66
          .byte 0x72
          .byte 0x6f
          .byte 0x6d
          .byte 0x20
          .byte 0x6c
          .byte 0x69
          .byte 0x62
          .byte 0x70
          .byte 0x6e
          .byte 0x67
          .byte 0x2d
          .byte 0x25
          .byte 0x2e
          .byte 0x32
          .byte 0x30
          .byte 0x73
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406640:
          .string "Incompatible libpng version in application and library"
          .zero 1
.L_406678:

            jo .L_4066eb
          .byte 0x6c
          .byte 0x69
          .byte 0x63
          .byte 0x61
          .byte 0x74
          .byte 0x69
          .byte 0x6f
          .byte 0x6e
          .byte 0x20
          .byte 0x75
          .byte 0x73
          .byte 0x65
          .byte 0x73
          .byte 0x20
          .byte 0x64
          .byte 0x65
          .byte 0x70
          .byte 0x72
          .byte 0x65
          .byte 0x63
          .byte 0x61
          .byte 0x74
          .byte 0x65
          .byte 0x64
          .byte 0x20
          .byte 0x70
          .byte 0x6e
          .byte 0x67
          .byte 0x5f
          .byte 0x72
          .byte 0x65
          .byte 0x61
          .byte 0x64
          .byte 0x5f
          .byte 0x69
          .byte 0x6e
          .byte 0x69
          .byte 0x74
          .byte 0x28
          .byte 0x29
          .byte 0x20
          .byte 0x61
          .byte 0x6e
          .byte 0x64
          .byte 0x20
          .byte 0x73
          .byte 0x68
          .byte 0x6f
          .byte 0x75
          .byte 0x6c
          .byte 0x64
          .byte 0x20
          .byte 0x62
          .byte 0x65
          .byte 0x20
          .byte 0x72
          .byte 0x65
          .byte 0x63
          .byte 0x6f
          .byte 0x6d
          .byte 0x70
          .byte 0x69
          .byte 0x6c
          .byte 0x65
          .byte 0x64
          .byte 0x2e
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4066c0:
          .byte 0x54
          .byte 0x68
          .byte 0x65
          .byte 0x20
          .byte 0x69
          .byte 0x6e
          .byte 0x66
          .byte 0x6f
          .byte 0x20
          .byte 0x73
          .byte 0x74
          .byte 0x72
          .byte 0x75
          .byte 0x63
          .byte 0x74
          .byte 0x20
          .byte 0x61
          .byte 0x6c
          .byte 0x6c
          .byte 0x6f
          .byte 0x63
          .byte 0x61
          .byte 0x74
          .byte 0x65
          .byte 0x64
          .byte 0x20
          .byte 0x62
          .byte 0x79
          .byte 0x20
          .byte 0x61
          .byte 0x70
          .byte 0x70
          .byte 0x6c
          .byte 0x69
          .byte 0x63
          .byte 0x61
          .byte 0x74
          .byte 0x69
          .byte 0x6f
          .byte 0x6e
          .byte 0x20
          .byte 0x66
          .byte 0x6f
.L_4066eb:

            jb .L_40670d
          .byte 0x72
          .byte 0x65
          .byte 0x61
          .byte 0x64
          .byte 0x69
          .byte 0x6e
          .byte 0x67
          .byte 0x20
          .byte 0x69
          .byte 0x73
          .byte 0x20
          .byte 0x74
          .byte 0x6f
          .byte 0x6f
          .byte 0x20
          .byte 0x73
          .byte 0x6d
          .byte 0x61
          .byte 0x6c
          .byte 0x6c
          .byte 0x2e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406708:
          .byte 0x54
          .byte 0x68
          .byte 0x65
          .byte 0x20
          .byte 0x70
.L_40670d:

            outsb DX,BYTE PTR [RSI]
            and BYTE PTR [EBX+116],DH
          .byte 0x72
          .byte 0x75
          .byte 0x63
          .byte 0x74
          .byte 0x20
          .byte 0x61
          .byte 0x6c
          .byte 0x6c
          .byte 0x6f
          .byte 0x63
          .byte 0x61
          .byte 0x74
          .byte 0x65
          .byte 0x64
          .byte 0x20
          .byte 0x62
          .byte 0x79
          .byte 0x20
          .byte 0x74
          .byte 0x68
          .byte 0x65
          .byte 0x20
          .byte 0x61
          .byte 0x70
          .byte 0x70
          .byte 0x6c
          .byte 0x69
          .byte 0x63
          .byte 0x61
          .byte 0x74
          .byte 0x69
          .byte 0x6f
          .byte 0x6e
          .byte 0x20
          .byte 0x66
          .byte 0x6f
          .byte 0x72
          .byte 0x20
          .byte 0x72
          .byte 0x65
          .byte 0x61
          .byte 0x64
          .byte 0x69
          .byte 0x6e
          .byte 0x67
          .byte 0x20
          .byte 0x69
          .byte 0x73
          .byte 0x20
          .byte 0x74
          .byte 0x6f
          .byte 0x6f
          .byte 0x20
          .byte 0x73
          .byte 0x6d
          .byte 0x61
          .byte 0x6c
          .byte 0x6c
          .byte 0x2e
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406750:
          .string "Ignoring extra png_read_update_info() call; row buffer not reallocated"
          .zero 1
.L_406798:
          .string "Invalid attempt to read row data"
          .zero 7
.L_4067c0:
          .string "Image is too high to process with png_read_png()"
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4067f4:
          .long .L_405a6c-.L_4067f4
          .long .L_405a3a-.L_4067f4
          .long .L_405a02-.L_4067f4
          .long .L_4059d7-.L_4067f4
          .long .L_4059aa-.L_4067f4
          .long .L_40596b-.L_4067f4
          .long .L_405586-.L_4067f4
.L_406810:

            test RDI,RDI
            je .L_406860

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
            je .L_406850

            add RSP,8
            mov RDI,RBX
            lea RSI,QWORD PTR [RIP+.L_4068fa]
            pop RBX
            pop RBP
            jmp .L_40d4b0

            nop
.L_406850:

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
.L_406860:

            ret 
.L_406862:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406870:

            mov RAX,QWORD PTR [RDI+232]
            test RAX,RAX
            je .L_406880

            jmp RAX
          .byte 0x66
          .byte 0x90
.L_406880:

            lea RSI,QWORD PTR [RIP+.L_406905]
            jmp .L_40d4b0
.L_40688c:

            nop
            nop
            nop
            nop
.L_406890:

            test RDI,RDI
            je .L_4068f8

            lea RAX,QWORD PTR [RIP+.L_406810]
            test RDX,RDX
            push RBX

            mov RBX,RDI
            mov QWORD PTR [RDI+240],RSI
            cmove RDX,RAX
            cmp QWORD PTR [RDI+224],0
            mov QWORD PTR [RDI+232],RDX
            je .L_4068e5

            lea RSI,QWORD PTR [RIP+.L_406920]
            mov QWORD PTR [RDI+224],0
            call .L_40d580

            lea RSI,QWORD PTR [RIP+.L_414de0-58488]
            mov RDI,RBX
            call .L_40d580
.L_4068e5:

            mov QWORD PTR [RBX+672],0
            pop RBX

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4068f8:

            ret 
.L_4068fa:
          .string "Read Error"
.L_406905:
          .string "Call to NULL read function"
.L_406920:

            je .L_40694a

            jae .L_406945
          .byte 0x61
          .byte 0x6e
          .byte 0x20
          .byte 0x65
          .byte 0x72
          .byte 0x72
          .byte 0x6f
          .byte 0x72
          .byte 0x20
          .byte 0x74
          .byte 0x6f
          .byte 0x20
          .byte 0x73
          .byte 0x65
          .byte 0x74
          .byte 0x20
          .byte 0x62
          .byte 0x6f
          .byte 0x74
          .byte 0x68
          .byte 0x20
          .byte 0x72
          .byte 0x65
          .byte 0x61
          .byte 0x64
          .byte 0x5f
          .byte 0x64
          .byte 0x61
          .byte 0x74
          .byte 0x61
          .byte 0x5f
          .byte 0x66
.L_406945:

            outsb DX,BYTE PTR [RSI]
            and BYTE PTR [RCX+110],AH
            and BYTE PTR FS:[RDI+114],DH
            imul ESI,DWORD PTR [RBP+RIZ*2+95],1635017060
            pop RDI
            outsb DX,BYTE PTR [RSI]
            and BYTE PTR [RCX+110],CH
            and BYTE PTR [RAX+RBP*2+101],DH
            and BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RBX+97],DH
            insd DWORD PTR [RDI],DX
            and BYTE PTR GS:[RBX+116],DH
            jb .L_4069e6
# WARNING: found overlapping blocks at address 66fa
.set .L_40694a, . - 39

          .byte 0x63
          .byte 0x74
          .byte 0x75
          .byte 0x72
          .byte 0x65
          .byte 0x2e
          .byte 0x20
          .byte 0x20
          .byte 0x52
          .byte 0x65
          .byte 0x73
          .byte 0x65
          .byte 0x74
          .byte 0x74
          .byte 0x69
          .byte 0x6e
          .byte 0x67
          .byte 0x20
          .byte 0x77
          .byte 0x72
          .byte 0x69
          .byte 0x74
          .byte 0x65
          .byte 0x5f
          .byte 0x64
          .byte 0x61
          .byte 0x74
          .byte 0x61
          .byte 0x5f
          .byte 0x66
          .byte 0x6e
          .byte 0x20
          .byte 0x74
          .byte 0x6f
          .byte 0x20
          .byte 0x4e
          .byte 0x55
          .byte 0x4c
          .byte 0x4c
          .byte 0x2e
          .byte 0x0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4069a0:

            movzx EDX,BYTE PTR [RDI+18]
            mov RAX,RDX
            imul RDX,QWORD PTR [RDI]
            test RDX,RDX
            je .L_4069d3

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
            nop
.L_4069b8:

            movzx ECX,BYTE PTR [RSI+RAX*2]
            mov BYTE PTR [RSI+RAX*1],CL
            add RAX,1
            cmp RDX,RAX
            jne .L_4069b8

            movzx EDX,BYTE PTR [RDI+18]
            mov RAX,RDX
            imul RDX,QWORD PTR [RDI]
.L_4069d3:

            shl EAX,3
            mov BYTE PTR [RDI+17],8
            mov QWORD PTR [RDI+8],RDX
            mov BYTE PTR [RDI+19],AL
            ret 
.L_4069e2:

            nop
            nop
            nop
            nop
.L_4069e6:

            nop
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

            test RDI,RDI
            je .L_406a88

            push RBX
            mov RBX,RDI
            sub RSP,16
            cmp ESI,3
            je .L_406af0

            jle .L_406a40

            cmp ESI,4
            je .L_406ae0

            cmp ESI,5
            jne .L_406a59
.L_406a1a:

            cmp EDX,3
            je .L_406a69
.L_406a1f:

            jle .L_406a90

            cmp EDX,4
            je .L_406ac8

            cmp EDX,5
            jne .L_406ab0

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
.L_406a40:

            cmp ESI,2
            jne .L_406a59

            lea RSI,QWORD PTR [RIP+.L_40cb80]
            mov DWORD PTR [RSP+12],EDX
            call .L_40d580

            mov EDX,DWORD PTR [RSP+12]
.L_406a59:

            and QWORD PTR [RBX+288],-3073
            cmp EDX,3
            jne .L_406a1f
.L_406a69:

            mov RAX,QWORD PTR [RBX+288]
            and AH,252
            or AH,1
            mov QWORD PTR [RBX+288],RAX
            add RSP,16
.L_406a81:

            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406a88:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406a90:

            cmp EDX,1
            jne .L_406ab0

            mov RAX,QWORD PTR [RBX+288]
            and AH,252
            or AH,2
            mov QWORD PTR [RBX+288],RAX
            add RSP,16
            pop RBX
            ret 
          .byte 0x90
.L_406ab0:

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
.L_406ac8:

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
.L_406ae0:

            or QWORD PTR [RDI+288],3072
            jmp .L_406a1a
.L_406af0:

            mov RAX,QWORD PTR [RDI+288]
            and AH,243
            or AH,4
            mov QWORD PTR [RDI+288],RAX
            jmp .L_406a1a
.L_406b09:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406b10:

            test RDI,RDI
            je .L_406b6b

            test EDX,EDX
            je .L_406b70

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
.L_406b6b:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_406b70:

            lea RSI,QWORD PTR [RIP+.L_40cbb0]
            jmp .L_40d580
.L_406b7c:

            nop
            nop
            nop
            nop
.L_406b80:

            test RDI,RDI
            je .L_406b90

            or QWORD PTR [RDI+296],1024
.L_406b90:

            ret 
.L_406b92:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406ba0:

            test RDI,RDI
            je .L_406bb0

            or QWORD PTR [RDI+288],4194304
.L_406bb0:

            ret 
.L_406bb2:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406bc0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,88
.L_406bce:

            test RDI,RDI
            mov QWORD PTR [RSP+8],RSI
            mov DWORD PTR [RSP+32],EDX
            mov DWORD PTR [RSP+36],R9D
            je .L_406d15

            or QWORD PTR [RDI+296],64
            test R9D,R9D
            mov R15,RDI
            mov EBX,ECX
            mov RBP,R8
            je .L_406dff
.L_406bfe:

            mov R14D,DWORD PTR [RSP+32]
            cmp R14D,EBX
            jle .L_406ce6

            movsxd R12,R14D
            test RBP,RBP
            mov RDI,R15
            mov RSI,R12
            je .L_406fa5

            call .L_40cfc0

            test R14D,R14D
            mov QWORD PTR [R15+1112],RAX
            jle .L_406d24

            mov ESI,DWORD PTR [RSP+32]
            xor ECX,ECX
            sub ESI,1
            mov RDX,RSI
            add RSI,1
.L_406c43:

            mov BYTE PTR [RAX+RCX*1],CL
            add RCX,1
            cmp RSI,RCX
            je .L_406d2b

            mov RAX,QWORD PTR [R15+1112]
            jmp .L_406c43
.L_406c5c:

            test EBX,EBX
            jle .L_406c95

            lea R9D,DWORD PTR [RBX-1]
            mov RSI,QWORD PTR [RSP+8]
            mov ECX,DWORD PTR [RSP+32]
            xor R8D,R8D
            add R9,1
.L_406c74:

            mov RDI,QWORD PTR [R15+1112]
            movzx EAX,BYTE PTR [RDI+R8*1]
            cmp EAX,EBX
            jge .L_4071de
.L_406c88:

            add R8,1
            add RSI,3
            cmp R9,R8
            jne .L_406c74
.L_406c95:

            mov EBP,DWORD PTR [RSP+32]
            xor R13D,R13D
            lea R14,QWORD PTR [RDX+1]
            mov R10,QWORD PTR [RSP+8]
            test EBP,EBP
            jle .L_406cc8
.L_406ca9:

            mov R9,QWORD PTR [R15+968]
            add R9,R13
            movzx EDX,BYTE PTR [R9]
            cmp EDX,EBX
            jge .L_40724a
.L_406cbf:

            add R13,1
            cmp R14,R13
            jne .L_406ca9
.L_406cc8:

            mov RSI,QWORD PTR [R15+1112]
.L_406ccf:

            mov RDI,R15
            call .L_40d0a0

            mov QWORD PTR [R15+1112],0
            mov DWORD PTR [RSP+32],EBX
.L_406ce6:

            cmp QWORD PTR [R15+608],0
            jne .L_406cfc

            mov RAX,QWORD PTR [RSP+8]
            mov QWORD PTR [R15+608],RAX
.L_406cfc:

            movzx EAX,WORD PTR [RSP+32]
            mov EDX,DWORD PTR [RSP+36]
            test EDX,EDX
            mov WORD PTR [R15+616],AX
            jne .L_406e3d
.L_406d15:

            add RSP,88
.L_406d19:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_406d24:

            mov EAX,DWORD PTR [RSP+32]
            lea EDX,DWORD PTR [RAX-1]
.L_406d2b:

            cmp EBX,EDX
            mov EAX,EDX
            jg .L_406d89
.L_406d31:

            test EAX,EAX
            jle .L_406d89

            lea ESI,DWORD PTR [RAX-1]
            xor ECX,ECX
            mov EDI,1
            mov RAX,RSI
            add RSI,1
.L_406d46:

            mov R10,QWORD PTR [R15+1112]
            lea R9,QWORD PTR [R10+RCX*1]
            add RCX,1
            movzx R11D,BYTE PTR [R10+RCX*1]
            movzx R12D,BYTE PTR [R9]
            movzx R14D,WORD PTR [RBP+R11*2]
            cmp WORD PTR [RBP+R12*2],R14W
            jae .L_406d7c

            mov BYTE PTR [R9],R11B
            mov RDI,QWORD PTR [R15+1112]
            mov BYTE PTR [RDI+RCX*1],R12B
            xor EDI,EDI
.L_406d7c:

            cmp RSI,RCX
            jne .L_406d46

            test EDI,EDI
            jne .L_406d89

            cmp EBX,EAX
            jle .L_406d31
.L_406d89:

            mov R12D,DWORD PTR [RSP+36]
            test R12D,R12D
            je .L_406c5c

            test EBX,EBX
            mov RSI,QWORD PTR [R15+1112]
            jle .L_406ccf

            lea EAX,DWORD PTR [RBX-1]
            mov RDI,QWORD PTR [RSP+8]
            mov RCX,RSI
            lea RAX,QWORD PTR [RAX+RAX*2]
            mov RDX,RDI
            lea R8,QWORD PTR [RDI+RAX*1+3]
            lea RDI,QWORD PTR [RSI+1]
.L_406dc1:

            movzx EAX,BYTE PTR [RCX]
            cmp EAX,EBX
            jge .L_406dda
.L_406dc8:

            add RDX,3
            add RCX,1
            cmp R8,RDX
            jne .L_406dc1

            jmp .L_406ccf
.L_406dda:

            mov EAX,DWORD PTR [RSP+32]
            sub EAX,1
            cdqe 
.L_406de3:

            movzx R9D,BYTE PTR [RDI+RAX*1-1]
            mov DWORD PTR [RSP+32],EAX
            lea R10,QWORD PTR [RAX-1]
            cmp R9D,EBX
            jl .L_4071c1

            mov RAX,R10
            jmp .L_406de3
.L_406dff:

            movsxd RSI,EDX
            mov R14,RSI
            call .L_40cfc0

            test R14D,R14D
            mov QWORD PTR [R15+968],RAX
            jle .L_406bfe

            lea ECX,DWORD PTR [R14-1]
            xor EDX,EDX
            add RCX,1
.L_406e24:

            mov BYTE PTR [RAX+RDX*1],DL
            add RDX,1
            cmp RCX,RDX
            je .L_406bfe

            mov RAX,QWORD PTR [R15+968]
            jmp .L_406e24
.L_406e3d:

            mov ESI,32768
            mov RDI,R15
            call .L_40d050

            mov ESI,32768
            mov RDI,R15
            mov QWORD PTR [R15+960],RAX
            call .L_40cfc0

            mov EDX,32768
            mov ESI,255
            mov RDI,RAX
            mov RBX,RAX
            call memset@PLT

            mov EAX,DWORD PTR [RSP+32]
            test EAX,EAX
            jle .L_406f8c

            mov RAX,QWORD PTR [RSP+8]
            xor EBP,EBP
            mov QWORD PTR [RSP+24],RAX
.L_406e8b:

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
.L_406ec2:

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
.L_406ee8:

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
.L_406f18:

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
            jle .L_406f55

            mov BYTE PTR [RCX],AL
            mov RAX,QWORD PTR [R15+960]
            mov BYTE PTR [RAX+RDI*1],BPL
.L_406f55:

            add EDX,1
            cmp EDX,32
            jne .L_406f18

            add R12D,1
            cmp R12D,32
            jne .L_406ee8

            add DWORD PTR [RSP+16],1
            mov EAX,DWORD PTR [RSP+16]
            cmp EAX,32
            jne .L_406ec2

            add EBP,1
            add QWORD PTR [RSP+24],3
            cmp DWORD PTR [RSP+32],EBP
            jne .L_406e8b
.L_406f8c:

            add RSP,88
.L_406f90:

            mov RSI,RBX
            mov RDI,R15
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40d0a0
.L_406fa5:

            call .L_40cfc0

            mov RSI,R12
            mov QWORD PTR [R15+1120],RAX
            mov RDI,R15
            call .L_40cfc0

            mov QWORD PTR [R15+1128],RAX
            mov EAX,DWORD PTR [RSP+32]
            test EAX,EAX
            jle .L_406ff1

            lea EDX,DWORD PTR [RAX-1]
            xor EAX,EAX
            add RDX,1
.L_406fd4:

            mov RCX,QWORD PTR [R15+1120]
            mov BYTE PTR [RCX+RAX*1],AL
            mov RCX,QWORD PTR [R15+1128]
            mov BYTE PTR [RCX+RAX*1],AL
            add RAX,1
            cmp RDX,RAX
            jne .L_406fd4
.L_406ff1:

            mov ESI,6152
            mov RDI,R15
            xor R14D,R14D
            call .L_40d050

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
.L_407035:

            lea EAX,DWORD PTR [R12-1]
            mov RDX,QWORD PTR [RSP+56]
            xor EBP,EBP
            mov R8D,EBX
            mov DWORD PTR [RSP+40],EAX
            mov RAX,R14
            mov R14D,R12D
            mov R12,RBP
.L_407051:

            cmp DWORD PTR [RSP+40],R12D
            jle .L_407313

            lea EBP,DWORD PTR [R12+1]
            cmp EBP,R14D
            jge .L_40711b

            mov RBX,RDX
            jmp .L_40707f
.L_40706f:

            add EBP,1
            add RBX,3
            cmp EBP,R14D
            je .L_40711b
.L_40707f:

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
            jg .L_40706f

            mov ESI,16
            mov RDI,R15
            mov DWORD PTR [RSP+76],R8D
            mov QWORD PTR [RSP+64],RDX
            call .L_40d0f0

            test RAX,RAX
            mov R8D,DWORD PTR [RSP+76]
            je .L_40712c

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
            jne .L_40707f
.L_40711b:

            add R12,1
            add RDX,3
            test RAX,RAX
            jne .L_407051
.L_40712c:

            mov R12D,R14D
            mov EBX,R8D
            mov R14,RAX
.L_407135:

            mov RBP,QWORD PTR [RSP+16]
.L_40713a:

            mov RSI,QWORD PTR [RBP]
            test RSI,RSI
            je .L_407156
.L_407143:

            mov R14,QWORD PTR [RSI]
            mov RDI,R15
            call .L_40d0a0

            test R14,R14
            mov RSI,R14
            jne .L_407143
.L_407156:

            mov QWORD PTR [RBP],0
            add RBP,8
            cmp QWORD PTR [RSP+48],RBP
            jne .L_40713a

            add DWORD PTR [RSP+24],96
            cmp R12D,EBX
            jg .L_407035

            mov RSI,QWORD PTR [RSP+16]
            mov RDI,R15
            call .L_40d0a0

            mov RSI,QWORD PTR [R15+1128]
            mov RDI,R15
            call .L_40d0a0

            mov RSI,QWORD PTR [R15+1120]
            mov RDI,R15
            call .L_40d0a0

            mov QWORD PTR [R15+1128],0
            mov QWORD PTR [R15+1120],0
            mov DWORD PTR [RSP+32],EBX
            jmp .L_406ce6
.L_4071c1:

            lea RAX,QWORD PTR [RAX+RAX*2]
            add RAX,QWORD PTR [RSP+8]
            movzx R9D,WORD PTR [RAX]
            mov WORD PTR [RDX],R9W
            movzx EAX,BYTE PTR [RAX+2]
            mov BYTE PTR [RDX+2],AL
            jmp .L_406dc8
.L_4071de:

            lea EAX,DWORD PTR [RCX-1]
            add RDI,1
            cdqe 
.L_4071e7:

            movzx R10D,BYTE PTR [RDI+RAX*1-1]
            mov ECX,EAX
            lea R11,QWORD PTR [RAX-1]
            cmp R10D,EBX
            jl .L_4071fd

            mov RAX,R11
            jmp .L_4071e7
.L_4071fd:

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
            jmp .L_406c88
.L_40724a:

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
            jle .L_407309

            lea RDI,QWORD PTR [R10+3]
            xor ESI,ESI
            mov R8D,1
.L_4072ac:

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
            jge .L_4072fa

            mov ESI,R8D
            mov EAX,EDX
.L_4072fa:

            add R8D,1
            add RDI,3
            cmp EBX,R8D
            jne .L_4072ac

            jmp .L_40730b
.L_407309:

            xor ESI,ESI
.L_40730b:

            mov BYTE PTR [R9],SIL
            jmp .L_406cbf
.L_407313:

            test RAX,RAX
            mov R12D,R14D
            mov EBX,R8D
            mov R14,RAX
            je .L_407135

            mov EAX,DWORD PTR [RSP+72]
            xor R13D,R13D
            add RAX,1
            mov QWORD PTR [RSP+40],RAX
.L_407335:

            mov RAX,QWORD PTR [RSP+16]
            mov RSI,QWORD PTR [RAX+R13*8]
            test RSI,RSI
            jne .L_40739f

            jmp .L_407490
.L_407348:

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
.L_40738a:

            cmp R12D,EBX
            jle .L_407135

            mov RSI,QWORD PTR [RSI]
            test RSI,RSI
            je .L_407490
.L_40739f:

            movzx ECX,BYTE PTR [RSI+8]
            mov RAX,QWORD PTR [R15+1120]
            mov RDX,RCX
            movzx ECX,BYTE PTR [RAX+RCX*1]
            cmp ECX,R12D
            jge .L_40738a

            movzx EDI,BYTE PTR [RSI+9]
            mov RCX,RDI
            movzx EDI,BYTE PTR [RAX+RDI*1]
            cmp EDI,R12D
            jge .L_40738a

            test R12B,1
            je .L_4073d2

            mov EDI,ECX
            mov ECX,EDX
            mov EDX,EDI
.L_4073d2:

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
            jne .L_407348

            mov R10D,DWORD PTR [RSP+32]
            test R10D,R10D
            jle .L_407348

            xor R10D,R10D
            movsxd RDX,EDX
            jmp .L_407444
          .byte 0x90
.L_407430:

            cmp EBP,R12D
            je .L_40747d
.L_407435:

            add R10,1
            cmp QWORD PTR [RSP+40],R10
            je .L_407348
.L_407444:

            mov R11,QWORD PTR [R15+968]
            add R11,R10
            movzx EBP,BYTE PTR [R11]
            cmp BPL,DIL
            jne .L_407430

            movzx EAX,BYTE PTR [RAX+RDX*1]
            mov BYTE PTR [R11],AL
            mov R11,QWORD PTR [R15+968]
            mov RAX,QWORD PTR [R15+1120]
            add R11,R10
            movzx EBP,BYTE PTR [R11]
            movzx EDI,BYTE PTR [RAX+R9*1]
            cmp EBP,R12D
            jne .L_407435
.L_40747d:

            mov BYTE PTR [R11],DIL
            mov RAX,QWORD PTR [R15+1120]
            movzx EDI,BYTE PTR [RAX+R9*1]
            jmp .L_407435
          .byte 0x66
          .byte 0x90
.L_407490:

            add R13,1
            cmp DWORD PTR [RSP+24],R13D
            jge .L_407335

            jmp .L_407135
.L_4074a4:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4074b0:

            test RDI,RDI
            je .L_407502

            movapd XMM2,XMM0
            mulsd XMM2,XMM1
            subsd XMM2,QWORD PTR [RIP+.L_40cdd8]
            andpd XMM2,XMMWORD PTR [RIP+.L_40ce30]
            ucomisd XMM2,QWORD PTR [RIP+.L_40cde0]
            jbe .L_407508
.L_4074d7:

            or QWORD PTR [RDI+296],8192
.L_4074e2:

            pxor XMM3,XMM3
            pxor XMM4,XMM4
            cvtsd2ss XMM3,XMM1
            cvtsd2ss XMM4,XMM0
            movss DWORD PTR [RDI+700],XMM3
            movss DWORD PTR [RDI+704],XMM4
.L_407502:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_407508:

            movzx EAX,BYTE PTR [RDI+630]
            test AL,4
            jne .L_4074d7

            cmp AL,3
            je .L_4074d7

            jmp .L_4074e2
.L_407519:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407520:

            test RDI,RDI
            je .L_407538

            or QWORD PTR [RDI+296],33558528
            and QWORD PTR [RDI+288],-65
.L_407538:

            ret 
.L_40753a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_407540:

            jmp .L_407520
.L_407542:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407550:

            test RDI,RDI
            je .L_407568

            or QWORD PTR [RDI+296],4096
            and QWORD PTR [RDI+288],-65
.L_407568:

            ret 
.L_40756a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_407570:

            test RDI,RDI
            je .L_407580

            or QWORD PTR [RDI+296],33558528
.L_407580:

            ret 
.L_407582:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407590:

            or QWORD PTR [RDI+296],33558528
            and QWORD PTR [RDI+288],-65
            ret 
.L_4075a4:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4075b0:

            or QWORD PTR [RDI+296],16384
            and QWORD PTR [RDI+288],-65
            ret 
.L_4075c4:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4075d0:

            test RDI,RDI
            je .L_4076a0

            cmp ESI,2
            push RBX
.L_4075dd:

            je .L_4076c0

            cmp ESI,3
            je .L_4076a8

            cmp ESI,1
            jne .L_4075fc

            or QWORD PTR [RDI+296],6291456
.L_4075fc:

            cmp BYTE PTR [RDI+630],3
            jne .L_407610

            or QWORD PTR [RDI+296],4096
.L_407610:

            test RDX,RDX
            mov RBX,RDI
            js .L_407688

            test RCX,RCX
            js .L_407688

            lea RAX,QWORD PTR [RDX+RCX*1]
            cmp RAX,99999
            jg .L_4076d0

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
.L_40766b:

            mov WORD PTR [RBX+1034],DI
            mov WORD PTR [RBX+1036],CX
            mov WORD PTR [RBX+1038],AX
            pop RBX
.L_407681:

            ret 
            nop
            nop
            nop
            nop
            nop
            nop
.L_407688:

            mov EAX,2366
            mov ECX,23434
            mov EDI,6968
            jmp .L_40766b
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4076a0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4076a8:

            or QWORD PTR [RDI+296],2097152
            jmp .L_4075fc
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4076c0:

            or QWORD PTR [RDI+296],4194304
            jmp .L_4075fc
.L_4076d0:

            lea RSI,QWORD PTR [RIP+.L_40cbe8]
            call .L_40d580

            mov EAX,2366
            mov ECX,23434
            mov EDI,6968
            jmp .L_40766b
.L_4076f0:

            test RDI,RDI
            je .L_407758

            push RBP
            push RBX
            mov RBP,RDI
            mov EBX,ESI
            sub RSP,8
.L_407700:

            movsd XMM2,QWORD PTR [RIP+.L_40cde8]
            ucomisd XMM0,XMM2
            ja .L_407728

            movsd XMM3,QWORD PTR [RIP+.L_40cdf0]
            ucomisd XMM3,XMM0
            ja .L_407728

            ucomisd XMM1,XMM2
            jbe .L_407760

            nop
            nop
            nop
            nop
            nop
            nop
.L_407728:

            lea RSI,QWORD PTR [RIP+.L_40cbe8]
            mov RDI,RBP
            call .L_40d580

            mov RDX,-1
            mov RCX,RDX
.L_407741:

            add RSP,8
.L_407745:

            mov ESI,EBX
            mov RDI,RBP
            pop RBX
            pop RBP
            jmp .L_4075d0
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407758:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407760:

            ucomisd XMM3,XMM1
            ja .L_407728

            movsd XMM3,QWORD PTR [RIP+.L_40cdf8]
            cvtsd2ss XMM1,XMM1
            cvtss2sd XMM1,XMM1
            movsd XMM2,QWORD PTR [RIP+.L_40ce00]
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
            jmp .L_407741
.L_4077ae:

            nop
            nop
.L_4077b0:

            test RDI,RDI
            je .L_4077c7

            or QWORD PTR [RDI+296],1048576
            mov QWORD PTR [RDI+248],RSI
.L_4077c7:

            ret 
.L_4077c9:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4077d0:

            mov RCX,QWORD PTR [RDI+296]
            movzx EDX,BYTE PTR [RSI+45]
            test CH,16
            mov EAX,EDX
            je .L_407819

            cmp DL,3
            movzx R8D,WORD PTR [RDI+618]
            je .L_407a08

            test R8W,R8W
            je .L_407807

            test ECX,33554432
            je .L_407807

            or EAX,4
            mov BYTE PTR [RSI+45],AL
.L_407807:

            cmp BYTE PTR [RSI+44],7
            ja .L_407811

            mov BYTE PTR [RSI+44],8
.L_407811:

            xor EDX,EDX
            mov WORD PTR [RSI+42],DX
            mov EDX,EAX
.L_407819:

            test CL,128
            je .L_407843

            xor EAX,EAX
            and EDX,4294967291
            mov BYTE PTR [RSI+45],DL
            mov WORD PTR [RSI+42],AX
            mov RAX,QWORD PTR [RDI+648]
            mov QWORD PTR [RSI+122],RAX
            movzx EAX,WORD PTR [RDI+656]
            mov WORD PTR [RSI+130],AX
.L_407843:

            test CH,32
            je .L_407863

            mov RAX,QWORD PTR [RDI+1048]
            movss XMM0,DWORD PTR [RDI+700]
            movss DWORD PTR [RSI+60],XMM0
            mov QWORD PTR [RSI+392],RAX
.L_407863:

            test CH,4
            je .L_407872

            cmp BYTE PTR [RSI+44],16
            je .L_407a30
.L_407872:

            test CH,64
            je .L_40787d

            or EDX,2
            mov BYTE PTR [RSI+45],DL
.L_40787d:

            test ECX,6291456
            je .L_40788b

            and EDX,4294967293
            mov BYTE PTR [RSI+45],DL
.L_40788b:

            mov RAX,RCX
            and EAX,4
            test CL,64
            je .L_407948

            mov R8D,EDX
            and R8D,4294967291
            cmp R8B,2
            jne .L_407948

            cmp QWORD PTR [RDI+960],0
            je .L_407948

            cmp BYTE PTR [RSI+44],8
            jne .L_407948

            mov BYTE PTR [RSI+45],3
            mov R8,QWORD PTR [RDI+288]
            and R8D,4194304
            nop
            nop
            nop
.L_4078d8:

            test R8,R8
            mov BYTE PTR [RSI+49],1
            mov EAX,1
            jne .L_4079f0

            nop
            nop
            nop
            nop
            nop
            nop
.L_4078f0:

            test ECX,1048576
            movzx EDX,BYTE PTR [RSI+44]
            je .L_40791c

            movzx ECX,BYTE PTR [RDI+272]
            cmp CL,DL
            jbe .L_40790c

            mov BYTE PTR [RSI+44],CL
            mov EDX,ECX
.L_40790c:

            movzx ECX,BYTE PTR [RDI+273]
            cmp CL,AL
            jbe .L_40791c

            mov BYTE PTR [RSI+49],CL
            mov EAX,ECX
.L_40791c:

            imul EAX,EDX
            mov RDX,QWORD PTR [RSI]
            cmp AL,7
            mov BYTE PTR [RSI+50],AL
            ja .L_4079e0

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
.L_407948:

            test RAX,RAX
            je .L_407957

            cmp BYTE PTR [RSI+44],7
            ja .L_407957

            mov BYTE PTR [RSI+44],8
.L_407957:

            mov R8,QWORD PTR [RDI+288]
            and R8D,4194304
            cmp DL,3
            je .L_4078d8

            test DL,2
            jne .L_4079c0

            test R8,R8
            mov BYTE PTR [RSI+49],1
            mov EAX,1
            jne .L_4079ce
.L_407981:

            test DL,4
            je .L_40798c

            add EAX,1
            mov BYTE PTR [RSI+49],AL
.L_40798c:

            test CH,128
            je .L_4078f0

            test DL,253
            jne .L_4078f0

            add EAX,1
            test ECX,16777216
            mov BYTE PTR [RSI+49],AL
            je .L_4078f0

            or EDX,4
            mov BYTE PTR [RSI+45],DL
            jmp .L_4078f0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4079c0:

            test R8,R8
            mov BYTE PTR [RSI+49],3
            mov EAX,3
            je .L_407981
.L_4079ce:

            and EDX,4294967291
            mov BYTE PTR [RSI+45],DL
            jmp .L_40798c
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
.L_4079e0:

            shr AL,3
            movzx EAX,AL
            imul RAX,RDX
            mov QWORD PTR [RSI+24],RAX
            ret 
          .byte 0x90
.L_4079f0:

            mov EDX,3
            mov EAX,1
            and EDX,4294967291
            mov BYTE PTR [RSI+45],DL
            jmp .L_40798c
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407a08:

            test R8W,R8W
            je .L_407a40

            mov BYTE PTR [RSI+45],6
            mov EDX,6
.L_407a17:

            xor R8D,R8D
            mov BYTE PTR [RSI+44],8
            mov WORD PTR [RSI+42],R8W
            jmp .L_407819
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407a30:

            mov BYTE PTR [RSI+44],8
            jmp .L_407872
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407a40:

            mov BYTE PTR [RSI+45],2
            mov EDX,2
            jmp .L_407a17
.L_407a4b:

            nop
            nop
            nop
            nop
            nop
.L_407a50:

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,7
            ja .L_407a89

            cmp AL,2
            mov RDX,QWORD PTR [RDI]
            je .L_407a90

            cmp AL,4
            je .L_407b50

            cmp AL,1
            je .L_407af0
.L_407a6f:

            movzx EAX,BYTE PTR [RDI+18]
            mov BYTE PTR [RDI+17],8
            lea ECX,DWORD PTR [RAX*8]
            imul RAX,RDX
            mov BYTE PTR [RDI+19],CL
            mov QWORD PTR [RDI+8],RAX
.L_407a89:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407a90:

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
            je .L_407a6f

            sub RSI,1
            jmp .L_407acd
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407ac0:

            add RCX,2
.L_407ac4:

            sub R8,1
            cmp R8,RSI
            je .L_407a6f
.L_407acd:

            movzx EAX,BYTE PTR [R9]
            sar EAX,CL
            and EAX,3
            cmp RCX,6
            mov BYTE PTR [R8],AL
            jne .L_407ac0

            sub R9,1
            xor ECX,ECX
            jmp .L_407ac4
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407af0:

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
            jne .L_407b31

            jmp .L_407a6f
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407b20:

            add RCX,1
.L_407b24:

            sub R8,1
            cmp R8,RSI
            je .L_407a6f
.L_407b31:

            movzx EAX,BYTE PTR [R9]
            sar EAX,CL
            and EAX,1
            cmp RCX,7
            mov BYTE PTR [R8],AL
            jne .L_407b20

            sub R9,1
            xor ECX,ECX
            jmp .L_407b24
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407b50:

            lea R8,QWORD PTR [RDX-1]
            mov RCX,RDX
            and ECX,1
            mov R9,R8
            shl RCX,2
            add R8,RSI
            shr R9,1
            add R9,RSI
            test RDX,RDX
            je .L_407a6f

            sub RSI,1
            jmp .L_407b92
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407b80:

            mov ECX,4
.L_407b85:

            sub R8,1
            cmp R8,RSI
            je .L_407a6f
.L_407b92:

            movzx EAX,BYTE PTR [R9]
            sar EAX,CL
            and EAX,15
            cmp RCX,4
            mov BYTE PTR [R8],AL
            jne .L_407b80

            sub R9,1
            xor ECX,ECX
            jmp .L_407b85
.L_407bac:

            nop
            nop
            nop
            nop
.L_407bb0:

            sub RSP,40
.L_407bb4:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            movzx EAX,BYTE PTR [RDI+16]
            cmp AL,3
            je .L_407cb8

            test AL,2
            mov R10,QWORD PTR [RDI]
            movzx R8D,BYTE PTR [RDI+17]
            jne .L_407cd8

            movzx ECX,BYTE PTR [RDX+3]
            mov R11D,R8D
            sub R11D,ECX
            mov ECX,1
            mov DWORD PTR [RSP],R11D
.L_407bf3:

            test AL,4
            je .L_407c08

            movzx EDX,BYTE PTR [RDX+4]
            movsxd RAX,ECX
            add ECX,1
            sub R8D,EDX
            mov DWORD PTR [RSP+RAX*4],R8D
.L_407c08:

            mov RDX,RSP
            lea R8D,DWORD PTR [RCX-1]
            xor R9D,R9D
            mov R11D,DWORD PTR [RDX]
            lea RAX,QWORD PTR [RDX+4]
            lea R8,QWORD PTR [RAX+R8*4]
            test R11D,R11D
            jle .L_407c3c
.L_407c22:

            cmp R8,RAX
            mov R9D,1
            mov RDX,RAX
            je .L_407c4a
.L_407c30:

            mov R11D,DWORD PTR [RDX]
            add RAX,4
            test R11D,R11D
            jg .L_407c22
.L_407c3c:

            cmp R8,RAX
            mov DWORD PTR [RDX],0
            mov RDX,RAX
            jne .L_407c30
.L_407c4a:

            test R9W,R9W
            je .L_407cb8

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,4
            je .L_407d48

            jbe .L_407d10

            cmp AL,8
            je .L_407d90

            cmp AL,16
            jne .L_407cb8

            movsxd R9,ECX
            imul R10,R9
            test R10,R10
            je .L_407cb8

            xor R8D,R8D
            nop
            nop
            nop
.L_407c80:

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
            jne .L_407c80

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407cb8:

            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_407dcd

            add RSP,40
.L_407cd0:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407cd8:

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
            jmp .L_407bf3
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407d10:

            cmp AL,2
            jne .L_407cb8

            mov RAX,QWORD PTR [RDI+8]
            test RAX,RAX
            lea RDX,QWORD PTR [RSI+RAX*1]
            je .L_407cb8

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407d28:

            movzx EAX,BYTE PTR [RSI]
            add RSI,1
            shr AL,1
            and EAX,85
            cmp RSI,RDX
            mov BYTE PTR [RSI-1],AL
            jne .L_407d28

            jmp .L_407cb8
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407d48:

            mov ECX,DWORD PTR [RSP]
            mov RDI,QWORD PTR [RDI+8]
            mov EDX,240
            mov EAX,15
            sar EDX,CL
            sar EAX,CL
            and EDX,4294967280
            or EDX,EAX
            test RDI,RDI
            je .L_407cb8

            add RDI,RSI
            nop
            nop
.L_407d70:

            movzx EAX,BYTE PTR [RSI]
            add RSI,1
            sar EAX,CL
            and EAX,EDX
            cmp RSI,RDI
            mov BYTE PTR [RSI-1],AL
            jne .L_407d70

            jmp .L_407cb8
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407d90:

            movsxd R9,ECX
            imul R10,R9
            test R10,R10
            je .L_407cb8

            xor EDI,EDI
            nop
            nop
            nop
            nop
            nop
            nop
.L_407da8:

            mov RAX,RDI
            xor EDX,EDX
            movzx R8D,BYTE PTR [RSI+RDI*1]
            div R9
            mov ECX,DWORD PTR [RSP+RDX*4]
            sar R8D,CL
            mov BYTE PTR [RSI+RDI*1],R8B
            add RDI,1
            cmp R10,RDI
            jne .L_407da8

            jmp .L_407cb8
.L_407dcd:

            call __stack_chk_fail@PLT
.L_407dd2:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407de0:

            cmp BYTE PTR [RDI+17],16
            je .L_407df0

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407df0:

            jmp .L_4069a0
.L_407df5:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407e00:

            movzx EDX,BYTE PTR [RDI+16]
            mov RAX,QWORD PTR [RDI]
            cmp DL,6
            je .L_407e60

            cmp DL,4
            je .L_407e18
.L_407e11:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407e18:

            add RSI,QWORD PTR [RDI+8]
            cmp BYTE PTR [RDI+17],8
            je .L_407ed0

            test RAX,RAX
            je .L_407e11

            xor EDX,EDX
            nop
            nop
            nop
.L_407e30:

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
            jne .L_407e30

            ret 
          .byte 0x66
          .byte 0x90
.L_407e60:

            add RSI,QWORD PTR [RDI+8]
            cmp BYTE PTR [RDI+17],8
            je .L_407f00

            test RAX,RAX
            je .L_407e11

            xor EDX,EDX
            nop
            nop
            nop
.L_407e78:

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
            jne .L_407e78

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407ed0:

            test RAX,RAX
            je .L_407e11

            xor EDX,EDX
            nop
            nop
            nop
            nop
            nop
.L_407ee0:

            movzx ECX,BYTE PTR [RSI-1]
            sub RSI,2
            add RDX,1
            movzx EDI,BYTE PTR [RSI]
            cmp RAX,RDX
            mov BYTE PTR [RSI],CL
            mov BYTE PTR [RSI+1],DIL
            jne .L_407ee0

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_407f00:

            test RAX,RAX
            je .L_407e11

            xor EDX,EDX
            nop
            nop
            nop
            nop
            nop
.L_407f10:

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
            jne .L_407f10

            ret 
.L_407f3c:

            nop
            nop
            nop
            nop
.L_407f40:

            movzx EDX,BYTE PTR [RDI+16]
            mov RAX,QWORD PTR [RDI]
            cmp DL,6
            je .L_407f88

            cmp DL,4
            je .L_407f58
.L_407f51:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407f58:

            add RSI,QWORD PTR [RDI+8]
            cmp BYTE PTR [RDI+17],8
            je .L_407fb8

            test RAX,RAX
            je .L_407f51

            xor EDX,EDX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407f70:

            add RDX,1
            not BYTE PTR [RSI-1]
            not BYTE PTR [RSI-2]
            sub RSI,4
            cmp RAX,RDX
            jne .L_407f70

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407f88:

            add RSI,QWORD PTR [RDI+8]
            cmp BYTE PTR [RDI+17],8
            je .L_407fd8

            test RAX,RAX
            je .L_407f51

            xor EDX,EDX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407fa0:

            add RDX,1
            not BYTE PTR [RSI-1]
            not BYTE PTR [RSI-2]
            sub RSI,8
            cmp RAX,RDX
            jne .L_407fa0

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407fb8:

            test RAX,RAX
            je .L_407f51

            xor EDX,EDX
            nop
.L_407fc0:

            add RDX,1
            not BYTE PTR [RSI-1]
            sub RSI,2
            cmp RAX,RDX
            jne .L_407fc0

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407fd8:

            test RAX,RAX
            je .L_407f51

            xor EDX,EDX
            nop
            nop
            nop
            nop
            nop
.L_407fe8:

            add RDX,1
            not BYTE PTR [RSI-1]
            sub RSI,4
            cmp RAX,RDX
            jne .L_407fe8

            ret 
.L_407ffa:

            nop
            nop
            nop
            nop
            nop
            nop
.L_408000:

            movzx EAX,BYTE PTR [RDI+16]
            mov R10,RDX
            push R14
            shr R10,8
            push RBX
            mov R8,QWORD PTR [RDI]
            mov R11D,R10D
            mov R9D,EDX
            test AL,AL
            jne .L_408038

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,8
            je .L_408100

            cmp AL,16
            je .L_408168
.L_40802f:

            pop RBX
            pop R14
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408038:

            cmp AL,2
            jne .L_40802f

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,8
            je .L_408230

            cmp AL,16
            jne .L_40802f

            lea RBX,QWORD PTR [R8+R8*1]
            and ECX,128
            lea RAX,QWORD PTR [RBX+R8*1]
            lea RAX,QWORD PTR [RSI+RAX*2]
            lea RSI,QWORD PTR [RAX+RBX*1]
            je .L_408370

            cmp R8,1
            jbe .L_4080d8

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
.L_408080:

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
            jne .L_408080

            mov RAX,R8
            neg RAX
            lea RSI,QWORD PTR [RSI+RAX*8+8]
.L_4080d8:

            lea RAX,QWORD PTR [R8*8]
            mov BYTE PTR [RSI-2],DL
            mov EDX,16388
            mov BYTE PTR [RSI-1],R10B
            mov WORD PTR [RDI+18],DX
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40802f
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408100:

            and ECX,128
            lea RAX,QWORD PTR [RSI+R8*1]
            je .L_4081f0

            cmp R8,1
            lea R11,QWORD PTR [RAX+R8*1]
            jbe .L_40814b

            add RSI,1
            mov RCX,R11
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_408128:

            sub RAX,1
            mov BYTE PTR [RCX-1],R9B
            sub RCX,2
            movzx R10D,BYTE PTR [RAX]
            cmp RSI,RAX
            mov BYTE PTR [RCX],R10B
            jne .L_408128

            mov RAX,R8
            neg RAX
            lea R11,QWORD PTR [R11+RAX*2+2]
.L_40814b:

            lea RAX,QWORD PTR [R8+R8*1]
            mov EBX,4098
            mov BYTE PTR [R11-1],DL
            mov WORD PTR [RDI+18],BX
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40802f
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408168:

            lea RAX,QWORD PTR [R8+R8*1]
            add RSI,RAX
            add RAX,RSI
            and ECX,128
            je .L_4082c0

            cmp R8,1
            jbe .L_4081c4

            mov RCX,RAX
            mov EBX,1
            nop
            nop
            nop
            nop
.L_408190:

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
            jne .L_408190

            mov RCX,R8
            neg RCX
            lea RAX,QWORD PTR [RAX+RCX*4+4]
.L_4081c4:

            mov BYTE PTR [RAX-1],R10B
            mov BYTE PTR [RAX-2],DL
            lea RAX,QWORD PTR [R8*4]
            mov R10D,8194
            mov WORD PTR [RDI+18],R10W
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40802f
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4081f0:

            test R8,R8
            lea RDX,QWORD PTR [RAX+R8*1]
            je .L_408216

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_408200:

            sub RAX,1
            movzx ECX,BYTE PTR [RAX]
            sub RDX,2
            mov BYTE PTR [RDX+1],CL
            cmp RSI,RAX
            mov BYTE PTR [RDX],R9B
            jne .L_408200
.L_408216:

            lea RAX,QWORD PTR [R8+R8*1]
            mov R11D,4098
            mov WORD PTR [RDI+18],R11W
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40802f
          .byte 0x66
          .byte 0x90
.L_408230:

            lea RAX,QWORD PTR [R8+R8*2]
            add RSI,RAX
            and ECX,128
            lea RAX,QWORD PTR [RSI+R8*1]
            je .L_408310

            cmp R8,1
            jbe .L_40829d

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
.L_408268:

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
            jne .L_408268

            mov RCX,R8
            neg RCX
            lea RAX,QWORD PTR [RAX+RCX*4+4]
.L_40829d:

            mov BYTE PTR [RAX-1],DL
            lea RAX,QWORD PTR [R8*4]
            mov ESI,8196
            mov WORD PTR [RDI+18],SI
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40802f
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4082c0:

            test R8,R8
            je .L_4082ed

            nop
            nop
            nop
.L_4082c8:

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
            jne .L_4082c8
.L_4082ed:

            lea RAX,QWORD PTR [R8*4]
            mov R9D,8194
            mov WORD PTR [RDI+18],R9W
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40802f
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408310:

            test R8,R8
            je .L_408354

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
.L_408330:

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
            jne .L_408330
.L_408354:

            lea RAX,QWORD PTR [R8*4]
            mov ECX,8196
            mov WORD PTR [RDI+18],CX
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40802f
          .byte 0x66
          .byte 0x90
.L_408370:

            test R8,R8
            je .L_4083b9

            nop
            nop
            nop
.L_408378:

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
            jne .L_408378
.L_4083b9:

            mov EAX,16388
            mov WORD PTR [RDI+18],AX
            lea RAX,QWORD PTR [R8*8]
            mov QWORD PTR [RDI+8],RAX
            jmp .L_40802f
.L_4083d3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4083e0:

            movzx ECX,BYTE PTR [RDI+17]
            cmp CL,7
            jbe .L_4084a8

            movzx R8D,BYTE PTR [RDI+16]
            test R8B,2
            jne .L_4084a8

            test R8B,R8B
            mov R9,QWORD PTR [RDI]
            jne .L_408478

            cmp CL,8
            lea RDX,QWORD PTR [R9+R9*1]
            je .L_408548

            lea RAX,QWORD PTR [RSI+RDX*1-1]
            test R9,R9
            lea RDX,QWORD PTR [RAX+R9*4]
            je .L_40847e

            xor ECX,ECX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_408428:

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
            jne .L_408428
.L_408468:

            movzx R8D,BYTE PTR [RDI+16]
            movzx ECX,BYTE PTR [RDI+17]
            jmp .L_40847e
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408478:

            cmp R8B,4
            je .L_4084c8
.L_40847e:

            movzx EAX,BYTE PTR [RDI+18]
            or R8D,2
            mov BYTE PTR [RDI+16],R8B
            add EAX,2
            mov BYTE PTR [RDI+18],AL
            imul EAX,ECX
            cmp AL,7
            mov BYTE PTR [RDI+19],AL
            jbe .L_4084b0

            shr AL,3
            movzx EAX,AL
            imul RAX,R9
.L_4084a4:

            mov QWORD PTR [RDI+8],RAX
.L_4084a8:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4084b0:

            movzx EAX,AL
            imul RAX,R9
            add RAX,7
            shr RAX,3
            jmp .L_4084a4
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4084c8:

            cmp CL,8
            je .L_408590

            lea RAX,QWORD PTR [R9*4]
            lea RDX,QWORD PTR [RSI+RAX*1-1]
            add RAX,RDX
            test R9,R9
            je .L_40847e

            xor ECX,ECX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4084f0:

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
            jne .L_4084f0

            jmp .L_408468
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408548:

            lea RAX,QWORD PTR [RSI+R9*1-1]
            add RDX,RAX
            test R9,R9
            je .L_40847e

            sub RSI,1
            nop
            nop
            nop
.L_408560:

            movzx ECX,BYTE PTR [RAX]
            sub RAX,1
            sub RDX,3
            mov BYTE PTR [RDX+3],CL
            movzx ECX,BYTE PTR [RAX+1]
            mov BYTE PTR [RDX+2],CL
            movzx ECX,BYTE PTR [RAX+1]
            cmp RAX,RSI
            mov BYTE PTR [RDX+1],CL
            jne .L_408560

            jmp .L_408468
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
.L_408590:

            lea RAX,QWORD PTR [R9+R9*1]
            lea RDX,QWORD PTR [RSI+RAX*1-1]
            add RAX,RDX
            test R9,R9
            je .L_40847e

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
.L_4085b0:

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
            jne .L_4085b0

            jmp .L_408468
.L_4085e5:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4085f0:

            movzx R8D,BYTE PTR [RSI+16]
            xor ECX,ECX
            test R8B,2
            je .L_408688

            cmp R8B,2
            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
.L_40860f:

            mov R10,QWORD PTR [RSI]
            movzx R15D,WORD PTR [RDI+1034]
            movzx EBP,WORD PTR [RDI+1036]
            movzx R12D,WORD PTR [RDI+1038]
            movzx EBX,BYTE PTR [RSI+17]
            je .L_4087d0
.L_408633:

            cmp R8B,6
            je .L_408690
.L_408639:

            movzx EAX,BYTE PTR [RSI+18]
            and R8D,4294967293
            mov BYTE PTR [RSI+16],R8B
            sub EAX,2
            mov BYTE PTR [RSI+18],AL
            imul EAX,EBX
            cmp AL,7
            mov BYTE PTR [RSI+19],AL
            ja .L_408678

            movzx EAX,AL
            imul R10,RAX
            add R10,7
            shr R10,3
.L_408664:

            mov QWORD PTR [RSI+8],R10
            mov EAX,ECX
            pop RBX
.L_40866b:

            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408678:

            shr AL,3
            movzx EAX,AL
            imul R10,RAX
            jmp .L_408664
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_408688:

            mov EAX,ECX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408690:

            cmp BL,8
            je .L_4089a0

            cmp QWORD PTR [RDI+752],0
            je .L_408a50

            cmp QWORD PTR [RDI+744],0
            je .L_408a50

            test R10,R10
            je .L_408639

            mov R11,RDX
            xor R9D,R9D
            mov QWORD PTR [RSP-8],RSI
            jmp .L_408701
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4086d0:

            cmp AX,SI
            jne .L_408736
.L_4086d5:

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
            je .L_408bf0
.L_408701:

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
            je .L_4086d0
.L_408736:

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
            jmp .L_4086d5
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4087d0:

            cmp BL,8
            je .L_4088f0

            cmp QWORD PTR [RDI+752],0
            je .L_408b10

            cmp QWORD PTR [RDI+744],0
            je .L_408b10

            test R10,R10
            je .L_408639

            mov R11,RDX
            xor R13D,R13D
            mov QWORD PTR [RSP-8],RSI
            mov R8,RDX
            jmp .L_40882b
          .byte 0x66
          .byte 0x90
.L_408810:

            cmp AX,DX
            jne .L_408866
.L_408815:

            mov BYTE PTR [R8+R13*2],SIL
            mov BYTE PTR [R8+R13*2+1],AL
            add R13,1
            cmp R10,R13
            je .L_408bd0
.L_40882b:

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
            je .L_408810
.L_408866:

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
            jmp .L_408815
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4088f0:

            cmp QWORD PTR [RDI+720],0
            je .L_408c70

            mov R11,QWORD PTR [RDI+728]
            test R11,R11
            je .L_408c70

            test R10,R10
            je .L_408639

            lea RAX,QWORD PTR [R10+R10*2]
            mov RBX,RDX
            mov R9,RDX
            mov QWORD PTR [RSP-8],RDX
            add RAX,RDX
            mov RDX,RAX
            jmp .L_40894c
          .byte 0x66
          .byte 0x90
.L_408930:

            cmp AL,R11B
            jne .L_408972

            mov BYTE PTR [RBX],R14B
.L_408938:

            add RBX,1
            cmp R9,RDX
            je .L_408ce0

            mov R11,QWORD PTR [RDI+728]
.L_40894c:

            movzx EAX,BYTE PTR [R9]
            movzx R8D,BYTE PTR [R9+1]
            add R9,3
            movzx R14D,BYTE PTR [R9-1]
            movzx EAX,BYTE PTR [R11+RAX*1]
            movzx R8D,BYTE PTR [R11+R8*1]
            movzx R11D,BYTE PTR [R11+R14*1]
            cmp AL,R8B
            je .L_408930
.L_408972:

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
            jmp .L_408938
.L_4089a0:

            mov R11,QWORD PTR [RDI+720]
            test R11,R11
            je .L_408c08

            mov R9,QWORD PTR [RDI+728]
            test R9,R9
            je .L_408c08

            test R10,R10
            je .L_408639

            xor EBX,EBX
            jmp .L_408a1b
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4089d0:

            cmp AL,R9B
            jne .L_408a3f
.L_4089d5:

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
            je .L_408b00

            mov R9,QWORD PTR [RDI+728]
            mov R11,QWORD PTR [RDI+720]
.L_408a1b:

            movzx EAX,BYTE PTR [RDX+RBX*4]
            movzx R8D,BYTE PTR [RDX+RBX*4+1]
            movzx R13D,BYTE PTR [RDX+RBX*4+2]
            movzx EAX,BYTE PTR [R9+RAX*1]
            movzx R8D,BYTE PTR [R9+R8*1]
            movzx R9D,BYTE PTR [R9+R13*1]
            cmp AL,R8B
            je .L_4089d0
.L_408a3f:

            mov ECX,1
            jmp .L_4089d5
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
.L_408a50:

            xor R11D,R11D
            test R10,R10
            mov R9,RDX
            jne .L_408aba

            jmp .L_408639
.L_408a60:

            cmp AX,R13W
            jne .L_408aec
.L_408a6a:

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
            je .L_408b00
.L_408aba:

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
            je .L_408a60
.L_408aec:

            mov ECX,1
            jmp .L_408a6a
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
.L_408b00:

            movzx R8D,BYTE PTR [RSI+16]
            movzx EBX,BYTE PTR [RSI+17]
            jmp .L_408639
          .byte 0x66
          .byte 0x90
.L_408b10:

            test R10,R10
            je .L_408cf8

            mov R11,RDX
            xor ECX,ECX
            xor EBX,EBX
            jmp .L_408b6d
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408b28:

            cmp AX,R13W
            jne .L_408ba8
.L_408b2e:

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
            je .L_408bb8
.L_408b6d:

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
            je .L_408b28
.L_408ba8:

            mov ECX,1
            jmp .L_408b2e
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408bb8:

            movzx R8D,BYTE PTR [RSI+16]
            movzx EBX,BYTE PTR [RSI+17]
            jmp .L_408633
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
.L_408bd0:

            mov RSI,QWORD PTR [RSP-8]
            mov RDX,R8
            movzx EBX,BYTE PTR [RSI+17]
            movzx R8D,BYTE PTR [RSI+16]
            jmp .L_408633
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
.L_408bf0:

            mov RSI,QWORD PTR [RSP-8]
            movzx R8D,BYTE PTR [RSI+16]
            movzx EBX,BYTE PTR [RSI+17]
            jmp .L_408639
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408c08:

            xor R9D,R9D
            test R10,R10
            jne .L_408c53

            jmp .L_408639
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408c18:

            cmp AL,R8B
            jne .L_408c69
.L_408c1d:

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
            je .L_408b00
.L_408c53:

            movzx EAX,BYTE PTR [RDX+R9*4]
            movzx EDI,BYTE PTR [RDX+R9*4+1]
            movzx R8D,BYTE PTR [RDX+R9*4+2]
            cmp AL,DIL
            je .L_408c18
.L_408c69:

            mov ECX,1
            jmp .L_408c1d
.L_408c70:

            test R10,R10
            je .L_408cf8

            lea R13,QWORD PTR [R10+R10*2]
            mov RBX,RDX
            mov R11,RDX
            xor ECX,ECX
            add R13,RDX
            jmp .L_408ca5
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408c90:

            cmp AL,R8B
            jne .L_408cbc

            mov BYTE PTR [RBX],R8B
.L_408c98:

            add RBX,1
            cmp R11,R13
            je .L_408bb8
.L_408ca5:

            movzx EAX,BYTE PTR [R11]
            movzx R9D,BYTE PTR [R11+1]
            add R11,3
            movzx R8D,BYTE PTR [R11-1]
            cmp AL,R9B
            je .L_408c90
.L_408cbc:

            imul RAX,R15
            imul R9,RBP
            lea RCX,QWORD PTR [RAX+R9*1]
            movzx EAX,R8B
            imul RAX,R12
            add RAX,RCX
            mov ECX,1
            shr RAX,15
            mov BYTE PTR [RBX],AL
            jmp .L_408c98
.L_408ce0:

            mov RDX,QWORD PTR [RSP-8]
            movzx R8D,BYTE PTR [RSI+16]
            movzx EBX,BYTE PTR [RSI+17]
            jmp .L_408633
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_408cf8:

            xor ECX,ECX
            jmp .L_408639
.L_408cff:

            nop
.L_408d00:

            test RSI,RSI
            je .L_408d4b

            sub EDI,1
            cmp EDI,7
            ja .L_408d4b

            lea RAX,QWORD PTR [RIP+.L_40cd80]
            lea RDX,QWORD PTR [RIP+.L_40cd60]
            mov EAX,DWORD PTR [RAX+RDI*4]
            mov EDX,DWORD PTR [RDX+RDI*4]
            test EAX,EAX
            jle .L_408d4b

            sub EAX,1
            lea RAX,QWORD PTR [RAX+RAX*2]
            lea RCX,QWORD PTR [RSI+RAX*1+3]
            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
.L_408d38:

            mov BYTE PTR [RSI],AL
            mov BYTE PTR [RSI+1],AL
            add RSI,3
            mov BYTE PTR [RSI-1],AL
            add EAX,EDX
            cmp RSI,RCX
            jne .L_408d38
.L_408d4b:

            ret 
.L_408d4d:

            nop
            nop
            nop
.L_408d50:

            mov R10,RCX
            push R15
            push R14
            test R10,R10
            push R13
            push R12
            push RBP
            push RBX
.L_408d60:

            mov ECX,DWORD PTR [RSP+96]
            je .L_408f14

            movzx EAX,BYTE PTR [RDI+16]
            mov EBX,EAX
            and EBX,4
            test RDX,RDX
            jne .L_408d80

            test BL,BL
            jne .L_408f14
.L_408d80:

            cmp AL,2
            mov R11,QWORD PTR [RDI]
            je .L_408fe0

            jbe .L_409110

            cmp AL,4
            je .L_408f20

            cmp AL,6
            jne .L_408ee0

            movzx EDX,BYTE PTR [RDI+17]
            cmp DL,8
            je .L_409960

            cmp QWORD PTR [RSP+80],0
            setne BL
            cmp QWORD PTR [RSP+88],0
            setne R9B
            test BL,R9B
            je .L_409158

            cmp QWORD PTR [RSP+72],0
            je .L_409158

            test R11,R11
            je .L_408ee8

            mov R9,RSI
            xor EBX,EBX
            mov EBP,65535
            mov R15,QWORD PTR [RSP+72]
            jmp .L_408e43
.L_408df0:

            test AX,AX
            jne .L_409668

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
.L_408e2e:

            add RBX,1
            add RSI,8
            add R9,6
            cmp R11,RBX
            je .L_409630
.L_408e43:

            movzx EAX,BYTE PTR [RSI+6]
            movzx R12D,BYTE PTR [RSI+7]
            shl EAX,8
            add EAX,R12D
            cmp AX,-1
            jne .L_408df0

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
            jmp .L_408e2e
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408ed0:

            movzx EAX,BYTE PTR [R15+16]
            mov RDI,R15
            mov EBX,EAX
            and EBX,4
            nop
            nop
            nop
.L_408ee0:

            test BL,BL
            je .L_408f14

            movzx EDX,BYTE PTR [RDI+17]
.L_408ee8:

            and EAX,4294967291
            mov BYTE PTR [RDI+16],AL
            movzx EAX,BYTE PTR [RDI+18]
            sub EAX,1
            mov BYTE PTR [RDI+18],AL
            imul EAX,EDX
            cmp AL,7
            mov BYTE PTR [RDI+19],AL
            jbe .L_409140

            shr AL,3
            movzx EAX,AL
            imul R11,RAX
.L_408f10:

            mov QWORD PTR [RDI+8],R11
.L_408f14:

            pop RBX
.L_408f15:

            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x90
.L_408f20:

            movzx EDX,BYTE PTR [RDI+17]
            cmp DL,8
            je .L_4098e8

            cmp QWORD PTR [RSP+80],0
            setne BL
            cmp QWORD PTR [RSP+88],0
            setne R9B
            test BL,R9B
            je .L_4092b0

            cmp QWORD PTR [RSP+72],0
            je .L_4092b0

            test R11,R11
            je .L_408ee8

            xor R9D,R9D
            mov EBX,65535
            mov RDX,QWORD PTR [RSP+72]
            jmp .L_408f99
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408f70:

            test AX,AX
            jne .L_4097c8

            movzx EAX,BYTE PTR [R10+9]
            mov BYTE PTR [RSI+R9*2],AL
            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI+R9*2+1],AL
.L_408f8c:

            add R9,1
            cmp R11,R9
            je .L_409630
.L_408f99:

            movzx EAX,BYTE PTR [RSI+R9*4+2]
            movzx EBP,BYTE PTR [RSI+R9*4+3]
            shl EAX,8
            add EAX,EBP
            cmp AX,-1
            jne .L_408f70

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
            jmp .L_408f8c
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408fe0:

            cmp BYTE PTR [RDI+17],8
            je .L_409860

            cmp QWORD PTR [RSP+72],0
            je .L_409c80

            test R11,R11
            je .L_408f14

            xor R15D,R15D
            mov QWORD PTR [RSP-8],RDI
            mov R13,QWORD PTR [RSP+72]
            jmp .L_409074
          .byte 0x66
          .byte 0x90
.L_409010:

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
.L_409063:

            add R15,1
            add RSI,6
            cmp R11,R15
            je .L_409848
.L_409074:

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
            jne .L_409010

            mov R12D,EBX
            movzx R14D,DIL
            shl R12D,8
            add R12D,R14D
            cmp WORD PTR [RDX+4],R12W
            jne .L_409010

            mov R14D,EBP
            movzx R12D,R8B
            shl R14D,8
            add R12D,R14D
            cmp WORD PTR [RDX+6],R12W
            jne .L_409010

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
            jmp .L_409063
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_409110:

            test AL,AL
            jne .L_408ee0

            cmp BYTE PTR [RDI+17],16
            ja .L_408f14

            movzx EAX,BYTE PTR [RDI+17]
            lea R8,QWORD PTR [RIP+.L_40ccc0]
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
.L_409140:

            movzx EAX,AL
            imul R11,RAX
            add R11,7
            shr R11,3
            jmp .L_408f10
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_409158:

            xor EBX,EBX
            test R11,R11
            mov RCX,RSI
            mov EBP,65535
            jne .L_4091b5

            jmp .L_408ee8
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_409170:

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
.L_4091a0:

            add RBX,1
            add RSI,8
            add RCX,6
            cmp R11,RBX
            je .L_409630
.L_4091b5:

            movzx EAX,BYTE PTR [RSI+6]
            movzx EDX,BYTE PTR [RSI+7]
            shl EAX,8
            add EAX,EDX
            cmp AX,-1
            je .L_409650

            test AX,AX
            movzx R9D,WORD PTR [R10+2]
            je .L_409170

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
            jmp .L_4091a0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4092b0:

            xor R9D,R9D
            test R11,R11
            mov RCX,RSI
            mov EBX,65535
            jne .L_4092ec

            jmp .L_408ee8
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4092c8:

            movzx EAX,BYTE PTR [R10+9]
            mov BYTE PTR [RCX],AL
            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RCX+1],AL
.L_4092d7:

            add R9,1
            add RSI,4
            add RCX,2
            cmp R11,R9
            je .L_409630
.L_4092ec:

            movzx EAX,BYTE PTR [RSI+2]
            movzx EDX,BYTE PTR [RSI+3]
            shl EAX,8
            add EAX,EDX
            cmp AX,-1
            je .L_409640

            test AX,AX
            je .L_4092c8

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
            jmp .L_4092d7
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409358:

            test R11,R11
            je .L_408f14

            mov R9D,7
            xor EBX,EBX
            mov R12D,7
            mov EBP,32639
            jmp .L_409397
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
.L_409380:

            add RSI,1
            mov R9D,7
.L_40938a:

            add RBX,1
            cmp R11,RBX
            je .L_409630
.L_409397:

            movzx EAX,BYTE PTR [RSI]
            mov ECX,R9D
            mov R8D,EAX
            sar EAX,CL
            movzx ECX,WORD PTR [RDX+8]
            and EAX,1
            cmp EAX,ECX
            jne .L_4093cd

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
.L_4093cd:

            test R9D,R9D
            je .L_409380

            sub R9D,1
            jmp .L_40938a
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0

            cmp QWORD PTR [RSP+72],0
            je .L_4095e7

            test R11,R11
            je .L_408f14

            xor EBX,EBX
            mov RBP,QWORD PTR [RSP+72]
            jmp .L_40942d
          .byte 0x66
          .byte 0x90
.L_409400:

            sar EAX,CL
            cdqe 
            mov RAX,QWORD PTR [RBP+RAX*8]
            movzx EAX,WORD PTR [RAX+R9*2]
            mov R8D,EAX
            mov BYTE PTR [RSI+1],AL
            shr R8W,8
            mov BYTE PTR [RSI],R8B
.L_40941c:

            add RBX,1
            add RSI,2
            cmp R11,RBX
            je .L_409630
.L_40942d:

            movzx R9D,BYTE PTR [RSI]
            movzx R12D,BYTE PTR [RSI+1]
            mov R8D,R9D
            mov EAX,R12D
            shl R8D,8
            add R8D,R12D
            cmp WORD PTR [RDX+8],R8W
            jne .L_409400

            movzx EAX,BYTE PTR [R10+9]
            mov BYTE PTR [RSI],AL
            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI+1],AL
            jmp .L_40941c
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0

            test R9,R9
            je .L_409e60

            test R11,R11
            je .L_408f14

            lea R8,QWORD PTR [RSI+R11*1]
            jmp .L_409494
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409480:

            movzx EAX,BYTE PTR [R9+RCX*1]
            mov BYTE PTR [RSI],AL
.L_409487:

            add RSI,1
            cmp RSI,R8
            je .L_409630
.L_409494:

            movzx ECX,BYTE PTR [RSI]
            cmp CX,WORD PTR [RDX+8]
            jne .L_409480

            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI],AL
            jmp .L_409487
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

            test R9,R9
            je .L_409d6b

            test R11,R11
            je .L_408f14

            mov EBX,4
            xor EBP,EBP
            mov R13D,4
            mov R12D,3855
            jmp .L_4094f6
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4094e0:

            add RSI,1
            mov EBX,4
.L_4094e9:

            add RBP,1
            cmp R11,RBP
            je .L_409630
.L_4094f6:

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
            je .L_409a20

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
.L_40953a:

            test EBX,EBX
            je .L_4094e0

            sub EBX,4
            jmp .L_4094e9
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409548:

            test R9,R9
            je .L_409de8

            test R11,R11
            je .L_408f14

            mov EBX,6
            xor EBP,EBP
            mov R13D,6
            mov R12D,16191
            jmp .L_409586
          .byte 0x90
.L_409570:

            add RSI,1
            mov EBX,6
.L_409579:

            add RBP,1
            cmp R11,RBP
            je .L_409630
.L_409586:

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
            je .L_409a08

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
.L_4095de:

            test EBX,EBX
            je .L_409570

            sub EBX,2
            jmp .L_409579
.L_4095e7:

            xor R8D,R8D
            test R11,R11
            je .L_408f14

            nop
            nop
            nop
            nop
            nop
.L_4095f8:

            movzx EAX,BYTE PTR [RSI]
            movzx ECX,BYTE PTR [RSI+1]
            shl EAX,8
            add EAX,ECX
            cmp WORD PTR [RDX+8],AX
            jne .L_409619

            movzx EAX,BYTE PTR [R10+9]
            mov BYTE PTR [RSI],AL
            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI+1],AL
.L_409619:

            add R8,1
            add RSI,2
            cmp R11,R8
            jne .L_4095f8

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_409630:

            movzx EAX,BYTE PTR [RDI+16]
            mov EBX,EAX
            and EBX,4
            jmp .L_408ee0
          .byte 0x66
          .byte 0x90
.L_409640:

            movzx EAX,WORD PTR [RSI]
            mov WORD PTR [RCX],AX
            jmp .L_4092d7
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409650:

            mov EAX,DWORD PTR [RSI]
            mov DWORD PTR [RCX],EAX
            movzx EAX,WORD PTR [RSI+4]
            mov WORD PTR [RCX+4],AX
            jmp .L_4091a0
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409668:

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
            jmp .L_408e2e
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4097c8:

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
            jmp .L_408f8c
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409848:

            mov RDI,QWORD PTR [RSP-8]
            movzx EAX,BYTE PTR [RDI+16]
            mov EBX,EAX
            and EBX,4
            jmp .L_408ee0
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409860:

            test R9,R9
            je .L_409d10

            test R11,R11
            je .L_408f14

            lea RBP,QWORD PTR [R11+R11*2]
            add RBP,RSI
            jmp .L_4098a4
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409880:

            movzx EAX,BYTE PTR [R9+RAX*1]
            mov BYTE PTR [RSI],AL
            movzx EAX,BYTE PTR [R9+RCX*1]
            mov BYTE PTR [RSI+1],AL
            movzx EAX,BYTE PTR [R9+R8*1]
            mov BYTE PTR [RSI+2],AL
.L_409897:

            add RSI,3
            cmp RSI,RBP
            je .L_409630
.L_4098a4:

            movzx EBX,BYTE PTR [RSI]
            movzx ECX,BYTE PTR [RSI+1]
            cmp BX,WORD PTR [RDX+2]
            movzx R8D,BYTE PTR [RSI+2]
            mov RAX,RBX
            jne .L_409880

            movzx EBX,CL
            cmp BX,WORD PTR [RDX+4]
            jne .L_409880

            movzx EBX,R8B
            cmp BX,WORD PTR [RDX+6]
            jne .L_409880

            movzx EAX,WORD PTR [R10+2]
            mov BYTE PTR [RSI],AL
            movzx EAX,WORD PTR [R10+4]
            mov BYTE PTR [RSI+1],AL
            movzx EAX,WORD PTR [R10+6]
            mov BYTE PTR [RSI+2],AL
            jmp .L_409897
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4098e8:

            cmp QWORD PTR [RSP+56],0
            setne BL
            test R9,R9
            setne CL
            test BL,CL
            je .L_409c10

            cmp QWORD PTR [RSP+64],0
            je .L_409c10

            test R11,R11
            je .L_408ee8

            xor EDX,EDX
            mov EBX,255
            jmp .L_40993e
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_409920:

            test CX,CX
            jne .L_409a40

            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI+RDX*1],AL
.L_409931:

            add RDX,1
            cmp R11,RDX
            je .L_409630
.L_40993e:

            movzx ECX,BYTE PTR [RSI+RDX*2+1]
            cmp CX,255
            mov EAX,ECX
            jne .L_409920

            movzx EAX,BYTE PTR [RSI+RDX*2]
            movzx EAX,BYTE PTR [R9+RAX*1]
            mov BYTE PTR [RSI+RDX*1],AL
            jmp .L_409931
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409960:

            test R9,R9
            setne BL
            cmp QWORD PTR [RSP+56],0
            setne CL
            test BL,CL
            je .L_409b30

            cmp QWORD PTR [RSP+64],0
            je .L_409b30

            test R11,R11
            je .L_408ee8

            lea RBP,QWORD PTR [R11+R11*2]
            mov RBX,RSI
            mov R12D,255
            mov R15,RDI
            add RBP,RSI
            jmp .L_4099d8
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4099a8:

            test DL,DL
            jne .L_409a80

            movzx EAX,WORD PTR [R10+2]
            mov BYTE PTR [RBX],AL
            movzx EAX,WORD PTR [R10+4]
            mov BYTE PTR [RBX+1],AL
            movzx EAX,WORD PTR [R10+6]
            mov BYTE PTR [RBX+2],AL
.L_4099c7:

            add RBX,3
            add RSI,4
            cmp RBX,RBP
            je .L_408ed0
.L_4099d8:

            movzx EDX,BYTE PTR [RSI+3]
            cmp DL,255
            jne .L_4099a8

            movzx EAX,BYTE PTR [RSI]
            movzx EAX,BYTE PTR [R9+RAX*1]
            mov BYTE PTR [RBX],AL
            movzx EAX,BYTE PTR [RSI+1]
            movzx EAX,BYTE PTR [R9+RAX*1]
            mov BYTE PTR [RBX+1],AL
            movzx EAX,BYTE PTR [RSI+2]
            movzx EAX,BYTE PTR [R9+RAX*1]
            mov BYTE PTR [RBX+2],AL
            jmp .L_4099c7
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_409a08:

            mov BYTE PTR [RSI],R8B
            movzx EAX,WORD PTR [R10+8]
            mov ECX,EBX
            shl EAX,CL
            or R8D,EAX
            mov BYTE PTR [RSI],R8B
            jmp .L_4095de
          .byte 0x90
.L_409a20:

            mov BYTE PTR [RSI],R8B
            movzx EAX,WORD PTR [R10+8]
            mov ECX,EBX
            shl EAX,CL
            or R8D,EAX
            mov BYTE PTR [RSI],R8B
            jmp .L_40953a
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409a40:

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
            jmp .L_409931
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_409a80:

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
            jmp .L_4099c7
          .byte 0x90
.L_409b30:

            test R11,R11
            je .L_408ee8

            lea RBX,QWORD PTR [R11+R11*2]
            mov R8,RSI
            mov EBP,255
            add RBX,RSI
            jmp .L_409b7f
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409b50:

            test DL,DL
            movzx ECX,WORD PTR [R10+2]
            jne .L_409ba0

            mov BYTE PTR [R8],CL
            movzx EAX,WORD PTR [R10+4]
            mov BYTE PTR [R8+1],AL
            movzx EAX,WORD PTR [R10+6]
            mov BYTE PTR [R8+2],AL
.L_409b6e:

            add R8,3
            add RSI,4
            cmp R8,RBX
            je .L_409630
.L_409b7f:

            movzx EDX,BYTE PTR [RSI+3]
            cmp DL,255
            jne .L_409b50

            movzx EAX,BYTE PTR [RSI]
            mov BYTE PTR [R8],AL
            movzx EAX,BYTE PTR [RSI+1]
            mov BYTE PTR [R8+1],AL
            movzx EAX,BYTE PTR [RSI+2]
            mov BYTE PTR [R8+2],AL
            jmp .L_409b6e
.L_409ba0:

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
            jmp .L_409b6e
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409c10:

            xor ECX,ECX
            test R11,R11
            mov R9D,255
            jne .L_409c41

            jmp .L_408ee8
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409c28:

            test AL,AL
            jne .L_409c58

            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI+RCX*1],AL
.L_409c34:

            add RCX,1
            cmp R11,RCX
            je .L_409630
.L_409c41:

            movzx EAX,BYTE PTR [RSI+RCX*2+1]
            cmp AL,255
            jne .L_409c28

            movzx EAX,BYTE PTR [RSI+RCX*2]
            mov BYTE PTR [RSI+RCX*1],AL
            jmp .L_409c34
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409c58:

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
            jmp .L_409c34
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_409c80:

            xor R8D,R8D
            test R11,R11
            jne .L_409ca1

            jmp .L_408f14
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_409c90:

            add R8,1
            add RSI,6
            cmp R11,R8
            je .L_409630
.L_409ca1:

            movzx EAX,BYTE PTR [RSI]
            movzx ECX,BYTE PTR [RSI+1]
            shl EAX,8
            add EAX,ECX
            cmp WORD PTR [RDX+2],AX
            jne .L_409c90

            movzx EAX,BYTE PTR [RSI+2]
            movzx ECX,BYTE PTR [RSI+3]
            shl EAX,8
            add EAX,ECX
            cmp WORD PTR [RDX+4],AX
            jne .L_409c90

            movzx EAX,BYTE PTR [RSI+4]
            movzx ECX,BYTE PTR [RSI+5]
            shl EAX,8
            add EAX,ECX
            cmp WORD PTR [RDX+6],AX
            jne .L_409c90

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
            jmp .L_409c90
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409d10:

            test R11,R11
            je .L_408f14

            lea RCX,QWORD PTR [R11+R11*2]
            add RCX,RSI
            jmp .L_409d35
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409d28:

            add RSI,3
            cmp RSI,RCX
            je .L_409630
.L_409d35:

            movzx EAX,BYTE PTR [RSI]
            cmp AX,WORD PTR [RDX+2]
            jne .L_409d28

            movzx EAX,BYTE PTR [RSI+1]
            cmp AX,WORD PTR [RDX+4]
            jne .L_409d28

            movzx EAX,BYTE PTR [RSI+2]
            cmp AX,WORD PTR [RDX+6]
            jne .L_409d28

            movzx EAX,WORD PTR [R10+2]
            mov BYTE PTR [RSI],AL
            movzx EAX,WORD PTR [R10+4]
            mov BYTE PTR [RSI+1],AL
            movzx EAX,WORD PTR [R10+6]
            mov BYTE PTR [RSI+2],AL
            jmp .L_409d28
.L_409d6b:

            xor EBX,EBX
            test R11,R11
            mov R9D,4
            mov R12D,4
            mov EBP,3855
            jne .L_409da7

            jmp .L_408f14
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409d90:

            add RSI,1
            mov R9D,4
.L_409d9a:

            add RBX,1
            cmp R11,RBX
            je .L_409630
.L_409da7:

            movzx EAX,BYTE PTR [RSI]
            mov ECX,R9D
            mov R8D,EAX
            sar EAX,CL
            movzx ECX,WORD PTR [RDX+8]
            and EAX,15
            cmp EAX,ECX
            jne .L_409ddd

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
.L_409ddd:

            test R9D,R9D
            je .L_409d90

            sub R9D,4
            jmp .L_409d9a
.L_409de8:

            xor EBX,EBX
            test R11,R11
            mov R9D,6
            mov R12D,6
            mov EBP,16191
            jne .L_409e1f

            jmp .L_408f14
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_409e08:

            add RSI,1
            mov R9D,6
.L_409e12:

            add RBX,1
            cmp R11,RBX
            je .L_409630
.L_409e1f:

            movzx EAX,BYTE PTR [RSI]
            mov ECX,R9D
            mov R8D,EAX
            sar EAX,CL
            movzx ECX,WORD PTR [RDX+8]
            and EAX,3
            cmp EAX,ECX
            jne .L_409e55

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
.L_409e55:

            test R9D,R9D
            je .L_409e08

            sub R9D,2
            jmp .L_409e12
.L_409e60:

            test R11,R11
            lea RCX,QWORD PTR [RSI+R11*1]
            je .L_408f14

            nop
            nop
            nop
.L_409e70:

            movzx EAX,BYTE PTR [RSI]
            cmp AX,WORD PTR [RDX+8]
            jne .L_409e80

            movzx EAX,WORD PTR [R10+8]
            mov BYTE PTR [RSI],AL
.L_409e80:

            add RSI,1
            cmp RSI,RCX
            jne .L_409e70

            jmp .L_409630
.L_409e8e:

            nop
            nop
.L_409e90:

            movzx R9D,BYTE PTR [RDI+17]
            mov RAX,RCX
            mov ECX,R8D
            mov R8,QWORD PTR [RDI]
            cmp R9B,8
            ja .L_409f70

            test RDX,RDX
            je .L_409fb8

            movzx R10D,BYTE PTR [RDI+16]
            cmp R10B,2
            je .L_40a058

            jbe .L_409fc0

            cmp R10B,4
            je .L_40a008

            cmp R10B,6
            jne .L_40a340
.L_409eda:

            cmp R9B,8
            je .L_40a1a0

            xor EDI,EDI
            test R8,R8
            je .L_40a3b0

            nop
.L_409ef0:

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
            jne .L_409ef0

            ret 
.L_409f70:

            test RAX,RAX
            je .L_409fa8

            cmp R9B,16
            jne .L_409fb0

            movzx R10D,BYTE PTR [RDI+16]
            cmp R10B,2
            je .L_40a0a0

            jbe .L_40a130

            cmp R10B,4
            je .L_40a008

            cmp R10B,6
            je .L_409eda

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409fa8:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409fb0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409fb8:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409fc0:

            test R10B,R10B
            jne .L_40a348
.L_409fc9:

            cmp R9B,2
            push R14
.L_409fcf:

            push R13
            push R12
            push RBP
            push RBX
            je .L_40a1e0

            cmp R9B,4
            je .L_40a140

            cmp R9B,8
            je .L_40a3a0
.L_409fef:

            cmp R9B,16
            je .L_40a350
.L_409ff9:

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
.L_40a008:

            cmp R9B,8
            je .L_40a310

            xor EDI,EDI
            test R8,R8
            je .L_40a3b8

            nop
            nop
            nop
.L_40a020:

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
            jne .L_40a020

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40a058:

            cmp R9B,8
            jne .L_40a0a0

            test R8,R8
            je .L_409fa8

            lea RCX,QWORD PTR [R8+R8*2]
            add RCX,RSI
            nop
            nop
.L_40a070:

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
            jne .L_40a070

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a0a0:

            xor EDI,EDI
            test R8,R8
            je .L_40a3c0

            nop
            nop
            nop
            nop
            nop
.L_40a0b0:

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
            jne .L_40a0b0

            ret 
.L_40a130:

            test R10B,R10B
            je .L_409fc9

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a140:

            test R8,R8
            je .L_409ff9
.L_40a149:

            xor R9D,R9D
            nop
            nop
            nop
            nop
.L_40a150:

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
            ja .L_40a150

            jmp .L_409ff9
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40a1a0:

            test R8,R8
            je .L_409fa8

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
.L_40a1b0:

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
            jne .L_40a1b0

            ret 
          .byte 0x90
.L_40a1e0:

            test R8,R8
            je .L_409ff9

            mov R11,RSI
            xor EBX,EBX
            nop
            nop
.L_40a1f0:

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
            ja .L_40a1f0

            movzx R9D,BYTE PTR [RDI+17]
            cmp R9B,4
            je .L_40a149

            cmp R9B,8
            jne .L_409fef
.L_40a2ea:

            add R8,RSI
            nop
            nop
            nop
.L_40a2f0:

            movzx EAX,BYTE PTR [RSI]
            add RSI,1
            movzx EAX,BYTE PTR [RDX+RAX*1]
            mov BYTE PTR [RSI-1],AL
            cmp RSI,R8
            jne .L_40a2f0

            jmp .L_409ff9
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a310:

            test R8,R8
            je .L_409fa8

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
.L_40a320:

            movzx ECX,BYTE PTR [RSI+RAX*2]
            movzx ECX,BYTE PTR [RDX+RCX*1]
            mov BYTE PTR [RSI+RAX*2],CL
            add RAX,1
            cmp R8,RAX
            jne .L_40a320

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
.L_40a340:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a348:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a350:

            test R8,R8
            je .L_409ff9

            xor EDI,EDI
            nop
            nop
            nop
            nop
            nop
.L_40a360:

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
            jne .L_40a360

            jmp .L_409ff9
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a3a0:

            test R8,R8
            jne .L_40a2ea

            jmp .L_409ff9
          .byte 0x66
          .byte 0x90
.L_40a3b0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a3b8:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a3c0:

            ret 
.L_40a3c2:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40a3d0:

            cmp BYTE PTR [RDI+16],3
            je .L_40a3e0

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a3e0:

            mov R11,RCX
            movzx ECX,BYTE PTR [RDI+17]
            push R12
            mov R10,QWORD PTR [RDI]
            push RBP
            push RBX
.L_40a3ee:

            cmp CL,7
            ja .L_40a4a0

            lea R9,QWORD PTR [R10-1]
            cmp CL,2
            lea RAX,QWORD PTR [RSI+R9*1]
            je .L_40a530

            cmp CL,4
            je .L_40a5e8

            cmp CL,1
            je .L_40a590
.L_40a41a:

            mov BYTE PTR [RDI+17],8
            mov BYTE PTR [RDI+19],8
            mov QWORD PTR [RDI+8],R10
.L_40a426:

            test R11,R11
            je .L_40a4c8

            test R10,R10
            lea RCX,QWORD PTR [RSI+R10*4-1]
            je .L_40a4b0

            mov R9,RAX
            sub R9,R10
            jmp .L_40a489
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a448:

            mov BYTE PTR [RCX],255
.L_40a44b:

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
            je .L_40a4b0
.L_40a489:

            movzx EBX,BYTE PTR [RAX]
            cmp EBX,R8D
            jge .L_40a448

            movzx ESI,BYTE PTR [R11+RBX*1]
            mov BYTE PTR [RCX],SIL
            jmp .L_40a44b
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a4a0:

            cmp CL,8
            je .L_40a640
.L_40a4a9:

            pop RBX
.L_40a4aa:

            pop RBP
            pop R12
            ret 
          .byte 0x66
          .byte 0x90
.L_40a4b0:

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
.L_40a4c8:

            lea R8,QWORD PTR [R10+R10*2]
            test R10,R10
            lea RCX,QWORD PTR [RSI+R8*1-1]
            je .L_40a51e

            mov R9,RAX
            sub R9,R10
            nop
            nop
            nop
            nop
.L_40a4e0:

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
            jne .L_40a4e0
.L_40a51e:

            mov QWORD PTR [RDI+8],R8
            mov DWORD PTR [RDI+16],402851842
            jmp .L_40a4a9
          .byte 0x66
          .byte 0x90
.L_40a530:

            lea RCX,QWORD PTR [R10+3]
            shr R9,2
            add R9,RSI
            not RCX
            add RCX,RCX
            and ECX,6
            test R10,R10
            je .L_40a41a

            lea R12,QWORD PTR [RSI-1]
            mov RBP,RAX
            jmp .L_40a570
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
.L_40a560:

            add ECX,2
.L_40a563:

            sub RBP,1
            cmp RBP,R12
            je .L_40a41a
.L_40a570:

            movzx EBX,BYTE PTR [R9]
            sar EBX,CL
            and EBX,3
            cmp ECX,6
            mov BYTE PTR [RBP],BL
            jne .L_40a560

            sub R9,1
            xor ECX,ECX
            jmp .L_40a563
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a590:

            lea ECX,DWORD PTR [R10+7]
            shr R9,3
            lea R12,QWORD PTR [RSI-1]
            add R9,RSI
            mov RBP,RAX
            not ECX
            and ECX,7
            test R10,R10
            jne .L_40a5c8

            jmp .L_40a41a
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a5b8:

            add ECX,1
.L_40a5bb:

            sub RBP,1
            cmp RBP,R12
            je .L_40a41a
.L_40a5c8:

            movzx EBX,BYTE PTR [R9]
            sar EBX,CL
            and EBX,1
            cmp ECX,7
            mov BYTE PTR [RBP],BL
            jne .L_40a5b8

            sub R9,1
            xor ECX,ECX
            jmp .L_40a5bb
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a5e8:

            lea RCX,QWORD PTR [R10*4]
            shr R9,1
            lea RBP,QWORD PTR [RSI+R9*1]
            and ECX,4
            test R10,R10
            je .L_40a41a

            lea R12,QWORD PTR [RSI-1]
            mov RBX,RAX
            jmp .L_40a620
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40a610:

            add ECX,4
.L_40a613:

            sub RBX,1
            cmp RBX,R12
            je .L_40a41a
.L_40a620:

            movzx R9D,BYTE PTR [RBP]
            sar R9D,CL
            and R9D,15
            cmp ECX,4
            mov BYTE PTR [RBX],R9B
            jne .L_40a610

            sub RBP,1
            xor ECX,ECX
            jmp .L_40a613
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40a640:

            lea RAX,QWORD PTR [RSI+R10*1-1]
            jmp .L_40a426
.L_40a64a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_40a650:

            movzx EAX,BYTE PTR [RDI+16]
            push R13
            mov R10,QWORD PTR [RDI]
            push R12
            push RBP
            push RBX
.L_40a65d:

            test AL,AL
            jne .L_40a6c0

            test RDX,RDX
            movzx EAX,BYTE PTR [RDI+17]
            je .L_40a700

            cmp AL,7
            movzx R11D,WORD PTR [RDX+8]
            jbe .L_40a7c8

            cmp AL,8
            je .L_40a7e8

            cmp AL,16
            je .L_40a730
.L_40a68b:

            add EAX,EAX
            mov BYTE PTR [RDI+16],4
            mov BYTE PTR [RDI+18],2
            cmp AL,7
            mov BYTE PTR [RDI+19],AL
            ja .L_40a6ef
.L_40a69c:

            movzx EAX,AL
            imul RAX,R10
            add RAX,7
            shr RAX,3
.L_40a6ab:

            mov QWORD PTR [RDI+8],RAX
.L_40a6af:

            pop RBX
.L_40a6b0:

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
.L_40a6c0:

            test RDX,RDX
            je .L_40a6af

            cmp AL,2
            jne .L_40a6af

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,8
            je .L_40a8d8

            cmp AL,16
            je .L_40aa58
.L_40a6dd:

            shl EAX,2
            mov BYTE PTR [RDI+16],6
            mov BYTE PTR [RDI+18],4
            cmp AL,7
            mov BYTE PTR [RDI+19],AL
            jbe .L_40a69c
.L_40a6ef:

            shr AL,3
            movzx EAX,AL
            imul RAX,R10
            jmp .L_40a6ab
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a700:

            cmp AL,7
            ja .L_40a6af

            cmp AL,2
            je .L_40a970

            cmp AL,4
            je .L_40a9f0

            cmp AL,1
            je .L_40a960

            mov BYTE PTR [RDI+17],8
            mov BYTE PTR [RDI+19],8
            mov QWORD PTR [RDI+8],R10
            jmp .L_40a6af
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a730:

            mov EAX,R11D
            test R10,R10
            movzx EBX,AH
            mov RAX,QWORD PTR [RDI+8]
            lea RDX,QWORD PTR [RSI+RAX*1-1]
            lea RAX,QWORD PTR [RSI+RAX*2-1]
            je .L_40ab50

            xor ECX,ECX
            jmp .L_40a77f
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a758:

            mov BYTE PTR [RAX],255
            mov BYTE PTR [RAX-1],255
.L_40a75f:

            movzx ESI,BYTE PTR [RDX]
            sub RDX,2
            add RCX,1
            sub RAX,4
            mov BYTE PTR [RAX+2],SIL
            movzx ESI,BYTE PTR [RDX+1]
            cmp R10,RCX
            mov BYTE PTR [RAX+1],SIL
            je .L_40a7b8
.L_40a77f:

            cmp BYTE PTR [RDX-1],BL
            jne .L_40a758

            cmp BYTE PTR [RDX],R11B
            jne .L_40a758

            mov BYTE PTR [RAX],0
            mov BYTE PTR [RAX-1],0
            jmp .L_40a75f
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a798:

            test RDX,RDX
            mov BYTE PTR [RDI+17],8
            mov BYTE PTR [RDI+19],8
            mov QWORD PTR [RDI+8],0
            je .L_40a6af

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40a7b8:

            movzx EAX,BYTE PTR [RDI+17]
            jmp .L_40a68b
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a7c8:

            cmp AL,2
            je .L_40ab38

            cmp AL,4
            je .L_40ab20

            cmp AL,1
            je .L_40a840

            mov BYTE PTR [RDI+17],8
            mov BYTE PTR [RDI+19],8
            mov QWORD PTR [RDI+8],R10
.L_40a7e8:

            test R10,R10
            movzx R11D,R11B
            lea RDX,QWORD PTR [RSI+R10*1-1]
            lea RAX,QWORD PTR [RSI+R10*2-1]
            je .L_40a7b8

            nop
            nop
            nop
            nop
            nop
.L_40a800:

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
.L_40a810:

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
            jne .L_40a810

            movzx EAX,BYTE PTR [RDI+17]
            jmp .L_40a68b
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40a840:

            mov ECX,R11D
            and ECX,1
            mov R11D,ECX
            shl R11D,8
            sub R11D,ECX
.L_40a850:

            lea R9,QWORD PTR [R10-1]
            lea ECX,DWORD PTR [R10+7]
            mov RBX,R9
            not ECX
            lea R8,QWORD PTR [RSI+R9*1]
            shr RBX,3
            and ECX,7
            add RBX,RSI
            test R10,R10
            je .L_40a798

            lea RBP,QWORD PTR [RSI-1]
            jmp .L_40a88c
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a880:

            add ECX,1
.L_40a883:

            sub R8,1
            cmp R8,RBP
            je .L_40a8b0
.L_40a88c:

            movzx EAX,BYTE PTR [RBX]
            sar EAX,CL
            shl EAX,7
            sar AL,7
            cmp ECX,7
            mov BYTE PTR [R8],AL
            jne .L_40a880

            sub RBX,1
            xor ECX,ECX
            jmp .L_40a883
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a8b0:

            test RDX,RDX
            mov BYTE PTR [RDI+17],8
            mov BYTE PTR [RDI+19],8
            mov QWORD PTR [RDI+8],R10
            je .L_40a6af

            lea RDX,QWORD PTR [RSI+R9*1]
            lea RAX,QWORD PTR [RSI+R10*2-1]
            jmp .L_40a800
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a8d8:

            movzx R8D,BYTE PTR [RDX+2]
            movzx R9D,BYTE PTR [RDX+4]
            lea R11,QWORD PTR [R10*4]
            movzx EBX,BYTE PTR [RDX+6]
            mov RDX,QWORD PTR [RDI+8]
            test R10,R10
            lea RCX,QWORD PTR [RSI+R11*1-1]
            lea RDX,QWORD PTR [RSI+RDX*1-1]
            je .L_40ab70

            mov RSI,R10
            sub RSI,R11
            add RSI,RDX
            jmp .L_40a934
.L_40a910:

            mov BYTE PTR [RCX],255
.L_40a913:

            movzx EAX,BYTE PTR [RDX]
            sub RDX,3
            sub RCX,4
            mov BYTE PTR [RCX+3],AL
            movzx EAX,BYTE PTR [RDX+2]
            mov BYTE PTR [RCX+2],AL
            movzx EAX,BYTE PTR [RDX+1]
            cmp RDX,RSI
            mov BYTE PTR [RCX+1],AL
            je .L_40a950
.L_40a934:

            cmp BYTE PTR [RDX-2],R8B
            jne .L_40a910

            cmp BYTE PTR [RDX-1],R9B
            jne .L_40a910

            cmp BYTE PTR [RDX],BL
            jne .L_40a910

            mov BYTE PTR [RCX],0
            jmp .L_40a913
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a950:

            movzx EAX,BYTE PTR [RDI+17]
            jmp .L_40a6dd
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a960:

            xor R11D,R11D
            jmp .L_40a850
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a970:

            xor R11D,R11D
.L_40a973:

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
            je .L_40a798

            lea RBP,QWORD PTR [RSI-1]
            jmp .L_40a9b8
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a9a8:

            add ECX,2
.L_40a9ab:

            sub RAX,1
            cmp RAX,RBP
            je .L_40a8b0
.L_40a9b8:

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
            jne .L_40a9a8

            sub RBX,1
            xor ECX,ECX
            jmp .L_40a9ab
          .byte 0x90
.L_40a9f0:

            xor R11D,R11D
.L_40a9f3:

            lea R9,QWORD PTR [R10-1]
            mov ECX,R10D
            and ECX,1
            mov RBP,R9
            shl ECX,2
            lea R8,QWORD PTR [RSI+R9*1]
            shr RBP,1
            add RBP,RSI
            test R10,R10
            je .L_40a798

            lea R12,QWORD PTR [RSI-1]
            jmp .L_40aa32
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40aa20:

            mov ECX,4
.L_40aa25:

            sub R8,1
            cmp R8,R12
            je .L_40a8b0
.L_40aa32:

            movzx EAX,BYTE PTR [RBP]
            sar EAX,CL
            and EAX,15
            mov EBX,EAX
            shl EBX,4
            or EAX,EBX
            cmp ECX,4
            mov BYTE PTR [R8],AL
            jne .L_40aa20

            sub RBP,1
            xor ECX,ECX
            jmp .L_40aa25
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40aa58:

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
            je .L_40ab70

            xor EAX,EAX
            jmp .L_40aaeb
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40aaa0:

            mov BYTE PTR [RDX],255
            mov BYTE PTR [RDX-1],255
.L_40aaa7:

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
            je .L_40a950
.L_40aaeb:

            cmp BYTE PTR [RCX-5],BL
            jne .L_40aaa0

            cmp BYTE PTR [RCX-4],R8B
            jne .L_40aaa0

            cmp BYTE PTR [RCX-3],R13B
            jne .L_40aaa0

            cmp BYTE PTR [RCX-2],R9B
            jne .L_40aaa0

            cmp BYTE PTR [RCX-1],R12B
            jne .L_40aaa0

            cmp BYTE PTR [RCX],R11B
            jne .L_40aaa0

            mov BYTE PTR [RDX],0
            mov BYTE PTR [RDX-1],0
            jmp .L_40aaa7
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
.L_40ab20:

            and R11D,15
            mov EAX,R11D
            shl EAX,4
            add R11D,EAX
            jmp .L_40a9f3
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40ab38:

            and R11D,3
            lea ECX,DWORD PTR [R11+R11*4]
            mov R11D,ECX
            shl R11D,4
            add R11D,ECX
            jmp .L_40a973
          .byte 0x90
.L_40ab50:

            mov EAX,8194
            mov BYTE PTR [RDI+16],4
            mov WORD PTR [RDI+18],AX
            mov EAX,32
            jmp .L_40a6ef
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40ab70:

            shl EAX,2
            mov BYTE PTR [RDI+16],6
            mov BYTE PTR [RDI+18],4
            mov BYTE PTR [RDI+19],AL
            jmp .L_40a6ef
.L_40ab83:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ab90:

            movzx EAX,BYTE PTR [RDI+16]
            mov R8,QWORD PTR [RDI]
            cmp AL,2
            je .L_40ac48

            cmp AL,6
            je .L_40abc0

            test RCX,RCX
            je .L_40abb6

            cmp AL,3
            jne .L_40abb6

            cmp BYTE PTR [RDI+17],8
            je .L_40acb0
.L_40abb6:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40abc0:

            test RDX,RDX
            je .L_40abb6

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,8
            jne .L_40abb6

            test R8,R8
            je .L_40acd8

            xor ECX,ECX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40abe0:

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
            jne .L_40abe0
.L_40ac1a:

            movzx EAX,BYTE PTR [RDI+17]
            mov BYTE PTR [RDI+16],3
            mov BYTE PTR [RDI+18],1
            cmp AL,7
            mov BYTE PTR [RDI+19],AL
            ja .L_40ace5

            imul R8,RAX
            add R8,7
            shr R8,3
.L_40ac3d:

            mov QWORD PTR [RDI+8],R8
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40ac48:

            test RDX,RDX
            je .L_40abb6

            movzx EAX,BYTE PTR [RDI+17]
            cmp AL,8
            jne .L_40abb6

            test R8,R8
            je .L_40acd8

            lea R10,QWORD PTR [R8+R8*2]
            mov R9,RSI
            add R10,RSI
            nop
            nop
            nop
            nop
.L_40ac70:

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
            jne .L_40ac70

            jmp .L_40ac1a
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40acb0:

            test R8,R8
            je .L_40abb6

            add R8,RSI
            nop
            nop
            nop
            nop
.L_40acc0:

            movzx EAX,BYTE PTR [RSI]
            add RSI,1
            movzx EAX,BYTE PTR [RCX+RAX*1]
            mov BYTE PTR [RSI-1],AL
            cmp RSI,R8
            jne .L_40acc0

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40acd8:

            mov EDX,2049
            mov BYTE PTR [RDI+16],3
            mov WORD PTR [RDI+18],DX
.L_40ace5:

            shr AL,3
            movzx EAX,AL
            imul R8,RAX
            jmp .L_40ac3d
.L_40acf4:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ad00:

            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,72
.L_40ad09:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+56],RAX
            xor EAX,EAX
            cmp QWORD PTR [RDI+528],0
            je .L_40b388
.L_40ad27:

            test BYTE PTR [RBX+288],64
            je .L_40b0d8
.L_40ad34:

            mov RAX,QWORD PTR [RBX+296]
            test AH,16
            je .L_40ad7e

            cmp BYTE PTR [RBX+584],3
            lea RBP,QWORD PTR [RBX+568]
            je .L_40b2b8

            cmp WORD PTR [RBX+618],0
            mov RCX,QWORD PTR [RBX+528]
            lea RSI,QWORD PTR [RCX+1]
            je .L_40ad74

            test EAX,33554432
            jne .L_40b370
.L_40ad74:

            xor EDX,EDX
            mov RDI,RBP
            call .L_40a650
.L_40ad7e:

            mov RDX,QWORD PTR [RBX+288]
            and EDX,4194304
            jne .L_40b280
.L_40ad91:

            mov RDX,QWORD PTR [RBX+296]
            test EDX,6291456
            mov RAX,RDX
            jne .L_40b200
.L_40ada7:

            test DH,64
            je .L_40adb9

            test BYTE PTR [RBX+281],8
            je .L_40b2f0
.L_40adb9:

            test DL,128
            je .L_40af10

            cmp WORD PTR [RBX+618],0
            jne .L_40af90

            movzx ECX,BYTE PTR [RBX+630]
            test CL,4
            jne .L_40af90

            test DH,32
            je .L_40adf3
.L_40ade5:

            test CL,4
            je .L_40af20

            nop
            nop
.L_40adf0:

            mov RAX,RDX
.L_40adf3:

            test AH,4
            je .L_40ae05

            cmp BYTE PTR [RBX+585],16
            je .L_40b348
.L_40ae05:

            test AL,64
            jne .L_40b1c0
.L_40ae0d:

            test AL,32
            jne .L_40b198
.L_40ae15:

            test AL,8
            jne .L_40b168
.L_40ae1d:

            test AL,4
            jne .L_40b140
.L_40ae25:

            test AL,1
            jne .L_40b118
.L_40ae2d:

            test EAX,65536
            jne .L_40b0f0
.L_40ae38:

            test AH,64
            je .L_40ae4a

            test BYTE PTR [RBX+281],8
            jne .L_40b320
.L_40ae4a:

            test AH,128
            jne .L_40b028

            test EAX,524288
            jne .L_40b05f
.L_40ae5e:

            test EAX,131072
            jne .L_40b088
.L_40ae69:

            test AL,16
            jne .L_40b0ae
.L_40ae71:

            test EAX,1048576
            je .L_40aef0

            mov RAX,QWORD PTR [RBX+248]
            test RAX,RAX
            je .L_40ae9b

            mov RCX,QWORD PTR [RBX+528]
            lea RSI,QWORD PTR [RBX+568]
            mov RDI,RBX
            lea RDX,QWORD PTR [RCX+1]
            call RAX
.L_40ae9b:

            movzx EAX,BYTE PTR [RBX+272]
            test AL,AL
            jne .L_40af68

            movzx EDX,BYTE PTR [RBX+273]
            movzx EAX,BYTE PTR [RBX+585]
            test DL,DL
            jne .L_40af7d
.L_40aec0:

            movzx EDX,BYTE PTR [RBX+586]
.L_40aec7:

            imul EAX,EDX
            mov RDX,QWORD PTR [RBX+568]
            cmp AL,7
            mov BYTE PTR [RBX+587],AL
            jbe .L_40b2a0

            shr AL,3
            movzx EAX,AL
            imul RAX,RDX
.L_40aee9:

            mov QWORD PTR [RBX+576],RAX
.L_40aef0:

            mov RAX,QWORD PTR [RSP+56]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40b42b

            add RSP,72
.L_40af08:

            pop RBX
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40af10:

            test DH,32
            je .L_40adf3
.L_40af19:

            movzx ECX,BYTE PTR [RBX+630]
.L_40af20:

            cmp CL,3
            je .L_40adf0

            mov RAX,QWORD PTR [RBX+528]
            mov RCX,QWORD PTR [RBX+736]
            lea RDI,QWORD PTR [RBX+568]
            mov RDX,QWORD PTR [RBX+712]
            mov R8D,DWORD PTR [RBX+696]
            lea RSI,QWORD PTR [RAX+1]
            call .L_409e90

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40adf3
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40af68:

            movzx EDX,BYTE PTR [RBX+273]
            mov BYTE PTR [RBX+585],AL
            test DL,DL
            je .L_40aec0
.L_40af7d:

            mov BYTE PTR [RBX+586],DL
            jmp .L_40aec7
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40af90:

            mov RAX,QWORD PTR [RBX+528]
            mov R9,QWORD PTR [RBX+712]
            lea RDX,QWORD PTR [RBX+784]
            lea RCX,QWORD PTR [RBX+648]
            lea RDI,QWORD PTR [RBX+568]
            lea R8,QWORD PTR [RBX+658]
            lea RSI,QWORD PTR [RAX+1]
            mov EAX,DWORD PTR [RBX+696]
            push RAX
.L_40afc5:

            push QWORD PTR [RBX+752]
            push QWORD PTR [RBX+744]
            push QWORD PTR [RBX+736]
            push QWORD PTR [RBX+728]
            push QWORD PTR [RBX+720]
            call .L_408d50

            mov RDX,QWORD PTR [RBX+296]
            add RSP,48
.L_40aff3:

            test DH,32
            mov RAX,RDX
            je .L_40adf3

            test DL,128
            je .L_40af19

            cmp WORD PTR [RBX+618],0
            jne .L_40adf0

            movzx ECX,BYTE PTR [RBX+630]
            jmp .L_40ade5
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b028:

            mov RAX,QWORD PTR [RBX+528]
            movzx EDX,WORD PTR [RBX+638]
            lea RDI,QWORD PTR [RBX+568]
            mov RCX,QWORD PTR [RBX+288]
            lea RSI,QWORD PTR [RAX+1]
            call .L_408000

            mov RAX,QWORD PTR [RBX+296]
            test EAX,524288
            je .L_40ae5e
.L_40b05f:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_407f40

            mov RAX,QWORD PTR [RBX+296]
            test EAX,131072
            je .L_40ae69
.L_40b088:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_407e00

            mov RAX,QWORD PTR [RBX+296]
            test AL,16
            je .L_40ae71
.L_40b0ae:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_403af0

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40ae71
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b0d8:

            lea RSI,QWORD PTR [RIP+.L_40cdc4]
            mov RDI,RBX
            call .L_40d4b0

            jmp .L_40ad34
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40b0f0:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_403b40

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40ae38
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b118:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_403ec0

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40ae2d
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b140:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_407a50

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40ae25
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b168:

            mov RAX,QWORD PTR [RBX+528]
            lea RDX,QWORD PTR [RBX+765]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_407bb0

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40ae1d
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b198:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_403a60

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40ae15
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b1c0:

            mov RAX,QWORD PTR [RBX+528]
            mov RCX,QWORD PTR [RBX+968]
            lea RDI,QWORD PTR [RBX+568]
            mov RDX,QWORD PTR [RBX+960]
            lea RSI,QWORD PTR [RAX+1]
            call .L_40ab90

            cmp QWORD PTR [RBX+576],0
            je .L_40b3d0
.L_40b1f3:

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40ae0d
          .byte 0x90
.L_40b200:

            mov RAX,QWORD PTR [RBX+528]
            lea RSI,QWORD PTR [RBX+568]
            mov RDI,RBX
            lea RDX,QWORD PTR [RAX+1]
            call .L_4085f0

            test EAX,EAX
            je .L_40b268

            mov RDX,QWORD PTR [RBX+296]
            mov BYTE PTR [RBX+1032],1
            mov RCX,RDX
            mov RAX,RDX
            and ECX,6291456
            cmp RCX,4194304
            je .L_40b3e8
.L_40b245:

            cmp RCX,2097152
            jne .L_40ada7

            lea RSI,QWORD PTR [RIP+.L_40cc68]
            mov RDI,RBX
            call .L_40d4b0

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40b268:

            mov RDX,QWORD PTR [RBX+296]
            mov RAX,RDX
            jmp .L_40ada7
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b280:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            or DL,128
            lea RSI,QWORD PTR [RAX+1]
            call .L_403ba0

            jmp .L_40ad91
          .byte 0x90
.L_40b2a0:

            movzx EAX,AL
            imul RAX,RDX
            add RAX,7
            shr RAX,3
            jmp .L_40aee9
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40b2b8:

            mov RDX,QWORD PTR [RBX+608]
            test RDX,RDX
            je .L_40b410
.L_40b2c8:

            mov RAX,QWORD PTR [RBX+528]
            movzx R8D,WORD PTR [RBX+618]
            mov RDI,RBP
            mov RCX,QWORD PTR [RBX+776]
            lea RSI,QWORD PTR [RAX+1]
            call .L_40a3d0

            jmp .L_40ad7e
          .byte 0x90
.L_40b2f0:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_4083e0

            mov RDX,QWORD PTR [RBX+296]
            mov RAX,RDX
            jmp .L_40adb9
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
.L_40b320:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_4083e0

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40ae4a
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b348:

            mov RAX,QWORD PTR [RBX+528]
            lea RDI,QWORD PTR [RBX+568]
            lea RSI,QWORD PTR [RAX+1]
            call .L_4069a0

            mov RAX,QWORD PTR [RBX+296]
            jmp .L_40ae05
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b370:

            lea RDX,QWORD PTR [RBX+784]
            mov RDI,RBP
            call .L_40a650

            jmp .L_40ad7e
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40b388:

            movzx EAX,BYTE PTR [RDI+628]
            mov RBP,RSP
            mov R9,QWORD PTR [RDI+512]
            sub RSP,8
.L_40b39d:

            lea R8,QWORD PTR [RIP+.L_40cc18]
            mov EDX,1
            mov ECX,50
            mov ESI,50
            mov RDI,RBP
            push RAX
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RSI,RBP
            mov RDI,RBX
            call .L_40d4b0

            pop RAX
            pop RDX
            jmp .L_40ad27
.L_40b3d0:

            lea RSI,QWORD PTR [RIP+.L_40cc90]
            mov RDI,RBX
            call .L_40d4b0

            jmp .L_40b1f3
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40b3e8:

            lea RSI,QWORD PTR [RIP+.L_40cc68]
            mov RDI,RBX
            call .L_40d580

            mov RDX,QWORD PTR [RBX+296]
            mov RCX,RDX
            mov RAX,RDX
            and ECX,6291456
            jmp .L_40b245
          .byte 0x90
.L_40b410:

            lea RSI,QWORD PTR [RIP+.L_40cc40]
            mov RDI,RBX
            call .L_40d4b0

            mov RDX,QWORD PTR [RBX+608]
            jmp .L_40b2c8
.L_40b42b:

            call __stack_chk_fail@PLT
.L_40b430:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            pxor XMM1,XMM1
            sub RSP,88
.L_40b445:

            cmp BYTE PTR [RDI+631],8
            movss XMM0,DWORD PTR [RDI+704]
            cvtss2sd XMM1,XMM0
            ja .L_40b513

            movsd XMM7,QWORD PTR [RIP+.L_40ce08]
            ucomisd XMM1,XMM7
            movsd QWORD PTR [RSP+64],XMM7
            ja .L_40b964

            movsd XMM7,QWORD PTR [RIP+.L_40cdd8]
            movsd QWORD PTR [RSP+56],XMM7
            movsd QWORD PTR [RSP],XMM7
.L_40b489:

            mov ESI,256
            mov RDI,RBX
            xor EBP,EBP
            call .L_40cfc0

            movsd XMM7,QWORD PTR [RIP+.L_40ce00]
            mov QWORD PTR [RBX+712],RAX
            movsd QWORD PTR [RSP+8],XMM7
            nop
            nop
            nop
.L_40b4b0:

            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP]
            cvtsi2sd XMM0,EBP
            divsd XMM0,QWORD PTR [RIP+.L_40ce10]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_40ce10]
            mov RDX,QWORD PTR [RBX+712]
            addsd XMM0,QWORD PTR [RSP+8]
            cvttsd2si EAX,XMM0
            mov BYTE PTR [RDX+RBP*1],AL
            add RBP,1
            cmp RBP,256
            jne .L_40b4b0

            test QWORD PTR [RBX+296],6291584
            jne .L_40bb20
.L_40b504:

            add RSP,88
.L_40b508:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_40b513:

            mov RAX,QWORD PTR [RDI+296]
            and EAX,1024
            test BYTE PTR [RDI+630],2
            jne .L_40b91c

            movzx EDI,BYTE PTR [RDI+763]
            mov DWORD PTR [RSP+24],EDI
.L_40b537:

            mov EDI,DWORD PTR [RSP+24]
            test EDI,EDI
            je .L_40b98c

            mov EDX,16
            sub EDX,DWORD PTR [RSP+24]
            cmp EDX,4
            jg .L_40b55a
.L_40b551:

            test RAX,RAX
            jne .L_40bc54
.L_40b55a:

            cmp EDX,8
            jle .L_40b9e6

            mov EBP,1
            mov QWORD PTR [RSP+48],8
            mov R12D,1
            xor R15D,R15D
            mov DWORD PTR [RSP+24],8
.L_40b582:

            movsd XMM7,QWORD PTR [RIP+.L_40ce08]
            mov EAX,DWORD PTR [RSP+24]
            ucomisd XMM1,XMM7
            mov DWORD PTR [RBX+696],EAX
            movsd QWORD PTR [RSP+64],XMM7
            jbe .L_40bb07

            mulss XMM0,DWORD PTR [RBX+700]
            movsd XMM7,QWORD PTR [RIP+.L_40cdd8]
            movsd QWORD PTR [RSP+56],XMM7
            cvtss2sd XMM0,XMM0
            divsd XMM7,XMM0
            movsd QWORD PTR [RSP+16],XMM7
.L_40b5c8:

            mov RSI,QWORD PTR [RSP+48]
            mov RDI,RBX
            call .L_40d050

            test QWORD PTR [RBX+296],1152
            lea EDX,DWORD PTR [RBP-1]
            mov QWORD PTR [RBX+736],RAX
            mov DWORD PTR [RSP+76],EDX
            je .L_40ba35

            lea R13,QWORD PTR [RDX*8+8]
            xor R14D,R14D
            jmp .L_40b608
.L_40b601:

            mov RAX,QWORD PTR [RBX+736]
.L_40b608:

            lea RBP,QWORD PTR [RAX+R14*1]
            mov ESI,512
            mov RDI,RBX
            add R14,8
            call .L_40cfc0

            cmp R13,R14
            mov QWORD PTR [RBP],RAX
            jne .L_40b601

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
            movsd XMM5,QWORD PTR [RIP+.L_40ce00]
            movsd QWORD PTR [RSP+8],XMM5
            pxor XMM5,XMM5
            cvtsi2sd XMM5,QWORD PTR [RSP+32]
            movsd QWORD PTR [RSP+16],XMM5
.L_40b680:

            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP]
            cvtsi2sd XMM0,R14D
            addsd XMM0,QWORD PTR [RSP+8]
            mulsd XMM0,QWORD PTR [RIP+.L_40ce18]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RSP+16]
            ucomisd XMM0,QWORD PTR [RIP+.L_40ce20]
            jae .L_40ba20

            cvttsd2si RAX,XMM0
.L_40b6ba:

            cmp RAX,R13
            jb .L_40b6f3

            mov ESI,R14D
            mov RDI,QWORD PTR [RBX+736]
            shl ESI,8
            or ESI,R14D
            nop
.L_40b6d0:

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
            jae .L_40b6d0
.L_40b6f3:

            add R14D,1
            cmp R14D,256
            jne .L_40b680

            cmp QWORD PTR [RSP+32],R13
            jbe .L_40b737

            mov RSI,QWORD PTR [RBX+736]
            nop
            nop
.L_40b710:

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
            jne .L_40b710
.L_40b737:

            test QWORD PTR [RBX+296],6291584
            je .L_40b504

            pxor XMM0,XMM0
            mov RSI,QWORD PTR [RSP+48]
            mov RDI,RBX
            movsd XMM5,QWORD PTR [RSP+56]
            lea R15,QWORD PTR [RIP+.L_40cda0]
            xor R12D,R12D
            cvtss2sd XMM0,DWORD PTR [RBX+700]
            divsd XMM5,XMM0
            movsd QWORD PTR [RSP+16],XMM5
            call .L_40d050

            mov EDX,DWORD PTR [RSP+76]
            movsd XMM7,QWORD PTR [RIP+.L_40ce28]
            mov QWORD PTR [RBX+752],RAX
            movsd QWORD PTR [RSP],XMM7
            lea RDI,QWORD PTR [RDX+1]
            mov QWORD PTR [RSP+40],RDI
            movsxd RDI,DWORD PTR [RSP+24]
            mov QWORD PTR [RSP+32],RDI
.L_40b7a6:

            lea R13,QWORD PTR [R12*8]
            mov ESI,512
            mov RDI,RBX
            lea RBP,QWORD PTR [RAX+R13*1]
            call .L_40cfc0

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
.L_40b7e8:

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
            jne .L_40b7e8

            add R12,1
            cmp QWORD PTR [RSP+40],R12
            jne .L_40b7a6

            pxor XMM0,XMM0
            cvtss2sd XMM0,DWORD PTR [RBX+704]
            ucomisd XMM0,QWORD PTR [RSP+64]
            jbe .L_40bc3d

            movsd XMM7,QWORD PTR [RSP+56]
            divsd XMM7,XMM0
            movsd QWORD PTR [RSP+16],XMM7
.L_40b86a:

            mov RSI,QWORD PTR [RSP+48]
            mov RDI,RBX
            lea R14,QWORD PTR [R12*8]
            xor R13D,R13D
            xor R12D,R12D
            call .L_40d050

            mov QWORD PTR [RBX+744],RAX
.L_40b88c:

            lea RBP,QWORD PTR [RAX+R12*1]
            mov ESI,512
            mov RDI,RBX
            mov R15,R13
            call .L_40cfc0

            shr R15,4
            mov QWORD PTR [RBP],RAX
            xor EBP,EBP
            nop
            nop
            nop
            nop
            nop
            nop
.L_40b8b0:

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
            jne .L_40b8b0

            add R12,8
            add R13,QWORD PTR [RSP+24]
            cmp R14,R12
            jne .L_40b88c

            add RSP,88
.L_40b911:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_40b91c:

            movzx EDX,BYTE PTR [RDI+761]
            movzx R14D,BYTE PTR [RDI+760]
            cmp R14B,DL
            cmovb R14D,EDX
            movzx EDX,BYTE PTR [RBX+762]
            movzx EDI,R14B
            mov DWORD PTR [RSP+24],EDI
            cmp EDX,EDI
            jle .L_40b537

            mov DWORD PTR [RSP+24],EDX
            mov EDX,16
            sub EDX,DWORD PTR [RSP+24]
            cmp EDX,4
            jle .L_40b551

            jmp .L_40b55a
.L_40b964:

            mulss XMM0,DWORD PTR [RDI+700]
            movsd XMM7,QWORD PTR [RIP+.L_40cdd8]
            movsd QWORD PTR [RSP+56],XMM7
            cvtss2sd XMM0,XMM0
            divsd XMM7,XMM0
            movsd QWORD PTR [RSP],XMM7
            jmp .L_40b489
.L_40b98c:

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
            jmp .L_40b582
.L_40b9e6:

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
            jmp .L_40b582
          .byte 0x90
.L_40ba20:

            subsd XMM0,QWORD PTR [RIP+.L_40ce20]
            cvttsd2si RAX,XMM0
            xor RAX,RBP
            jmp .L_40b6ba
.L_40ba35:

            lea RDI,QWORD PTR [RDX+1]
            movsd XMM7,QWORD PTR [RIP+.L_40ce00]
            movsd XMM5,QWORD PTR [RIP+.L_40ce28]
            lea R15,QWORD PTR [RIP+.L_40cda0]
            mov QWORD PTR [RSP+40],RDI
            movsxd RDI,DWORD PTR [RSP+24]
            movsd QWORD PTR [RSP+8],XMM7
            movsd QWORD PTR [RSP],XMM5
            xor R13D,R13D
            mov QWORD PTR [RSP+32],RDI
            nop
            nop
            nop
.L_40ba70:

            lea R12,QWORD PTR [R13*8]
            mov ESI,512
            mov RDI,RBX
            lea RBP,QWORD PTR [RAX+R12*1]
            call .L_40cfc0

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
.L_40baa8:

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
            jne .L_40baa8

            add R13,1
            cmp QWORD PTR [RSP+40],R13
            jne .L_40ba70

            jmp .L_40b737
.L_40bb07:

            movsd XMM7,QWORD PTR [RIP+.L_40cdd8]
            movsd QWORD PTR [RSP+56],XMM7
            movsd QWORD PTR [RSP+16],XMM7
            jmp .L_40b5c8
.L_40bb20:

            pxor XMM0,XMM0
            mov ESI,256
            movsd XMM7,QWORD PTR [RSP+56]
            mov RDI,RBX
            xor EBP,EBP
            cvtss2sd XMM0,DWORD PTR [RBX+700]
            divsd XMM7,XMM0
            movsd QWORD PTR [RSP],XMM7
            call .L_40cfc0

            mov QWORD PTR [RBX+728],RAX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40bb58:

            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP]
            cvtsi2sd XMM0,EBP
            divsd XMM0,QWORD PTR [RIP+.L_40ce10]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_40ce10]
            mov RDX,QWORD PTR [RBX+728]
            addsd XMM0,QWORD PTR [RSP+8]
            cvttsd2si EAX,XMM0
            mov BYTE PTR [RDX+RBP*1],AL
            add RBP,1
            cmp RBP,256
            jne .L_40bb58

            mov ESI,256
            mov RDI,RBX
            call .L_40cfc0

            pxor XMM0,XMM0
            mov QWORD PTR [RBX+720],RAX
            cvtss2sd XMM0,DWORD PTR [RBX+704]
            ucomisd XMM0,QWORD PTR [RSP+64]
            jbe .L_40bc2a

            movsd XMM5,QWORD PTR [RSP+56]
            divsd XMM5,XMM0
            movsd QWORD PTR [RSP],XMM5
.L_40bbd2:

            xor EBP,EBP
            nop
            nop
            nop
            nop
.L_40bbd8:

            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP]
            cvtsi2sd XMM0,EBP
            divsd XMM0,QWORD PTR [RIP+.L_40ce10]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_40ce10]
            mov RDX,QWORD PTR [RBX+720]
            addsd XMM0,QWORD PTR [RSP+8]
            cvttsd2si EAX,XMM0
            mov BYTE PTR [RDX+RBP*1],AL
            add RBP,1
            cmp RBP,256
            jne .L_40bbd8

            add RSP,88
.L_40bc1f:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_40bc2a:

            pxor XMM7,XMM7
            cvtss2sd XMM7,DWORD PTR [RBX+700]
            movsd QWORD PTR [RSP],XMM7
            jmp .L_40bbd2
.L_40bc3d:

            pxor XMM7,XMM7
            cvtss2sd XMM7,DWORD PTR [RBX+700]
            movsd QWORD PTR [RSP+16],XMM7
            jmp .L_40b86a
.L_40bc54:

            mov EBP,8
            mov QWORD PTR [RSP+48],64
            mov R12D,8
            mov R15D,3
            mov DWORD PTR [RSP+24],5
            jmp .L_40b582
.L_40bc7b:

            nop
            nop
            nop
            nop
            nop
.L_40bc80:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,56
.L_40bc91:

            mov RAX,QWORD PTR [RDI+296]
            movzx EBP,BYTE PTR [RDI+630]
            mov RCX,RAX
            mov RSI,RAX
            and ECX,4352
            test AH,1
            mov EDX,EBP
            je .L_40bd50

            test BPL,2
            jne .L_40bd50

            or QWORD PTR [RDI+280],2048
            cmp RCX,4352
            je .L_40c1f0

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40bce0:

            mov RAX,QWORD PTR [RBX+648]
            cmp EBP,3
            mov QWORD PTR [RBX+658],RAX
            movzx EAX,WORD PTR [RBX+656]
            mov WORD PTR [RBX+666],AX
            je .L_40bee0
.L_40bd05:

            test ESI,6299648
            je .L_40bd24

            pxor XMM0,XMM0
            ucomiss XMM0,DWORD PTR [RBX+700]
            jp .L_40bf80

            jne .L_40bf80
.L_40bd24:

            test SIL,128
            je .L_40bdd0

            cmp EBP,3
            je .L_40c238
.L_40bd37:

            add RSP,56
.L_40bd3b:

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
.L_40bd50:

            mov RDI,RAX
            and EDI,16768
            cmp RDI,16512
            je .L_40bea0
.L_40bd66:

            cmp RCX,4352
            jne .L_40bce0

            and EDX,2
            je .L_40c1f0

            cmp EBP,3
            je .L_40c400

            mov RAX,QWORD PTR [RBX+648]
            mov QWORD PTR [RBX+658],RAX
            movzx EAX,WORD PTR [RBX+656]
            mov WORD PTR [RBX+666],AX
            jmp .L_40bd05
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
.L_40bdb0:

            mov EBP,DWORD PTR [RSP+44]
.L_40bdb4:

            mov RSI,QWORD PTR [RBX+296]
            and RSI,-8321
            or RSI,262144
            mov QWORD PTR [RBX+296],RSI
.L_40bdd0:

            mov RAX,RSI
            and EAX,4104
            cmp RAX,8
            jne .L_40bd37

            cmp EBP,3
            jne .L_40bd37
.L_40bdeb:

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
            je .L_40be86

            mov RAX,QWORD PTR [RBX+608]
            sub EDX,1
            movzx EDX,DX
            lea R11,QWORD PTR [RDX+RDX*2]
            lea RDI,QWORD PTR [RAX+3]
            add R11,RDI
            jmp .L_40be5c
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40be58:

            add RDI,3
.L_40be5c:

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
            jne .L_40be58
.L_40be86:

            and RSI,-9
            mov QWORD PTR [RBX+296],RSI
            add RSP,56
.L_40be95:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_40bea0:

            movzx EDI,WORD PTR [RBX+650]
            cmp DI,WORD PTR [RBX+652]
            jne .L_40bd66

            cmp DI,WORD PTR [RBX+654]
            jne .L_40bd66

            or QWORD PTR [RBX+280],2048
            mov WORD PTR [RBX+656],DI
            jmp .L_40bd66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40bee0:

            movzx EDX,WORD PTR [RBX+618]
.L_40bee7:

            test DX,DX
            je .L_40bd05

            movss XMM0,DWORD PTR [RBX+704]
            mulss XMM0,DWORD PTR [RBX+700]
            movsd XMM1,QWORD PTR [RIP+.L_40cde0]
            cvtss2sd XMM0,XMM0
            subsd XMM0,QWORD PTR [RIP+.L_40cdd8]
            andpd XMM0,XMMWORD PTR [RIP+.L_40ce30]
            ucomisd XMM1,XMM0
            jbe .L_40bd05

            mov RAX,QWORD PTR [RBX+776]
            movzx EDI,BYTE PTR [RAX]
            lea ECX,DWORD PTR [RDI-1]
            cmp CL,253
            jbe .L_40bd05

            lea ECX,DWORD PTR [RDX-1]
            add RAX,1
            add RCX,RAX
            jmp .L_40bf63
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40bf50:

            movzx EDI,BYTE PTR [RAX]
            add RAX,1
            lea EDX,DWORD PTR [RDI-1]
            cmp DL,253
            jbe .L_40bd05
.L_40bf63:

            cmp RCX,RAX
            jne .L_40bf50

            and RSI,-8193
            mov QWORD PTR [RBX+296],RSI
            jmp .L_40bd05
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40bf80:

            mov RDI,RBX
            call .L_40b430

            mov RSI,QWORD PTR [RBX+296]
            test SIL,128
            je .L_40c388

            cmp EBP,3
            movzx EDX,BYTE PTR [RBX+640]
            je .L_40c5f8

            movzx ECX,BYTE PTR [RBX+631]
            mov EAX,1
            shl RAX,CL
            sub RAX,1
            js .L_40c5d0

            pxor XMM2,XMM2
            cvtsi2sd XMM2,RAX
            movsd QWORD PTR [RSP+8],XMM2
.L_40bfd1:

            cmp DL,2
            je .L_40c938

            cmp DL,3
            je .L_40c8f0

            cmp DL,1
            je .L_40c8ca

            movsd XMM2,QWORD PTR [RIP+.L_40cdd8]
            movsd QWORD PTR [RSP+32],XMM2
            movsd QWORD PTR [RSP+24],XMM2
.L_40c000:

            movzx EAX,WORD PTR [RBX+656]
            pxor XMM0,XMM0
            movsd XMM1,QWORD PTR [RSP+24]
            cvtsi2sd XMM0,EAX
            divsd XMM0,QWORD PTR [RSP+8]
            call pow@PLT

            movsd XMM6,QWORD PTR [RSP+8]
            movsd XMM7,QWORD PTR [RIP+.L_40ce00]
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
            jne .L_40c09e

            cmp WORD PTR [RBX+654],AX
            jne .L_40c09e

            cmp AX,DX
            je .L_40ca71
.L_40c09e:

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
            jmp .L_40bd37
.L_40c1f0:

            cmp BYTE PTR [RBX+631],16
            ja .L_40c22c

            movzx EDX,BYTE PTR [RBX+631]
            lea RCX,QWORD PTR [RIP+.L_40cd04]
            movsxd RDX,DWORD PTR [RCX+RDX*4]
            add RDX,RCX
            jmp RDX
.L_40c210:

            movzx EDX,WORD PTR [RBX+656]
            mov WORD PTR [RBX+654],DX
            mov WORD PTR [RBX+652],DX
            mov WORD PTR [RBX+650],DX
.L_40c22c:

            mov RSI,RAX
            jmp .L_40bce0
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40c238:

            movzx EAX,WORD PTR [RBX+618]
            movzx R11D,WORD PTR [RBX+650]
            movzx R10D,WORD PTR [RBX+652]
            movzx R9D,WORD PTR [RBX+654]
            mov RDX,QWORD PTR [RBX+608]
            test AX,AX
            mov EBP,R11D
            mov R12D,R10D
            mov R13D,R9D
            je .L_40c34f

            sub EAX,1
            mov RCX,QWORD PTR [RBX+776]
            mov R8D,255
            lea RAX,QWORD PTR [RAX+RAX*2]
            movzx R11D,R11B
            movzx R10D,R10B
            movzx R9D,R9B
            mov R15,RSI
            lea RDI,QWORD PTR [RDX+RAX*1+3]
            jmp .L_40c2bc
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c2a0:

            mov BYTE PTR [RDX],BPL
            mov BYTE PTR [RDX+1],R12B
            mov BYTE PTR [RDX+2],R13B
.L_40c2ab:

            add RDX,3
            add RCX,1
            cmp RDI,RDX
            je .L_40c34c
.L_40c2bc:

            movzx EAX,BYTE PTR [RCX]
            test AL,AL
            je .L_40c2a0

            cmp AL,255
            je .L_40c2ab

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
            jne .L_40c2bc
.L_40c34c:

            mov RSI,R15
.L_40c34f:

            and SIL,127
            or RSI,262144
            mov QWORD PTR [RBX+296],RSI
.L_40c361:

            mov RAX,RSI
            and EAX,4104
            cmp RAX,8
            je .L_40bdeb

            add RSP,56
.L_40c377:

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
.L_40c388:

            cmp EBP,3
            jne .L_40bd37

            movzx ECX,WORD PTR [RBX+616]
            mov RAX,QWORD PTR [RBX+608]
            test CX,CX
            je .L_40c3e9

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
.L_40c3c0:

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
            jne .L_40c3c0
.L_40c3e9:

            and RSI,-8193
            mov QWORD PTR [RBX+296],RSI
            jmp .L_40c361
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40c400:

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
            je .L_40c47b

            test EAX,33554432
            jne .L_40c47b

            test DX,DX
            je .L_40c47b

            lea ECX,DWORD PTR [RDX-1]
            xor EAX,EAX
            add RCX,1
            nop
            nop
            nop
.L_40c458:

            mov RDX,QWORD PTR [RBX+776]
            add RDX,RAX
            add RAX,1
            cmp RCX,RAX
            not BYTE PTR [RDX]
            jne .L_40c458

            movzx EDX,WORD PTR [RBX+618]
            mov RSI,QWORD PTR [RBX+296]
.L_40c47b:

            mov RAX,QWORD PTR [RBX+648]
            mov QWORD PTR [RBX+658],RAX
            movzx EAX,WORD PTR [RBX+656]
            mov WORD PTR [RBX+666],AX
            jmp .L_40bee7
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40c4a0:

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
            jne .L_40bce0

            movzx EDX,WORD PTR [RBX+792]
            mov EAX,EDX
            shl EAX,4
.L_40c4e4:

            add EAX,EDX
            mov WORD PTR [RBX+792],AX
            mov WORD PTR [RBX+790],AX
            mov WORD PTR [RBX+788],AX
            mov WORD PTR [RBX+786],AX
            jmp .L_40bce0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c510:

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
            jne .L_40bce0

            movzx EAX,WORD PTR [RBX+792]
            lea EAX,DWORD PTR [RAX+RAX*4]
            mov EDX,EAX
            shl EDX,4
            jmp .L_40c4e4
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40c560:

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
            jne .L_40bce0

            movzx EDX,WORD PTR [RBX+792]
            mov EAX,EDX
            shl EAX,8
            sub EAX,EDX
            mov WORD PTR [RBX+792],AX
            mov WORD PTR [RBX+790],AX
            mov WORD PTR [RBX+788],AX
            mov WORD PTR [RBX+786],AX
            jmp .L_40bce0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c5d0:

            mov RCX,RAX
            pxor XMM0,XMM0
            shr RCX,1
            and EAX,1
            or RCX,RAX
            cvtsi2sd XMM0,RCX
            addsd XMM0,XMM0
            movsd QWORD PTR [RSP+8],XMM0
            jmp .L_40bfd1
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40c5f8:

            cmp DL,2
            mov R12,QWORD PTR [RBX+608]
            movzx R15D,WORD PTR [RBX+616]
            movzx ESI,WORD PTR [RBX+650]
            je .L_40c942

            pxor XMM0,XMM0
            movzx EAX,SI
            cmp DL,1
            cvtsi2sd XMM0,EAX
            divsd XMM0,QWORD PTR [RIP+.L_40ce10]
            je .L_40ca5a

            cmp DL,3
            jne .L_40ca43

            movss XMM1,DWORD PTR [RBX+644]
            pxor XMM2,XMM2
            movsd XMM3,QWORD PTR [RIP+.L_40cdd8]
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
            andpd XMM1,XMMWORD PTR [RIP+.L_40ce30]
.L_40c686:

            movsd XMM3,QWORD PTR [RIP+.L_40cde0]
            ucomisd XMM3,XMM1
            jbe .L_40c984
.L_40c698:

            movsd XMM2,QWORD PTR [RIP+.L_40ce00]
            movzx R13D,BYTE PTR [RBX+652]
            movzx R14D,BYTE PTR [RBX+654]
            mov BYTE PTR [RSP+24],SIL
            movsd QWORD PTR [RSP+16],XMM2
.L_40c6bb:

            movsd XMM1,QWORD PTR [RSP+8]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_40ce10]
            movzx EAX,WORD PTR [RBX+652]
            movsd XMM1,QWORD PTR [RSP+8]
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si EDI,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,EAX
            mov BYTE PTR [RSP+44],DIL
            divsd XMM0,QWORD PTR [RIP+.L_40ce10]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_40ce10]
            movzx EAX,WORD PTR [RBX+654]
            movsd XMM1,QWORD PTR [RSP+8]
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si R9D,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,EAX
            mov BYTE PTR [RSP+32],R9B
            divsd XMM0,QWORD PTR [RIP+.L_40ce10]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_40ce10]
            movzx EDI,BYTE PTR [RSP+44]
            movzx R9D,BYTE PTR [RSP+32]
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si EAX,XMM0
.L_40c756:

            test R15W,R15W
            je .L_40bdb4

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
            jmp .L_40c7e1
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c7a0:

            mov RDI,QWORD PTR [RBX+776]
            add RDI,RCX
            movzx R9D,BYTE PTR [RDI]
            cmp R9B,255
            je .L_40c7e6

            test R9B,R9B
            jne .L_40c810

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
.L_40c7d0:

            add RCX,1
            add RDX,3
            cmp RSI,RCX
            je .L_40bdb0
.L_40c7e1:

            cmp R8D,ECX
            jg .L_40c7a0
.L_40c7e6:

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
            jmp .L_40c7d0
.L_40c810:

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
            jmp .L_40c7d0
.L_40c8ca:

            pxor XMM2,XMM2
            movsd XMM3,QWORD PTR [RIP+.L_40cdd8]
            cvtss2sd XMM2,DWORD PTR [RBX+704]
            movsd QWORD PTR [RSP+32],XMM3
            movsd QWORD PTR [RSP+24],XMM2
            jmp .L_40c000
          .byte 0x90
.L_40c8f0:

            movss XMM0,DWORD PTR [RBX+644]
.L_40c8f8:

            pxor XMM2,XMM2
            movsd XMM1,QWORD PTR [RIP+.L_40cdd8]
            cvtss2sd XMM2,XMM0
            mulss XMM0,DWORD PTR [RBX+704]
            movapd XMM3,XMM1
            divsd XMM3,XMM2
            cvtss2sd XMM0,XMM0
            divsd XMM1,XMM0
            movsd QWORD PTR [RSP+24],XMM3
            movsd QWORD PTR [RSP+32],XMM1
            jmp .L_40c000
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c938:

            movss XMM0,DWORD PTR [RBX+700]
            jmp .L_40c8f8
.L_40c942:

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
            jmp .L_40c756
.L_40c984:

            movapd XMM1,XMM2
            movsd QWORD PTR [RSP+32],XMM2
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_40ce10]
            movsd XMM3,QWORD PTR [RIP+.L_40ce00]
            movsd XMM2,QWORD PTR [RSP+32]
            movsd QWORD PTR [RSP+16],XMM3
            movapd XMM1,XMM2
            addsd XMM0,XMM3
            cvttsd2si EAX,XMM0
            pxor XMM0,XMM0
            mov DWORD PTR [RSP+24],EAX
            movzx EAX,WORD PTR [RBX+652]
            cvtsi2sd XMM0,EAX
            divsd XMM0,QWORD PTR [RIP+.L_40ce10]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_40ce10]
            movzx EAX,WORD PTR [RBX+654]
            movsd XMM2,QWORD PTR [RSP+32]
            movapd XMM1,XMM2
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si R13D,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,EAX
            divsd XMM0,QWORD PTR [RIP+.L_40ce10]
            call pow@PLT

            mulsd XMM0,QWORD PTR [RIP+.L_40ce10]
            movzx EAX,WORD PTR [RBX+650]
            addsd XMM0,QWORD PTR [RSP+16]
            cvttsd2si R14D,XMM0
            pxor XMM0,XMM0
            cvtsi2sd XMM0,EAX
            divsd XMM0,QWORD PTR [RIP+.L_40ce10]
            jmp .L_40c6bb
.L_40ca43:

            movsd XMM2,QWORD PTR [RIP+.L_40cdd8]
            pxor XMM1,XMM1
            movsd QWORD PTR [RSP+8],XMM2
            jmp .L_40c686
.L_40ca5a:

            pxor XMM3,XMM3
            cvtss2sd XMM3,DWORD PTR [RBX+704]
            movsd QWORD PTR [RSP+8],XMM3
            jmp .L_40c698
.L_40ca71:

            movzx EAX,WORD PTR [RBX+666]
            mov WORD PTR [RBX+654],DX
            mov WORD PTR [RBX+652],DX
            mov WORD PTR [RBX+650],DX
            mov WORD PTR [RBX+664],AX
            mov WORD PTR [RBX+662],AX
            mov WORD PTR [RBX+660],AX
            jmp .L_40bd37
.L_40caa7:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40cab0:

            movzx EAX,BYTE PTR [RDI+16]
            test AL,2
            je .L_40cac9

            movzx EDX,BYTE PTR [RDI+17]
            mov R8,QWORD PTR [RDI]
            cmp DL,8
            je .L_40cad0

            cmp DL,16
            je .L_40cb10
.L_40cac9:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40cad0:

            cmp AL,2
            je .L_40cb68

            cmp AL,6
            mov ECX,4
            jne .L_40cac9
.L_40cae1:

            test R8,R8
            je .L_40cac9

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40caf0:

            movzx EDX,BYTE PTR [RSI+1]
            add RAX,1
            add BYTE PTR [RSI],DL
            add BYTE PTR [RSI+2],DL
            add RSI,RCX
            cmp R8,RAX
            jne .L_40caf0

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
.L_40cb10:

            cmp AL,2
            je .L_40cb78

            cmp AL,6
            mov R9D,8
            jne .L_40cac9
.L_40cb1e:

            test R8,R8
            je .L_40cac9

            xor EDI,EDI
            nop
            nop
            nop
.L_40cb28:

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
            jne .L_40cb28

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40cb68:

            mov ECX,3
            jmp .L_40cae1
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40cb78:

            mov R9D,6
            jmp .L_40cb1e
.L_40cb80:
          .string "Can\'t discard critical data on CRC error."
          .zero 6
.L_40cbb0:
          .string "Application must supply a known background gamma"
# WARNING: found overlapping blocks at address c970
# WARNING: found overlapping blocks at address c975
          .zero 7
.L_40cbe8:
          .string "ignoring out of range rgb_to_gray coefficients"
          .zero 1
.L_40cc18:
          .string "NULL row buffer for row %ld, pass %d"
# WARNING: found overlapping blocks at address c9d8
# WARNING: found overlapping blocks at address c9da
# WARNING: found overlapping blocks at address c9e0
# WARNING: found overlapping blocks at address c9e5
.set .L_40cc35, . - 8
# WARNING: found overlapping blocks at address c9e7
          .zero 3
.L_40cc40:
          .string "Palette is NULL in indexed image"
# WARNING: found overlapping blocks at address c9f6
# WARNING: found overlapping blocks at address ca02
          .zero 7
.L_40cc68:

            jo .L_40ccd8

            pop RDI
            outsd DX,DWORD PTR FS:[RSI]
            pop RDI
            jb .L_40ccd8
          .byte 0x62
          .byte 0x5f
          .byte 0x74
          .byte 0x6f
          .byte 0x5f
          .byte 0x67
          .byte 0x72
          .byte 0x61
          .byte 0x79
          .byte 0x20
          .byte 0x66
          .byte 0x6f
          .byte 0x75
          .byte 0x6e
          .byte 0x64
          .byte 0x20
          .byte 0x6e
          .byte 0x6f
          .byte 0x6e
          .byte 0x67
          .byte 0x72
          .byte 0x61
          .byte 0x79
          .byte 0x20
          .byte 0x70
          .byte 0x69
          .byte 0x78
          .byte 0x65
          .byte 0x6c
          .byte 0x0
          .byte 0x0
.L_40cc90:
          .byte 0x70
          .byte 0x6e
          .byte 0x67
          .byte 0x5f
          .byte 0x64
          .byte 0x6f
          .byte 0x5f
          .byte 0x64
.L_40cc98:

            imul ESI,DWORD PTR [RAX+RBP*2+101],1701978226
          .byte 0x74
          .byte 0x75
          .byte 0x72
          .byte 0x6e
          .byte 0x65
          .byte 0x64
          .byte 0x20
          .byte 0x72
          .byte 0x6f
          .byte 0x77
          .byte 0x62
          .byte 0x79
          .byte 0x74
          .byte 0x65
          .byte 0x73
          .byte 0x3d

            xor BYTE PTR [RAX],AL
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ccc0:
          .long .L_408f14-.L_40ccc0
          .long .L_409358-.L_40ccc0
          .long .L_409548-.L_40ccc0
# WARNING: found overlapping blocks at address ca79

            push RSP
            ret 65535
          .byte 0xf0
          .byte 0xc7
          .byte 0xff
          .byte 0xff
          .byte 0x54
          .byte 0xc2
          .byte 0xff
          .byte 0xff
.L_40ccd8:

            push RSP
            ret 65535
          .byte 0x54
          .byte 0xc2
          .byte 0xff
          .byte 0xff
          .byte 0xa0
          .byte 0xc7
          .byte 0xff
          .byte 0xff
          .byte 0x54
          .byte 0xc2
          .byte 0xff
          .byte 0xff
          .byte 0x54
          .byte 0xc2
          .byte 0xff
          .byte 0xff
          .byte 0x54
          .byte 0xc2
          .byte 0xff
          .byte 0xff
          .byte 0x54
          .byte 0xc2
          .byte 0xff
          .byte 0xff
          .byte 0x54
          .byte 0xc2
          .byte 0xff
          .byte 0xff
          .byte 0x54
          .byte 0xc2
          .byte 0xff
          .byte 0xff
          .byte 0x54
          .byte 0xc2
          .byte 0xff
          .byte 0xff
          .byte 0x20
          .byte 0xc7
          .byte 0xff
          .byte 0xff
.L_40cd04:
          .long .L_40c22c-.L_40cd04
          .long .L_40c560-.L_40cd04
          .long .L_40c510-.L_40cd04
          .long .L_40c22c-.L_40cd04
          .long .L_40c4a0-.L_40cd04
          .long .L_40c22c-.L_40cd04
          .long .L_40c22c-.L_40cd04
          .long .L_40c22c-.L_40cd04
          .long .L_40c210-.L_40cd04
          .long .L_40c22c-.L_40cd04
          .long .L_40c22c-.L_40cd04
          .long .L_40c22c-.L_40cd04
          .long .L_40c22c-.L_40cd04
          .long .L_40c22c-.L_40cd04
          .long .L_40c22c-.L_40cd04
          .long .L_40c22c-.L_40cd04
          .long .L_40c210-.L_40cd04
          .zero 24
.L_40cd60:
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
.L_40cd80:
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
.L_40cda0:
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
.L_40cdc4:
          .string "Uninitialized row"
          .byte 0x66
          .byte 0x90
.L_40cdd8:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf0
          .byte 0x3f
.L_40cde0:
          .byte 0x9a
          .byte 0x99
          .byte 0x99
          .byte 0x99
          .byte 0x99
          .byte 0x99
          .byte 0xa9
          .byte 0x3f
.L_40cde8:
          .byte 0x85
          .byte 0x77
          .byte 0xb9
          .byte 0x88
          .byte 0xb5
          .byte 0xf8
          .byte 0xd4
          .byte 0x40
.L_40cdf0:

            int 1 
          .byte 0x68
          .byte 0xe3
          .byte 0x88
          .byte 0xb5
          .byte 0xf8
          .byte 0xd4
          .byte 0xc0
.L_40cdf8:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6a
          .byte 0xf8
          .byte 0x40
.L_40ce00:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe0
          .byte 0x3f
.L_40ce08:
          .byte 0x8d
          .byte 0xed
          .byte 0xb5
          .byte 0xa0
          .byte 0xf7
          .byte 0xc6
          .byte 0xb0
          .byte 0x3e
.L_40ce10:

            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add AL,AH
            outsd DX,DWORD PTR [RSI]
            add BYTE PTR [RAX],AL
# WARNING: found overlapping blocks at address cbc8
.set .L_40ce18, . - 2

          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x70
          .byte 0x3f
.L_40ce20:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe0
          .byte 0x43
.L_40ce28:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe0
          .byte 0xff
          .byte 0xef
          .byte 0x40
.L_40ce30:
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
.L_40ce40:

            push RBX
            mov RAX,RSI
            sub RSP,1232
.L_40ce4b:

            mov RSI,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+1224],RSI
            xor ESI,ESI
            cmp EDI,2
            je .L_40ced8

            cmp EDI,1
            jne .L_40cee0

            mov EBX,1216
.L_40ce6d:

            test RAX,RAX
            je .L_40cee8

            mov QWORD PTR [RSP+1080],RDX
            mov RDI,RSP
            mov RSI,RBX
            call RAX

            test RAX,RAX
            mov RDX,RAX
            je .L_40ceb6

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
.L_40ceb6:

            mov RSI,QWORD PTR [RSP+1224]
            xor RSI,QWORD PTR FS:[40]
            mov RAX,RDX
            jne .L_40cf10

            add RSP,1232
.L_40ced3:

            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40ced8:

            mov EBX,464
            jmp .L_40ce6d
          .byte 0x90
.L_40cee0:

            xor EDX,EDX
            jmp .L_40ceb6
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40cee8:

            mov RAX,QWORD PTR [RSP+1224]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40cf10

            add RSP,1232
            mov RDI,RBX
            mov ESI,1
            pop RBX
            jmp calloc@PLT
.L_40cf10:

            call __stack_chk_fail@PLT
.L_40cf15:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40cf20:

            xor EDX,EDX
            xor ESI,ESI
            jmp .L_40ce40
.L_40cf29:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40cf30:

            sub RSP,1240
.L_40cf37:

            mov RCX,RSI
            mov RSI,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+1224],RSI
            xor ESI,ESI
            test RDI,RDI
            je .L_40cf6a

            test RCX,RCX
            mov RAX,RDI
            je .L_40cf88

            mov QWORD PTR [RSP+1080],RDX
            mov RDI,RSP
            mov RSI,RAX
            call RCX
.L_40cf6a:

            mov RAX,QWORD PTR [RSP+1224]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40cfa7

            add RSP,1240
.L_40cf84:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40cf88:

            mov RCX,QWORD PTR [RSP+1224]
            xor RCX,QWORD PTR FS:[40]
            jne .L_40cfa7

            add RSP,1240
            jmp free@PLT
.L_40cfa7:

            call __stack_chk_fail@PLT
.L_40cfac:

            nop
            nop
            nop
            nop
.L_40cfb0:

            xor EDX,EDX
            xor ESI,ESI
            jmp .L_40cf30
.L_40cfb9:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40cfc0:

            test RDI,RDI
            je .L_40d040

            test RSI,RSI
            je .L_40d040

            push RBX
            mov RBX,RDI
            sub RSP,16
            mov RAX,QWORD PTR [RDI+1088]
            test RAX,RAX
            je .L_40d030

            call RAX
.L_40cfe0:

            test RAX,RAX
            je .L_40cff0

            add RSP,16
            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40cff0:

            test BYTE PTR [RBX+290],16
            je .L_40d008

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
.L_40d008:

            lea RSI,QWORD PTR [RIP+.L_40d193]
            mov RDI,RBX
            mov QWORD PTR [RSP+8],RAX
            call .L_40d4b0

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
.L_40d030:

            mov RDI,RSI
            call malloc@PLT

            jmp .L_40cfe0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d040:

            xor EAX,EAX
            ret 
.L_40d043:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d050:

            push RBX
            mov RBX,RSI
            call .L_40cfc0

            test RAX,RAX
            mov RCX,RAX
            je .L_40d071

            mov RDX,RBX
            xor ESI,ESI
            mov RDI,RAX
            call memset@PLT

            mov RCX,RAX
.L_40d071:

            mov RAX,RCX
            pop RBX
            ret 
.L_40d076:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d080:

            test RDI,RDI
            je .L_40d098

            test RSI,RSI
            je .L_40d098

            mov RDI,RSI
            jmp malloc@PLT
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d098:

            xor EAX,EAX
            ret 
.L_40d09b:

            nop
            nop
            nop
            nop
            nop
.L_40d0a0:

            test RDI,RDI
            je .L_40d0c0

            test RSI,RSI
            je .L_40d0c0

            mov RAX,QWORD PTR [RDI+1096]
            test RAX,RAX
            je .L_40d0c8

            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d0c0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d0c8:

            mov RDI,RSI
            jmp free@PLT
.L_40d0d0:

            test RDI,RDI
            je .L_40d0e8

            test RSI,RSI
            je .L_40d0e8

            mov RDI,RSI
            jmp free@PLT
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d0e8:

            ret 
.L_40d0ea:

            nop
            nop
            nop
            nop
            nop
            nop
.L_40d0f0:

            test RDI,RDI
            je .L_40d130

            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,8
            mov RBP,QWORD PTR [RDI+288]
            mov RAX,RBP
            or RAX,1048576
            mov QWORD PTR [RDI+288],RAX
            call .L_40cfc0

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
.L_40d130:

            xor EAX,EAX
            ret 
.L_40d133:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d140:

            mov RDI,RSI
            mov RSI,RDX
            mov RDX,RCX
            jmp memcpy@PLT
.L_40d14e:

            nop
            nop
.L_40d150:

            mov RDI,RSI
            mov ESI,EDX
            mov RDX,RCX
            jmp memset@PLT
.L_40d15d:

            nop
            nop
            nop
.L_40d160:

            test RDI,RDI
            je .L_40d17a

            mov QWORD PTR [RDI+1080],RSI
            mov QWORD PTR [RDI+1088],RDX
            mov QWORD PTR [RDI+1096],RCX
.L_40d17a:

            ret 
.L_40d17c:

            nop
            nop
            nop
            nop
.L_40d180:

            test RDI,RDI
            je .L_40d190

            mov RAX,QWORD PTR [RDI+1080]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40d190:

            xor EAX,EAX
            ret 
.L_40d193:
          .string "Out of Memory!"
# WARNING: found overlapping blocks at address cf46
# WARNING: found overlapping blocks at address cf50

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d1b0:

            push R12
            lea R9,QWORD PTR [RDI+620]
            push RBP
            lea RBP,QWORD PTR [RIP+.L_40d740]
            push RBX
.L_40d1c2:

            lea RBX,QWORD PTR [RDI+624]
            xor EAX,EAX
.L_40d1cb:

            movzx ECX,BYTE PTR [R9]
            lea EDI,DWORD PTR [RAX+1]
            movsxd R10,EAX
            add R10,RSI
            movsxd R8,EDI
            add R8,RSI
            lea R12D,DWORD PTR [RCX-65]
            mov R11D,ECX
            cmp R12D,57
            ja .L_40d260

            lea R12D,DWORD PTR [RCX-91]
            cmp R12D,5
            jbe .L_40d260

            mov BYTE PTR [R10],CL
            mov EAX,EDI
.L_40d1fa:

            add R9,1
            cmp RBX,R9
            jne .L_40d1cb

            test RDX,RDX
            je .L_40d24f

            lea ECX,DWORD PTR [RAX+1]
            mov BYTE PTR [R8],58
            movsxd RCX,ECX
            mov BYTE PTR [RSI+RCX*1],32
            lea ECX,DWORD PTR [RAX+3]
.L_40d219:

            add EAX,2
            cdqe 
            movsxd RCX,ECX
            add RAX,RSI
            lea R9,QWORD PTR [RCX+63]
            sub RDX,RCX
            jmp .L_40d243
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40d230:

            mov R10D,ECX
            add RCX,1
            mov BYTE PTR [RAX],DIL
            cmp R9,RCX
            lea RAX,QWORD PTR [R8+1]
            je .L_40d2a0
.L_40d243:

            movzx EDI,BYTE PTR [RDX+RCX*1]
            mov R8,RAX
            test DIL,DIL
            jne .L_40d230
.L_40d24f:

            mov BYTE PTR [R8],0
            pop RBX
.L_40d254:

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
.L_40d260:

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
            jmp .L_40d1fa
          .byte 0x66
          .byte 0x90
.L_40d2a0:

            movsxd R8,R10D
            add R8,RSI
            mov BYTE PTR [R8],0
            pop RBX
.L_40d2ab:

            pop RBP
            pop R12
            ret 
.L_40d2af:

            nop
.L_40d2b0:

            push RBX
            mov RBX,RDI
            sub RSP,32
            mov RDI,QWORD PTR [RIP+stderr]
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            cmp BYTE PTR [RSI],35
            jne .L_40d362

            movzx EAX,BYTE PTR [RSI+1]
            mov RCX,RSP
            xor R9D,R9D
            lea RDX,QWORD PTR [RCX+1]
            mov BYTE PTR [RSP],AL
            lea RAX,QWORD PTR [RSI+2]
            jmp .L_40d2f3
          .byte 0x90
.L_40d2f0:

            movsxd R9,R8D
.L_40d2f3:

            lea R8D,DWORD PTR [R9+1]
            cmp R8D,15
            je .L_40d396

            movzx R11D,BYTE PTR [RAX]
            mov R10,RAX
            add RDX,1
            add RAX,1
            mov BYTE PTR [RDX-1],R11B
            cmp BYTE PTR [R10-1],32
            jne .L_40d2f0

            lea EAX,DWORD PTR [R9-1]
            cmp EAX,12
            ja .L_40d390

            lea RDX,QWORD PTR [RIP+.L_40d6c5]
            mov ESI,1
            mov R8,R10
            xor EAX,EAX
            mov BYTE PTR [RSP+R9*1],0
            call __fprintf_chk@PLT

            mov RSI,QWORD PTR [RIP+stderr]
            mov EDI,10
            call fputc@PLT
.L_40d350:

            test RBX,RBX
            je .L_40d38b

            mov ESI,1
            mov RDI,RBX
            call __longjmp_chk@PLT
.L_40d362:

            lea RDX,QWORD PTR [RIP+.L_40d6f9]
            mov RCX,RSI
            xor EAX,EAX
            mov ESI,1
            call __fprintf_chk@PLT

            mov RSI,QWORD PTR [RIP+stderr]
            mov EDI,10
            call fputc@PLT

            jmp .L_40d350
.L_40d38b:

            call abort@PLT
.L_40d390:

            mov R8D,1
.L_40d396:

            lea RDX,QWORD PTR [RIP+.L_40d6dd]
            mov RCX,RSI
            xor EAX,EAX
            mov ESI,1
            call __fprintf_chk@PLT

            mov RSI,QWORD PTR [RIP+stderr]
            mov EDI,10
            call fputc@PLT

            jmp .L_40d350
.L_40d3bf:

            nop
.L_40d3c0:

            sub RSP,40
.L_40d3c4:

            mov RCX,RDI
            mov RDI,QWORD PTR [RIP+stderr]
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            cmp BYTE PTR [RCX],35
            jne .L_40d468

            movzx EAX,BYTE PTR [RCX+1]
            mov R11,RSP
            xor R9D,R9D
            lea RDX,QWORD PTR [R11+1]
            mov BYTE PTR [RSP],AL
            lea RAX,QWORD PTR [RCX+1]
            jmp .L_40d403
          .byte 0x66
          .byte 0x90
.L_40d400:

            mov R9D,ESI
.L_40d403:

            lea ESI,DWORD PTR [R9+1]
            cmp ESI,15
            je .L_40d468

            movzx R10D,BYTE PTR [RAX+1]
            mov R8,RAX
            add RDX,1
            add RAX,1
            mov BYTE PTR [RDX-1],R10B
            cmp BYTE PTR [R8],32
            jne .L_40d400

            lea EAX,DWORD PTR [R9-1]
            cmp EAX,12
            ja .L_40d468

            add R9D,2
            lea RDX,QWORD PTR [RIP+.L_40d70a]
            mov RCX,R11
            movsxd R9,R9D
            mov ESI,1
            xor EAX,EAX
            mov BYTE PTR [RSP+R9*1],0
            call __fprintf_chk@PLT

            mov RSI,QWORD PTR [RIP+stderr]
            mov EDI,10
            call fputc@PLT

            jmp .L_40d48c
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40d468:

            lea RDX,QWORD PTR [RIP+.L_40d724]
            mov ESI,1
            xor EAX,EAX
            call __fprintf_chk@PLT

            mov RSI,QWORD PTR [RIP+stderr]
            mov EDI,10
            call fputc@PLT
.L_40d48c:

            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40d4a1

            add RSP,40
.L_40d4a0:

            ret 
.L_40d4a1:

            call __stack_chk_fail@PLT
.L_40d4a6:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d4b0:

            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,40
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            test RDI,RDI
            je .L_40d4f3

            mov RAX,QWORD PTR [RDI+288]
            test EAX,786432
            jne .L_40d4fe
.L_40d4df:

            mov RAX,QWORD PTR [RBX+200]
            test RAX,RAX
            je .L_40d4f3

            mov RSI,RBP
            mov RDI,RBX
            call RAX
.L_40d4f3:

            mov RSI,RBP
            mov RDI,RBX
            call .L_40d2b0
.L_40d4fe:

            and EAX,524288
            cmp BYTE PTR [RSI],35
            mov RDX,RAX
            je .L_40d51b

            test RAX,RAX
            je .L_40d4df

            mov WORD PTR [RSP],48
            mov RBP,RSP
            jmp .L_40d4df
.L_40d51b:

            mov EAX,1
            jmp .L_40d532
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d528:

            add RAX,1
            cmp RAX,15
            je .L_40d575
.L_40d532:

            cmp BYTE PTR [RBP+RAX*1],32
            movsxd RCX,EAX
            jne .L_40d528
.L_40d53c:

            test RDX,RDX
            je .L_40d56d

            xor EAX,EAX
            mov RSI,RSP
            lea EDI,DWORD PTR [RCX-1]
            jmp .L_40d557
.L_40d54b:

            movzx EDX,BYTE PTR [RBP+RAX*1+1]
            mov BYTE PTR [RSI+RAX*1],DL
            add RAX,1
.L_40d557:

            cmp EDI,EAX
            jg .L_40d54b

            sub ECX,2
            mov RBP,RSI
            movsxd RCX,ECX
            mov BYTE PTR [RSP+RCX*1],0
            jmp .L_40d4df
.L_40d56d:

            add RBP,RCX
            jmp .L_40d4df
.L_40d575:

            mov ECX,15
            jmp .L_40d53c
.L_40d57c:

            nop
            nop
            nop
            nop
.L_40d580:

            test RDI,RDI
            je .L_40d5c8

            test QWORD PTR [RDI+288],786432
            jne .L_40d5a0
.L_40d592:

            mov RAX,QWORD PTR [RDI+208]
            test RAX,RAX
            je .L_40d5c8

            jmp RAX
.L_40d5a0:

            cmp BYTE PTR [RSI],35
            jne .L_40d592

            lea RAX,QWORD PTR [RSI+1]
            add RSI,15
            jmp .L_40d5b9
          .byte 0x90
.L_40d5b0:

            add RAX,1
            cmp RSI,RAX
            je .L_40d592
.L_40d5b9:

            cmp BYTE PTR [RAX],32
            jne .L_40d5b0

            mov RSI,RAX
            jmp .L_40d592
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d5c8:

            mov RDI,RSI
            jmp .L_40d3c0
.L_40d5d0:

            push RBP
            push RBX
            sub RSP,104
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+88],RAX
            xor EAX,EAX
            test RDI,RDI
            je .L_40d604

            mov RBP,RSP
            mov RBX,RDI
            mov RDX,RSI
            mov RSI,RBP
            call .L_40d1b0

            mov RDI,RBX
            call .L_40d4b0
.L_40d604:

            xor EDI,EDI
            call .L_40d2b0
.L_40d60b:

            nop
            nop
            nop
            nop
            nop
.L_40d610:

            push RBP
            push RBX
            sub RSP,104
.L_40d616:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+88],RAX
            xor EAX,EAX
            test RDI,RDI
            je .L_40d660

            mov RBP,RSP
            mov RBX,RDI
            mov RDX,RSI
            mov RSI,RBP
            call .L_40d1b0

            mov RDI,RBX
            call .L_40d580
.L_40d644:

            mov RAX,QWORD PTR [RSP+88]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40d66a

            add RSP,104
.L_40d658:

            pop RBX
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d660:

            mov RDI,RSI
            call .L_40d3c0

            jmp .L_40d644
.L_40d66a:

            call __stack_chk_fail@PLT
.L_40d66f:

            nop
.L_40d670:

            test RDI,RDI
            je .L_40d68a

            mov QWORD PTR [RDI+216],RSI
            mov QWORD PTR [RDI+200],RDX
            mov QWORD PTR [RDI+208],RCX
.L_40d68a:

            ret 
.L_40d68c:

            nop
            nop
            nop
            nop
.L_40d690:

            test RDI,RDI
            je .L_40d6a0

            mov RAX,QWORD PTR [RDI+216]
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40d6a0:

            xor EAX,EAX
            ret 
.L_40d6a3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d6b0:

            test RDI,RDI
            je .L_40d6c3

            and RSI,-786433
            and QWORD PTR [RDI+288],RSI
.L_40d6c3:

            ret 
.L_40d6c5:
          .string "libpng error no. %s: %s"
# WARNING: found overlapping blocks at address d47f
# WARNING: found overlapping blocks at address d482

.L_40d6dd:

            insb BYTE PTR [RDI],DX
            imul ESP,DWORD PTR [RDX+112],1696622446
            jb .L_40d759
          .byte 0x6f
          .byte 0x72
          .byte 0x3a
          .byte 0x20
          .byte 0x25
          .byte 0x73
          .byte 0x2c
          .byte 0x20
          .byte 0x6f
          .byte 0x66
          .byte 0x66
.L_40d6f2:

            jae .L_40d759
          .byte 0x74
          .byte 0x3d
          .byte 0x25
          .byte 0x64
          .byte 0x0
.L_40d6f9:
          .string "libpng error: %s"
.L_40d70a:
          .string "libpng warning no. %s: %s"
.L_40d724:
          .string "libpng warning: %s"
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d740:
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
.L_40d750:

            push R15
            push R14
            mov R14,R8
            push R13
.L_40d759:

            push R12
            lea R12,QWORD PTR [RDI+304]
            push RBP
            push RBX
            mov R13,RCX
            mov RBX,RDI
            xor EBP,EBP
            sub RSP,88
.L_40d770:

            mov QWORD PTR [RDI+304],RSI
            mov DWORD PTR [RDI+312],EDX
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+72],RAX
            xor EAX,EAX
.L_40d78d:

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
            ja .L_40d804

            test EAX,EAX
            jle .L_40d804

            test R13,R13
            movsxd RCX,EAX
            je .L_40d801

            cmp RBP,R14
            jae .L_40d801

            mov RDX,R14
            mov RSI,QWORD PTR [RBX+416]
            lea RDI,QWORD PTR [R13+RBP*1]
            sub RDX,RBP
            mov QWORD PTR [RSP+8],RCX
            cmp RDX,RCX
            cmova RDX,RCX
            call memcpy@PLT

            mov RCX,QWORD PTR [RSP+8]
.L_40d801:

            add RBP,RCX
.L_40d804:

            test R15D,R15D
            je .L_40d78d

            mov DWORD PTR [RBX+312],0
            mov RDI,R12
            call inflateReset@PLT

            cmp R15D,1
            je .L_40d82d

            xor EBP,EBP
            cmp QWORD PTR [RBX+352],0
            je .L_40d850
.L_40d82d:

            mov RCX,QWORD PTR [RSP+72]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBP
            jne .L_40d8a7

            add RSP,88
.L_40d844:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x90
.L_40d850:

            cmp R15D,-5
            lea R8,QWORD PTR [RIP+.L_411e60]
            je .L_40d873

            lea R8,QWORD PTR [RIP+.L_411e98]
            lea RAX,QWORD PTR [RIP+.L_411ec8]
            cmp R15D,-3
            cmovne R8,RAX
.L_40d873:

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
            call .L_40d580

            jmp .L_40d82d
.L_40d8a7:

            call __stack_chk_fail@PLT
.L_40d8ac:

            nop
            nop
            nop
            nop
.L_40d8b0:

            push R12
            push RBP
            mov R12,RDX
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            call .L_406870

            mov RDX,R12
            mov RSI,RBP
            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            jmp .L_4016d0
.L_40d8d4:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d8e0:

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
            ja .L_40d918

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d918:

            lea RSI,QWORD PTR [RIP+.L_411ef8]
            sub RSP,24

            mov QWORD PTR [RSP+8],RAX
            call .L_40d4b0

            mov RAX,QWORD PTR [RSP+8]
            add RSP,24
            ret 
.L_40d937:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d940:

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
.L_40d968:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d970:

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
.L_40d999:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d9a0:

            movzx EAX,BYTE PTR [RDI]
            movzx EDX,BYTE PTR [RDI+1]
            shl EAX,8
            add EAX,EDX
            ret 
.L_40d9ad:

            nop
            nop
            nop
.L_40d9b0:

            test RDI,RDI
            je .L_40d9c0

            jmp .L_40d8b0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d9c0:

            ret 
.L_40d9c2:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40d9d0:

            push RBX
            mov RBX,RDI
            sub RSP,16
.L_40d9d8:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            test BYTE PTR [RDI+620],32
            mov RAX,QWORD PTR [RDI+288]
            je .L_40da70

            and EAX,768
            cmp RAX,768
            je .L_40da75
.L_40da05:

            lea RSI,QWORD PTR [RSP+4]
            mov EDX,4
            mov RDI,RBX
            call .L_406870

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
.L_40da50:

            mov RCX,QWORD PTR [RSP+8]
            xor RCX,QWORD PTR FS:[40]
            jne .L_40da8b

            add RSP,16
.L_40da64:

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
.L_40da70:

            test AH,8
            je .L_40da05
.L_40da75:

            lea RSI,QWORD PTR [RSP+4]
            mov EDX,4
            mov RDI,RBX
            call .L_406870

            xor EAX,EAX
            jmp .L_40da50
.L_40da8b:

            call __stack_chk_fail@PLT
.L_40da90:

            push R12
            push RBP
            mov RBP,RSI
            push RBX
.L_40da97:

            mov R12,QWORD PTR [RDI+424]
            mov RBX,RDI
            cmp R12,RSI
            jae .L_40db40

            mov RDX,R12
            jmp .L_40dab7
          .byte 0x90
.L_40dab0:

            mov RDX,QWORD PTR [RBX+424]
.L_40dab7:

            mov RSI,QWORD PTR [RBX+416]
            mov RDI,RBX
            sub RBP,R12
            call .L_40d8b0

            cmp R12,RBP
            jb .L_40dab0
.L_40dace:

            mov RSI,QWORD PTR [RBX+416]
            mov RDX,RBP
            mov RDI,RBX
            call .L_40d8b0
.L_40dae0:

            mov RDI,RBX
            call .L_40d9d0

            test EAX,EAX
            je .L_40db15

            test BYTE PTR [RBX+620],32
            mov RAX,QWORD PTR [RBX+288]
            je .L_40db20

            test AH,2
            je .L_40db25
.L_40db01:

            lea RSI,QWORD PTR [RIP+.L_4124d6]
            mov RDI,RBX
            call .L_40d5d0

            mov EAX,1
.L_40db15:

            pop RBX
.L_40db16:

            pop RBP
            pop R12
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40db20:

            test AH,4
            je .L_40db01
.L_40db25:

            lea RSI,QWORD PTR [RIP+.L_4124d6]
            mov RDI,RBX
            call .L_40d610

            pop RBX
            mov EAX,1
            pop RBP
            pop R12
            ret 
          .byte 0x66
          .byte 0x90
.L_40db40:

            test RSI,RSI
            je .L_40dae0

            jmp .L_40dace
.L_40db47:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40db50:

            push R15
            push R14
            push R13
            push R12
            mov R13,R8
            push RBP
            push RBX
            mov RBP,RDI
            sub RSP,88
.L_40db64:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+72],RAX
            xor EAX,EAX
            cmp RCX,RDX
            ja .L_40dd28

            test ESI,ESI
            mov RBX,RCX
            je .L_40dc30

            lea R12,QWORD PTR [RSP+16]
            lea R8,QWORD PTR [RIP+.L_411f78]
            mov R9D,ESI
            mov ECX,50
            mov ESI,50
            mov EDX,1
            mov RDI,R12
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RSI,R12
            mov RDI,RBP
            call .L_40d580
.L_40dbbb:

            lea RSI,QWORD PTR [RBX+1]
            mov RDI,RBP
            call .L_40d0f0

            test RAX,RAX
            mov R12,RAX
            je .L_40dc01

            test RBX,RBX
            mov RSI,QWORD PTR [RBP+1208]
            je .L_40dbed

            mov RDX,RBX
            mov RDI,RAX
            call memcpy@PLT
.L_40dbe6:

            mov RSI,QWORD PTR [RBP+1208]
.L_40dbed:

            mov RDI,RBP
            call .L_40d0a0

            mov QWORD PTR [RBP+1208],R12
            mov BYTE PTR [R12+RBX*1],0
.L_40dc01:

            mov QWORD PTR [R13],RBX
.L_40dc05:

            mov RAX,QWORD PTR [RSP+72]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40dd8c

            add RSP,88
.L_40dc1d:

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
.L_40dc30:

            mov RSI,QWORD PTR [RDI+1208]
            sub RDX,RCX
            xor R8D,R8D
            mov R12,RDX
            add RSI,RCX
            xor ECX,ECX
            call .L_40d750

            cmp RBX,-3
            mov R14,RAX
            ja .L_40dd10

            mov RAX,-2
            sub RAX,RBX
            cmp RAX,R14
            jbe .L_40dd10

            lea R15,QWORD PTR [RBX+R14*1]
            cmp R15,7999998
            ja .L_40dd10

            test R14,R14
            je .L_40dbbb

            lea RSI,QWORD PTR [R15+1]
            mov RDI,RBP
            call .L_40d0f0

            test RAX,RAX
            je .L_40dd54

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
            call .L_40d750

            mov R9,QWORD PTR [RSP+8]
            cmp R14,RAX
            mov BYTE PTR [R9+R15*1],0
            je .L_40dd68

            lea RSI,QWORD PTR [RIP+.L_4124f4]
            mov RDI,RBP
            mov QWORD PTR [RSP+8],R9
            call .L_40d580

            mov R9,QWORD PTR [RSP+8]
            mov RDI,RBP
            mov RSI,R9
            call .L_40d0a0

            jmp .L_40dbbb
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40dd10:

            lea RSI,QWORD PTR [RIP+.L_411f20]
            mov RDI,RBP
            call .L_40d580

            jmp .L_40dbbb
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40dd28:

            lea RSI,QWORD PTR [RIP+.L_4124e0]
            xor EBX,EBX
            call .L_40d580

            mov ESI,1
            mov RDI,RBP
            call .L_40d0f0

            test RAX,RAX
            mov R12,RAX
            jne .L_40dbe6

            jmp .L_40dc01
.L_40dd54:

            lea RSI,QWORD PTR [RIP+.L_411f50]
            mov RDI,RBP
            call .L_40d580

            jmp .L_40dbbb
.L_40dd68:

            mov RSI,QWORD PTR [RBP+1208]
            mov RDI,RBP
            call .L_40d0a0

            mov R9,QWORD PTR [RSP+8]
            mov QWORD PTR [RBP+1208],R9
            mov QWORD PTR [R13],R15
            jmp .L_40dc05
.L_40dd8c:

            call __stack_chk_fail@PLT
.L_40dd91:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40dda0:

            push R14
            push R13
            push R12
            push RBP
            mov RBP,RSI
            push RBX
            mov RBX,RDI
            sub RSP,48
.L_40ddb2:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+40],RAX
            xor EAX,EAX
            test BYTE PTR [RDI+280],1
            jne .L_40df50
.L_40ddcf:

            cmp RDX,13
            je .L_40dde4

            lea RSI,QWORD PTR [RIP+.L_41251e]
            mov RDI,RBX
            call .L_40d4b0
.L_40dde4:

            or QWORD PTR [RBX+280],1
            lea R13,QWORD PTR [RSP+27]
            mov EDX,13
            mov RDI,RBX
            mov RSI,R13
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            mov RSI,R13
            mov RDI,RBX
            call .L_40d8e0

            lea RSI,QWORD PTR [R13+4]
            mov RDI,RBX
            mov R12,RAX
            call .L_40d8e0

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
            ja .L_40df40

            lea R11,QWORD PTR [RIP+.L_412d8c]
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
.L_40de98:

            mov BYTE PTR [RBX+634],4
            shl EAX,2
.L_40dea2:

            cmp AL,7
            mov BYTE PTR [RBX+633],AL
            ja .L_40df13
.L_40deac:

            movzx EAX,AL
            imul RAX,R12
            add RAX,7
            shr RAX,3
.L_40debb:

            sub RSP,8
.L_40debf:

            mov QWORD PTR [RBX+488],RAX
            push RDI
            push RSI
            mov RDI,RBX
            push RDX
            mov RSI,RBP
            mov RDX,R12
            call .L_4135b0

            add RSP,32
            mov RAX,QWORD PTR [RSP+40]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40df6b

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
.L_40df00:

            add EAX,EAX
            mov BYTE PTR [RBX+634],2
            cmp AL,7
            mov BYTE PTR [RBX+633],AL
            jbe .L_40deac
.L_40df13:

            shr AL,3
            movzx EAX,AL
            imul RAX,R12
            jmp .L_40debb
          .byte 0x90
.L_40df20:

            mov BYTE PTR [RBX+634],3
            lea EAX,DWORD PTR [R8+R8*2]
            jmp .L_40dea2
.L_40df30:

            mov BYTE PTR [RBX+634],1
            jmp .L_40dea2
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40df40:

            mul BYTE PTR [RBX+634]
            jmp .L_40dea2
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40df50:

            lea RSI,QWORD PTR [RIP+.L_41250c]
            mov QWORD PTR [RSP+8],RDX
            call .L_40d4b0

            mov RDX,QWORD PTR [RSP+8]
            jmp .L_40ddcf
.L_40df6b:

            call __stack_chk_fail@PLT
.L_40df70:

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
.L_40df8a:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+792],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40e170

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_41254a]
            jne .L_40e12f

            test AL,2
            jne .L_40e1a8
.L_40dfc3:

            movzx ECX,BYTE PTR [R15+630]
            or RAX,2
            mov QWORD PTR [R15+280],RAX
            test CL,2
            je .L_40e128

            cmp RBX,768
            ja .L_40e004

            mov RAX,RBX
            movabs RDX,-6148914691236517205
            mul RDX
            shr RDX,1
            lea RAX,QWORD PTR [RDX+RDX*2]
            cmp RBX,RAX
            je .L_40e024
.L_40e004:

            cmp CL,3
            lea RSI,QWORD PTR [RIP+.L_412577]
            mov RDI,R15
            jne .L_40e132

            call .L_40d4b0

            movzx ECX,BYTE PTR [R15+630]
.L_40e024:

            mov EAX,EBX
            mov EDX,1431655766
            mov EBP,256
            imul EDX
            mov EAX,EBX
            sar EAX,31
            sub EDX,EAX
            cmp CL,3
            je .L_40e190
.L_40e042:

            cmp EBP,EDX
            cmovg EBP,EDX
            test EBP,EBP
            jle .L_40e1c0

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
.L_40e078:

            mov EDX,3
            mov RSI,R13
            mov RDI,R15
            call .L_40d8b0

            movzx EDX,BYTE PTR [RSP+789]
            add R12,3
            mov BYTE PTR [R12-3],DL
            movzx EDX,BYTE PTR [RSP+790]
            mov BYTE PTR [R12-2],DL
            movzx EDX,BYTE PTR [RSP+791]
            mov BYTE PTR [R12-1],DL
            cmp R12,QWORD PTR [RSP]
            jne .L_40e078
.L_40e0b9:

            lea EAX,DWORD PTR [RBP*4]
            mov ESI,EBP
            mov RDI,R15
            sub ESI,EAX
            add ESI,EBX
            movsxd RSI,ESI
            call .L_40da90

            mov RDX,QWORD PTR [RSP+8]
            mov ECX,EBP
            mov RSI,R14
            mov RDI,R15
            call .L_413970

            cmp BYTE PTR [R15+630],3
            jne .L_40e142

            test R14,R14
            je .L_40e142

            test BYTE PTR [R14+16],16
            je .L_40e142

            cmp WORD PTR [R15+618],BP
            ja .L_40e1cf
.L_40e107:

            cmp BP,WORD PTR [R14+42]
            jae .L_40e142

            lea RSI,QWORD PTR [RIP+.L_411ff0]
            mov RDI,R15
            call .L_40d580

            mov WORD PTR [R14+42],BP
            jmp .L_40e142
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40e128:

            lea RSI,QWORD PTR [RIP+.L_411fa0]
.L_40e12f:

            mov RDI,R15
.L_40e132:

            call .L_40d580

            mov RSI,RBX
            mov RDI,R15
            call .L_40da90
.L_40e142:

            mov RAX,QWORD PTR [RSP+792]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40e1eb

            add RSP,808
.L_40e160:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 

            nop
            nop
            nop
            nop
            nop
.L_40e170:

            lea RSI,QWORD PTR [RIP+.L_412531]
            call .L_40d4b0

            mov RAX,QWORD PTR [R15+280]
            jmp .L_40dfc3
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e190:

            movzx ECX,BYTE PTR [R15+631]
            mov EBP,1
            shl EBP,CL
            jmp .L_40e042
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40e1a8:

            lea RSI,QWORD PTR [RIP+.L_412562]
            call .L_40d4b0

            mov RAX,QWORD PTR [R15+280]
            jmp .L_40dfc3
.L_40e1c0:

            lea RAX,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+8],RAX
            jmp .L_40e0b9
.L_40e1cf:

            lea RSI,QWORD PTR [RIP+.L_411fc8]
            mov RDI,R15
            call .L_40d580

            mov WORD PTR [R15+618],BP
            jmp .L_40e107
.L_40e1eb:

            call __stack_chk_fail@PLT
.L_40e1f0:

            push RBP
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,8
.L_40e1fc:

            mov RAX,QWORD PTR [RDI+280]
            mov RDX,RAX
            and EDX,5
            cmp RDX,5
            je .L_40e222

            lea RSI,QWORD PTR [RIP+.L_41258d]
            call .L_40d4b0

            mov RAX,QWORD PTR [RBX+280]
.L_40e222:

            or RAX,24
            test RBP,RBP
            mov QWORD PTR [RBX+280],RAX
            je .L_40e241

            lea RSI,QWORD PTR [RIP+.L_41259e]
            mov RDI,RBX
            call .L_40d580
.L_40e241:

            add RSP,8
.L_40e245:

            mov RSI,RBP
            mov RDI,RBX
            pop RBX
            pop RBP
            jmp .L_40da90
.L_40e252:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40e260:

            push R12
            push RBP
            mov R12,RDX
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,16
.L_40e271:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40e3c0

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_4125d3]
            jne .L_40e390

            test AL,2
            jne .L_40e410
.L_40e2a7:

            test RBP,RBP
            je .L_40e2bf

            mov RAX,QWORD PTR [RBP+16]
            and EAX,2049
            cmp RAX,1
            je .L_40e380
.L_40e2bf:

            cmp R12,4
            lea RSI,QWORD PTR [RIP+.L_412618]
            jne .L_40e390

            lea RSI,QWORD PTR [RSP+4]
            mov EDX,4
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_40e3a3

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
            je .L_40e428

            test RBP,RBP
            je .L_40e3d8

            test BYTE PTR [RBP+17],8
            je .L_40e3d8

            lea RAX,QWORD PTR [R12-45000]
            cmp RAX,1000
            jbe .L_40e3d8

            lea RSI,QWORD PTR [RIP+.L_412048]
            mov RDI,RBX
            call .L_40d580

            mov RDI,QWORD PTR [RIP+stderr]
            lea RDX,QWORD PTR [RIP+.L_412634]
            mov ECX,R12D
            mov ESI,1
            xor EAX,EAX
            call __fprintf_chk@PLT

            jmp .L_40e3a3
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40e380:

            lea RSI,QWORD PTR [RIP+.L_412603]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40e390:

            mov RDI,RBX
            call .L_40d580

            mov RSI,R12
            mov RDI,RBX
            call .L_40da90
.L_40e3a3:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40e43c

            add RSP,16
.L_40e3bb:

            pop RBX
            pop RBP
            pop R12
            ret 
.L_40e3c0:

            lea RSI,QWORD PTR [RIP+.L_4125ba]
            call .L_40d4b0

            jmp .L_40e2a7
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e3d8:

            pxor XMM0,XMM0
            mov RSI,RBP
            mov RDI,RBX
            cvtsi2ss XMM0,R12
            divss XMM0,DWORD PTR [RIP+.L_412dbc]
            movss DWORD PTR [RBX+700],XMM0
            cvtss2sd XMM0,XMM0
            call .L_413370

            mov RDX,R12
            mov RSI,RBP
            mov RDI,RBX
            call .L_413410

            jmp .L_40e3a3
.L_40e410:

            lea RSI,QWORD PTR [RIP+.L_4125eb]
            call .L_40d580

            jmp .L_40e2a7
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e428:

            lea RSI,QWORD PTR [RIP+.L_412020]
            mov RDI,RBX
            call .L_40d580

            jmp .L_40e3a3
.L_40e43c:

            call __stack_chk_fail@PLT
.L_40e441:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40e450:

            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,16
.L_40e461:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            mov DWORD PTR [RSP+4],0
            test AL,1
            je .L_40e578

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_412661]
            jne .L_40e547

            test AL,2
            jne .L_40e5a0
.L_40e49f:

            test R12,R12
            je .L_40e4b0

            test BYTE PTR [R12+16],2
            jne .L_40e540
.L_40e4b0:

            cmp BYTE PTR [RBX+630],3
            mov EDX,3
            je .L_40e4c5

            movzx EDX,BYTE PTR [RBX+634]
.L_40e4c5:

            cmp RDX,RBP
            jne .L_40e590

            cmp RBP,4
            ja .L_40e590

            lea RSI,QWORD PTR [RSP+4]
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_40e55a

            test BYTE PTR [RBX+630],2
            movzx EAX,BYTE PTR [RSP+4]
            movzx EDX,BYTE PTR [RSP+5]
            je .L_40e5b8

            mov BYTE PTR [RBX+760],AL
            movzx EAX,BYTE PTR [RSP+6]
            mov BYTE PTR [RBX+761],DL
            mov BYTE PTR [RBX+762],AL
            movzx EAX,BYTE PTR [RSP+7]
            mov BYTE PTR [RBX+764],AL
.L_40e52c:

            lea RDX,QWORD PTR [RBX+760]
            mov RSI,R12
            mov RDI,RBX
            call .L_413a70

            jmp .L_40e55a
.L_40e540:

            lea RSI,QWORD PTR [RIP+.L_412691]
.L_40e547:

            mov RDI,RBX
            call .L_40d580

            mov RSI,RBP
            mov RDI,RBX
            call .L_40da90
.L_40e55a:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40e5db

            add RSP,16
.L_40e56e:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40e578:

            lea RSI,QWORD PTR [RIP+.L_412648]
            call .L_40d4b0

            jmp .L_40e49f
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e590:

            lea RSI,QWORD PTR [RIP+.L_4126a6]
            jmp .L_40e547
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e5a0:

            lea RSI,QWORD PTR [RIP+.L_412679]
            call .L_40d580

            jmp .L_40e49f
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40e5b8:

            mov BYTE PTR [RBX+763],AL
            mov BYTE PTR [RBX+760],AL
            mov BYTE PTR [RBX+761],AL
            mov BYTE PTR [RBX+762],AL
            mov BYTE PTR [RBX+764],DL
            jmp .L_40e52c
.L_40e5db:

            call __stack_chk_fail@PLT
.L_40e5e0:

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
.L_40e5f7:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+88],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40e688

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_4126db]
            jne .L_40e64d

            test AL,2
            jne .L_40ea20
.L_40e625:

            test RBP,RBP
            je .L_40e640

            mov RAX,QWORD PTR [RBP+16]
            lea RSI,QWORD PTR [RIP+.L_41270c]
            and EAX,2052
            cmp RAX,4
            je .L_40e64d
.L_40e640:

            cmp R12,32
            je .L_40e6a0

            lea RSI,QWORD PTR [RIP+.L_412721]
.L_40e64d:

            mov RDI,RBX
            call .L_40d580

            mov RSI,R12
            mov RDI,RBX
            call .L_40da90
.L_40e660:

            mov RAX,QWORD PTR [RSP+88]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40eaae

            add RSP,104
.L_40e678:

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
.L_40e688:

            lea RSI,QWORD PTR [RIP+.L_4126c2]
            call .L_40d4b0

            jmp .L_40e625
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
.L_40e6a0:

            lea RSI,QWORD PTR [RSP+48]
            mov EDX,32
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_40e660

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
            movss XMM8,DWORD PTR [RIP+.L_412dbc]
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
            je .L_40ea38

            test BYTE PTR [RBP+17],8
            je .L_40ea38

            sub R12,30270
            cmp R12,2000
            ja .L_40e940

            sub R13,31900
            cmp R13,2000
            ja .L_40e940

            sub R14,63000
            cmp R14,2000
            ja .L_40e940

            sub R15,32000
            cmp R15,2000
            ja .L_40e940

            sub RAX,29000
            cmp RAX,2000
            ja .L_40e940

            sub RDX,59000
            cmp RDX,2000
            ja .L_40e940

            sub RCX,14000
            cmp RCX,2000
            ja .L_40e940

            sub R8,5000
            cmp R8,2000
            jbe .L_40e660

            nop
            nop
            nop
.L_40e940:

            lea RSI,QWORD PTR [RIP+.L_412080]
            mov RDI,RBX
            movss DWORD PTR [RSP+44],XMM7
            movss DWORD PTR [RSP+40],XMM6
            movss DWORD PTR [RSP+36],XMM5
            movss DWORD PTR [RSP+32],XMM4
            movss DWORD PTR [RSP+24],XMM3
            movss DWORD PTR [RSP+16],XMM2
            movss DWORD PTR [RSP+8],XMM1
            movss DWORD PTR [RSP],XMM0
            call .L_40d580

            movss XMM0,DWORD PTR [RSP]
            lea RDX,QWORD PTR [RIP+.L_41273d]
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
            lea RDX,QWORD PTR [RIP+.L_412759]
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

            jmp .L_40e660
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40ea20:

            lea RSI,QWORD PTR [RIP+.L_4126f3]
            call .L_40d580

            jmp .L_40e625
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40ea38:

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
            call .L_413030

            mov R8,QWORD PTR [RSP]
            mov R9,R15
            mov RSI,RBP
            mov RDI,RBX
            push R8
.L_40ea85:

            mov RCX,QWORD PTR [RSP+16]
            mov R8,R14
            push RCX
            mov RDX,QWORD PTR [RSP+32]
            mov RCX,R13
            push RDX
            mov RAX,QWORD PTR [RSP+48]
            mov RDX,R12
            push RAX
            call .L_4131b0

            add RSP,32
            jmp .L_40e660
.L_40eaae:

            call __stack_chk_fail@PLT
.L_40eab3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40eac0:

            push R12
            push RBP
            mov R12,RDX
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,16
.L_40ead1:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40eb50

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_41278e]
            jne .L_40eb1e

            test AL,2
            jne .L_40ec98
.L_40eaff:

            test RBP,RBP
            je .L_40eb11

            test BYTE PTR [RBP+17],8
            lea RSI,QWORD PTR [RIP+.L_4127be]
            jne .L_40eb1e
.L_40eb11:

            cmp R12,1
            je .L_40eb60

            lea RSI,QWORD PTR [RIP+.L_4127d3]
.L_40eb1e:

            mov RDI,RBX
            call .L_40d580

            mov RSI,R12
            mov RDI,RBX
            call .L_40da90
.L_40eb31:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40ecfc

            add RSP,16
.L_40eb49:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0x66
          .byte 0x90
.L_40eb50:

            lea RSI,QWORD PTR [RIP+.L_412775]
            call .L_40d4b0

            jmp .L_40eaff
          .byte 0x66
          .byte 0x90
.L_40eb60:

            lea RSI,QWORD PTR [RSP+7]
            mov EDX,1
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_40eb31

            movzx R12D,BYTE PTR [RSP+7]
            cmp R12D,3
            jg .L_40ecb0

            test RBP,RBP
            je .L_40ec7f

            mov RAX,QWORD PTR [RBP+16]
            test AL,1
            je .L_40ebbc

            mov RCX,QWORD PTR [RBP+392]
            lea RDX,QWORD PTR [RCX-45000]
            cmp RDX,1000
            ja .L_40ecc4
.L_40ebbc:

            test AL,4
            je .L_40ec7f

            mov RAX,QWORD PTR [RBP+400]
            sub RAX,30270
            cmp RAX,2000
            ja .L_40ec70

            mov RAX,QWORD PTR [RBP+408]
            sub RAX,31900
            cmp RAX,2000
            ja .L_40ec70

            mov RAX,QWORD PTR [RBP+416]
            sub RAX,63000
            cmp RAX,2000
            ja .L_40ec70

            mov RAX,QWORD PTR [RBP+424]
            sub RAX,32000
            cmp RAX,2000
            ja .L_40ec70

            mov RAX,QWORD PTR [RBP+432]
            sub RAX,29000
            cmp RAX,2000
            ja .L_40ec70

            mov RAX,QWORD PTR [RBP+440]
            sub RAX,59000
            cmp RAX,2000
            ja .L_40ec70

            mov RAX,QWORD PTR [RBP+448]
            sub RAX,14000
            cmp RAX,2000
            ja .L_40ec70

            mov RAX,QWORD PTR [RBP+456]
            sub RAX,5000
            cmp RAX,2000
            jbe .L_40ec7f
.L_40ec70:

            lea RSI,QWORD PTR [RIP+.L_412080]
            mov RDI,RBX
            call .L_40d580
.L_40ec7f:

            mov EDX,R12D
            mov RSI,RBP
            mov RDI,RBX
            call .L_413ab0

            jmp .L_40eb31
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40ec98:

            lea RSI,QWORD PTR [RIP+.L_4127a6]
            call .L_40d580

            jmp .L_40eaff
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40ecb0:

            lea RSI,QWORD PTR [RIP+.L_4127ef]
            mov RDI,RBX
            call .L_40d580

            jmp .L_40eb31
.L_40ecc4:

            lea RSI,QWORD PTR [RIP+.L_412048]
            mov RDI,RBX
            call .L_40d580

            mov ECX,DWORD PTR [RBX+1048]
            mov RDI,QWORD PTR [RIP+stderr]
            lea RDX,QWORD PTR [RIP+.L_412803]
            mov ESI,1
            xor EAX,EAX
            call __fprintf_chk@PLT

            mov RAX,QWORD PTR [RBP+16]
            jmp .L_40ebbc
.L_40ecfc:

            call __stack_chk_fail@PLT
.L_40ed01:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ed10:

            push R13
            push R12
            mov R12,RSI
            push RBP
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,24
.L_40ed23:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40ef08

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_412839]
            jne .L_40eea7

            test AL,2
            jne .L_40ef80
.L_40ed59:

            test R12,R12
            je .L_40ed6a

            test BYTE PTR [R12+17],16
            jne .L_40eea0
.L_40ed6a:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            lea RSI,QWORD PTR [RBP+1]
            mov RDI,RBX
            call .L_40cfc0

            mov RDX,RBP
            mov RSI,RAX
            mov QWORD PTR [RBX+1208],RAX
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_40ef30

            mov RAX,QWORD PTR [RBX+1208]
            mov BYTE PTR [RAX+RBP*1],0
            mov RSI,QWORD PTR [RBX+1208]
            cmp BYTE PTR [RSI],0
            mov RAX,RSI
            je .L_40edd9

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40edd0:

            add RAX,1
            cmp BYTE PTR [RAX],0
            jne .L_40edd0
.L_40edd9:

            test RBP,RBP
            je .L_40eee0

            lea RDX,QWORD PTR [RSI+RBP*1-1]
            lea RCX,QWORD PTR [RAX+1]
            cmp RDX,RCX
            jbe .L_40eee0

            cmp BYTE PTR [RAX+1],0
            lea R13,QWORD PTR [RAX+2]
            jne .L_40ef98
.L_40ee02:

            sub R13,RSI
            mov R8,RSP
            xor ESI,ESI
            mov RCX,R13
            mov RDX,RBP
            mov RDI,RBX
            call .L_40db50

            mov RAX,QWORD PTR [RSP]
            mov RSI,QWORD PTR [RBX+1208]
            mov RCX,RAX
            sub RCX,R13
            cmp RCX,3
            jbe .L_40ef50

            cmp RAX,R13
            jb .L_40ef50

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
            ja .L_40ef1c

            jae .L_40ef19

            mov RDI,RBX
            call .L_40d0a0

            lea RSI,QWORD PTR [RIP+.L_412118]
            mov QWORD PTR [RBX+1208],0
            mov RDI,RBX
            call .L_40d580

            jmp .L_40eeba
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40eea0:

            lea RSI,QWORD PTR [RIP+.L_412869]
.L_40eea7:

            mov RDI,RBX
            call .L_40d580

            mov RSI,RBP
            mov RDI,RBX
            call .L_40da90
.L_40eeba:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40efb3

            add RSP,24
.L_40eed2:

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
.L_40eee0:

            mov RDI,RBX
            call .L_40d0a0

            lea RSI,QWORD PTR [RIP+.L_41287e]
            mov QWORD PTR [RBX+1208],0
            mov RDI,RBX
            call .L_40d580

            jmp .L_40eeba
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40ef08:

            lea RSI,QWORD PTR [RIP+.L_412820]
            call .L_40d4b0

            jmp .L_40ed59
.L_40ef19:

            mov R9,RCX
.L_40ef1c:

            mov RDX,RSI
            xor ECX,ECX
            mov RSI,R12
            mov RDI,RBX
            call .L_413bd0

            nop
            nop
            nop
            nop
.L_40ef30:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            mov QWORD PTR [RBX+1208],0
            jmp .L_40eeba
          .byte 0x90
.L_40ef50:

            mov RDI,RBX
            call .L_40d0a0

            lea RSI,QWORD PTR [RIP+.L_4120e8]
            mov QWORD PTR [RBX+1208],0
            mov RDI,RBX
            call .L_40d580

            jmp .L_40eeba
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40ef80:

            lea RSI,QWORD PTR [RIP+.L_412851]
            call .L_40d580

            jmp .L_40ed59
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40ef98:

            lea RSI,QWORD PTR [RIP+.L_4120b8]
            mov RDI,RBX
            call .L_40d580

            mov RSI,QWORD PTR [RBX+1208]
            jmp .L_40ee02
.L_40efb3:

            call __stack_chk_fail@PLT
.L_40efb8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40efc0:

            push R13
            push R12
            mov R12,RSI
            push RBP
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,56
.L_40efd3:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+40],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+496]
            test RAX,RAX
            je .L_40f00e

            cmp RAX,1
            je .L_40f167

            sub RAX,1
            cmp RAX,1
            mov QWORD PTR [RDI+496],RAX
            je .L_40f158
.L_40f00e:

            mov RAX,QWORD PTR [RBX+280]
            test AL,1
            je .L_40f1a0

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_4128ac]
            jne .L_40f15f
.L_40f02c:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            lea RSI,QWORD PTR [RBP+1]
            mov RDI,RBX
            call .L_40cfc0

            mov RDX,RBP
            mov RSI,RAX
            mov QWORD PTR [RBX+1208],RAX
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_40f118

            mov RAX,QWORD PTR [RBX+1208]
            mov BYTE PTR [RAX+RBP*1],0
            mov RSI,QWORD PTR [RBX+1208]
            cmp BYTE PTR [RSI],0
            mov RDX,RSI
            je .L_40f099

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40f090:

            add RDX,1
            cmp BYTE PTR [RDX],0
            jne .L_40f090
.L_40f099:

            cmp RBP,1
            lea RAX,QWORD PTR [RDX+1]
            jbe .L_40f178

            lea RCX,QWORD PTR [RSI+RBP*1-2]
            cmp RAX,RCX
            ja .L_40f178

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
            jne .L_40f290

            cdqe 
            movabs RDX,1844674407370955161
            cmp RAX,RDX
            mov QWORD PTR [RSP+24],RAX
            jbe .L_40f1b8

            lea RSI,QWORD PTR [RIP+.L_4128f3]
            mov RDI,RBX
            call .L_40d580

            jmp .L_40f132
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f118:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            mov QWORD PTR [RBX+1208],0
.L_40f132:

            mov RAX,QWORD PTR [RSP+40]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40f31a

            add RSP,56
.L_40f14a:

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
.L_40f158:

            lea RSI,QWORD PTR [RIP+.L_412140]
.L_40f15f:

            mov RDI,RBX
            call .L_40d580
.L_40f167:

            mov RSI,RBP
            mov RDI,RBX
            call .L_40da90

            jmp .L_40f132
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40f178:

            mov RDI,RBX
            call .L_40d0a0

            lea RSI,QWORD PTR [RIP+.L_4128c4]
            mov QWORD PTR [RBX+1208],0
            mov RDI,RBX
            call .L_40d580

            jmp .L_40f132
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40f1a0:

            lea RSI,QWORD PTR [RIP+.L_412893]
            mov RDI,RBX
            call .L_40d4b0

            jmp .L_40f02c
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40f1b8:

            lea RSI,QWORD PTR [RAX+RAX*4]
            mov RDI,RBX
            add RSI,RSI
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RSP+16],RAX
            je .L_40f2b7

            mov RDX,QWORD PTR [RSP+24]
            test RDX,RDX
            jle .L_40f2d0

            lea RDX,QWORD PTR [RDX+RDX*4]
            movzx EDI,BYTE PTR [RSP+8]
            lea RSI,QWORD PTR [RAX+RDX*2]
            jmp .L_40f261
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40f1f8:

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
.L_40f242:

            movzx EDX,BYTE PTR [RCX]
            movzx R8D,BYTE PTR [RCX+1]
            add RAX,10
            lea R13,QWORD PTR [RCX+2]
            shl EDX,8
            add EDX,R8D
            mov WORD PTR [RAX-2],DX
            cmp RSI,RAX
            je .L_40f2d0
.L_40f261:

            cmp DIL,8
            movzx EDX,BYTE PTR [R13]
            jne .L_40f1f8

            mov WORD PTR [RAX],DX
            movzx EDX,BYTE PTR [R13+1]
            lea RCX,QWORD PTR [R13+4]
            mov WORD PTR [RAX+2],DX
            movzx EDX,BYTE PTR [R13+2]
            mov WORD PTR [RAX+4],DX
            movzx EDX,BYTE PTR [R13+3]
            mov WORD PTR [RAX+6],DX
            jmp .L_40f242
.L_40f290:

            mov RDI,RBX
            call .L_40d0a0

            lea RSI,QWORD PTR [RIP+.L_4128d9]
            mov QWORD PTR [RBX+1208],0
            mov RDI,RBX
            call .L_40d580

            jmp .L_40f132
.L_40f2b7:

            lea RSI,QWORD PTR [RIP+.L_412168]
            mov RDI,RBX
            call .L_40d580

            jmp .L_40f132
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40f2d0:

            mov RAX,QWORD PTR [RBX+1208]
            mov RDX,RSP
            mov ECX,1
            mov RSI,R12
            mov RDI,RBX
            mov QWORD PTR [RSP],RAX
            call .L_413fa0

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            mov RSI,QWORD PTR [RSP+16]
            mov QWORD PTR [RBX+1208],0
            mov RDI,RBX
            call .L_40d0a0

            jmp .L_40f132
.L_40f31a:

            call __stack_chk_fail@PLT
.L_40f31f:

            nop
.L_40f320:

            push R13
            push R12
            mov R12,RSI
            push RBP
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,280
.L_40f336:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+264],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40f420

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_412920]
            jne .L_40f393

            test R12,R12
            je .L_40f377

            test BYTE PTR [R12+16],16
            lea RSI,QWORD PTR [RIP+.L_412938]
            jne .L_40f393
.L_40f377:

            movzx EAX,BYTE PTR [RBX+630]
            test AL,AL
            jne .L_40f3d0

            cmp RBP,2
            je .L_40f4b8
.L_40f38c:

            lea RSI,QWORD PTR [RIP+.L_41294d]
.L_40f393:

            mov RDI,RBX
            call .L_40d580

            mov RSI,RBP
            mov RDI,RBX
            call .L_40da90
.L_40f3a6:

            mov RAX,QWORD PTR [RSP+264]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40f56a

            add RSP,280
.L_40f3c4:

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
.L_40f3d0:

            cmp AL,2
            je .L_40f448

            cmp AL,3
            jne .L_40f438

            test BYTE PTR [RBX+280],2
            je .L_40f538
.L_40f3e5:

            movzx EAX,WORD PTR [RBX+616]
            cmp RAX,RBP
            jb .L_40f38c

            cmp RBP,256
            ja .L_40f38c

            test RBP,RBP
            jne .L_40f550

            lea RSI,QWORD PTR [RIP+.L_412982]
            mov RDI,RBX
            call .L_40d580

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            jmp .L_40f3a6
          .byte 0x66
          .byte 0x90
.L_40f420:

            lea RSI,QWORD PTR [RIP+.L_412907]
            call .L_40d4b0

            jmp .L_40f377
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f438:

            lea RSI,QWORD PTR [RIP+.L_412190]
            jmp .L_40f393
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40f448:

            cmp RBP,6
            jne .L_40f38c

            mov R13,RSP
            mov EDX,6
            mov RDI,RBX
            mov RSI,R13
            call .L_40d8b0

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
            jmp .L_40f4ec
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40f4b8:

            mov R13,RSP
            mov EDX,2
            mov RDI,RBX
            mov RSI,R13
            call .L_40d8b0

            movzx EAX,BYTE PTR [RSP]
            movzx EDX,BYTE PTR [RSP+1]
            mov ECX,1
            mov WORD PTR [RBX+618],CX
            shl EAX,8
            add EAX,EDX
            mov WORD PTR [RBX+792],AX
.L_40f4ec:

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            je .L_40f510

            xor EAX,EAX
            mov WORD PTR [RBX+618],AX
            jmp .L_40f3a6
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f510:

            movzx ECX,WORD PTR [RBX+618]
            lea R8,QWORD PTR [RBX+784]
            mov RDX,R13
            mov RSI,R12
            mov RDI,RBX
            call .L_413dd0

            jmp .L_40f3a6
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f538:

            lea RSI,QWORD PTR [RIP+.L_412969]
            mov RDI,RBX
            call .L_40d580

            jmp .L_40f3e5
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40f550:

            mov R13,RSP
            mov RDX,RBP
            mov RDI,RBX
            mov RSI,R13
            call .L_40d8b0

            mov WORD PTR [RBX+618],BP
            jmp .L_40f4ec
.L_40f56a:

            call __stack_chk_fail@PLT
.L_40f56f:

            nop
.L_40f570:

            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,16
.L_40f581:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40f618

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_4129b2]
            jne .L_40f5e5

            movzx ECX,BYTE PTR [RDI+630]
            cmp CL,3
            je .L_40f6d0

            test R12,R12
            je .L_40f5c8

            test BYTE PTR [R12+16],32
            jne .L_40f6f4
.L_40f5c8:

            and ECX,2
            cmp CL,1
            sbb RDX,RDX
            and RDX,-4
            add RDX,6
            cmp RDX,RBP
            je .L_40f63a
.L_40f5de:

            lea RSI,QWORD PTR [RIP+.L_4129f8]
.L_40f5e5:

            mov RDI,RBX
            call .L_40d580

            mov RSI,RBP
            mov RDI,RBX
            call .L_40da90
.L_40f5f8:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40f786

            add RSP,16
.L_40f610:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40f618:

            lea RSI,QWORD PTR [RIP+.L_412999]
            call .L_40d4b0

            movzx ECX,BYTE PTR [RBX+630]
            cmp CL,3
            jne .L_40f5c8
.L_40f630:

            mov EDX,1
            cmp RDX,RBP
            jne .L_40f5de
.L_40f63a:

            lea RSI,QWORD PTR [RSP+2]
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_40f5f8

            movzx EDX,BYTE PTR [RBX+630]
            movzx EAX,BYTE PTR [RSP+2]
            cmp DL,3
            je .L_40f720

            movzx ECX,BYTE PTR [RSP+3]
            shl EAX,8
            add EAX,ECX
            and EDX,2
            je .L_40f700

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
.L_40f6b0:

            lea RDX,QWORD PTR [RBX+648]
            mov RSI,R12
            mov RDI,RBX
            call .L_413000

            jmp .L_40f5f8
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f6d0:

            test AL,2
            lea RSI,QWORD PTR [RIP+.L_4129ca]
            je .L_40f5e5

            test R12,R12
            je .L_40f630

            test BYTE PTR [R12+16],32
            je .L_40f630
.L_40f6f4:

            lea RSI,QWORD PTR [RIP+.L_4129e3]
            jmp .L_40f5e5
.L_40f700:

            mov WORD PTR [RBX+656],AX
            mov WORD PTR [RBX+654],AX
            mov WORD PTR [RBX+652],AX
            mov WORD PTR [RBX+650],AX
            jmp .L_40f6b0
          .byte 0x66
          .byte 0x90
.L_40f720:

            test R12,R12
            mov BYTE PTR [RBX+648],AL
            je .L_40f6b0

            movzx EDX,WORD PTR [R12+40]
            test DX,DX
            je .L_40f6b0

            movzx ECX,AL
            cmp DX,CX
            jbe .L_40f772

            lea RAX,QWORD PTR [RAX+RAX*2]
            add RAX,QWORD PTR [RBX+608]
            movzx EDX,BYTE PTR [RAX]
            mov WORD PTR [RBX+650],DX
            movzx EDX,BYTE PTR [RAX+1]
            mov WORD PTR [RBX+652],DX
            movzx EAX,BYTE PTR [RAX+2]
            mov WORD PTR [RBX+654],AX
            jmp .L_40f6b0
.L_40f772:

            lea RSI,QWORD PTR [RIP+.L_4121c0]
            mov RDI,RBX
            call .L_40d580

            jmp .L_40f5f8
.L_40f786:

            call __stack_chk_fail@PLT
.L_40f78b:

            nop
            nop
            nop
            nop
            nop
.L_40f790:

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
.L_40f7aa:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+520],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40f850

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_412a2d]
            jne .L_40f811

            test AL,2
            je .L_40f860

            test RBP,RBP
            je .L_40f7f1

            test BYTE PTR [RBP+16],64
            lea RSI,QWORD PTR [RIP+.L_412a5e]
            jne .L_40f811
.L_40f7f1:

            cmp R12,512
            ja .L_40f80a

            movzx EAX,WORD PTR [RBX+616]
            add EAX,EAX
            cdqe 
            cmp RAX,R12
            je .L_40f870
.L_40f80a:

            lea RSI,QWORD PTR [RIP+.L_412a73]
.L_40f811:

            mov RDI,RBX
            call .L_40d580

            mov RSI,R12
            mov RDI,RBX
            call .L_40da90
.L_40f824:

            mov RAX,QWORD PTR [RSP+520]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40f8ea

            add RSP,536
.L_40f842:

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
.L_40f850:

            lea RSI,QWORD PTR [RIP+.L_412a14]
            call .L_40d4b0

            jmp .L_40f7f1
          .byte 0x66
          .byte 0x90
.L_40f860:

            lea RSI,QWORD PTR [RIP+.L_412a45]
            jmp .L_40f811
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40f870:

            shr R12,1
            je .L_40f8c5

            mov R15,RSP
            lea EAX,DWORD PTR [R12-1]
            lea R12,QWORD PTR [RSP+518]
            lea R14,QWORD PTR [R15+2]
            lea R13,QWORD PTR [R14+RAX*2]
            jmp .L_40f894
          .byte 0x90
.L_40f890:

            add R14,2
.L_40f894:

            mov EDX,2
            mov RSI,R12
            mov RDI,RBX
            call .L_40d8b0

            movzx EAX,BYTE PTR [RSP+518]
            movzx EDX,BYTE PTR [RSP+519]
            shl EAX,8
            add EAX,EDX
            cmp R14,R13
            mov WORD PTR [R15],AX
            mov R15,R14
            jne .L_40f890
.L_40f8c5:

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_40f824

            mov RDX,RSP
            mov RSI,RBP
            mov RDI,RBX
            call .L_4134e0

            jmp .L_40f824
.L_40f8ea:

            call __stack_chk_fail@PLT
.L_40f8ef:

            nop
.L_40f8f0:

            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,32
.L_40f901:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40fa20

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_412aa8]
            jne .L_40f9f0

            test R12,R12
            je .L_40f940

            test BYTE PTR [R12+16],128
            jne .L_40f9e0
.L_40f940:

            cmp RBP,9
            lea RSI,QWORD PTR [RIP+.L_412ad5]
            jne .L_40f9f0

            lea RSI,QWORD PTR [RSP+15]
            mov EDX,9
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_40fa03

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
            call .L_413940

            jmp .L_40fa03
.L_40f9e0:

            lea RSI,QWORD PTR [RIP+.L_412ac0]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40f9f0:

            mov RDI,RBX
            call .L_40d580

            mov RSI,RBP
            mov RDI,RBX
            call .L_40da90
.L_40fa03:

            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40fa31

            add RSP,32
.L_40fa17:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40fa20:

            lea RSI,QWORD PTR [RIP+.L_412a8f]
            call .L_40d4b0

            jmp .L_40f940
.L_40fa31:

            call __stack_chk_fail@PLT
.L_40fa36:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40fa40:

            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,32
.L_40fa51:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40fb70

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_412b0a]
            jne .L_40fb40

            test R12,R12
            je .L_40fa90

            test BYTE PTR [R12+17],1
            jne .L_40fb30
.L_40fa90:

            cmp RBP,9
            lea RSI,QWORD PTR [RIP+.L_412b37]
            jne .L_40fb40

            lea RSI,QWORD PTR [RSP+15]
            mov EDX,9
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_40fb53

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
            call .L_4136f0

            jmp .L_40fb53
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40fb30:

            lea RSI,QWORD PTR [RIP+.L_412b22]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40fb40:

            mov RDI,RBX
            call .L_40d580

            mov RSI,RBP
            mov RDI,RBX
            call .L_40da90
.L_40fb53:

            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40fb81

            add RSP,32
.L_40fb67:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40fb70:

            lea RSI,QWORD PTR [RIP+.L_412af1]
            call .L_40d4b0

            jmp .L_40fa90
.L_40fb81:

            call __stack_chk_fail@PLT
.L_40fb86:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40fb90:

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
.L_40fba7:

            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_40fd10

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_412b6c]
            jne .L_40fca7

            test RBP,RBP
            je .L_40fbd4

            test BYTE PTR [RBP+17],4
            jne .L_40fca0
.L_40fbd4:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            lea RSI,QWORD PTR [R12+1]
            mov RDI,RBX
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RBX+1208],RAX
            lea RSI,QWORD PTR [RIP+.L_412b99]
            je .L_40fd42

            mov RSI,RAX
            mov RDX,R12
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_40fcdf

            mov RAX,QWORD PTR [RBX+1208]
            mov BYTE PTR [RAX+R12*1],0
            mov R15,QWORD PTR [RBX+1208]
            cmp BYTE PTR [R15],0
            mov RAX,R15
            je .L_40fc51

            nop
            nop
            nop
            nop
            nop
.L_40fc48:

            add RAX,1
            cmp BYTE PTR [RAX],0
            jne .L_40fc48
.L_40fc51:

            cmp R12,11
            jbe .L_40fcd0

            add R15,R12
            mov RDX,R15
            sub RDX,RAX
            cmp RDX,12
            jle .L_40fcd0

            movzx R14D,BYTE PTR [RAX+9]
            movzx R13D,BYTE PTR [RAX+10]
            test R14B,R14B
            jne .L_40fc7b

            cmp R13B,2
            jne .L_40fc96
.L_40fc7b:

            lea ECX,DWORD PTR [R14-1]
            cmp CL,1
            setbe SIL
            cmp R13B,3
            setne CL
            test SIL,CL
            je .L_40fd60
.L_40fc96:

            lea RSI,QWORD PTR [RIP+.L_4121e8]
            jmp .L_40fcd7
          .byte 0x90
.L_40fca0:

            lea RSI,QWORD PTR [RIP+.L_412b84]
.L_40fca7:

            mov RDI,RBX
            call .L_40d580

            add RSP,24
.L_40fcb3:

            mov RSI,R12
            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40da90
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40fcd0:

            lea RSI,QWORD PTR [RIP+.L_412bb5]
.L_40fcd7:

            mov RDI,RBX
            call .L_40d580
.L_40fcdf:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

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
.L_40fd10:

            lea RSI,QWORD PTR [RIP+.L_412b53]
            call .L_40d4b0

            jmp .L_40fbd4
.L_40fd21:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            lea RSI,QWORD PTR [RIP+.L_412bc7]
            mov QWORD PTR [RBX+1208],0
.L_40fd42:

            add RSP,24
            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40d580
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40fd60:

            cmp R14B,3
            jne .L_40fd70

            cmp R13B,4
            jne .L_40fc96
.L_40fd70:

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
            jbe .L_40fdcd

            lea RSI,QWORD PTR [RIP+.L_412218]
            mov RDI,RBX
            mov QWORD PTR [RSP],RAX
            call .L_40d580

            mov RAX,QWORD PTR [RSP]
.L_40fdcd:

            cmp BYTE PTR [RAX+11],0
            lea R8,QWORD PTR [RAX+11]
            mov R12,R8
            je .L_40fdeb

            nop
            nop
            nop
            nop
            nop
            nop
.L_40fde0:

            add R12,1
            cmp BYTE PTR [R12],0
            jne .L_40fde0
.L_40fdeb:

            movzx ESI,R13B
            mov RDI,RBX
            mov QWORD PTR [RSP],R8
            shl RSI,3
            call .L_40d0f0

            test RAX,RAX
            je .L_40fd21

            movzx ESI,R13B
            mov R8,QWORD PTR [RSP]
            test ESI,ESI
            je .L_40feb0

            lea EDX,DWORD PTR [RSI-1]
            mov RDI,RAX
            lea R11,QWORD PTR [RAX+RDX*8+8]
            lea RDX,QWORD PTR [R15+1]
.L_40fe27:

            lea RCX,QWORD PTR [R12+1]
            cmp R15,RCX
            mov QWORD PTR [RDI],RCX
            jb .L_40fe4e

            cmp BYTE PTR [R12+1],0
            jne .L_40fe45

            jmp .L_40fea0
          .byte 0x66
          .byte 0x90
.L_40fe40:

            cmp BYTE PTR [RCX],0
            je .L_40fea0
.L_40fe45:

            add RCX,1
            cmp RDX,RCX
            jne .L_40fe40
.L_40fe4e:

            lea RSI,QWORD PTR [RIP+.L_412bb5]
            mov RDI,RBX
            mov QWORD PTR [RSP],RAX
            call .L_40d580
.L_40fe61:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            mov QWORD PTR [RBX+1208],0
            mov RAX,QWORD PTR [RSP]
            add RSP,24
.L_40fe83:

            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            mov RSI,RAX
            jmp .L_40d0a0
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40fea0:

            add RDI,8
            mov R12,RCX
            cmp RDI,R11
            jne .L_40fe27
.L_40feb0:

            movzx EDI,BYTE PTR [RSP+8]
            movzx EDX,BYTE PTR [RSP+9]
            sub RSP,8
.L_40febe:

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
.L_40ff08:

            mov QWORD PTR [RSP+16],RAX
            push R8
            lea R8,QWORD PTR [RDI+R10*1]
            push RSI
            mov RDI,RBX
            mov RSI,RBP
            add RCX,RDX
            mov RDX,QWORD PTR [RBX+1208]
            call .L_413720

            add RSP,32
            jmp .L_40fe61
.L_40ff32:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ff40:

            push R14
            push R13
            mov R13,RSI
            push R12
            push RBP
            mov RBP,RDX
            push RBX
            mov RBX,RDI
            sub RSP,32
.L_40ff55:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_410150

            test AL,4
            lea RSI,QWORD PTR [RIP+.L_412bfb]
            jne .L_4100e0

            test R13,R13
            je .L_40ff93

            test BYTE PTR [R13+17],64
            jne .L_4100d0
.L_40ff93:

            cmp RBP,3
            lea RSI,QWORD PTR [RIP+.L_412c28]
            jbe .L_4100e0
.L_40ffa4:

            lea RSI,QWORD PTR [RBP+1]
            mov RDI,RBX
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RBX+1208],RAX
            lea RSI,QWORD PTR [RIP+.L_412248]
            je .L_4100e0

            mov RSI,RAX
            mov RDX,RBP
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_410130

            mov RAX,QWORD PTR [RBX+1208]
            lea R14,QWORD PTR [RSP+16]
            mov RSI,R14
            mov BYTE PTR [RAX+RBP*1],0
            mov RAX,QWORD PTR [RBX+1208]
            lea RDI,QWORD PTR [RAX+1]
            call strtod@PLT

            mov RAX,QWORD PTR [RSP+16]
            movapd XMM2,XMM0
            lea RSI,QWORD PTR [RIP+.L_412278]
            cmp BYTE PTR [RAX],0
            jne .L_4100a8

            mov RAX,QWORD PTR [RBX+1208]
            cmp BYTE PTR [RAX+1],0
            lea RDI,QWORD PTR [RAX+1]
            je .L_410041

            nop
            nop
            nop
            nop
.L_410038:

            add RDI,1
            cmp BYTE PTR [RDI],0
            jne .L_410038
.L_410041:

            lea R12,QWORD PTR [RDI+1]
            add RAX,RBP
            lea RSI,QWORD PTR [RIP+.L_412c3d]
            cmp R12,RAX
            ja .L_4100a8

            mov RSI,R14
            mov RDI,R12
            movsd QWORD PTR [RSP+8],XMM2
            call strtod@PLT

            mov RAX,QWORD PTR [RSP+16]
            lea RSI,QWORD PTR [RIP+.L_4122a0]
            movsd XMM2,QWORD PTR [RSP+8]
            cmp BYTE PTR [RAX],0
            jne .L_4100a8

            mov RAX,QWORD PTR [RBX+1208]
            add RBP,RAX
            cmp R12,RBP
            ja .L_41009b

            pxor XMM1,XMM1
            ucomisd XMM1,XMM2
            jae .L_41009b

            ucomisd XMM1,XMM0
            jb .L_410110
.L_41009b:

            lea RSI,QWORD PTR [RIP+.L_412c52]
            nop
            nop
            nop
            nop
            nop
            nop
.L_4100a8:

            mov RDI,RBX
            call .L_40d580

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            mov QWORD PTR [RBX+1208],0
            jmp .L_4100f3
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4100d0:

            lea RSI,QWORD PTR [RIP+.L_412c13]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4100e0:

            mov RDI,RBX
            call .L_40d580

            mov RSI,RBP
            mov RDI,RBX
            call .L_40da90
.L_4100f3:

            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_410161

            add RSP,32
.L_410107:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
.L_410110:

            movsx EDX,BYTE PTR [RAX]
            movapd XMM1,XMM0
            movapd XMM0,XMM2
            mov RSI,R13
            mov RDI,RBX
            call .L_413910

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_410130:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            mov QWORD PTR [RBX+1208],0
            jmp .L_4100f3
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410150:

            lea RSI,QWORD PTR [RIP+.L_412be2]
            call .L_40d4b0

            jmp .L_40ffa4
.L_410161:

            call __stack_chk_fail@PLT
.L_410166:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_410170:

            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDX
            mov RBX,RDI
            sub RSP,32
.L_410181:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+24],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+280]
            test AL,1
            je .L_410280

            test RSI,RSI
            je .L_4101b4

            test BYTE PTR [R12+17],2
            lea RSI,QWORD PTR [RIP+.L_412c7c]
            jne .L_4101c5
.L_4101b4:

            test AL,4
            jne .L_4101f8
.L_4101b8:

            cmp RBP,7
            je .L_410209
.L_4101be:

            lea RSI,QWORD PTR [RIP+.L_412c91]
.L_4101c5:

            mov RDI,RBX
            call .L_40d580

            mov RSI,RBP
            mov RDI,RBX
            call .L_40da90
.L_4101d8:

            mov RAX,QWORD PTR [RSP+24]
            xor RAX,QWORD PTR FS:[40]
            jne .L_4102a0

            add RSP,32
.L_4101f0:

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4101f8:

            or RAX,8
            cmp RBP,7
            mov QWORD PTR [RBX+280],RAX
            jne .L_4101be
.L_410209:

            lea RSI,QWORD PTR [RSP+17]
            mov EDX,7
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_4101d8

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
            call .L_413d70

            jmp .L_4101d8
          .byte 0x90
.L_410280:

            lea RSI,QWORD PTR [RIP+.L_412c64]
            call .L_40d4b0

            mov RAX,QWORD PTR [RBX+280]
            test AL,4
            je .L_4101b8

            jmp .L_4101f8
.L_4102a0:

            call __stack_chk_fail@PLT
.L_4102a5:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4102b0:

            push R14
            push R13
            push R12
            push RBP
            mov R12,RSI
            push RBX
.L_4102bb:

            mov RAX,QWORD PTR [RDI+496]
            mov RBX,RDI
            mov RBP,RDX
            test RAX,RAX
            je .L_4102ec

            cmp RAX,1
            je .L_41048c

            sub RAX,1
            cmp RAX,1
            mov QWORD PTR [RDI+496],RAX
            je .L_410480
.L_4102ec:

            mov RAX,QWORD PTR [RBX+280]
            test AL,1
            je .L_410460
.L_4102fb:

            test AL,4
            jne .L_410400
.L_410303:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            lea RSI,QWORD PTR [RBP+1]
            mov RDI,RBX
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RBX+1208],RAX
            lea RSI,QWORD PTR [RIP+.L_4122f0]
            je .L_41044f

            mov RSI,RAX
            mov RDX,RBP
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_41041f

            mov R14,QWORD PTR [RBX+1208]
            lea RAX,QWORD PTR [R14+RBP*1]
            mov RBP,R14
            mov BYTE PTR [RAX],0
            cmp BYTE PTR [R14],0
            je .L_41037a

            nop
            nop
            nop
            nop
.L_410370:

            add RBP,1
            cmp BYTE PTR [RBP],0
            jne .L_410370
.L_41037a:

            cmp RAX,RBP
            mov ESI,32
            mov RDI,RBX
            setne AL
            movzx EAX,AL
            add RBP,RAX
            call .L_40d0f0

            test RAX,RAX
            mov R13,RAX
            je .L_410410

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
            call .L_413d40

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            mov EBP,EAX
            call .L_40d0a0

            mov QWORD PTR [RBX+1208],0
            mov RSI,R13
            mov RDI,RBX
            call .L_40d0a0

            test EBP,EBP
            jne .L_410448

            pop RBX
.L_4103f4:

            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410400:

            or RAX,8
            mov QWORD PTR [RBX+280],RAX
            jmp .L_410303
.L_410410:

            lea RSI,QWORD PTR [RIP+.L_412318]
            mov RDI,RBX
            call .L_40d580
.L_41041f:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

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
.L_410448:

            lea RSI,QWORD PTR [RIP+.L_412348]
.L_41044f:

            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            jmp .L_40d580
          .byte 0x90
.L_410460:

            lea RSI,QWORD PTR [RIP+.L_412cad]
            mov RDI,RBX
            call .L_40d4b0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_4102fb
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_410480:

            lea RSI,QWORD PTR [RIP+.L_4122c8]
            call .L_40d580
.L_41048c:

            mov RSI,RBP
            mov RDI,RBX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            jmp .L_40da90
.L_41049f:

            nop
.L_4104a0:

            push R13
            push R12
            mov R13,RSI
            push RBP
            push RBX
            mov R12,RDX
            mov RBX,RDI
            sub RSP,24
.L_4104b3:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+496]
            test RAX,RAX
            je .L_4104ee

            cmp RAX,1
            je .L_4106f4

            sub RAX,1
            cmp RAX,1
            mov QWORD PTR [RDI+496],RAX
            je .L_4106e8
.L_4104ee:

            mov RAX,QWORD PTR [RBX+280]
            test AL,1
            je .L_4106b0
.L_4104fd:

            test AL,4
            jne .L_410648
.L_410505:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            lea RSI,QWORD PTR [R12+1]
            mov RDI,RBX
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RBX+1208],RAX
            je .L_4106d0

            mov RSI,RAX
            mov RDX,R12
            mov RDI,RBX
            call .L_40d8b0

            xor ESI,ESI
            mov RDI,RBX
            call .L_40da90

            test EAX,EAX
            jne .L_41066f

            mov RAX,QWORD PTR [RBX+1208]
            mov BYTE PTR [RAX+R12*1],0
            mov RAX,QWORD PTR [RBX+1208]
            cmp BYTE PTR [RAX],0
            mov RBP,RAX
            je .L_41057a

            nop
            nop
            nop
            nop
.L_410570:

            add RBP,1
            cmp BYTE PTR [RBP],0
            jne .L_410570
.L_41057a:

            cmp R12,1
            jbe .L_410660

            lea RDX,QWORD PTR [RAX+R12*1-2]
            cmp RBP,RDX
            jae .L_410660

            cmp BYTE PTR [RBP+1],0
            jne .L_410708
.L_41059c:

            add RBP,2
            mov RDX,R12
            xor ESI,ESI
            sub RBP,RAX
            mov R8,RSP
            mov RDI,RBX
            mov RCX,RBP
            call .L_40db50

            mov ESI,32
            mov RDI,RBX
            call .L_40d0f0

            test RAX,RAX
            mov R12,RAX
            je .L_410728

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
            call .L_413d40

            mov RSI,R12
            mov RDI,RBX
            mov EBP,EAX
            call .L_40d0a0

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            test EBP,EBP
            mov QWORD PTR [RBX+1208],0
            je .L_410689

            lea RSI,QWORD PTR [RIP+.L_412420]
            mov RDI,RBX
            call .L_40d4b0

            jmp .L_410689
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410648:

            or RAX,8
            mov QWORD PTR [RBX+280],RAX
            jmp .L_410505
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410660:

            lea RSI,QWORD PTR [RIP+.L_412cdf]
.L_410667:

            mov RDI,RBX
            call .L_40d580
.L_41066f:

            mov RSI,QWORD PTR [RBX+1208]
            mov RDI,RBX
            call .L_40d0a0

            mov QWORD PTR [RBX+1208],0
.L_410689:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_410734

            add RSP,24
.L_4106a1:

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
.L_4106b0:

            lea RSI,QWORD PTR [RIP+.L_412cc6]
            mov RDI,RBX
            call .L_40d4b0

            mov RAX,QWORD PTR [RBX+280]
            jmp .L_4104fd
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4106d0:

            lea RSI,QWORD PTR [RIP+.L_4123a0]
            mov RDI,RBX
            call .L_40d580

            jmp .L_410689
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4106e8:

            lea RSI,QWORD PTR [RIP+.L_412378]
            call .L_40d580
.L_4106f4:

            mov RSI,R12
            mov RDI,RBX
            call .L_40da90

            jmp .L_410689
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410708:

            lea RSI,QWORD PTR [RIP+.L_4123c8]
            mov RDI,RBX
            call .L_40d580

            mov RAX,QWORD PTR [RBX+1208]
            jmp .L_41059c
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_410728:

            lea RSI,QWORD PTR [RIP+.L_4123f0]
            jmp .L_410667
.L_410734:

            call __stack_chk_fail@PLT
.L_410739:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_410740:

            push R14
            push R13
            push R12
            push RBP
            mov R12,RSI
            push RBX
.L_41074b:

            mov RAX,QWORD PTR [RDI+496]
            mov RBX,RDI
            mov RBP,RDX
            test RAX,RAX
            je .L_41077c

            cmp RAX,1
            je .L_410858

            sub RAX,1
            cmp RAX,1
            mov QWORD PTR [RDI+496],RAX
            je .L_4108d8
.L_41077c:

            mov RAX,QWORD PTR [RBX+280]
            test AL,4
            je .L_4107a0

            mov ECX,DWORD PTR [RIP+.L_6191a7]
            cmp DWORD PTR [RBX+620],ECX
            je .L_4107a0

            or RAX,8
            mov QWORD PTR [RBX+280],RAX
.L_4107a0:

            test BYTE PTR [RBX+620],32
            je .L_410898
.L_4107ad:

            test BYTE PTR [RBX+289],128
            jne .L_4107c4

            cmp QWORD PTR [RBX+1008],0
            je .L_410858
.L_4107c4:

            lea R13,QWORD PTR [RBX+620]
.L_4107cb:

            mov EAX,DWORD PTR [R13]
            test RBP,RBP
            lea R14,QWORD PTR [RBX+1160]
            mov BYTE PTR [RBX+1164],0
            mov QWORD PTR [RBX+1176],RBP
            mov DWORD PTR [RBX+1160],EAX
            jne .L_410870

            mov QWORD PTR [RBX+1168],0
.L_4107fe:

            mov RAX,QWORD PTR [RBX+1008]
            test RAX,RAX
            je .L_410829

            mov RSI,R14
            mov RDI,RBX
            call RAX

            test EAX,EAX
            js .L_4108f0

            jne .L_41083c

            test BYTE PTR [RBX+620],32
            je .L_410908
.L_410829:

            mov ECX,1
            mov RDX,R14
            mov RSI,R12
            mov RDI,RBX
            call .L_414180
.L_41083c:

            mov RSI,QWORD PTR [RBX+1168]
            mov RDI,RBX
            xor EBP,EBP
            call .L_40d0a0

            mov QWORD PTR [RBX+1168],0
.L_410858:

            mov RSI,RBP
            mov RDI,RBX
            pop RBX
.L_41085f:

            pop RBP
            pop R12
            pop R13
            pop R14
            jmp .L_40da90
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_410870:

            mov RSI,RBP
            mov RDI,RBX
            call .L_40cfc0

            mov RDX,RBP
            mov QWORD PTR [RBX+1168],RAX
            mov RSI,RAX
            mov RDI,RBX
            call .L_40d8b0

            jmp .L_4107fe
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_410898:

            lea R13,QWORD PTR [RBX+620]
            mov RDI,RBX
            mov RSI,R13
            call .L_402010

            cmp EAX,3
            je .L_4107ad

            cmp QWORD PTR [RBX+1008],0
            jne .L_4107cb

            lea RSI,QWORD PTR [RIP+.L_412cf4]
            mov RDI,RBX
            call .L_40d5d0

            jmp .L_4107ad
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4108d8:

            lea RSI,QWORD PTR [RIP+.L_412450]
            call .L_40d580

            jmp .L_410858
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4108f0:

            lea RSI,QWORD PTR [RIP+.L_412d0b]
            mov RDI,RBX
            call .L_40d5d0

            jmp .L_41083c
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410908:

            mov RSI,R13
            mov RDI,RBX
            call .L_402010

            cmp EAX,3
            je .L_410829

            lea RSI,QWORD PTR [RIP+.L_412cf4]
            mov RDI,RBX
            call .L_40d5d0

            jmp .L_410829
.L_410930:

            movzx EAX,BYTE PTR [RSI]
            lea EDX,DWORD PTR [RAX-65]
            cmp DL,57
            ja .L_410980

            sub EAX,91
            cmp AL,5
            jbe .L_410980

            movzx EAX,BYTE PTR [RSI+1]
            lea EDX,DWORD PTR [RAX-65]
            cmp DL,57
            ja .L_410980

            sub EAX,91
            cmp AL,5
            jbe .L_410980

            movzx EAX,BYTE PTR [RSI+2]
            lea EDX,DWORD PTR [RAX-65]
            cmp DL,57
            ja .L_410980

            sub EAX,91
            cmp AL,5
            jbe .L_410980

            movzx EAX,BYTE PTR [RSI+3]
            lea EDX,DWORD PTR [RAX-65]
            cmp DL,57
            ja .L_410980

            sub EAX,91
            cmp AL,5
            jbe .L_410980

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_410980:

            lea RSI,QWORD PTR [RIP+.L_412d1f]
            jmp .L_40d5d0
.L_41098c:

            nop
            nop
            nop
            nop
.L_410990:

            push R12
            push RBP
            mov EDX,8
            push RBX
            mov RBX,RDI
            sub RSP,16
.L_4109a0:

            mov RBP,RSP
            mov RSI,RBP
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            call .L_406870

            mov RSI,RBP
            mov RDI,RBX
            lea RBP,QWORD PTR [RBX+620]
            call .L_40d8e0

            mov R12,RAX
            mov EAX,DWORD PTR [RSP+4]
            mov RDI,RBX
            mov DWORD PTR [RBX+620],EAX
            call .L_4016b0

            mov EDX,4
            mov RSI,RBP
            mov RDI,RBX
            call .L_4016d0

            mov RSI,RBP
            mov RDI,RBX
            call .L_410930

            mov RCX,QWORD PTR [RSP+8]
            xor RCX,QWORD PTR FS:[40]
            jne .L_410a19

            add RSP,16
.L_410a11:

            mov RAX,R12
            pop RBX
            pop RBP
            pop R12
            ret 
.L_410a19:

            call __stack_chk_fail@PLT
.L_410a1e:

            nop
            nop
.L_410a20:

            push R15
            push R14
            cmp EDX,255
            push R13
            push R12
            mov RAX,RSI
            push RBP
            push RBX
.L_410a33:

            mov RBX,QWORD PTR [RDI+528]
            movzx ECX,BYTE PTR [RDI+587]
            mov R8,QWORD PTR [RDI+456]
            lea RSI,QWORD PTR [RBX+1]
            je .L_410b10

            cmp CL,2
            je .L_410b50

            cmp CL,4
            je .L_410cc0

            cmp CL,1
            je .L_410c08

            shr CL,3
            test R8,R8
            movzx ECX,CL
            je .L_410b00

            mov EBX,ECX
            mov EDI,4294967168
            mov R14D,ECX
            and EBX,2
            xor R9D,R9D
            mov R12D,ECX
            and R14D,4
            mov DWORD PTR [RSP-20],EBX
            mov R11D,EDI
            jmp .L_410ac0
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410aa0:

            mov R10D,EDI
            add RSI,RCX
            add RAX,RCX
            shr R10B,1
            cmp DIL,1
            mov EDI,R10D
            cmove EDI,R11D
            add R9,1
            cmp R8,R9
            je .L_410b00
.L_410ac0:

            movzx R10D,DIL
            test R10D,EDX
            je .L_410aa0

            cmp ECX,8
            jae .L_410d78

            test R14D,R14D
            jne .L_410dd8

            test ECX,ECX
            je .L_410aa0

            movzx R10D,BYTE PTR [RSI]
            mov BYTE PTR [RAX],R10B
            mov R10D,DWORD PTR [RSP-20]
            test R10D,R10D
            je .L_410aa0

            movzx R10D,WORD PTR [RSI+R12*1-2]
            mov WORD PTR [RAX+R12*1-2],R10W
            jmp .L_410aa0
          .byte 0x66
          .byte 0x90
.L_410b00:

            pop RBX
.L_410b01:

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
.L_410b10:

            cmp CL,7
            ja .L_410b40

            movzx EDX,CL
            imul R8,RDX
            lea RDX,QWORD PTR [R8+7]
            shr RDX,3
.L_410b24:

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
.L_410b40:

            shr CL,3
            movzx EDX,CL
            imul RDX,R8
            jmp .L_410b24
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410b50:

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
            je .L_410b00

            mov R10D,R14D
            xor EBX,EBX
            mov R11D,128
            mov R15D,6
            mov R13D,128
            jmp .L_410bc8
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410ba8:

            add R10D,R12D
.L_410bab:

            mov ECX,R11D
            sar ECX,1
            cmp R11D,1
            cmove ECX,R13D
            add RBX,1
            cmp R8,RBX
            mov R11D,ECX
            je .L_410b00
.L_410bc8:

            test EDX,R11D
            je .L_410bf2

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
.L_410bf2:

            cmp EBP,R10D
            jne .L_410ba8

            add RSI,1
            add RAX,1
            mov R10D,R14D
            jmp .L_410bab
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410c08:

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
            je .L_410b00

            mov R10D,R14D
            xor EBX,EBX
            mov R11D,128
            mov R15D,7
            mov R13D,128
            jmp .L_410c80
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410c60:

            add R10D,R12D
.L_410c63:

            mov ECX,R11D
            sar ECX,1
            cmp R11D,1
            cmove ECX,R13D
            add RBX,1
            cmp R8,RBX
            mov R11D,ECX
            je .L_410b00
.L_410c80:

            test EDX,R11D
            je .L_410caa

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
.L_410caa:

            cmp EBP,R10D
            jne .L_410c60

            add RSI,1
            add RAX,1
            mov R10D,R14D
            jmp .L_410c63
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410cc0:

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
            je .L_410b00

            mov R10D,R14D
            xor EBX,EBX
            mov R11D,128
            mov R15D,4
            mov R13D,128
            jmp .L_410d38
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410d18:

            add R10D,R12D
.L_410d1b:

            mov ECX,R11D
            sar ECX,1
            cmp R11D,1
            cmove ECX,R13D
            add RBX,1
            cmp R8,RBX
            mov R11D,ECX
            je .L_410b00
.L_410d38:

            test EDX,R11D
            je .L_410d62

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
.L_410d62:

            cmp EBP,R10D
            jne .L_410d18

            add RSI,1
            add RAX,1
            mov R10D,R14D
            jmp .L_410d1b
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_410d78:

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
            jb .L_410aa0

            and R10D,4294967288
            xor EBP,EBP
            mov QWORD PTR [RSP-16],RAX
.L_410db8:

            mov R13D,EBP
            add EBP,8
            mov RAX,QWORD PTR [R15+R13*1]
            cmp EBP,R10D
            mov QWORD PTR [RBX+R13*1],RAX
            jb .L_410db8

            mov RAX,QWORD PTR [RSP-16]
            jmp .L_410aa0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_410dd8:

            mov R10D,DWORD PTR [RSI]
            mov DWORD PTR [RAX],R10D
            mov R10D,DWORD PTR [RSI+R12*1-4]
            mov DWORD PTR [RAX+R12*1-4],R10D
            jmp .L_410aa0
.L_410ded:

            nop
            nop
            nop
.L_410df0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,88
.L_410dfe:

            mov RDX,QWORD PTR [RDI+528]
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+72],RAX
            xor EAX,EAX
            cmp RDX,-1
            je .L_410f9e

            cmp RDI,-568
            mov R13,RDI
            je .L_410f9e

            lea RCX,QWORD PTR [RDX+1]
            movzx EDX,BYTE PTR [R13+628]
            lea RAX,QWORD PTR [RIP+.L_402c30]
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
            je .L_410fc8

            cmp DL,4
            je .L_411248

            cmp DL,1
            je .L_4110b0

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
            je .L_410f78

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
.L_410ef0:

            mov RSI,QWORD PTR [RSP+24]
            mov RDI,R8
            mov ECX,8
            mov RDX,RBP
            call __memcpy_chk@PLT

            test EBX,EBX
            mov R8,RAX
            jle .L_410f56

            mov R11D,EBP
            mov RDX,QWORD PTR [RSP+32]
            xor ESI,ESI
            lea R14,QWORD PTR [RAX+R11*1]
.L_410f1a:

            cmp EBP,8
            jae .L_411190

            test R15D,R15D
            jne .L_411230

            test EBP,EBP
            je .L_410f42

            movzx EAX,BYTE PTR [R8]
            mov BYTE PTR [RDX],AL
            mov EAX,DWORD PTR [RSP+44]
            test EAX,EAX
            jne .L_411348
.L_410f42:

            add ESI,1
            add RDX,R12
            cmp EBX,ESI
            jne .L_410f1a

            mov RDI,QWORD PTR [RSP+56]
            add QWORD PTR [RSP+32],RDI
.L_410f56:

            mov RAX,QWORD PTR [RSP+48]
            add QWORD PTR [RSP+24],R12
            add R13,1
            cmp QWORD PTR [RAX+568],R13
            ja .L_410ef0

            mov R13,RAX
.L_410f70:

            movzx EDX,BYTE PTR [R13+587]
.L_410f78:

            mov RAX,QWORD PTR [RSP+16]
            cmp DL,7
            mov QWORD PTR [R13+568],RAX
            jbe .L_4111fc

            shr DL,3
            movzx EDX,DL
            imul RDX,RAX
.L_410f97:

            mov QWORD PTR [R13+576],RDX
.L_410f9e:

            mov RAX,QWORD PTR [RSP+72]
            xor RAX,QWORD PTR FS:[40]
            jne .L_4113d8

            add RSP,88
.L_410fb6:

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
.L_410fc8:

            shr R9,2
            shr RAX,2
            lea RSI,QWORD PTR [RCX+R9*1]
            add RAX,RCX
            mov RCX,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+24],RSI
            lea RSI,QWORD PTR [RDI+3]
            add RCX,3
            test R8D,65536
            je .L_4113b0

            lea RBP,QWORD PTR [RSI+RSI*1]
            lea RSI,QWORD PTR [RCX+RCX*1]
            mov R12D,4294967294
            xor R9D,R9D
            mov R10D,6
            and EBP,6
            and ESI,6
.L_411013:

            test RDI,RDI
            je .L_4111f0

            xor R15D,R15D
            mov R14D,6
            mov R11D,16191
            nop
            nop
            nop
            nop
            nop
.L_411030:

            mov RDI,QWORD PTR [RSP+24]
            mov ECX,EBP
            movzx R8D,BYTE PTR [RDI]
            sar R8D,CL
            and R8D,3
            test EBX,EBX
            jle .L_411090

            movzx R8D,R8B
            xor EDI,EDI
            mov DWORD PTR [RSP+8],EBP
            jmp .L_411062
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411058:

            add EDI,1
            add ESI,R12D
            cmp EBX,EDI
            je .L_41108c
.L_411062:

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
            jne .L_411058

            add EDI,1
            sub RAX,1
            mov ESI,R10D
            cmp EBX,EDI
            jne .L_411062
.L_41108c:

            mov EBP,DWORD PTR [RSP+8]
.L_411090:

            cmp R9D,EBP
            je .L_411210

            add EBP,R12D
.L_41109c:

            add R15,1
            cmp QWORD PTR [R13+568],R15
            ja .L_411030

            jmp .L_410f70
          .byte 0x66
          .byte 0x90
.L_4110b0:

            shr R9,3
            shr RAX,3
            lea R12D,DWORD PTR [RDI+7]
            lea RSI,QWORD PTR [RCX+R9*1]
            add RAX,RCX
            mov QWORD PTR [RSP+24],RSI
            mov ESI,DWORD PTR [RSP+16]
            add ESI,7
            test R8D,65536
            je .L_411360

            and R12D,7
            and ESI,7
            mov EBP,4294967295
            xor R9D,R9D
            mov R11D,7
.L_4110f1:

            test RDI,RDI
            je .L_4111f0

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
.L_411110:

            mov RDI,QWORD PTR [RSP+24]
            mov ECX,R12D
            movzx R8D,BYTE PTR [RDI]
            sar R8D,CL
            and R8D,1
            test EBX,EBX
            jle .L_411172

            movzx R8D,R8B
            xor EDI,EDI
            mov DWORD PTR [RSP+8],R12D
            jmp .L_411141
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_411138:

            add EDI,1
            add ESI,EBP
            cmp EBX,EDI
            je .L_41116d
.L_411141:

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
            jne .L_411138

            add EDI,1
            sub RAX,1
            mov ESI,R11D
            cmp EBX,EDI
            jne .L_411141
.L_41116d:

            mov R12D,DWORD PTR [RSP+8]
.L_411172:

            cmp R9D,R12D
            je .L_411220

            add R12D,EBP
.L_41117e:

            add R15,1
            cmp QWORD PTR [R13+568],R15
            ja .L_411110

            jmp .L_410f70
.L_411190:

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
            jb .L_410f42

            and EAX,4294967288
            xor EDI,EDI
            mov QWORD PTR [RSP+8],RDX
.L_4111cb:

            mov R9D,EDI
            add EDI,8
            mov RDX,QWORD PTR [R10+R9*1]
            cmp EDI,EAX
            mov QWORD PTR [RCX+R9*1],RDX
            jb .L_4111cb

            mov RDX,QWORD PTR [RSP+8]
            jmp .L_410f42
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4111f0:

            mov RAX,QWORD PTR [RSP+16]
            mov QWORD PTR [R13+568],RAX
.L_4111fc:

            imul RDX,QWORD PTR [RSP+16]
            add RDX,7
            shr RDX,3
            jmp .L_410f97
          .byte 0x90
.L_411210:

            sub QWORD PTR [RSP+24],1
            mov EBP,R10D
            jmp .L_41109c
          .byte 0x66
          .byte 0x90
.L_411220:

            sub QWORD PTR [RSP+24],1
            mov R12D,R11D
            jmp .L_41117e
          .byte 0x66
          .byte 0x90
.L_411230:

            mov EAX,DWORD PTR [R8]
            mov DWORD PTR [RDX],EAX
            mov EAX,DWORD PTR [R14-4]
            mov DWORD PTR [RDX+R11*1-4],EAX
            jmp .L_410f42
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411248:

            shr R9,1
            shr RAX,1
            lea RSI,QWORD PTR [RCX+R9*1]
            add RAX,RCX
            mov RCX,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+24],RSI
            lea RSI,QWORD PTR [RDI+1]
            add RCX,1
            test R8D,65536
            je .L_411380

            lea R12,QWORD PTR [RSI*4]
            lea RSI,QWORD PTR [RCX*4]
            mov EBP,4294967292
            xor R10D,R10D
            mov R9D,4
            and R12D,4
            and ESI,4
.L_411299:

            test RDI,RDI
            je .L_4111f0

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
.L_4112b8:

            mov RDI,QWORD PTR [RSP+24]
            mov ECX,R12D
            movzx R8D,BYTE PTR [RDI]
            sar R8D,CL
            and R8D,15
            test EBX,EBX
            jle .L_41131a

            movzx R8D,R8B
            xor EDI,EDI
            mov DWORD PTR [RSP+8],R12D
            jmp .L_4112e9
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4112e0:

            add EDI,1
            add ESI,EBP
            cmp EBX,EDI
            je .L_411315
.L_4112e9:

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
            jne .L_4112e0

            add EDI,1
            sub RAX,1
            mov ESI,R9D
            cmp EBX,EDI
            jne .L_4112e9
.L_411315:

            mov R12D,DWORD PTR [RSP+8]
.L_41131a:

            cmp R10D,R12D
            je .L_411338

            add R12D,EBP
.L_411322:

            add R15,1
            cmp QWORD PTR [R13+568],R15
            ja .L_4112b8

            jmp .L_410f70
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_411338:

            sub QWORD PTR [RSP+24],1
            mov R12D,R9D
            jmp .L_411322
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411348:

            movzx EAX,WORD PTR [R14-2]
            mov WORD PTR [RDX+R11*1-2],AX
            jmp .L_410f42
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_411360:

            not R12D
            not ESI
            mov EBP,1
            and R12D,7
            and ESI,7
            mov R9D,7
            xor R11D,R11D
            jmp .L_4110f1
          .byte 0x90
.L_411380:

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
            jmp .L_411299
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4113b0:

            not RSI
            not RCX
            mov R12D,2
            lea RBP,QWORD PTR [RSI+RSI*1]
            lea RSI,QWORD PTR [RCX+RCX*1]
            mov R9D,6
            xor R10D,R10D
            and EBP,6
            and ESI,6
            jmp .L_411013
.L_4113d8:

            call __stack_chk_fail@PLT
.L_4113dd:

            nop
            nop
            nop
.L_4113e0:

            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,16
            cmp R8D,4
            ja .L_411408

            lea RDI,QWORD PTR [RIP+.L_412da8]
            mov R8D,R8D
            movsxd RAX,DWORD PTR [RDI+R8*4]
            add RAX,RDI
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_411408:

            lea RSI,QWORD PTR [RIP+.L_412480]
            mov QWORD PTR [RSP+8],RDX
            call .L_40d580

            mov RDX,QWORD PTR [RSP+8]
            mov BYTE PTR [RDX],0
.L_411421:

            add RSP,16
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
          .byte 0x66
          .byte 0x90
.L_411430:

            movzx EAX,BYTE PTR [RSI+19]
            mov R9,QWORD PTR [RSI+8]
            add EAX,7
            sar EAX,3
            movsxd RDI,EAX
            sub R9,RDI
            test EAX,EAX
            je .L_4115d0

            xor EAX,EAX
            nop
            nop
.L_411450:

            movzx ESI,BYTE PTR [RCX+RAX*1]
            shr SIL,1
            add BYTE PTR [RDX+RAX*1],SIL
            add RAX,1
            cmp RDI,RAX
            jne .L_411450

            add RCX,RDI
            add RDI,RDX
.L_41146a:

            test R9,R9
            je .L_411421

            xor EAX,EAX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_411478:

            movzx ESI,BYTE PTR [RCX+RAX*1]
            movzx R8D,BYTE PTR [RDX+RAX*1]
            add ESI,R8D
            sar ESI,1
            add BYTE PTR [RDI+RAX*1],SIL
            add RAX,1
            cmp R9,RAX
            jne .L_411478

            add RSP,16
.L_411497:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
.L_4114a0:

            movzx EAX,BYTE PTR [RSI+19]
            mov R12,QWORD PTR [RSI+8]
            add EAX,7
            sar EAX,3
            movsxd R10,EAX
            sub R12,R10
            test EAX,EAX
            je .L_4115e0

            xor EAX,EAX
            nop
            nop
.L_4114c0:

            movzx ESI,BYTE PTR [RCX+RAX*1]
            add BYTE PTR [RDX+RAX*1],SIL
            add RAX,1
            cmp R10,RAX
            jne .L_4114c0

            lea R13,QWORD PTR [RCX+R10*1]
            add R10,RDX
.L_4114d8:

            test R12,R12
            je .L_411421

            xor ESI,ESI
            jmp .L_4114fd
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4114e8:

            cmp EDI,EAX
            jg .L_41154a
.L_4114ec:

            add BYTE PTR [R10+RSI*1],R11B
            add RSI,1
            cmp R12,RSI
            je .L_411421
.L_4114fd:

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
            jle .L_4114e8
.L_41154a:

            cmp R8D,EAX
            cmovle EBX,EBP
            mov R11D,EBX
            jmp .L_4114ec
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_411558:

            movzx ECX,BYTE PTR [RSI+19]
            mov RDI,QWORD PTR [RSI+8]
            lea RSI,QWORD PTR [RDX+RDI*1]
            add ECX,7
            sar ECX,3
            movsxd RCX,ECX
            cmp RDI,RCX
            lea RAX,QWORD PTR [RDX+RCX*1]
            jbe .L_411421

            nop
            nop
            nop
            nop
            nop
            nop
.L_411580:

            add RDX,1
            movzx ECX,BYTE PTR [RDX-1]
            add BYTE PTR [RAX],CL
            add RAX,1
            cmp RAX,RSI
            jne .L_411580

            add RSP,16
.L_411597:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
.L_4115a0:

            mov RSI,QWORD PTR [RSI+8]
            test RSI,RSI
            je .L_411421

            add RSI,RDX
.L_4115b0:

            add RCX,1
            movzx EAX,BYTE PTR [RCX-1]
            add BYTE PTR [RDX],AL
            add RDX,1
            cmp RDX,RSI
            jne .L_4115b0

            add RSP,16
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
.L_4115d0:

            mov RDI,RDX
            jmp .L_41146a
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4115e0:

            mov R13,RCX
            mov R10,RDX
            jmp .L_4114d8
.L_4115eb:

            nop
            nop
            nop
            nop
            nop
.L_4115f0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,24
.L_4115fe:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+512]
            add RAX,1
            cmp RAX,QWORD PTR [RDI+472]
            mov QWORD PTR [RDI+512],RAX
            jb .L_411680

            cmp BYTE PTR [RDI+627],0
            mov R15,RDI
            jne .L_411800
.L_411639:

            test BYTE PTR [R15+288],32
            lea R13,QWORD PTR [R15+304]
            je .L_4116a8

            mov RAX,QWORD PTR [R15+592]
.L_411651:

            test RAX,RAX
            jne .L_411661

            mov EAX,DWORD PTR [R15+312]
            test EAX,EAX
            je .L_411670
.L_411661:

            lea RSI,QWORD PTR [RIP+.L_412d73]
            mov RDI,R15
            call .L_40d580
.L_411670:

            mov RDI,R13
            call inflateReset@PLT

            or QWORD PTR [R15+280],8
.L_411680:

            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_41195e

            add RSP,24
.L_411698:

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
.L_4116a8:

            lea RAX,QWORD PTR [RSP+3]
            mov DWORD PTR [R15+336],1
            lea R12,QWORD PTR [R15+620]
            lea RBX,QWORD PTR [RSP+4]
            lea R14,QWORD PTR [RIP+.L_412d46]
            mov QWORD PTR [R15+328],RAX
            jmp .L_41171e
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4116d8:

            mov ESI,1
            mov RDI,R13
            call inflate@PLT

            cmp EAX,1
            je .L_4118d8

            test EAX,EAX
            je .L_41170f

            mov RSI,QWORD PTR [R15+352]
            lea RAX,QWORD PTR [RIP+.L_412d32]
            mov RDI,R15
            test RSI,RSI
            cmove RSI,RAX
            call .L_40d4b0
.L_41170f:

            mov EDX,DWORD PTR [R15+336]
            test EDX,EDX
            je .L_411928
.L_41171e:

            mov EDI,DWORD PTR [R15+312]
            test EDI,EDI
            jne .L_4116d8

            mov RAX,QWORD PTR [R15+592]
            test RAX,RAX
            jne .L_4117b3

            lea RBP,QWORD PTR [RIP+.L_6191a7]
            jmp .L_41174c
          .byte 0x66
          .byte 0x90
.L_411740:

            mov RAX,QWORD PTR [R15+592]
            test RAX,RAX
            jne .L_4117b3
.L_41174c:

            xor ESI,ESI
            mov RDI,R15
            call .L_40da90

            mov EDX,4
            mov RSI,RBX
            mov RDI,R15
            call .L_406870

            mov RSI,RBX
            mov RDI,R15
            call .L_40d8e0

            mov RDI,R15
            mov QWORD PTR [R15+592],RAX
            call .L_4016b0

            mov EDX,4
            mov RSI,R12
            mov RDI,R15
            call .L_40d8b0

            mov EAX,DWORD PTR [R15+620]
            cmp DWORD PTR [RBP],EAX
            je .L_411740

            mov RSI,R14
            mov RDI,R15
            call .L_40d4b0

            mov RAX,QWORD PTR [R15+592]
            test RAX,RAX
            je .L_41174c
.L_4117b3:

            mov RCX,QWORD PTR [R15+424]
            mov RSI,QWORD PTR [R15+416]
            cmp RCX,RAX
            mov EDX,ECX
            mov DWORD PTR [R15+312],ECX
            mov QWORD PTR [R15+304],RSI
            jbe .L_4117df

            mov EDX,EAX
            mov DWORD PTR [R15+312],EAX
.L_4117df:

            mov RDI,R15
            call .L_40d8b0

            mov EAX,DWORD PTR [R15+312]
            sub QWORD PTR [R15+592],RAX
            jmp .L_4116d8
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411800:

            mov RAX,QWORD PTR [RDI+488]
            mov RSI,QWORD PTR [RDI+520]
            xor EDX,EDX
            mov QWORD PTR [RDI+512],0
            lea RBX,QWORD PTR [RIP+.L_414de0-74224]
            lea RCX,QWORD PTR [RAX+1]
            call .L_40d150

            movzx EAX,BYTE PTR [R15+628]
            lea R10,QWORD PTR [RIP+.L_402c30]
            lea R9,QWORD PTR [RIP+.L_402c50]
            lea R11,QWORD PTR [RIP+.L_402c10]
            lea EDI,DWORD PTR [RAX+1]
            movzx ECX,DIL
            shl RCX,2
            jmp .L_4118c1

            nop
            nop
            nop
.L_411858:

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
            jne .L_411963

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
            jne .L_411963

            mov EDI,EAX
.L_4118c1:

            cmp DIL,6
            jbe .L_411858

            mov BYTE PTR [R15+628],DIL
            jmp .L_411639
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4118d8:

            mov ESI,DWORD PTR [R15+336]
            test ESI,ESI
            je .L_4118ee

            mov ECX,DWORD PTR [R15+312]
            test ECX,ECX
            je .L_411950
.L_4118ee:

            lea RSI,QWORD PTR [RIP+.L_412d5c]
            mov RDI,R15
            call .L_40d580

            mov RAX,QWORD PTR [R15+592]
.L_411904:

            or QWORD PTR [R15+280],8
            or QWORD PTR [R15+288],32
.L_411914:

            mov DWORD PTR [R15+336],0
            jmp .L_411651
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_411928:

            lea RSI,QWORD PTR [RIP+.L_412d5c]
            mov RDI,R15
            call .L_40d580

            or QWORD PTR [R15+280],8
            or QWORD PTR [R15+288],32
            mov RAX,QWORD PTR [R15+592]
            jmp .L_411914
.L_411950:

            mov RAX,QWORD PTR [R15+592]
            test RAX,RAX
            je .L_411904

            jmp .L_4118ee
.L_41195e:

            call __stack_chk_fail@PLT
.L_411963:

            mov BYTE PTR [R15+628],DIL
            jmp .L_411680
.L_41196f:

            nop
.L_411970:

            push R12
            push RBP
            push RBX
.L_411974:

            mov RBX,RDI
            mov DWORD PTR [RDI+312],0
            call .L_40bc80

            cmp BYTE PTR [RBX+627],0
            je .L_4119f0

            mov RCX,QWORD PTR [RBX+296]
            mov RDX,QWORD PTR [RBX+464]
            test CL,2
            je .L_411b90

            mov QWORD PTR [RBX+472],RDX
.L_4119ad:

            movzx EDX,BYTE PTR [RBX+628]
            lea RAX,QWORD PTR [RIP+.L_402c30]
            lea RDI,QWORD PTR [RIP+.L_402c50]
            mov RBP,QWORD PTR [RBX+456]
            movsxd RSI,DWORD PTR [RAX+RDX*4]
            movsxd RDX,DWORD PTR [RDI+RDX*4]
            lea RAX,QWORD PTR [RBP+RSI*1-1]
            sub RAX,RDX
            xor EDX,EDX
            div RSI
            mov QWORD PTR [RBX+504],RAX
            jmp .L_411a13
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4119f0:

            mov RAX,QWORD PTR [RBX+464]
            mov RBP,QWORD PTR [RBX+456]
            mov RCX,QWORD PTR [RBX+296]
            mov QWORD PTR [RBX+472],RAX
            mov QWORD PTR [RBX+504],RBP
.L_411a13:

            test CL,4
            movzx EDX,BYTE PTR [RBX+633]
            je .L_411a2e

            cmp BYTE PTR [RBX+631],7
            mov EAX,8
            cmovbe EDX,EAX
.L_411a2e:

            mov R8,RCX
            mov R10,RCX
            and R8D,32768
            and R10D,4096
            je .L_411ac0

            movzx EDI,BYTE PTR [RBX+630]
            cmp DIL,3
            je .L_411d30

            test DIL,DIL
            je .L_411d58

            cmp DIL,2
            je .L_411e00
.L_411a68:

            lea RAX,QWORD PTR [RBP+7]
            mov R9,RCX
            and R9D,1048576
            and RAX,-8
            and CH,64
            mov RSI,RAX
            je .L_411bf8

            cmp WORD PTR [RBX+618],0
            je .L_411da8

            test R10,R10
            je .L_411da8
.L_411a9d:

            cmp EDX,16
            jg .L_411af9
.L_411aa2:

            test R9,R9
            jne .L_411dc0

            mov ECX,4
            mov EBP,4
            jmp .L_411d17
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411ac0:

            test R8,R8
            je .L_411b30

            movzx EDI,BYTE PTR [RBX+630]
            cmp DIL,3
            jne .L_411bc0
.L_411ad6:

            lea RAX,QWORD PTR [RBP+7]
            mov R9,RCX
            mov EDX,32
            and R9D,1048576
            and RAX,-8
            and CH,64
            mov RSI,RAX
            je .L_411bf8
.L_411af9:

            test R9,R9
            jne .L_411dd0

            mov ECX,8
            mov EBP,8
            jmp .L_411d17
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_411b18:

            test R8,R8
            mov EDX,24
            jne .L_411d47

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_411b30:

            lea RAX,QWORD PTR [RBP+7]
            mov R9,RCX
            and R9D,1048576
            and RAX,-8
            and CH,64
            mov RSI,RAX
            je .L_411bf8

            movzx EDI,BYTE PTR [RBX+630]
.L_411b55:

            cmp DIL,4
            je .L_411a9d

            cmp EDX,8
            jg .L_411de0

            cmp DIL,6
            je .L_411aa2

            test R9,R9
            jne .L_411e50

            mov ECX,3
            mov EBP,3
            jmp .L_411d17
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411b90:

            movsxd RSI,DWORD PTR [RIP+.L_414de0-74224]
            movsxd RDI,DWORD PTR [RIP+.L_402c10]
            lea RAX,QWORD PTR [RSI-1]
            sub RAX,RDI
            add RAX,RDX
            xor EDX,EDX
            div RSI
            mov QWORD PTR [RBX+472],RAX
            jmp .L_4119ad
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_411bc0:

            test DIL,DIL
            je .L_411d78

            cmp DIL,2
            je .L_411e21

            lea RAX,QWORD PTR [RBP+7]
            mov R9,RCX
            and R9D,1048576
            and RAX,-8
            and CH,64
            mov RSI,RAX
            jne .L_411a9d

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_411bf8:

            test R9,R9
            je .L_411c13
.L_411bfd:

            movzx EAX,BYTE PTR [RBX+272]
            movzx ECX,BYTE PTR [RBX+273]
            imul EAX,ECX
            cmp EDX,EAX
            cmovl EDX,EAX
.L_411c13:

            lea ECX,DWORD PTR [RDX+7]
            movsxd RAX,EDX
            sar ECX,3
            cmp EDX,7
            movsxd RCX,ECX
            jg .L_411d10

            imul RAX,RSI
            shr RAX,3
            lea RBP,QWORD PTR [RAX+1]
.L_411c34:

            add RBP,RCX
            lea R12,QWORD PTR [RBP+64]
            cmp R12,QWORD PTR [RBX+1192]
            ja .L_411cb0

            cmp RBP,-1
            je .L_411cfa
.L_411c4e:

            lea R12,QWORD PTR [RBP+1]
            cmp R12,QWORD PTR [RBX+1200]
            jbe .L_411c93

            mov RSI,QWORD PTR [RBX+520]
            mov RDI,RBX
            call .L_40d0a0

            mov RSI,R12
            mov RDI,RBX
            call .L_40cfc0

            mov RCX,R12
            mov QWORD PTR [RBX+520],RAX
            xor EDX,EDX
            mov RSI,RAX
            mov RDI,RBX
            call .L_40d150

            mov QWORD PTR [RBX+1200],R12
.L_411c93:

            mov QWORD PTR [RBX+488],RBP
            or QWORD PTR [RBX+288],64
            pop RBX
.L_411ca3:

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
.L_411cb0:

            mov RSI,QWORD PTR [RBX+1104]
            mov RDI,RBX
            call .L_40d0a0

            cmp BYTE PTR [RBX+627],0
            mov RSI,R12
            mov RDI,RBX
            jne .L_411d90

            call .L_40cfc0

            mov QWORD PTR [RBX+1104],RAX
.L_411cde:

            add RAX,32
            cmp RBP,-1
            mov QWORD PTR [RBX+1192],R12
            mov QWORD PTR [RBX+528],RAX
            jne .L_411c4e
.L_411cfa:

            lea RSI,QWORD PTR [RIP+.L_4124a8]
            mov RDI,RBX
            call .L_40d4b0

            jmp .L_411c93
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411d10:

            shr RAX,3
            mov RBP,RAX
.L_411d17:

            mov RAX,RSI
            imul RAX,RBP
            lea RBP,QWORD PTR [RAX+1]
            jmp .L_411c34
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_411d30:

            cmp WORD PTR [RBX+618],0
            je .L_411b18

            test R8,R8
            je .L_411ad6
.L_411d47:

            mov EDX,32
            jmp .L_411a68
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_411d58:

            cmp EDX,8
            mov EAX,8
            cmovl EDX,EAX
            cmp WORD PTR [RBX+618],0
            je .L_411d6f

            add EDX,EDX
.L_411d6f:

            test R8,R8
            je .L_411a68
.L_411d78:

            cmp EDX,8
            mov EAX,32
            mov EDX,16
            cmovg EDX,EAX
            jmp .L_411a68
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_411d90:

            call .L_40d050

            mov QWORD PTR [RBX+1104],RAX
            jmp .L_411cde
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_411da8:

            test R8,R8
            jne .L_411a9d

            jmp .L_411b55
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
.L_411dc0:

            mov EDX,32
            jmp .L_411bfd
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411dd0:

            mov EDX,64
            jmp .L_411bfd
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411de0:

            cmp DIL,6
            je .L_411af9

            test R9,R9
            jne .L_411e40

            mov ECX,6
            mov EBP,6
            jmp .L_411d17
          .byte 0x66
          .byte 0x90
.L_411e00:

            cmp WORD PTR [RBX+618],0
            je .L_411e18

            shl EDX,2
            mov ESI,2863311531
            mov EAX,EDX
            mul ESI
            shr EDX,1
.L_411e18:

            test R8,R8
            je .L_411a68
.L_411e21:

            cmp EDX,32
            mov EAX,32
            mov EDX,64
            cmovle EDX,EAX
            jmp .L_411a68
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
.L_411e40:

            mov EDX,48
            jmp .L_411bfd
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411e50:

            mov EDX,24
            jmp .L_411bfd
.L_411e5a:
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_411e60:
          .string "Buffer error in compressed datastream in %s chunk"
          .zero 6
.L_411e98:
          .string "Data error in compressed datastream in %s chunk"
.L_411ec8:
          .string "Incomplete compressed datastream in %s chunk"
          .zero 3
.L_411ef8:
          .string "PNG unsigned integer out of range."
          .zero 5
.L_411f20:
          .string "Exceeded size limit while expanding chunk"
          .zero 6
.L_411f50:
          .string "Not enough memory to decompress chunk."
          .zero 1
.L_411f78:
          .string "Unknown zTXt compression type %d"
          .zero 7
.L_411fa0:
          .string "Ignoring PLTE chunk in grayscale PNG"
          .zero 3
.L_411fc8:
          .string "Truncating incorrect tRNS chunk length"
          .zero 1
.L_411ff0:
          .string "Truncating incorrect info tRNS chunk length"
          .zero 4
.L_412020:
          .string "Ignoring gAMA chunk with gamma=0"
          .zero 7
.L_412048:
          .string "Ignoring incorrect gAMA value when sRGB is also present"
.L_412080:
          .string "Ignoring incorrect cHRM value when sRGB is also present"
.L_4120b8:
          .string "Ignoring nonzero compression type in iCCP chunk"
.L_4120e8:
          .string "Profile size field missing from iCCP chunk"
          .zero 5
.L_412118:
          .string "Ignoring truncated iCCP profile."
          .zero 7
.L_412140:
          .string "No space in chunk cache for sPLT"
          .zero 7
.L_412168:
          .string "sPLT chunk requires too much memory"
          .zero 4
.L_412190:
          .string "tRNS chunk not allowed with alpha channel"
          .zero 6
.L_4121c0:
          .string "Incorrect bKGD chunk index value"
          .zero 7
.L_4121e8:
          .string "Invalid pCAL parameters for equation type"
          .zero 6
.L_412218:
          .string "Unrecognized equation type for pCAL chunk"
          .zero 6
.L_412248:
          .string "Out of memory while processing sCAL chunk"
          .zero 6
.L_412278:
          .string "malformed width string in sCAL chunk"
          .zero 3
.L_4122a0:
          .string "malformed height string in sCAL chunk"
          .zero 2
.L_4122c8:
          .string "No space in chunk cache for tEXt"
          .zero 7
.L_4122f0:
          .string "No memory to process text chunk."
          .zero 7
.L_412318:
          .string "Not enough memory to process text chunk."
          .zero 7
.L_412348:
          .string "Insufficient memory to process text chunk."
          .zero 5
.L_412378:
          .string "No space in chunk cache for zTXt"
          .zero 7
.L_4123a0:
          .string "Out of memory processing zTXt chunk."
          .zero 3
.L_4123c8:
          .string "Unknown compression type in zTXt chunk"
          .zero 1
.L_4123f0:
          .string "Not enough memory to process zTXt chunk."
          .zero 7
.L_412420:
          .string "Insufficient memory to store zTXt chunk."
          .zero 7
.L_412450:
          .string "No space in chunk cache for unknown chunk"
          .zero 6
.L_412480:
          .string "Ignoring bad adaptive filter type"
          .zero 6
.L_4124a8:
          .string "Row has too many bytes to allocate in memory."
.L_4124d6:
          .string "CRC error"
.L_4124e0:
          .string "invalid chunklength"
.L_4124f4:
          .string "png_inflate logic error"
.L_41250c:
          .string "Out of place IHDR"
.L_41251e:
          .string "Invalid IHDR chunk"
.L_412531:
          .string "Missing IHDR before PLTE"
.L_41254a:
          .string "Invalid PLTE after IDAT"
.L_412562:
          .string "Duplicate PLTE chunk"
.L_412577:
          .string "Invalid palette chunk"
.L_41258d:
          .string "No image in file"
.L_41259e:
          .string "Incorrect IEND chunk length"
.L_4125ba:
          .string "Missing IHDR before gAMA"
.L_4125d3:
          .string "Invalid gAMA after IDAT"
.L_4125eb:
          .string "Out of place gAMA chunk"
.L_412603:
          .string "Duplicate gAMA chunk"
.L_412618:
          .string "Incorrect gAMA chunk length"
.L_412634:
          .string "gamma = (%d/100000)"
.L_412648:
          .string "Missing IHDR before sBIT"
.L_412661:
          .string "Invalid sBIT after IDAT"
.L_412679:
          .string "Out of place sBIT chunk"
.L_412691:
          .string "Duplicate sBIT chunk"
.L_4126a6:
          .string "Incorrect sBIT chunk length"
.L_4126c2:
          .string "Missing IHDR before cHRM"
.L_4126db:
          .string "Invalid cHRM after IDAT"
.L_4126f3:
          .string "Missing PLTE before cHRM"
.L_41270c:
          .string "Duplicate cHRM chunk"
.L_412721:
          .string "Incorrect cHRM chunk length"
.L_41273d:
          .string "wx=%f, wy=%f, rx=%f, ry=%f\n"
.L_412759:
          .string "gx=%f, gy=%f, bx=%f, by=%f\n"
.L_412775:
          .string "Missing IHDR before sRGB"
.L_41278e:
          .string "Invalid sRGB after IDAT"
.L_4127a6:
          .string "Out of place sRGB chunk"
.L_4127be:
          .string "Duplicate sRGB chunk"
.L_4127d3:
          .string "Incorrect sRGB chunk length"
.L_4127ef:
          .string "Unknown sRGB intent"
.L_412803:
          .string "incorrect gamma=(%d/100000)\n"
.L_412820:
          .string "Missing IHDR before iCCP"
.L_412839:
          .string "Invalid iCCP after IDAT"
.L_412851:
          .string "Out of place iCCP chunk"
.L_412869:
          .string "Duplicate iCCP chunk"
.L_41287e:
          .string "Malformed iCCP chunk"
.L_412893:
          .string "Missing IHDR before sPLT"
.L_4128ac:
          .string "Invalid sPLT after IDAT"
.L_4128c4:
          .string "malformed sPLT chunk"
.L_4128d9:
          .string "sPLT chunk has bad length"
.L_4128f3:
          .string "sPLT chunk too long"
.L_412907:
          .string "Missing IHDR before tRNS"
.L_412920:
          .string "Invalid tRNS after IDAT"
.L_412938:
          .string "Duplicate tRNS chunk"
.L_41294d:
          .string "Incorrect tRNS chunk length"
.L_412969:
          .string "Missing PLTE before tRNS"
.L_412982:
          .string "Zero length tRNS chunk"
.L_412999:
          .string "Missing IHDR before bKGD"
.L_4129b2:
          .string "Invalid bKGD after IDAT"
.L_4129ca:
          .string "Missing PLTE before bKGD"
.L_4129e3:
          .string "Duplicate bKGD chunk"
.L_4129f8:
          .string "Incorrect bKGD chunk length"
.L_412a14:
          .string "Missing IHDR before hIST"
.L_412a2d:
          .string "Invalid hIST after IDAT"
.L_412a45:
          .string "Missing PLTE before hIST"
.L_412a5e:
          .string "Duplicate hIST chunk"
.L_412a73:
          .string "Incorrect hIST chunk length"
.L_412a8f:
          .string "Missing IHDR before pHYs"
.L_412aa8:
          .string "Invalid pHYs after IDAT"
.L_412ac0:
          .string "Duplicate pHYs chunk"
.L_412ad5:
          .string "Incorrect pHYs chunk length"
.L_412af1:
          .string "Missing IHDR before oFFs"
.L_412b0a:
          .string "Invalid oFFs after IDAT"
.L_412b22:
          .string "Duplicate oFFs chunk"
.L_412b37:
          .string "Incorrect oFFs chunk length"
.L_412b53:
          .string "Missing IHDR before pCAL"
.L_412b6c:
          .string "Invalid pCAL after IDAT"
.L_412b84:
          .string "Duplicate pCAL chunk"
.L_412b99:

            outsd DX,DWORD PTR [RSI]
            and BYTE PTR [RBP+101],CH
            insd DWORD PTR [RDI],DX
          .byte 0x6f
          .byte 0x72
          .byte 0x79
          .byte 0x20
          .byte 0x66
          .byte 0x6f
          .byte 0x72
          .byte 0x20
          .byte 0x70
          .byte 0x43
          .byte 0x41
          .byte 0x4c
          .byte 0x20
          .byte 0x70
          .byte 0x75
          .byte 0x72
          .byte 0x70
          .byte 0x6f
          .byte 0x73
          .byte 0x65
          .byte 0x2e
          .byte 0x0
.L_412bb5:
          .string "Invalid pCAL data"
.L_412bc7:
          .string "No memory for pCAL params."
.L_412be2:
          .string "Missing IHDR before sCAL"
.L_412bfb:
          .string "Invalid sCAL after IDAT"
.L_412c13:
          .string "Duplicate sCAL chunk"
# WARNING: found overlapping blocks at address 129c6
# WARNING: found overlapping blocks at address 129d4
.L_412c28:
          .string "sCAL chunk too short"
.L_412c3d:
          .string "Truncated sCAL chunk"
.L_412c52:
          .string "Invalid sCAL data"
.L_412c64:
          .string "Out of place tIME chunk"
.L_412c7c:

            jne .L_412cef

            insb BYTE PTR [RDI],DX
            imul ESP,DWORD PTR [RBX+97],1948280180
            and BYTE PTR [R11+104],R12B
          .byte 0x75
          .byte 0x6e
          .byte 0x6b
          .byte 0x0
.L_412c91:
          .string "Incorrect tIME chunk length"
.L_412cad:
          .string "Missing IHDR before tEXt"
.L_412cc6:
          .string "Missing IHDR before zTXt"
# WARNING: found overlapping blocks at address 12a81
# WARNING: found overlapping blocks at address 12a89
.L_412cdf:
          .byte 0x54
          .byte 0x72
          .byte 0x75
          .byte 0x6e
          .byte 0x63
          .byte 0x61
          .byte 0x74
          .byte 0x65
          .byte 0x64
          .byte 0x20
          .byte 0x7a
          .byte 0x54
          .byte 0x58
          .byte 0x74
          .byte 0x20
          .byte 0x63
.L_412cef:

            push 7040629
.L_412cf4:

            jne .L_412d64

            imul EBP,DWORD PTR [RSI+111],119
            outsb DX,BYTE PTR [RSI]
            and BYTE PTR [RBX+114],AH
            imul ESI,DWORD PTR [RCX+RBP*2+99],1663069281
            push 7040629
.L_412d0b:

            jb .L_412d80
          .byte 0x6f
          .byte 0x72
          .byte 0x20
          .byte 0x69
          .byte 0x6e
          .byte 0x20
          .byte 0x75
          .byte 0x73
          .byte 0x65
          .byte 0x72
          .byte 0x20
          .byte 0x63
          .byte 0x68
          .byte 0x75
          .byte 0x6e
          .byte 0x6b
          .byte 0x0
.L_412d1f:
          .string "invalid chunk type"
.L_412d32:
          .byte 0x44
          .byte 0x65
          .byte 0x63
          .byte 0x6f
          .byte 0x6d
          .byte 0x70
          .byte 0x72
          .byte 0x65
          .byte 0x73
          .byte 0x73
          .byte 0x69
          .byte 0x6f
.L_412d3e:

            outsb DX,BYTE PTR [RSI]
          .byte 0x20
          .byte 0x45
          .byte 0x72
          .byte 0x72
          .byte 0x6f
          .byte 0x72
          .byte 0x0
.L_412d46:
          .string "Not enough image data"
.L_412d5c:
          .string "Extra compressed data."
# WARNING: found overlapping blocks at address 12b0f
# WARNING: found overlapping blocks at address 12b11
# WARNING: found overlapping blocks at address 12b14
.set .L_412d64, . - 15
# WARNING: found overlapping blocks at address 12b17
# WARNING: found overlapping blocks at address 12b1a
.L_412d73:
          .byte 0x45
          .byte 0x78
          .byte 0x74

            jb .L_412dd9

            and BYTE PTR [RBX+111],AH
            insd DWORD PTR [RDI],DX
          .byte 0x70
          .byte 0x72
          .byte 0x65
          .byte 0x73
.L_412d80:

            jae .L_412deb
          .byte 0x6f
          .byte 0x6e
          .byte 0x20
          .byte 0x64
          .byte 0x61
          .byte 0x74
          .byte 0x61
          .byte 0x2e
          .byte 0x0
          .byte 0x90
.L_412d8c:
          .byte .L_412e30-.L_412d8c
          .byte 0xb1
          .byte 0xff
          .byte 0xff
          .long .L_40df40-.L_412d8c
          .long .L_40df20-.L_412d8c
          .long .L_40df30-.L_412d8c
          .long .L_40df00-.L_412d8c
          .long .L_40df40-.L_412d8c
          .long .L_40de98-.L_412d8c
.L_412da8:
          .long .L_411421-.L_412da8
          .long .L_411558-.L_412da8
          .long .L_4115a0-.L_412da8
          .long .L_411430-.L_412da8
          .long .L_4114a0-.L_412da8
.L_412dbc:

            add BYTE PTR [RAX-61],DL
          .byte 0x47
.L_412dc0:

            push R15
.L_412dc2:

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
.L_412dd9:

            mov R15D,DWORD PTR [RSI+68]
.L_412ddd:

            mov R13D,DWORD PTR [RSI+72]
            lea EAX,DWORD PTR [R15+RCX*1]
            cmp EAX,R13D
            jle .L_412e44
          .byte 0x48
.L_412deb:

            mov ECX,DWORD PTR [RSI+80]
            test RCX,RCX
            mov QWORD PTR [RSP],RCX
            je .L_412f90

            add EAX,8
            mov DWORD PTR [RSI+72],EAX
            movsxd RSI,EAX
            shl RSI,5
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [R12+80],RAX
            mov RCX,QWORD PTR [RSP]
            je .L_412fc8

            movsxd RDX,R13D
            mov RSI,RCX
            mov RDI,RAX
            shl RDX,5
            mov QWORD PTR [RSP],RCX
.L_412e30:

            call memcpy@PLT

            mov RCX,QWORD PTR [RSP]
            mov RDI,R14
            mov RSI,RCX
            call .L_40d0a0
.L_412e44:

            test EBP,EBP
            jle .L_412f30

            lea EAX,DWORD PTR [RBP-1]
            shl RAX,5
            lea RAX,QWORD PTR [RBX+RAX*1+32]
            mov QWORD PTR [RSP],RAX
            jmp .L_412efc
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412e68:

            movsxd RBP,DWORD PTR [R12+68]
            mov RDI,QWORD PTR [RBX+16]
            shl RBP,5
            add RBP,QWORD PTR [R12+80]
            test RDI,RDI
            je .L_412f48

            cmp BYTE PTR [RDI],0
            je .L_412f48

            mov DWORD PTR [RSP+12],EDX
            call strlen@PLT

            mov EDX,DWORD PTR [RSP+12]
            mov R13,RAX
            mov DWORD PTR [RBP],EDX
.L_412e9f:

            lea RSI,QWORD PTR [R13+R15*1+4]
            mov RDI,R14
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RBP+8],RAX
            je .L_412f78

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
            jne .L_412f60
.L_412ee3:

            mov BYTE PTR [RDI+R13*1],0
            mov QWORD PTR [RBP+24],R13
            add DWORD PTR [R12+68],1
.L_412ef2:

            add RBX,32
            cmp QWORD PTR [RSP],RBX
            je .L_412f30
.L_412efc:

            mov RDI,QWORD PTR [RBX+8]
            test RDI,RDI
            je .L_412ef2

            call strlen@PLT

            mov EDX,DWORD PTR [RBX]
            mov R15,RAX
            test EDX,EDX
            jle .L_412e68

            lea RSI,QWORD PTR [RIP+.L_4148dd]
            mov RDI,R14
            add RBX,32
            call .L_40d580

            cmp QWORD PTR [RSP],RBX
            jne .L_412efc
.L_412f30:

            xor EAX,EAX
.L_412f32:

            add RSP,24
.L_412f36:

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
.L_412f48:

            mov DWORD PTR [RBP],4294967295
            xor R13D,R13D
            jmp .L_412e9f
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_412f60:

            mov RSI,QWORD PTR [RBX+16]
            mov RDX,R13
            call memcpy@PLT

            mov RDI,QWORD PTR [RBP+16]
            jmp .L_412ee3
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_412f78:

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
.L_412f90:

            lea EAX,DWORD PTR [RBP+8]
            mov DWORD PTR [RSI+68],0
            mov DWORD PTR [RSI+72],EAX
            movsxd RSI,EAX
            shl RSI,5
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [R12+80],RAX
            je .L_412fe6

            or QWORD PTR [R12+272],16384
            jmp .L_412e44
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_412fc8:

            mov DWORD PTR [R12+72],R13D
            mov QWORD PTR [R12+80],RCX
            add RSP,24
.L_412fd6:

            pop RBX
            mov EAX,1
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_412fe6:

            mov DWORD PTR [R12+68],R15D
            mov DWORD PTR [R12+72],R13D
            mov EAX,1
            jmp .L_412f32
.L_412ffa:

            nop
            nop
            nop
            nop
            nop
            nop
.L_413000:

            test RDI,RDI
            je .L_413021

            test RSI,RSI
            je .L_413021

            mov RAX,QWORD PTR [RDX]
            mov QWORD PTR [RSI+122],RAX
            movzx EAX,WORD PTR [RDX+8]
            or QWORD PTR [RSI+16],32
            mov WORD PTR [RSI+130],AX
.L_413021:

            ret 
.L_413023:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_413030:

            test RDI,RDI
            je .L_4131a1

            test RSI,RSI
            je .L_4131a1

            pxor XMM10,XMM10
            or QWORD PTR [RSI+16],4
            movsd XMM9,QWORD PTR [RIP+.L_414d38]
            movsd XMM8,QWORD PTR [RIP+.L_414de0-160]
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
.L_4131a1:

            ret 
.L_4131a3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4131b0:

            test RDI,RDI
            je .L_413360

            test RSI,RSI
            je .L_413360

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
            call .L_402110

            add RSP,32
.L_413203:

            test EAX,EAX
            je .L_413352

            pxor XMM0,XMM0
            mov RAX,QWORD PTR [RSP+48]
            or QWORD PTR [RBX+16],4
            movsd XMM1,QWORD PTR [RIP+.L_414d38]
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
.L_413352:

            pop RBX
.L_413353:

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
.L_413360:

            ret 
.L_413362:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_413370:

            test RDI,RDI
            je .L_4133d0

            test RSI,RSI
            je .L_4133d0

            ucomisd XMM0,QWORD PTR [RIP+.L_414d48]
            ja .L_4133d8

            movsd XMM1,QWORD PTR [RIP+.L_414d38]
            or QWORD PTR [RSI+16],1
            pxor XMM2,XMM2
            mulsd XMM1,XMM0
            ucomisd XMM0,QWORD PTR [RIP+.L_414de0-144]
            cvtsd2ss XMM2,XMM0
            addsd XMM1,QWORD PTR [RIP+.L_414de0-160]
            cvttsd2si EAX,XMM1
            movss DWORD PTR [RSI+60],XMM2
            cdqe 
            mov QWORD PTR [RSI+392],RAX
            jp .L_4133d0

            jne .L_4133d0

            lea RSI,QWORD PTR [RIP+.L_414912]
            jmp .L_40d580
          .byte 0x90
.L_4133d0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4133d8:

            push RBX
.L_4133d9:

            mov RBX,RSI
            lea RSI,QWORD PTR [RIP+.L_4148f7]
            call .L_40d580

            or QWORD PTR [RBX+16],1
            mov DWORD PTR [RBX+60],1185400233
            mov QWORD PTR [RBX+392],2147483000
            pop RBX
            ret 
.L_413401:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_413410:

            test RDI,RDI
            je .L_4134b0

            test RSI,RSI
            je .L_4134b0

            push RBP
            push RBX
            mov RBP,RDI
            mov RBX,RSI
            sub RSP,8
.L_41342e:

            cmp RDX,2147483647
            jg .L_413480

            test RDX,RDX
            js .L_4134b8

            pxor XMM0,XMM0
            or QWORD PTR [RSI+16],1
            test RDX,RDX
            pxor XMM1,XMM1
            mov QWORD PTR [RSI+392],RDX
            cvtsi2sd XMM0,RDX
            divsd XMM0,QWORD PTR [RIP+.L_414d38]
            cvtsd2ss XMM1,XMM0
            movss DWORD PTR [RSI+60],XMM1
            jne .L_4134a3
.L_41346b:

            add RSP,8
.L_41346f:

            mov RDI,RBP
            lea RSI,QWORD PTR [RIP+.L_414912]
            pop RBX
            pop RBP
            jmp .L_40d580
.L_413480:

            lea RSI,QWORD PTR [RIP+.L_4148f7]
            call .L_40d580

            or QWORD PTR [RBX+16],1
            mov DWORD PTR [RBX+60],1185400236
            mov QWORD PTR [RBX+392],2147483647
.L_4134a3:

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
.L_4134b0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4134b8:

            lea RSI,QWORD PTR [RIP+.L_4149a0]
            call .L_40d580

            mov DWORD PTR [RBX+60],0
            mov QWORD PTR [RBX+392],0
            or QWORD PTR [RBX+16],1
            jmp .L_41346b
.L_4134dd:

            nop
            nop
            nop
.L_4134e0:

            test RDI,RDI
            je .L_413588

            test RSI,RSI
            je .L_413588

            movzx EAX,WORD PTR [RSI+40]
            sub EAX,1
            cmp AX,255
            ja .L_413578

            push R12
            push RBP
            xor ECX,ECX
            push RBX
.L_413505:

            mov RBP,RDI
            mov R12,RDX
            mov EDX,8
            mov RBX,RSI
            call .L_401870

            mov ESI,512
            mov RDI,RBP
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RBP+976],RAX
            je .L_413590

            cmp WORD PTR [RBX+40],0
            mov ECX,1
            je .L_413559

            nop
            nop
            nop
.L_413540:

            movzx EDX,WORD PTR [R12+RCX*2-2]
            mov WORD PTR [RAX+RCX*2-2],DX
            movzx ESI,WORD PTR [RBX+40]
            mov EDX,ECX
            add RCX,1
            cmp ESI,EDX
            jg .L_413540
.L_413559:

            or QWORD PTR [RBX+16],64
            or QWORD PTR [RBX+272],8
            mov QWORD PTR [RBX+184],RAX
            pop RBX
.L_41356e:

            pop RBP
            pop R12
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_413578:

            lea RSI,QWORD PTR [RIP+.L_4149c0]
            jmp .L_40d580
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_413588:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_413590:

            pop RBX
            mov RDI,RBP
            lea RSI,QWORD PTR [RIP+.L_4149f0]
            pop RBP
            pop R12
            jmp .L_40d580
.L_4135a3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4135b0:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,8
.L_4135be:

            test RDI,RDI
            mov R15D,DWORD PTR [RSP+64]
            mov R13D,DWORD PTR [RSP+72]
            mov R14D,DWORD PTR [RSP+80]
            je .L_41367e

            test RSI,RSI
            je .L_41367e

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
.L_413617:

            push R13
            movzx R9D,R15B
            movzx R8D,R11B
            mov RSI,R12
            mov RBP,RDI
            call .L_402390

            movzx EDX,BYTE PTR [RBX+45]
            pop RAX
            pop RCX
.L_413632:

            cmp DL,3
            je .L_4136b8

            test DL,2
            jne .L_413690

            mov BYTE PTR [RBX+49],1
            mov EAX,1
.L_413649:

            and EDX,4
            je .L_413654

            add EAX,1
            mov BYTE PTR [RBX+49],AL
.L_413654:

            mul BYTE PTR [RBX+44]
            movabs RDX,2305843009213693822
            cmp R12,RDX
            mov BYTE PTR [RBX+50],AL
            ja .L_4136c8

            cmp AL,7
            jbe .L_4136a0

            shr AL,3
            movzx EAX,AL
            imul RAX,R12
            mov RDX,RAX
.L_41367a:

            mov QWORD PTR [RBX+24],RDX
.L_41367e:

            add RSP,8
.L_413682:

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
.L_413690:

            mov BYTE PTR [RBX+49],3
            mov EAX,3
            jmp .L_413649
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4136a0:

            movzx EDX,AL
            imul RDX,R12
            add RDX,7
            shr RDX,3
            jmp .L_41367a
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4136b8:

            mov BYTE PTR [RBX+49],1
            mov EAX,1
            jmp .L_413654
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4136c8:

            mov QWORD PTR [RBX+24],0
            add RSP,8
.L_4136d4:

            mov RDI,RBP
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            lea RSI,QWORD PTR [RIP+.L_414a20]
            jmp .L_40d4b0
.L_4136ed:

            nop
            nop
            nop
.L_4136f0:

            test RDI,RDI
            je .L_413717

            test RSI,RSI
            je .L_413717

            or QWORD PTR [RSI+16],256
            mov QWORD PTR [RSI+136],RDX
            mov QWORD PTR [RSI+144],RCX
            mov BYTE PTR [RSI+152],R8B
.L_413717:

            ret 
.L_413719:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_413720:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,40
.L_41372e:

            test RDI,RDI
            mov R14D,DWORD PTR [RSP+96]
            mov R15,QWORD PTR [RSP+104]
            mov R12,QWORD PTR [RSP+112]
            je .L_4138f3

            test RSI,RSI
            je .L_4138f3

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
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RBX+224],RAX
            lea RSI,QWORD PTR [RIP+.L_414a50]
            mov RDX,QWORD PTR [RSP]
            je .L_4138c2

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
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RBX+248],RAX
            lea RSI,QWORD PTR [RIP+.L_414a78]
            je .L_4138c2

            mov RDX,R13
            lea R13D,DWORD PTR [R14+1]
            mov RSI,R15
            mov RDI,RAX
            movsxd R13,R13D
            shl R13,3
            call memcpy@PLT

            mov RSI,R13
            mov RDI,RBP
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RBX+256],RAX
            lea RSI,QWORD PTR [RIP+.L_414aa0]
            je .L_4138c2

            xor ESI,ESI
            mov RDX,R13
            mov RDI,RAX
            call memset@PLT

            test R14D,R14D
            jle .L_4138e0

            lea EAX,DWORD PTR [R14-1]
            xor R13D,R13D
            lea RAX,QWORD PTR [RAX*8+8]
            mov QWORD PTR [RSP],RAX
            jmp .L_413886
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
.L_413870:

            mov RSI,QWORD PTR [R12+R13*1]
            mov RDX,R14
            add R13,8
            call memcpy@PLT

            cmp QWORD PTR [RSP],R13
            je .L_4138e0
.L_413886:

            mov RDI,QWORD PTR [R12+R13*1]
            call strlen@PLT

            mov R15,QWORD PTR [RBX+256]
            lea R14,QWORD PTR [RAX+1]
            mov RDI,RBP
            mov RSI,R14
            add R15,R13
            call .L_40d0f0

            mov QWORD PTR [R15],RAX
            mov RAX,QWORD PTR [RBX+256]
            mov RDI,QWORD PTR [RAX+R13*1]
            test RDI,RDI
            jne .L_413870

            lea RSI,QWORD PTR [RIP+.L_414ac8]
.L_4138c2:

            add RSP,40
.L_4138c6:

            mov RDI,RBP
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40d580
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4138e0:

            or QWORD PTR [RBX+16],1024
            or QWORD PTR [RBX+272],128
.L_4138f3:

            add RSP,40
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_413902:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_413910:

            test RDI,RDI
            je .L_413938

            test RSI,RSI
            je .L_413938

            or QWORD PTR [RSI+16],16384
            movsd QWORD PTR [RSI+352],XMM0
            mov BYTE PTR [RSI+344],DL
            movsd QWORD PTR [RSI+360],XMM1
.L_413938:

            ret 
.L_41393a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_413940:

            test RDI,RDI
            je .L_413967

            test RSI,RSI
            je .L_413967

            or QWORD PTR [RSI+16],128
            mov QWORD PTR [RSI+160],RDX
            mov QWORD PTR [RSI+168],RCX
            mov BYTE PTR [RSI+176],R8B
.L_413967:

            ret 
.L_413969:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_413970:

            test RDI,RDI
            je .L_4139c0

            test RSI,RSI
            je .L_4139c0

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
            je .L_4139c8

            test ECX,ECX
            jns .L_413a60
.L_41399e:

            add RSP,8
            mov RDI,RBP
            lea RSI,QWORD PTR [RIP+.L_414922]
            pop RBX
            pop RBP
            pop R12
            pop R13
            jmp .L_40d580
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4139c0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4139c8:

            movzx ECX,BYTE PTR [RSI+44]
            mov EAX,1
            shl EAX,CL
            test R12D,R12D
            js .L_4139dd

            cmp EAX,R12D
            jge .L_4139ec
.L_4139dd:

            lea RSI,QWORD PTR [RIP+.L_414922]
            mov RDI,RBP
            call .L_40d4b0
.L_4139ec:

            xor ECX,ECX
            mov EDX,4096
            mov RSI,RBX
            mov RDI,RBP
            call .L_401870

            mov RDI,RBP
            mov ESI,768
            call .L_40d050

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
.L_413a50:

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
.L_413a60:

            cmp ECX,256
            jle .L_4139ec

            jmp .L_41399e
.L_413a6d:

            nop
            nop
            nop
.L_413a70:

            test RDI,RDI
            je .L_413a8b

            test RSI,RSI
            je .L_413a8b

            mov EAX,DWORD PTR [RDX]
            mov DWORD PTR [RSI+96],EAX
            movzx EAX,BYTE PTR [RDX+4]
            or QWORD PTR [RSI+16],2
            mov BYTE PTR [RSI+100],AL
.L_413a8b:

            ret 
.L_413a8d:

            nop
            nop
            nop
.L_413a90:

            test RDI,RDI
            je .L_413aa5

            test RSI,RSI
            je .L_413aa5

            or QWORD PTR [RSI+16],2048
            mov BYTE PTR [RSI+64],DL
.L_413aa5:

            ret 
.L_413aa7:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_413ab0:

            test RDI,RDI
            je .L_413bc0

            test RSI,RSI
            je .L_413bc0

            mov RAX,QWORD PTR [RSI+16]
            push RBX
            mov R9D,33000
            push 6000
            push 15000
            mov R8D,64000
            push 60000
            push 30000
.L_413ae7:

            mov ECX,32900
            or RAX,2049
            mov BYTE PTR [RSI+64],DL
            mov DWORD PTR [RSI+60],1055439559
            mov QWORD PTR [RSI+16],RAX
            mov QWORD PTR [RSI+392],45455
            mov EDX,31270
            mov RBX,RSI
            call .L_4131b0

            movabs RAX,4514984727729412663
            or QWORD PTR [RBX+16],4
            add RSP,32
.L_413b2b:

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
.L_413bc0:

            ret 
.L_413bc2:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_413bd0:

            test RDI,RDI
            je .L_413cc8

            test RSI,RSI
            je .L_413cc8

            test RDX,RDX
            je .L_413cc8

            test R8,R8
            je .L_413cc8

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
.L_413c14:

            mov QWORD PTR [RSP+8],R8
            call strlen@PLT

            lea RDX,QWORD PTR [RAX+1]
            mov RDI,R15
            mov RSI,RDX
            mov QWORD PTR [RSP],RDX
            call .L_40d0f0

            test RAX,RAX
            mov RBP,RAX
            lea RSI,QWORD PTR [RIP+.L_414af0]
            mov RDX,QWORD PTR [RSP]
            je .L_413ce2

            mov RSI,RBX
            mov RDI,RAX
            call memcpy@PLT

            mov RSI,R12
            mov RDI,R15
            call .L_40d0f0

            test RAX,RAX
            mov RBX,RAX
            je .L_413cd0

            mov RSI,QWORD PTR [RSP+8]
            mov RDX,R12
            mov RDI,RAX
            call memcpy@PLT

            mov RSI,R14
            mov RDI,R15
            xor ECX,ECX
            mov EDX,16
            call .L_401870

            mov QWORD PTR [R14+312],R12
            mov QWORD PTR [R14+296],RBP
            mov QWORD PTR [R14+304],RBX
            mov BYTE PTR [R14+320],R13B
            or QWORD PTR [R14+272],16
            or QWORD PTR [R14+16],4096
            add RSP,24
.L_413cb8:

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
.L_413cc8:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_413cd0:

            mov RSI,RBP
            mov RDI,R15
            call .L_40d0a0

            lea RSI,QWORD PTR [RIP+.L_414b20]
.L_413ce2:

            add RSP,24
            mov RDI,R15
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40d580
.L_413cf8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_413d00:

            test RSI,RSI
            sete R8B
            test ECX,ECX
            sete AL
            or R8B,AL
            jne .L_413d16

            test RDI,RDI
            jne .L_413d20
.L_413d16:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_413d20:

            push RBX
            mov RBX,RDI
            call .L_412dc0

            test EAX,EAX
            jne .L_413d30

            pop RBX
            ret 

            nop
.L_413d30:

            mov RDI,RBX
            lea RSI,QWORD PTR [RIP+.L_414b50]
            pop RBX
            jmp .L_40d4b0
.L_413d40:

            test RSI,RSI
            sete R8B
            test ECX,ECX
            sete AL
            or R8B,AL
            jne .L_413d56

            test RDI,RDI
            jne .L_413d60
.L_413d56:

            xor EAX,EAX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_413d60:

            jmp .L_412dc0
.L_413d65:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_413d70:

            test RDI,RDI
            je .L_413dc9

            test RSI,RSI
            je .L_413dc9

            test BYTE PTR [RDI+281],2
            jne .L_413dc9

            movzx EAX,BYTE PTR [RDX+2]
            sub EAX,1
            cmp AL,11
            ja .L_413d99

            movzx EAX,BYTE PTR [RDX+3]
            sub EAX,1
            cmp AL,30
            jbe .L_413da8
.L_413d99:

            lea RSI,QWORD PTR [RIP+.L_414939]
            jmp .L_40d580
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_413da8:

            cmp BYTE PTR [RDX+4],23
            ja .L_413d99

            cmp BYTE PTR [RDX+5],59
            ja .L_413d99

            cmp BYTE PTR [RDX+6],60
            ja .L_413d99

            mov RAX,QWORD PTR [RDX]
            or QWORD PTR [RSI+16],512
            mov QWORD PTR [RSI+88],RAX
.L_413dc9:

            ret 
.L_413dcb:

            nop
            nop
            nop
            nop
            nop
.L_413dd0:

            test RDI,RDI
            je .L_413eb0

            test RSI,RSI
            je .L_413eb0

            cmp ECX,256
            ja .L_413eb8

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
.L_413e05:

            mov RBX,RSI
            je .L_413e3f

            xor ECX,ECX
            mov EDX,8192
            call .L_401870

            mov ESI,256
            mov RDI,RBP
            call .L_40cfc0

            lea EDX,DWORD PTR [R12-1]
            mov QWORD PTR [RBX+104],RAX
            mov QWORD PTR [RBP+776],RAX
            cmp EDX,255
            jbe .L_413ef0
.L_413e3f:

            test R13,R13
            je .L_413f30

            movzx ECX,BYTE PTR [RBX+44]
            movzx EDX,BYTE PTR [RBX+45]
            mov EAX,1
            shl EAX,CL
            test DL,DL
            jne .L_413ec8

            movzx EDX,WORD PTR [R13+8]
            cmp EDX,EAX
            jle .L_413e73
.L_413e64:

            lea RSI,QWORD PTR [RIP+.L_414ba0]
            mov RDI,RBP
            call .L_40d580
.L_413e73:

            mov RAX,QWORD PTR [R13]
            test R12D,R12D
            mov ECX,1
            cmovne ECX,R12D
            mov QWORD PTR [RBX+112],RAX
            movzx EAX,WORD PTR [R13+8]
            mov WORD PTR [RBX+42],CX
            mov WORD PTR [RBX+120],AX
.L_413e94:

            or QWORD PTR [RBX+16],16
            or QWORD PTR [RBX+272],8192
            pop RBX
.L_413ea5:

            pop RBP
            pop R12
            pop R13
            pop R14
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_413eb0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_413eb8:

            lea RSI,QWORD PTR [RIP+.L_414b78]
            jmp .L_40d580
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_413ec8:

            cmp DL,2
            jne .L_413e73

            movzx EDX,WORD PTR [R13+2]
            cmp EDX,EAX
            jg .L_413e64

            movzx EDX,WORD PTR [R13+4]
            cmp EDX,EAX
            jg .L_413e64

            movzx EDX,WORD PTR [R13+6]
            cmp EDX,EAX
            jle .L_413e73

            jmp .L_413e64
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_413ef0:

            cmp R12D,8
            jae .L_413f50

            test R12B,4
            jne .L_413f84

            test R12D,R12D
            je .L_413e3f

            movzx EDX,BYTE PTR [R14]
            test R12B,2
            mov BYTE PTR [RAX],DL
            je .L_413e3f

            mov EDX,R12D
            movzx ECX,WORD PTR [R14+RDX*1-2]
            mov WORD PTR [RAX+RDX*1-2],CX
            jmp .L_413e3f
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_413f30:

            test R12D,R12D
            mov WORD PTR [RBX+42],R12W
            jne .L_413e94

            pop RBX
.L_413f3f:

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
.L_413f50:

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

            jmp .L_413e3f
.L_413f84:

            mov EDX,DWORD PTR [R14]
            mov DWORD PTR [RAX],EDX
            mov EDX,R12D
            mov ECX,DWORD PTR [R14+RDX*1-4]
            mov DWORD PTR [RAX+RDX*1-4],ECX
            jmp .L_413e3f
.L_413f9a:

            nop
            nop
            nop
            nop
            nop
            nop
.L_413fa0:

            test RDI,RDI
            je .L_414130

            test RSI,RSI
            je .L_414130

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
.L_413fcf:

            mov RSI,QWORD PTR [RSI+336]
            mov QWORD PTR [RSP+24],RAX
            add RSI,RAX
            shl RSI,5
            call .L_40d0f0

            test RAX,RAX
            mov R14,RAX
            je .L_414160

            mov RDX,QWORD PTR [RBP+336]
            mov RSI,QWORD PTR [RBP+328]
            mov RDI,RAX
            shl RDX,5
            call memcpy@PLT

            mov RSI,QWORD PTR [RBP+328]
            mov RDI,R12
            call .L_40d0a0

            test EBX,EBX
            mov QWORD PTR [RBP+328],0
            jle .L_4140fd

            lea EAX,DWORD PTR [RBX-1]
            xor R13D,R13D
            add RAX,1
            mov QWORD PTR [RSP+16],RAX
            jmp .L_4140a1
.L_414040:

            mov RSI,QWORD PTR [R15]
            mov RDI,RAX
            call memcpy@PLT

            mov RAX,QWORD PTR [R15+24]
            mov RDI,R12
            lea RSI,QWORD PTR [RAX+RAX*4]
            add RSI,RSI
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RBX+16],RAX
            je .L_414138

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
.L_414092:

            add R13,1
            add R15,32
            cmp QWORD PTR [RSP+16],R13
            je .L_4140fd
.L_4140a1:

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
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RBX],RAX
            mov RDX,QWORD PTR [RSP+8]
            jne .L_414040

            lea RSI,QWORD PTR [RIP+.L_414bd8]
            mov RDI,R12
            add R13,1
            add R15,32
            call .L_40d580

            cmp QWORD PTR [RSP+16],R13
            jne .L_4140a1
.L_4140fd:

            mov QWORD PTR [RBP+328],R14
            or QWORD PTR [RBP+16],8192
            or QWORD PTR [RBP+272],32
            mov RAX,QWORD PTR [RSP+24]
            add QWORD PTR [RBP+336],RAX
            add RSP,40
.L_414124:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x90
.L_414130:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_414138:

            lea RSI,QWORD PTR [RIP+.L_414bd8]
            mov RDI,R12
            call .L_40d580

            mov RSI,QWORD PTR [RBX]
            mov RDI,R12
            call .L_40d0a0

            mov QWORD PTR [RBX],0
            jmp .L_414092
          .byte 0x66
          .byte 0x90
.L_414160:

            add RSP,40
            mov RDI,R12
            lea RSI,QWORD PTR [RIP+.L_414955]
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40d580
.L_41417d:

            nop
            nop
            nop
.L_414180:

            test RSI,RSI
            sete R8B
            test ECX,ECX
            sete AL
            or R8B,AL
            jne .L_414196

            test RDI,RDI
            jne .L_4141a0
.L_414196:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4141a0:

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
.L_4141bd:

            mov RSI,QWORD PTR [RSI+288]
            mov QWORD PTR [RSP+8],RAX
            add RSI,RAX
            shl RSI,5
            call .L_40d0f0

            test RAX,RAX
            mov RBP,RAX
            je .L_414300

            mov RDX,QWORD PTR [R14+288]
            mov RSI,QWORD PTR [R14+280]
            mov RDI,RAX
            shl RDX,5
            call memcpy@PLT

            mov RSI,QWORD PTR [R14+280]
            mov RDI,R12
            call .L_40d0a0

            test EBX,EBX
            mov QWORD PTR [R14+280],0
            jle .L_4142ab

            lea EAX,DWORD PTR [RBX-1]
            xor R13D,R13D
            add RAX,1
            mov QWORD PTR [RSP],RAX
            jmp .L_414246
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_414230:

            mov QWORD PTR [RBX+8],0
.L_414238:

            add R13,1
            add R15,32
            cmp QWORD PTR [RSP],R13
            je .L_4142ab
.L_414246:

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
            je .L_414230

            mov RDI,R12
            call .L_40d0f0

            test RAX,RAX
            mov QWORD PTR [RBX+8],RAX
            je .L_4142e0

            mov RSI,QWORD PTR [R15+8]
            mov RDX,QWORD PTR [R15+16]
            mov RDI,RAX
            add R13,1
            add R15,32
            call memcpy@PLT

            cmp QWORD PTR [RSP],R13
            jne .L_414246
.L_4142ab:

            mov QWORD PTR [R14+280],RBP
            or QWORD PTR [R14+272],512
            mov RAX,QWORD PTR [RSP+8]
            add QWORD PTR [R14+288],RAX
            add RSP,24
.L_4142cd:

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
.L_4142e0:

            lea RSI,QWORD PTR [RIP+.L_414c08]
            mov RDI,R12
            call .L_40d580

            mov QWORD PTR [RBX+16],0
            jmp .L_414238
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_414300:

            add RSP,24
            mov RDI,R12
            lea RSI,QWORD PTR [RIP+.L_414c08]
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40d580
.L_41431d:

            nop
            nop
            nop
.L_414320:

            mov EAX,EDX
            test RSI,RSI
            not EAX
            setne R8B
            shr EAX,31
            test R8B,AL
            je .L_414351

            test RDI,RDI
            je .L_414351

            cmp EDX,DWORD PTR [RSI+288]
            jge .L_414351

            movsxd RDX,EDX
            shl RDX,5
            add RDX,QWORD PTR [RSI+280]
            mov BYTE PTR [RDX+24],CL
.L_414351:

            ret 
.L_414353:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414360:

            test RDI,RDI
            je .L_41437f

            movzx EAX,BYTE PTR [RDI+1040]
            and ESI,1
            and EAX,4294967294
            or ESI,EAX
            movzx ESI,SIL
            mov QWORD PTR [RDI+1040],RSI
.L_41437f:

            ret 
.L_414381:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414390:

            xor EAX,EAX
            test RDI,RDI
            je .L_4143a4

            mov RAX,RSI
            and EAX,5
            mov QWORD PTR [RDI+1040],RAX
.L_4143a4:

            ret 
.L_4143a6:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4143b0:

            test RDI,RDI
            je .L_4144c8

            test ECX,ECX
            jne .L_4143e8

            mov RAX,QWORD PTR [RDI+288]
            lea ECX,DWORD PTR [RSI-2]
            mov RDX,RAX
            and DH,127
            cmp ECX,1
            jbe .L_4144d0
.L_4143d6:

            and RDX,-65537
            mov QWORD PTR [RDI+288],RDX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4143e8:

            test RDX,RDX
            je .L_4144c8

            push R15
.L_4143f3:

            push R14
            push R13
            push R12
            mov R12D,ECX
            push RBP
            push RBX
            mov EBP,ESI
            mov RBX,RDI
            sub RSP,24
.L_414407:

            mov R15D,DWORD PTR [RDI+1016]
            mov QWORD PTR [RSP+8],RDX
            lea R14D,DWORD PTR [RCX+R15*1]
            lea R15D,DWORD PTR [R15+R15*4]
            lea ESI,DWORD PTR [R14+R14*4]
            movsxd R15,R15D
            movsxd RSI,ESI
            call .L_40cfc0

            mov RSI,QWORD PTR [RBX+1024]
            mov R13,RAX
            test RSI,RSI
            je .L_41445e

            mov RDX,R15
            mov RDI,RAX
            call memcpy@PLT

            mov RSI,QWORD PTR [RBX+1024]
            mov RDI,RBX
            call .L_40d0a0

            mov QWORD PTR [RBX+1024],0
.L_41445e:

            lea EDX,DWORD PTR [R12+R12*4]
            mov RSI,QWORD PTR [RSP+8]
            lea RDI,QWORD PTR [R13+R15*1]
            movsxd RDX,EDX
            call memcpy@PLT

            test R12D,R12D
            lea RAX,QWORD PTR [R13+R15*1+4]
            jle .L_41449c

            lea EDX,DWORD PTR [R12-1]
            lea RDX,QWORD PTR [RDX+RDX*4+5]
            add RDX,RAX
            nop
            nop
            nop
            nop
            nop
.L_414490:

            mov BYTE PTR [RAX],BPL
            add RAX,5
            cmp RDX,RAX
            jne .L_414490
.L_41449c:

            mov DWORD PTR [RBX+1016],R14D
            mov QWORD PTR [RBX+1024],R13
            or QWORD PTR [RBX+992],1024
            add RSP,24
.L_4144b9:

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
.L_4144c8:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4144d0:

            cmp ESI,3
            jne .L_4144e3

            or RAX,98304
            mov QWORD PTR [RDI+288],RAX
            ret 
.L_4144e3:

            or AH,128
            mov RDX,RAX
            jmp .L_4143d6
.L_4144ee:

            nop
            nop
.L_4144f0:

            test RDI,RDI
            je .L_414503

            mov QWORD PTR [RDI+1008],RDX
            mov QWORD PTR [RDI+1000],RSI
.L_414503:

            ret 
.L_414505:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414510:

            test RDI,RDI
            je .L_414560

            test RSI,RSI
            je .L_414560

            push RBP
            push RBX
            mov RBP,RDX
            mov RBX,RSI
            sub RSP,8
            mov RAX,QWORD PTR [RSI+384]
            test RAX,RAX
            je .L_414543

            cmp RAX,RDX
            je .L_41454f

            xor ECX,ECX
            mov EDX,64
            call .L_401870
.L_414543:

            test RBP,RBP
            mov QWORD PTR [RBX+384],RBP
            je .L_414557
.L_41454f:

            or QWORD PTR [RBX+16],32768
.L_414557:

            add RSP,8
            pop RBX
            pop RBP
            ret 
          .byte 0x66
          .byte 0x90
.L_414560:

            ret 
.L_414562:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414570:

            test RDI,RDI
            je .L_4145c8

            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            sub RSP,8
            mov RSI,QWORD PTR [RDI+416]
            call .L_40d0a0

            mov QWORD PTR [RBX+424],RBP
            mov RSI,RBP
            mov RDI,RBX
            call .L_40cfc0

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
.L_4145c8:

            ret 
.L_4145ca:

            nop
            nop
            nop
            nop
            nop
            nop
.L_4145d0:

            test RDI,RDI
            je .L_4145e3

            test RSI,RSI
            je .L_4145e3

            not EDX
            movsxd RDX,EDX
            and QWORD PTR [RSI+16],RDX
.L_4145e3:

            ret 
.L_4145e5:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4145f0:

            test RDI,RDI
            je .L_414600

            mov QWORD PTR [RDI+1072],0
.L_414600:

            ret 
.L_414602:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414610:

            ret 
.L_414612:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414620:

            test RDI,RDI
            je .L_414633

            mov QWORD PTR [RDI+1144],RSI
            mov QWORD PTR [RDI+1152],RDX
.L_414633:

            ret 
.L_414635:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414640:

            push R15
            push R14
            push R13
            push R12
            mov R12,RDI
            push RBP
            push RBX
            sub RSP,72
.L_414651:

            mov QWORD PTR [RDX],0
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+56],RAX
            xor EAX,EAX
            test RSI,RSI
            je .L_414688

            mov RDI,RSI
            mov RBP,RSI
            mov R13,RDX
            call strlen@PLT

            test RAX,RAX
            mov RBX,RAX
            mov QWORD PTR [RSP+8],RAX
            jne .L_4146c0
.L_414688:

            lea RSI,QWORD PTR [RIP+.L_414972]
            mov RDI,R12
            xor EBX,EBX
            call .L_40d580
.L_414699:

            mov RCX,QWORD PTR [RSP+56]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBX
            jne .L_4148d8

            add RSP,72
.L_4146b4:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
          .byte 0x90
.L_4146c0:

            lea RSI,QWORD PTR [RAX+2]
            mov RDI,R12
            call .L_40d0f0

            test RAX,RAX
            mov R15,RAX
            mov QWORD PTR [R13],RAX
            je .L_4148b8

            movzx R9D,BYTE PTR [RBP]
            lea R14,QWORD PTR [RSP+16]
            test R9B,R9B
            jne .L_41470d

            jmp .L_414748
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4146f0:

            lea EAX,DWORD PTR [R9-127]
            cmp AL,33
            jbe .L_414713

            mov BYTE PTR [R15],R9B
.L_4146fb:

            add RBP,1
            movzx R9D,BYTE PTR [RBP]
            add R15,1
            test R9B,R9B
            je .L_414748
.L_41470d:

            cmp R9B,31
            ja .L_4146f0
.L_414713:

            lea R8,QWORD PTR [RIP+.L_414c60]
            mov ECX,40
            mov EDX,1
            mov ESI,40
            mov RDI,R14
            xor EAX,EAX
            call __snprintf_chk@PLT

            mov RSI,R14
            mov RDI,R12
            call .L_40d580

            mov BYTE PTR [R15],32
            jmp .L_4146fb
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_414748:

            mov BYTE PTR [R15],0
            mov RAX,QWORD PTR [RSP+8]
            mov RBP,QWORD PTR [R13]
            cmp BYTE PTR [RBP+RAX*1-1],32
            je .L_414880
.L_414760:

            movzx EAX,BYTE PTR [RBP]
            mov RDX,RBP
            cmp AL,32
            je .L_414840
.L_41476f:

            test AL,AL
            je .L_4148d0

            xor ESI,ESI
            xor ECX,ECX
            jmp .L_414794
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_414780:

            mov BYTE PTR [RDX],AL
            xor ECX,ECX
            add RDX,1
.L_414788:

            add RBP,1
            movzx EAX,BYTE PTR [RBP]
            test AL,AL
            je .L_4147b8
.L_414794:

            cmp AL,32
            jne .L_414780

            test ECX,ECX
            jne .L_4147f0

            add RBP,1
            mov BYTE PTR [RDX],32
            add RDX,1
            movzx EAX,BYTE PTR [RBP]
            mov ECX,1
            test AL,AL
            jne .L_414794

            nop
            nop
            nop
            nop
.L_4147b8:

            test ESI,ESI
            mov BYTE PTR [RDX],0
            jne .L_414800
.L_4147bf:

            test RBX,RBX
            je .L_414818

            cmp RBX,79
            jbe .L_414699

            lea RSI,QWORD PTR [RIP+.L_414d08]
            mov RDI,R12
            mov EBX,79
            call .L_40d580

            mov RAX,QWORD PTR [R13]
            mov BYTE PTR [RAX+79],0
            jmp .L_414699
          .byte 0x90
.L_4147f0:

            sub RBX,1
            mov ESI,ECX
            jmp .L_414788
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_414800:

            lea RSI,QWORD PTR [RIP+.L_414cd8]
            mov RDI,R12
            call .L_40d580

            jmp .L_4147bf
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_414818:

            mov RSI,QWORD PTR [R13]
            mov RDI,R12
            call .L_40d0a0

            lea RSI,QWORD PTR [RIP+.L_414986]
            mov QWORD PTR [R13],0
            mov RDI,R12
            call .L_40d580

            jmp .L_414699
.L_414840:

            lea RSI,QWORD PTR [RIP+.L_414cb0]
            mov RDI,R12
            call .L_40d580

            movzx EAX,BYTE PTR [RBP]
            cmp AL,32
            jne .L_414870

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414860:

            add RBP,1
            movzx EAX,BYTE PTR [RBP]
            sub RBX,1
            cmp AL,32
            je .L_414860
.L_414870:

            mov RDX,QWORD PTR [R13]
            jmp .L_41476f
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_414880:

            lea RSI,QWORD PTR [RIP+.L_414c88]
            mov RDI,R12
            call .L_40d580

            lea RAX,QWORD PTR [RBP-1]
            nop
            nop
            nop
            nop
            nop
.L_414898:

            cmp BYTE PTR [RAX+RBX*1],32
            jne .L_4148a8

            mov BYTE PTR [RAX+RBX*1],0
            sub RBX,1
            jne .L_414898
.L_4148a8:

            mov RBP,QWORD PTR [R13]
            jmp .L_414760
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4148b8:

            lea RSI,QWORD PTR [RIP+.L_414c38]
            mov RDI,R12
            xor EBX,EBX
            call .L_40d580

            jmp .L_414699
          .byte 0x66
          .byte 0x90
.L_4148d0:

            mov BYTE PTR [RDX],0
            jmp .L_4147bf
.L_4148d8:

            call __stack_chk_fail@PLT
.L_4148dd:
          .string "iTXt chunk not supported."
.L_4148f7:
          .string "Limiting gamma to 21474.83"
.L_414912:
          .string "Setting gamma=0"
.L_414922:
          .string "Invalid palette length"
.L_414939:
          .string "Ignoring invalid time value"
.L_414955:
          .string "No memory for sPLT palettes."
.L_414972:
          .string "zero length keyword"
.L_414986:
          .string "Zero length keyword"
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4149a0:
          .string "Setting negative gamma to zero"
          .zero 1
.L_4149c0:
          .string "Invalid palette size, hIST allocation skipped."
          .zero 1
.L_4149f0:
          .string "Insufficient memory for hIST chunk data."
          .zero 7
.L_414a20:
          .string "Image width is too large for this architecture"
          .zero 1
.L_414a50:
          .string "Insufficient memory for pCAL purpose."
          .zero 2
.L_414a78:
          .string "Insufficient memory for pCAL units."
          .zero 4
.L_414aa0:
          .string "Insufficient memory for pCAL params."
          .zero 3
.L_414ac8:
          .string "Insufficient memory for pCAL parameter."
.L_414af0:
          .string "Insufficient memory to process iCCP chunk."
          .zero 5
.L_414b20:
          .string "Insufficient memory to process iCCP profile."
          .zero 3
.L_414b50:
          .string "Insufficient memory to store text"
          .zero 6
.L_414b78:
          .string "Ignoring invalid num_trans value"
          .zero 7
.L_414ba0:
          .string "tRNS chunk has out-of-range samples for bit_depth"
          .zero 6
.L_414bd8:
          .string "Out of memory while processing sPLT chunk"
          .zero 6
.L_414c08:

            jne .L_414c7f
          .byte 0x20
          .byte 0x6f
          .byte 0x66
          .byte 0x20
          .byte 0x6d
          .byte 0x65
          .byte 0x6d
          .byte 0x6f
          .byte 0x72
          .byte 0x79
          .byte 0x20
          .byte 0x77
          .byte 0x68
          .byte 0x69
          .byte 0x6c
          .byte 0x65
          .byte 0x20
          .byte 0x70
          .byte 0x72
          .byte 0x6f
          .byte 0x63
          .byte 0x65
          .byte 0x73
          .byte 0x73
          .byte 0x69
          .byte 0x6e
          .byte 0x67
          .byte 0x20
          .byte 0x75
          .byte 0x6e
          .byte 0x6b
          .byte 0x6e
          .byte 0x6f
          .byte 0x77
          .byte 0x6e
          .byte 0x20
          .byte 0x63
          .byte 0x68
          .byte 0x75
          .byte 0x6e
          .byte 0x6b
          .byte 0x2e
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_414c38:
          .string "Out of memory while procesing keyword"
          .zero 2
.L_414c60:
          .byte 0x69
          .byte 0x6e
          .byte 0x76
          .byte 0x61
          .byte 0x6c
          .byte 0x69
          .byte 0x64
          .byte 0x20
          .byte 0x6b
          .byte 0x65
          .byte 0x79
          .byte 0x77
          .byte 0x6f
          .byte 0x72
          .byte 0x64
          .byte 0x20
          .byte 0x63
          .byte 0x68
          .byte 0x61
          .byte 0x72
          .byte 0x61
          .byte 0x63
          .byte 0x74
          .byte 0x65
          .byte 0x72
          .byte 0x20
          .byte 0x30
          .byte 0x78
          .byte 0x25
          .byte 0x30
          .byte 0x32
.L_414c7f:

            pop RAX
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
.L_414c88:
          .string "trailing spaces removed from keyword"
          .zero 3
.L_414cb0:
          .string "leading spaces removed from keyword"
          .zero 4
.L_414cd8:

            js .L_414d4f
          .byte 0x72
          .byte 0x61
          .byte 0x20
          .byte 0x69
          .byte 0x6e
          .byte 0x74
          .byte 0x65
          .byte 0x72
          .byte 0x69
          .byte 0x6f
          .byte 0x72
          .byte 0x20
          .byte 0x73
          .byte 0x70
          .byte 0x61
          .byte 0x63
          .byte 0x65
          .byte 0x73
          .byte 0x20
          .byte 0x72
          .byte 0x65
          .byte 0x6d
          .byte 0x6f
          .byte 0x76
          .byte 0x65
          .byte 0x64
          .byte 0x20
          .byte 0x66
          .byte 0x72
          .byte 0x6f
          .byte 0x6d
          .byte 0x20
          .byte 0x6b
          .byte 0x65
          .byte 0x79
          .byte 0x77
          .byte 0x6f
          .byte 0x72
          .byte 0x64

            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
.L_414d08:

            imul ESP,DWORD PTR [RBP+121],119
            outsd DX,DWORD PTR [RSI]
            jb .L_414d73

            and BYTE PTR [RBP+RIZ*2+110],CH
            je .L_414d7e
          .byte 0x20
          .byte 0x6d
          .byte 0x75
          .byte 0x73
          .byte 0x74
          .byte 0x20
          .byte 0x62
          .byte 0x65
          .byte 0x20
          .byte 0x31
          .byte 0x20
          .byte 0x2d
          .byte 0x20
          .byte 0x37
          .byte 0x39
          .byte 0x20
          .byte 0x63
          .byte 0x68
          .byte 0x61
          .byte 0x72
          .byte 0x61
          .byte 0x63
          .byte 0x74
          .byte 0x65
          .byte 0x72
          .byte 0x73
          .byte 0x0
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_414d38:

            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RDX-8],CH
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            loopne 84791
.L_414d48:

            in AL,DX
            push RCX
            mov EAX,3573069086
.L_414d4f:

            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            add BYTE PTR [RAX],AL
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414d60:

            push R15
            push R14
            mov R15,RDX
            push R13
            push R12
            lea R12,QWORD PTR [RIP+.L_618dd0]
            push RBP
.L_414d73:

            lea RBP,QWORD PTR [RIP+.L_618dd8]
            push RBX
            mov R13D,EDI
.L_414d7e:

            mov R14,RSI
            sub RBP,R12
            sub RSP,8
            sar RBP,3
            call 2832

            test RBP,RBP
            je .L_414db6

            xor EBX,EBX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414da0:

            mov RDX,R15
            mov RSI,R14
            mov EDI,R13D
            call QWORD PTR [R12+RBX*8]

            add RBX,1
            cmp RBP,RBX
            jne .L_414da0
.L_414db6:

            add RSP,8
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_414dc5:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_414dd0:

            ret 
.L_414dd2:
#===================================
# end section .text
#===================================

#===================================
.section .rodata ,"a",@progbits
.align 16
#===================================

.L_414de0:
          .byte 0x1
          .byte 0x0
          .byte 0x2
          .byte 0x0
.L_414de4:
          .string "read error"
.L_414def:
          .string "IHDR"
.L_414df4:
          .string "1.2.56"
.L_414dfb:
          .string "target.cc"
.L_414e05:
          .string "png_ptr"
.L_414e0d:
          .string "info_ptr"
.L_414e16:
          .string "rb"
.L_414e19:
          .string "malloc error!\n"
.L_414e28:
          .string "read error!\n"
          .zero 11
.L_414e40:
          .string "int LLVMFuzzerTestOneInput(const uint8_t*, size_t)"
#===================================
# end section .rodata
#===================================

#===================================
.section .gcc_except_table ,"a",@progbits
.align 16
#===================================

.L_417ef0:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_417f05-.L_417ef4
.L_417ef4:
          .uleb128 .L_4012a5-.L_401230
          .uleb128 .L_4012aa-.L_4012a5
          .uleb128 .L_4014b7-.L_401230
          .zero 1
          .uleb128 .L_40131b-.L_401230
          .uleb128 .L_401491-.L_40131b
          .uleb128 .L_4014b7-.L_401230
          .zero 1
          .uleb128 .L_4014fa-.L_401230
          .uleb128 .L_4014ff-.L_4014fa
          .zero 2
.L_417f05:
#===================================
# end section .gcc_except_table
#===================================

#===================================
.section .init_array ,"wa"
.align 8
#===================================

.L_618dd0:
          .quad .L_401170
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
.L_6191d0:
#===================================
# end section .bss
#===================================
