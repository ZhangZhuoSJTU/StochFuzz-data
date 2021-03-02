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

.L_402230:

            lea RCX,QWORD PTR [RIP+.L_40ed20]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40df10]
            sub RSP,8
            mov EDX,1788
            call __assert_fail@PLT
.L_402253:

            nop
            nop
            nop
            nop
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
.globl main
.type main, @notype
#-----------------------------------
main:

            push R12
            push RBP
            push RBX
.L_402264:

            mov RDI,QWORD PTR [RSI+8]
            lea RSI,QWORD PTR [RIP+.L_40deea]
            call fopen@PLT

            test RAX,RAX
            je .L_4022e8

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
            je .L_40230f

            mov RCX,RBX
            mov RDX,RBP
            mov ESI,1
            mov RDI,RAX
            call fread@PLT

            cmp RBP,RAX
            jne .L_4022f2

            mov RSI,RBP
            mov RDI,R12
            call .L_402520

            mov RDI,R12
            call free@PLT

            mov RDI,RBX
            call fclose@PLT

            pop RBX
.L_4022e2:

            xor EAX,EAX
            pop RBP
            pop R12
            ret 
.L_4022e8:

            mov EDI,1
            call exit@PLT
.L_4022f2:

            lea RSI,QWORD PTR [RIP+.L_40defc]
            mov EDI,1
            xor EAX,EAX
            call __printf_chk@PLT

            mov EDI,3
            call exit@PLT
.L_40230f:

            lea RSI,QWORD PTR [RIP+.L_40deed]
            mov EDI,1
            xor EAX,EAX
            call __printf_chk@PLT

            mov EDI,2
            call exit@PLT
.L_40232c:

            nop
            nop
            nop
            nop
.L_402330:

            lea RDI,QWORD PTR [RIP+.L_612231]
            sub RSP,8
            call _ZNSt8ios_base4InitC1Ev@PLT

            mov RDI,QWORD PTR [RIP+_ZNSt8ios_base4InitD1Ev@GOTPCREL]
            lea RDX,QWORD PTR [RIP+.L_612218]
            lea RSI,QWORD PTR [RIP+.L_612231]
            add RSP,8
            jmp __cxa_atexit@PLT
.L_40235e:

            nop
            nop
.L_402390:

            ret 
.L_402392:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4023a0:

            push RBP
            mov EAX,OFFSET .L_612230
            cmp RAX,OFFSET .L_612230
            mov RBP,RSP
            je .L_4023c8

            mov EAX,0
            test RAX,RAX
            je .L_4023c8

            pop RBP
            mov EDI,OFFSET .L_612230
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4023c8:

            pop RBP
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4023d0:

            mov ESI,OFFSET .L_612230
            push RBP
            sub RSI,OFFSET .L_612230
            mov RBP,RSP
            sar RSI,3
            mov RAX,RSI
            shr RAX,63
            add RSI,RAX
            sar RSI,1
            je .L_402408

            mov EAX,0
            test RAX,RAX
            je .L_402408

            pop RBP
            mov EDI,OFFSET .L_612230
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_402408:

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
.L_402440:

            push RBP
            mov RBP,RSP
            pop RBP
            jmp .L_4023d0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_402450:

            push R12
            push RBP
            mov R12,RSI
            push RBX
            mov RBP,RDI
            sub RSP,16
.L_40245e:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+8],RAX
            xor EAX,EAX
            test RSI,RSI
            jne .L_40247c

            test RDX,RDX
            jne .L_402507
.L_40247c:

            mov RBX,RDX
            sub RBX,R12
            cmp RBX,15
            mov QWORD PTR [RSP],RBX
            ja .L_4024d0

            mov RDX,QWORD PTR [RBP]
            cmp RBX,1
            mov RAX,RDX
            jne .L_402500

            movzx EAX,BYTE PTR [R12]
            mov BYTE PTR [RDX],AL
            mov RDX,QWORD PTR [RBP]
.L_4024a4:

            mov RAX,QWORD PTR [RSP]
            mov QWORD PTR [RBP+8],RAX
            mov BYTE PTR [RDX+RAX*1],0
            mov RAX,QWORD PTR [RSP+8]
            xor RAX,QWORD PTR FS:[40]
            jne .L_402513

            add RSP,16
.L_4024c4:

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
.L_4024d0:

            xor EDX,EDX
            mov RSI,RSP
            mov RDI,RBP
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT

            mov RDX,QWORD PTR [RSP]
            mov QWORD PTR [RBP],RAX
            mov QWORD PTR [RBP+16],RDX
.L_4024e9:

            mov RDX,RBX
            mov RSI,R12
            mov RDI,RAX
            call memcpy@PLT

            mov RDX,QWORD PTR [RBP]
            jmp .L_4024a4
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_402500:

            test RBX,RBX
            je .L_4024a4

            jmp .L_4024e9
.L_402507:

            lea RDI,QWORD PTR [RIP+.L_40df48]
            call _ZSt19__throw_logic_errorPKc@PLT
.L_402513:

            call __stack_chk_fail@PLT
.L_402518:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402520:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            lea RBP,QWORD PTR [RDI+RSI*1]
            sub RSP,1800
.L_402535:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+1784],RAX
            xor EAX,EAX
            test RSI,RSI
            mov QWORD PTR [RSP+624],0
            jle .L_4029e0

            lea R13,QWORD PTR [RSP+160]
            lea RSI,QWORD PTR [RSP+608]
            mov RBX,RDI
            mov RDI,R13
.L_402573:

            call .L_405680
.L_402578:

            lea R12,QWORD PTR [RSP+640]
            mov RSI,R13
            mov DWORD PTR [RSP+640],0
            lea RDI,QWORD PTR [R12+8]
.L_402593:

            call .L_405680
.L_402598:

            lea RAX,QWORD PTR [R12+72]
            test RBX,RBX
            mov DWORD PTR [RSP+680],0
            mov QWORD PTR [RSP+688],0
            mov QWORD PTR [RSP+704],0
            mov QWORD PTR [RSP+696],RAX
            lea RAX,QWORD PTR [R12+104]
            mov BYTE PTR [RSP+712],0
            mov QWORD PTR [RSP+736],0
            mov BYTE PTR [RSP+744],0
            mov QWORD PTR [RSP+728],RAX
            mov QWORD PTR [RSP+760],RBX
            mov QWORD PTR [RSP+768],0
            mov QWORD PTR [RSP+776],0
            mov QWORD PTR [RSP+784],0
            mov QWORD PTR [RSP+792],0
            mov DWORD PTR [RSP+800],15
            je .L_404e95

            lea RDI,QWORD PTR [R12+48]
            mov QWORD PTR [RSP+784],RBX
            mov QWORD PTR [RSP+768],RBX
            mov QWORD PTR [RSP+792],RBP
.L_40265a:

            call .L_407190

            lea R15,QWORD PTR [RSP+112]
            mov EDX,1
            mov RSI,R12
            mov DWORD PTR [RSP+680],EAX
            mov RDI,R15
            call .L_40b660
.L_40267b:

            movzx EAX,BYTE PTR [RSP+112]
            cmp AL,1
            je .L_402988

            cmp AL,2
            jne .L_4036f0

            cmp QWORD PTR [RSP+120],0
            je .L_4048ef
.L_40269c:

            cmp DWORD PTR [RSP+680],15
            je .L_402df0
.L_4026aa:

            lea R14,QWORD PTR [RSP+288]
            lea RDX,QWORD PTR [RIP+.L_40e289]
            lea RAX,QWORD PTR [R14+16]
            lea RSI,QWORD PTR [RDX-25]
            mov RDI,R14
            mov QWORD PTR [RSP+288],RAX
.L_4026cc:

            call .L_402450
.L_4026d1:

            mov ESI,DWORD PTR [RSP+680]
            cmp ESI,14
            jne .L_404eca

            mov RSI,QWORD PTR [RSP+768]
            test RSI,RSI
            je .L_402dd0

            lea RBP,QWORD PTR [RSP+1392]
            mov RDX,QWORD PTR [RSP+784]
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,RBP
            mov QWORD PTR [RSP+1392],RAX
.L_402711:

            call .L_402450
.L_402716:

            lea RCX,QWORD PTR [RIP+.L_40e204]
            mov R8D,1
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBP
.L_40272a:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_40272f:

            lea RBX,QWORD PTR [RSP+992]
            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+992],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_403820

            mov QWORD PTR [RSP+992],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+1008],RCX
.L_402767:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+1000],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+1000],RAX
            je .L_4050d0

            lea RSI,QWORD PTR [RIP+.L_40e204]
            mov EDX,1
            mov RDI,RBX
.L_4027a9:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_4027ae:

            lea RDX,QWORD PTR [RSP+336]
            lea RBX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+320],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+8],RBX
            cmp RCX,RDX
            je .L_4042c0

            mov QWORD PTR [RSP+320],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+336],RCX
.L_4027ef:

            mov RCX,QWORD PTR [RAX+8]
            mov EBX,1
            mov QWORD PTR [RSP+328],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
.L_40280f:

            mov RDX,QWORD PTR [RSP+328]
            mov RSI,QWORD PTR [RSP+320]
            mov RDI,R14
.L_402822:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_402827:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+320]
            add RAX,16
            cmp RDI,RAX
            je .L_402842

            call _ZdlPv@PLT
.L_402842:

            test BL,BL
            lea RBP,QWORD PTR [RSP+1392]
            je .L_402886

            mov RDI,QWORD PTR [RSP+992]
            lea RAX,QWORD PTR [RSP+1008]
            cmp RDI,RAX
            je .L_402868

            call _ZdlPv@PLT
.L_402868:

            lea RBP,QWORD PTR [RSP+1392]
            mov RDI,QWORD PTR [RSP+1392]
            lea RAX,QWORD PTR [RBP+16]
            cmp RDI,RAX
            je .L_402886

            call _ZdlPv@PLT
.L_402886:

            lea RDX,QWORD PTR [RIP+.L_40e220]
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,RBP
            lea RSI,QWORD PTR [RDX-12]
            mov QWORD PTR [RSP+1392],RAX
.L_4028a0:

            call .L_402450
.L_4028a5:

            lea RCX,QWORD PTR [RIP+.L_40e29d]
            mov R8D,11
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBP
.L_4028b9:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_4028be:

            lea RBX,QWORD PTR [RSP+992]
            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+992],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_4042a8

            mov QWORD PTR [RSP+992],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+1008],RCX
.L_4028f6:

            mov RCX,QWORD PTR [RAX+8]
            mov RDI,R14
            mov QWORD PTR [RSP+1000],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RDX,QWORD PTR [RSP+1000]
            mov RSI,QWORD PTR [RSP+992]
.L_402924:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_402929:

            mov RDI,QWORD PTR [RSP+992]
            add RBX,16
            cmp RDI,RBX
            je .L_40293f

            call _ZdlPv@PLT
.L_40293f:

            mov RDI,QWORD PTR [RSP+1392]
            add RBP,16
            cmp RDI,RBP
            je .L_402955

            call _ZdlPv@PLT
.L_402955:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            mov RSI,R14
            mov RDI,RAX
            mov RBP,RAX
.L_402968:

            call _ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.L_40296d:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,RBP
.L_40297e:

            call __cxa_throw@PLT
.L_402983:

            nop
            nop
            nop
            nop
            nop
.L_402988:

            cmp QWORD PTR [RSP+120],0
            je .L_403d34

            cmp DWORD PTR [RSP+680],15
            jne .L_4026aa

            mov RAX,QWORD PTR [RSP+120]
            mov BYTE PTR [RSP+64],1
            test RAX,RAX
            mov QWORD PTR [RSP+72],RAX
            je .L_403d34

            mov BYTE PTR [RSP+112],0
            mov QWORD PTR [RSP+120],0
.L_4029c8:

            cmp QWORD PTR [RSP+72],0
            jne .L_402e29

            jmp .L_403d34
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4029e0:

            lea R12,QWORD PTR [RSP+816]
            lea R13,QWORD PTR [RSP+192]
            mov QWORD PTR [RSP+208],0
            mov DWORD PTR [RSP+816],0
            lea RDI,QWORD PTR [R12+8]
            mov RSI,R13
.L_402a0f:

            call .L_405680
.L_402a14:

            lea RAX,QWORD PTR [R12+72]
            lea RDI,QWORD PTR [R12+48]
            mov DWORD PTR [RSP+856],0
            mov QWORD PTR [RSP+864],0
            mov QWORD PTR [RSP+880],0
            mov QWORD PTR [RSP+872],RAX
            lea RAX,QWORD PTR [R12+104]
            mov BYTE PTR [RSP+888],0
            mov QWORD PTR [RSP+912],0
            mov BYTE PTR [RSP+920],0
            mov QWORD PTR [RSP+904],RAX
            lea RAX,QWORD PTR [RIP+.L_40dfc4]
            mov QWORD PTR [RSP+952],0
            mov DWORD PTR [RSP+976],15
            mov QWORD PTR [RSP+936],RAX
            mov QWORD PTR [RSP+960],RAX
            mov QWORD PTR [RSP+944],RAX
            mov QWORD PTR [RSP+968],RAX
.L_402ab0:

            call .L_407190

            lea R14,QWORD PTR [RSP+96]
            mov EDX,1
            mov RSI,R12
            mov DWORD PTR [RSP+856],EAX
            mov RDI,R14
            call .L_40b660
.L_402ad1:

            movzx EAX,BYTE PTR [RSP+96]
            cmp AL,1
            je .L_403cf0

            cmp AL,2
            jne .L_403710

            cmp QWORD PTR [RSP+104],0
            je .L_4048ef

            cmp DWORD PTR [RSP+856],15
            je .L_403732
.L_402b00:

            lea R15,QWORD PTR [RSP+224]
            lea RDX,QWORD PTR [RIP+.L_40e289]
            lea RAX,QWORD PTR [R15+16]
            lea RSI,QWORD PTR [RDX-25]
            mov RDI,R15
            mov QWORD PTR [RSP+224],RAX
.L_402b22:

            call .L_402450
.L_402b27:

            mov ESI,DWORD PTR [RSP+856]
            cmp ESI,14
            jne .L_405001

            mov RSI,QWORD PTR [RSP+944]
            test RSI,RSI
            je .L_402dd0

            lea RBP,QWORD PTR [RSP+1392]
            mov RDX,QWORD PTR [RSP+960]
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,RBP
            mov QWORD PTR [RSP+1392],RAX
.L_402b67:

            call .L_402450
.L_402b6c:

            lea RCX,QWORD PTR [RIP+.L_40e204]
            mov R8D,1
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBP
.L_402b80:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_402b85:

            lea RBX,QWORD PTR [RSP+992]
            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+992],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_404940

            mov QWORD PTR [RSP+992],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+1008],RCX
.L_402bbd:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+1000],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+1000],RAX
            je .L_405461

            lea RSI,QWORD PTR [RIP+.L_40e204]
            mov EDX,1
            mov RDI,RBX
.L_402bff:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_402c04:

            lea RBP,QWORD PTR [RSP+256]
            lea RDX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+256],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_404928

            mov QWORD PTR [RSP+256],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+272],RCX
.L_402c3c:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov EBX,1
            mov QWORD PTR [RSP+264],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
.L_402c5c:

            mov RDX,QWORD PTR [RSP+264]
            mov RSI,QWORD PTR [RSP+256]
            mov RDI,R15
.L_402c6f:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_402c74:

            mov RDI,QWORD PTR [RSP+256]
            add RBP,16
            cmp RDI,RBP
            je .L_402c8a

            call _ZdlPv@PLT
.L_402c8a:

            test BL,BL
            lea RBP,QWORD PTR [RSP+1392]
            je .L_402cce

            mov RDI,QWORD PTR [RSP+992]
            lea RAX,QWORD PTR [RSP+1008]
            cmp RDI,RAX
            je .L_402cb0

            call _ZdlPv@PLT
.L_402cb0:

            lea RBP,QWORD PTR [RSP+1392]
            mov RDI,QWORD PTR [RSP+1392]
            lea RAX,QWORD PTR [RBP+16]
            cmp RDI,RAX
            je .L_402cce

            call _ZdlPv@PLT
.L_402cce:

            lea RDX,QWORD PTR [RIP+.L_40e220]
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,RBP
            lea RSI,QWORD PTR [RDX-12]
            mov QWORD PTR [RSP+1392],RAX
.L_402ce8:

            call .L_402450
.L_402ced:

            lea RCX,QWORD PTR [RIP+.L_40e29d]
            mov R8D,11
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBP
.L_402d01:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_402d06:

            lea RBX,QWORD PTR [RSP+992]
            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+992],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_404910

            mov QWORD PTR [RSP+992],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+1008],RCX
.L_402d3e:

            mov RCX,QWORD PTR [RAX+8]
            mov RDI,R15
            mov QWORD PTR [RSP+1000],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RDX,QWORD PTR [RSP+1000]
            mov RSI,QWORD PTR [RSP+992]
.L_402d6c:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_402d71:

            mov RDI,QWORD PTR [RSP+992]
            add RBX,16
            cmp RDI,RBX
            je .L_402d87

            call _ZdlPv@PLT
.L_402d87:

            mov RDI,QWORD PTR [RSP+1392]
            add RBP,16
            cmp RDI,RBP
            je .L_402d9d

            call _ZdlPv@PLT
.L_402d9d:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            mov RSI,R15
            mov RDI,RAX
            mov RBP,RAX
.L_402db0:

            call _ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.L_402db5:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,RBP
.L_402dc6:

            call __cxa_throw@PLT
.L_402dcb:

            nop
            nop
            nop
            nop
            nop
.L_402dd0:

            lea RCX,QWORD PTR [RIP+.L_40ef00]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e28a]
            mov EDX,10903
            call __assert_fail@PLT
          .byte 0x90
.L_402df0:

            mov RDX,QWORD PTR [RSP+120]
            cmp AL,2
            mov BYTE PTR [RSP+64],AL
            mov QWORD PTR [RSP+72],RDX
            jne .L_4037f0

            test RDX,RDX
            je .L_4048ef

            mov BYTE PTR [RSP+112],0
            mov QWORD PTR [RSP+120],0
.L_402e1d:

            cmp QWORD PTR [RSP+72],0
            je .L_4048ef
.L_402e29:

            mov RDI,R15
            call .L_406c70

            mov RDI,QWORD PTR [RSP+728]
            lea RAX,QWORD PTR [R12+104]
            cmp RDI,RAX
            je .L_402e48

            call _ZdlPv@PLT
.L_402e48:

            mov RDI,QWORD PTR [RSP+696]
            lea RAX,QWORD PTR [R12+72]
            cmp RDI,RAX
            je .L_402e5f

            call _ZdlPv@PLT
.L_402e5f:

            mov RAX,QWORD PTR [RSP+664]
            test RAX,RAX
            je .L_402e7b

            lea RDI,QWORD PTR [R12+8]
            mov EDX,3
            mov RSI,RDI
            call RAX
.L_402e7b:

            mov RAX,QWORD PTR [RSP+176]
            test RAX,RAX
            je .L_402e95

            mov EDX,3
            mov RSI,R13
            mov RDI,R13
            call RAX
.L_402e95:

            mov RAX,QWORD PTR [RSP+624]
            test RAX,RAX
            je .L_402eb4

            lea RDI,QWORD PTR [RSP+608]
            mov EDX,3
            mov RSI,RDI
            call RAX
.L_402eb4:

            lea RBX,QWORD PTR [RSP+992]
            lea RDI,QWORD PTR [RBX+128]
            call _ZNSt8ios_baseC2Ev@PLT

            mov R13,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+16]
            lea RAX,QWORD PTR [RIP+_ZTVSt9basic_iosIcSt11char_traitsIcEE+16]
            mov BYTE PTR [RSP+1344],0
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+24]
            mov QWORD PTR [RSP+1336],0
            xor ESI,ESI
            mov QWORD PTR [RSP+1120],RAX
            mov BYTE PTR [RSP+1345],0
            mov RAX,QWORD PTR [R13-24]
            mov QWORD PTR [RSP+1352],0
            mov QWORD PTR [RSP+1360],0
            mov QWORD PTR [RSP+1368],0
            mov QWORD PTR [RSP+1376],0
            mov QWORD PTR [RSP+992],R13
            mov QWORD PTR [RSP+RAX*1+992],RCX
            mov QWORD PTR [RSP+1000],0
            mov RDI,QWORD PTR [R13-24]
            add RDI,RBX
.L_402f5a:

            call _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.L_402f5f:

            mov R14,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+32]
            xor ESI,ESI
            mov RAX,QWORD PTR [R14-24]
            mov QWORD PTR [RSP+1008],R14
            lea RDI,QWORD PTR [RBX+RAX*1+16]
            mov RAX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+40]
            mov QWORD PTR [RDI],RAX
.L_402f83:

            call _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.L_402f88:

            mov R15,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+8]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+48]
            lea RDI,QWORD PTR [RBX+80]
            mov RAX,QWORD PTR [R15-24]
            mov QWORD PTR [RSP+RAX*1+992],RCX
            lea RAX,QWORD PTR [RIP+_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+24]
            mov QWORD PTR [RSP+1024],0
            mov QWORD PTR [RSP+1032],0
            mov QWORD PTR [RSP+1040],0
            mov QWORD PTR [RSP+992],RAX
            add RAX,80
            mov QWORD PTR [RSP+1048],0
            mov QWORD PTR [RSP+1120],RAX
            sub RAX,40
            mov QWORD PTR [RSP+1056],0
            mov QWORD PTR [RSP+1008],RAX
            lea RAX,QWORD PTR [RIP+_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16]
            mov QWORD PTR [RSP+1064],0
            mov QWORD PTR [RSP+1016],RAX
            call _ZNSt6localeC1Ev@PLT

            lea RAX,QWORD PTR [RIP+_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE+16]
            lea RSI,QWORD PTR [RBX+24]
            lea RDI,QWORD PTR [RBX+128]
            mov DWORD PTR [RSP+1080],24
            mov QWORD PTR [RSP+1096],0
            mov QWORD PTR [RSP+1016],RAX
            lea RAX,QWORD PTR [RBX+112]
            mov BYTE PTR [RSP+1104],0
            mov QWORD PTR [RSP+1088],RAX
.L_40306e:

            call _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.L_403073:

            lea RDI,QWORD PTR [RSP+64]
            lea RSI,QWORD PTR [RBX+16]
            xor R8D,R8D
            xor ECX,ECX
            xor EDX,EDX
            mov QWORD PTR [RSP+40],RDI
.L_403088:

            call .L_409b30
.L_40308d:

            lea RAX,QWORD PTR [RSP+320]
            mov QWORD PTR [RSP+328],0
            mov BYTE PTR [RSP+336],0
            mov QWORD PTR [RSP+8],RAX
            lea RAX,QWORD PTR [RSP+336]
            mov QWORD PTR [RSP+320],RAX
            mov RAX,QWORD PTR [RSP+1056]
            test RAX,RAX
            je .L_404290

            mov RDX,QWORD PTR [RSP+1040]
            mov RSI,QWORD PTR [RSP+1048]
            cmp RAX,RDX
            jbe .L_403838

            lea RCX,QWORD PTR [RSP+384]
            lea RDX,QWORD PTR [RCX+16]
            mov RDI,RCX
            mov RBP,RCX
            mov QWORD PTR [RSP+16],RCX
            mov QWORD PTR [RSP+384],RDX
            mov RDX,RAX
.L_40310a:

            call .L_402450
.L_40310f:

            mov RSI,QWORD PTR [RSP+384]
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,QWORD PTR [RSP+320]
            mov RDX,QWORD PTR [RSP+392]
            cmp RSI,RAX
            je .L_404320

            mov RCX,QWORD PTR [RSP+8]
            mov RAX,QWORD PTR [RSP+400]
            add RCX,16
            cmp RDI,RCX
            je .L_4048a0

            test RDI,RDI
            mov RCX,QWORD PTR [RSP+336]
            mov QWORD PTR [RSP+320],RSI
            mov QWORD PTR [RSP+328],RDX
            mov QWORD PTR [RSP+336],RAX
            je .L_4048b8

            mov QWORD PTR [RSP+384],RDI
            mov QWORD PTR [RSP+400],RCX
.L_403187:

            mov RAX,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+392],0
            mov BYTE PTR [RDI],0
            mov RDI,QWORD PTR [RSP+384]
            add RAX,16
            cmp RDI,RAX
            je .L_4031b1

            call _ZdlPv@PLT
.L_4031b1:

            lea RAX,QWORD PTR [RIP+_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+24]
            mov RDI,QWORD PTR [RSP+1088]
            mov QWORD PTR [RSP+992],RAX
            add RAX,80
            mov QWORD PTR [RSP+1120],RAX
            sub RAX,40
            mov QWORD PTR [RSP+1008],RAX
            lea RAX,QWORD PTR [RIP+_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE+16]
            mov QWORD PTR [RSP+1016],RAX
            lea RAX,QWORD PTR [RBX+112]
            cmp RDI,RAX
            je .L_4031fd

            call _ZdlPv@PLT
.L_4031fd:

            lea RAX,QWORD PTR [RIP+_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16]
            lea RDI,QWORD PTR [RBX+80]
            mov QWORD PTR [RSP+1016],RAX
            call _ZNSt6localeD1Ev@PLT

            mov RAX,QWORD PTR [R15-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+48]
            lea RDI,QWORD PTR [RBX+128]
            mov QWORD PTR [RSP+RAX*1+992],RCX
            mov RAX,QWORD PTR [R14-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+40]
            mov QWORD PTR [RSP+1008],R14
            mov QWORD PTR [RSP+RAX*1+1008],RCX
            mov RAX,QWORD PTR [R13-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+24]
            mov QWORD PTR [RSP+992],R13
            mov QWORD PTR [RSP+RAX*1+992],RCX
            lea RAX,QWORD PTR [RIP+_ZTVSt9basic_iosIcSt11char_traitsIcEE+16]
            mov QWORD PTR [RSP+1000],0
            mov QWORD PTR [RSP+1120],RAX
            call _ZNSt8ios_baseD2Ev@PLT

            lea RAX,QWORD PTR [RSP+416]
            mov RSI,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+400],0
            mov RDI,RAX
            mov QWORD PTR [RSP+24],RAX
.L_4032a6:

            call .L_405680
.L_4032ab:

            mov RAX,QWORD PTR [RSP+328]
            mov RBP,QWORD PTR [RSP+320]
            test RAX,RAX
            lea R12,QWORD PTR [RBP+RAX*1]
            jle .L_403908

            lea RAX,QWORD PTR [RSP+448]
            mov RSI,QWORD PTR [RSP+24]
            mov RDI,RAX
            mov QWORD PTR [RSP+32],RAX
.L_4032de:

            call .L_405680
.L_4032e3:

            mov RSI,QWORD PTR [RSP+32]
            lea RDI,QWORD PTR [RBX+8]
            mov DWORD PTR [RSP+992],0
.L_4032f7:

            call .L_405680
.L_4032fc:

            lea RAX,QWORD PTR [RBX+72]
            test RBP,RBP
            mov DWORD PTR [RSP+1032],0
            mov QWORD PTR [RSP+1040],0
            mov QWORD PTR [RSP+1056],0
            mov QWORD PTR [RSP+1048],RAX
            lea RAX,QWORD PTR [RBX+104]
            mov BYTE PTR [RSP+1064],0
            mov QWORD PTR [RSP+1088],0
            mov BYTE PTR [RSP+1096],0
            mov QWORD PTR [RSP+1080],RAX
            mov QWORD PTR [RSP+1112],RBP
            mov QWORD PTR [RSP+1120],0
            mov QWORD PTR [RSP+1128],0
            mov QWORD PTR [RSP+1136],0
            mov QWORD PTR [RSP+1144],0
            mov DWORD PTR [RSP+1152],15
            je .L_404e95

            lea RDI,QWORD PTR [RBX+48]
            mov QWORD PTR [RSP+1136],RBP
            mov QWORD PTR [RSP+1120],RBP
            mov QWORD PTR [RSP+1144],R12
.L_4033bb:

            call .L_407190

            mov DWORD PTR [RSP+1032],EAX
            lea RAX,QWORD PTR [RSP+144]
            mov EDX,1
            mov RSI,RBX
            mov RDI,RAX
            mov QWORD PTR [RSP+56],RAX
            call .L_40b660
.L_4033e4:

            movzx EAX,BYTE PTR [RSP+144]
            cmp AL,1
            je .L_403d58

            cmp AL,2
            jne .L_404270

            cmp QWORD PTR [RSP+152],0
            je .L_4048ef
.L_40340b:

            cmp DWORD PTR [RSP+1032],15
            je .L_403db0
.L_403419:

            lea R13,QWORD PTR [RSP+576]
            lea RDX,QWORD PTR [RIP+.L_40e289]
            lea RAX,QWORD PTR [R13+16]
            lea RSI,QWORD PTR [RDX-25]
            mov RDI,R13
            mov QWORD PTR [RSP+576],RAX
.L_40343b:

            call .L_402450
.L_403440:

            mov ESI,DWORD PTR [RSP+1032]
            cmp ESI,14
            jne .L_405216

            mov RSI,QWORD PTR [RSP+1120]
            test RSI,RSI
            je .L_402dd0

            lea RBP,QWORD PTR [RSP+1392]
            mov RDX,QWORD PTR [RSP+1136]
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,RBP
            mov QWORD PTR [RSP+1392],RAX
.L_403480:

            call .L_402450
.L_403485:

            lea RCX,QWORD PTR [RIP+.L_40e204]
            mov R8D,1
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBP
.L_403499:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_40349e:

            lea R12,QWORD PTR [RSP+816]
            lea RDX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+816],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_4049a8

            mov QWORD PTR [RSP+816],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+832],RCX
.L_4034d7:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+824],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+824],RAX
            je .L_4051ff

            lea RSI,QWORD PTR [RIP+.L_40e204]
            mov EDX,1
            mov RDI,R12
.L_403519:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40351e:

            lea RBP,QWORD PTR [RSP+608]
            lea RDX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+608],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_404990

            mov QWORD PTR [RSP+608],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+624],RCX
.L_403556:

            mov RCX,QWORD PTR [RAX+8]
            mov R12D,1
            mov QWORD PTR [RSP+616],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
.L_403577:

            mov RDX,QWORD PTR [RSP+616]
            mov RSI,QWORD PTR [RSP+608]
            mov RDI,R13
.L_40358a:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40358f:

            mov RDI,QWORD PTR [RSP+608]
            add RBP,16
            cmp RDI,RBP
            je .L_4035a5

            call _ZdlPv@PLT
.L_4035a5:

            test R12B,R12B
            lea RBP,QWORD PTR [RSP+1392]
            je .L_4035ea

            mov RDI,QWORD PTR [RSP+816]
            lea RAX,QWORD PTR [RSP+832]
            cmp RDI,RAX
            je .L_4035cc

            call _ZdlPv@PLT
.L_4035cc:

            lea RBP,QWORD PTR [RSP+1392]
            mov RDI,QWORD PTR [RSP+1392]
            lea RAX,QWORD PTR [RBP+16]
            cmp RDI,RAX
            je .L_4035ea

            call _ZdlPv@PLT
.L_4035ea:

            lea RDX,QWORD PTR [RIP+.L_40e220]
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,RBP
            lea RSI,QWORD PTR [RDX-12]
            mov QWORD PTR [RSP+1392],RAX
.L_403604:

            call .L_402450
.L_403609:

            lea RCX,QWORD PTR [RIP+.L_40e29d]
            mov R8D,11
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBP
.L_40361d:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_403622:

            lea R12,QWORD PTR [RSP+816]
            lea RDX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+816],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_4049c0

            mov QWORD PTR [RSP+816],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+832],RCX
.L_40365b:

            mov RCX,QWORD PTR [RAX+8]
            mov RDI,R13
            mov QWORD PTR [RSP+824],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RDX,QWORD PTR [RSP+824]
            mov RSI,QWORD PTR [RSP+816]
.L_403689:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40368e:

            mov RDI,QWORD PTR [RSP+816]
            add R12,16
            cmp RDI,R12
            je .L_4036a4

            call _ZdlPv@PLT
.L_4036a4:

            mov RDI,QWORD PTR [RSP+1392]
            add RBP,16
            cmp RDI,RBP
            je .L_4036ba

            call _ZdlPv@PLT
.L_4036ba:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            mov RSI,R13
            mov RDI,RAX
            mov RBP,RAX
.L_4036cd:

            call _ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.L_4036d2:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,RBP
.L_4036e3:

            call __cxa_throw@PLT
.L_4036e8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4036f0:

            cmp AL,3
            jne .L_404e4c

            cmp QWORD PTR [RSP+120],0
            jne .L_40269c

            jmp .L_404705
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_403710:

            cmp AL,3
            jne .L_4054aa

            cmp QWORD PTR [RSP+104],0
            je .L_404705

            cmp DWORD PTR [RSP+856],15
            jne .L_402b00
.L_403732:

            mov RDX,QWORD PTR [RSP+104]
            cmp AL,2
            mov BYTE PTR [RSP+64],AL
            mov QWORD PTR [RSP+72],RDX
            je .L_4048d0

            cmp AL,3
            jne .L_404e39

            test RDX,RDX
            je .L_404705

            mov BYTE PTR [RSP+96],0
            mov QWORD PTR [RSP+104],0
.L_403767:

            cmp QWORD PTR [RSP+72],0
            je .L_404705
.L_403773:

            mov RDI,R14
            call .L_406c70

            mov RDI,QWORD PTR [RSP+904]
            lea RAX,QWORD PTR [R12+104]
            cmp RDI,RAX
            je .L_403792

            call _ZdlPv@PLT
.L_403792:

            mov RDI,QWORD PTR [RSP+872]
            lea RAX,QWORD PTR [R12+72]
            cmp RDI,RAX
            je .L_4037a9

            call _ZdlPv@PLT
.L_4037a9:

            mov RAX,QWORD PTR [RSP+840]
            test RAX,RAX
            je .L_4037c5

            lea RDI,QWORD PTR [R12+8]
            mov EDX,3
            mov RSI,RDI
            call RAX
.L_4037c5:

            mov RAX,QWORD PTR [RSP+208]
            test RAX,RAX
            je .L_402e95

            mov EDX,3
            mov RSI,R13
            mov RDI,R13
            call RAX

            jmp .L_402e95
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4037f0:

            cmp AL,3
            jne .L_404d3b

            test RDX,RDX
            je .L_404705

            mov BYTE PTR [RSP+112],0
            mov QWORD PTR [RSP+120],0
.L_40380f:

            cmp QWORD PTR [RSP+72],0
            jne .L_402e29

            jmp .L_404705
.L_403820:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+1008],XMM0
            jmp .L_402767
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403838:

            lea RBP,QWORD PTR [RSP+352]
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,RBP
            mov QWORD PTR [RSP+352],RAX
.L_40384f:

            call .L_402450
.L_403854:

            mov RSI,QWORD PTR [RSP+352]
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,QWORD PTR [RSP+320]
            mov RDX,QWORD PTR [RSP+360]
            cmp RSI,RAX
            je .L_4042d8

            mov RCX,QWORD PTR [RSP+8]
            mov RAX,QWORD PTR [RSP+368]
            add RCX,16
            cmp RDI,RCX
            je .L_404870

            test RDI,RDI
            mov RCX,QWORD PTR [RSP+336]
            mov QWORD PTR [RSP+320],RSI
            mov QWORD PTR [RSP+328],RDX
            mov QWORD PTR [RSP+336],RAX
            je .L_404888

            mov QWORD PTR [RSP+352],RDI
            mov QWORD PTR [RSP+368],RCX
.L_4038cc:

            mov QWORD PTR [RSP+360],0
            mov BYTE PTR [RDI],0
            add RBP,16
            mov RDI,QWORD PTR [RSP+352]
            cmp RDI,RBP
            je .L_4038f1

            call _ZdlPv@PLT
.L_4038f1:

            lea RAX,QWORD PTR [RSP+384]
            mov QWORD PTR [RSP+16],RAX
            jmp .L_4031b1
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403908:

            lea RBP,QWORD PTR [RSP+1392]
            lea RAX,QWORD PTR [RSP+480]
            mov QWORD PTR [RSP+496],0
            mov DWORD PTR [RSP+1392],0
            lea RDI,QWORD PTR [RBP+8]
            mov RSI,RAX
            mov QWORD PTR [RSP+56],RAX
.L_40393b:

            call .L_405680
.L_403940:

            lea RAX,QWORD PTR [RBP+72]
            lea RDI,QWORD PTR [RBP+48]
            mov DWORD PTR [RSP+1432],0
            mov QWORD PTR [RSP+1440],0
            mov QWORD PTR [RSP+1456],0
            mov QWORD PTR [RSP+1448],RAX
            lea RAX,QWORD PTR [RBP+104]
            mov BYTE PTR [RSP+1464],0
            mov QWORD PTR [RSP+1488],0
            mov BYTE PTR [RSP+1496],0
            mov QWORD PTR [RSP+1480],RAX
            lea RAX,QWORD PTR [RIP+.L_40dfc4]
            mov QWORD PTR [RSP+1528],0
            mov DWORD PTR [RSP+1552],15
            mov QWORD PTR [RSP+1512],RAX
            mov QWORD PTR [RSP+1536],RAX
            mov QWORD PTR [RSP+1520],RAX
            mov QWORD PTR [RSP+1544],RAX
.L_4039d9:

            call .L_407190

            mov DWORD PTR [RSP+1432],EAX
            lea RAX,QWORD PTR [RSP+128]
            mov EDX,1
            mov RSI,RBP
            mov RDI,RAX
            mov QWORD PTR [RSP+32],RAX
            call .L_40b660
.L_403a02:

            movzx EAX,BYTE PTR [RSP+128]
            cmp AL,1
            je .L_404368

            cmp AL,2
            jne .L_404490

            cmp QWORD PTR [RSP+136],0
            je .L_4048ef
.L_403a29:

            cmp DWORD PTR [RSP+1432],15
            je .L_4043c8
.L_403a37:

            lea R13,QWORD PTR [RSP+512]
            lea RDX,QWORD PTR [RIP+.L_40e289]
            lea RAX,QWORD PTR [R13+16]
            lea RSI,QWORD PTR [RDX-25]
            mov RDI,R13
            mov QWORD PTR [RSP+512],RAX
.L_403a59:

            call .L_402450
.L_403a5e:

            mov ESI,DWORD PTR [RSP+1432]
            cmp ESI,14
            jne .L_404fd7

            mov RSI,QWORD PTR [RSP+1520]
            test RSI,RSI
            je .L_402dd0

            mov RDX,QWORD PTR [RSP+1536]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            mov QWORD PTR [RSP+992],RAX
.L_403a96:

            call .L_402450
.L_403a9b:

            lea RCX,QWORD PTR [RIP+.L_40e204]
            mov R8D,1
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBX
.L_403aaf:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_403ab4:

            lea R12,QWORD PTR [RSP+816]
            lea RDX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+816],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_404728

            mov QWORD PTR [RSP+816],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+832],RCX
.L_403aed:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+824],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+824],RAX
            je .L_404f20

            lea RSI,QWORD PTR [RIP+.L_40e204]
            mov EDX,1
            mov RDI,R12
.L_403b2f:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_403b34:

            lea R12,QWORD PTR [RSP+544]
            lea RDX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+544],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_404ae0

            mov QWORD PTR [RSP+544],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+560],RCX
.L_403b6d:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov R14D,1
            mov QWORD PTR [RSP+552],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
.L_403b8e:

            mov RDX,QWORD PTR [RSP+552]
            mov RSI,QWORD PTR [RSP+544]
            mov RDI,R13
.L_403ba1:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_403ba6:

            mov RDI,QWORD PTR [RSP+544]
            add R12,16
            cmp RDI,R12
            je .L_403bbc

            call _ZdlPv@PLT
.L_403bbc:

            test R14B,R14B
            je .L_403bf1

            mov RDI,QWORD PTR [RSP+816]
            lea RAX,QWORD PTR [RSP+832]
            cmp RDI,RAX
            je .L_403bdb

            call _ZdlPv@PLT
.L_403bdb:

            mov RDI,QWORD PTR [RSP+992]
            lea RAX,QWORD PTR [RBX+16]
            cmp RDI,RAX
            je .L_403bf1

            call _ZdlPv@PLT
.L_403bf1:

            lea RDX,QWORD PTR [RIP+.L_40e220]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-12]
            mov QWORD PTR [RSP+992],RAX
.L_403c0b:

            call .L_402450
.L_403c10:

            lea RCX,QWORD PTR [RIP+.L_40e29d]
            mov R8D,11
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBX
.L_403c24:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_403c29:

            lea R12,QWORD PTR [RSP+816]
            lea RDX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+816],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_404ac8

            mov QWORD PTR [RSP+816],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+832],RCX
.L_403c62:

            mov RCX,QWORD PTR [RAX+8]
            mov RDI,R13
            mov QWORD PTR [RSP+824],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RDX,QWORD PTR [RSP+824]
            mov RSI,QWORD PTR [RSP+816]
.L_403c90:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_403c95:

            mov RDI,QWORD PTR [RSP+816]
            add R12,16
            cmp RDI,R12
            je .L_403cab

            call _ZdlPv@PLT
.L_403cab:

            mov RDI,QWORD PTR [RSP+992]
            add RBX,16
            cmp RDI,RBX
            je .L_403cc1

            call _ZdlPv@PLT
.L_403cc1:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            mov RSI,R13
            mov RDI,RAX
            mov RBX,RAX
.L_403cd4:

            call _ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.L_403cd9:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,RBX
.L_403cea:

            call __cxa_throw@PLT
.L_403cef:

            nop
.L_403cf0:

            cmp QWORD PTR [RSP+104],0
            je .L_403d34

            cmp DWORD PTR [RSP+856],15
            jne .L_402b00

            mov RAX,QWORD PTR [RSP+104]
            mov BYTE PTR [RSP+64],1
            test RAX,RAX
            mov QWORD PTR [RSP+72],RAX
            je .L_403d34

            mov BYTE PTR [RSP+96],0
            mov QWORD PTR [RSP+104],0
.L_403d28:

            cmp QWORD PTR [RSP+72],0
            jne .L_403773
.L_403d34:

            lea RCX,QWORD PTR [RIP+.L_40ed20]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e2f0]
            mov EDX,1787
            call __assert_fail@PLT
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_403d58:

            cmp QWORD PTR [RSP+152],0
            je .L_403d34

            cmp DWORD PTR [RSP+1032],15
            jne .L_403419

            mov RAX,QWORD PTR [RSP+152]
            mov BYTE PTR [RSP+80],1
            test RAX,RAX
            mov QWORD PTR [RSP+88],RAX
            je .L_403d34

            cmp QWORD PTR [RSP+88],0
            mov BYTE PTR [RSP+144],0
            mov QWORD PTR [RSP+152],0
            jne .L_403df2

            jmp .L_403d34
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
.L_403db0:

            mov RDX,QWORD PTR [RSP+152]
            cmp AL,2
            mov BYTE PTR [RSP+80],AL
            mov QWORD PTR [RSP+88],RDX
            jne .L_404958

            test RDX,RDX
            je .L_4048ef

            cmp QWORD PTR [RSP+88],0
            mov BYTE PTR [RSP+144],0
            mov QWORD PTR [RSP+152],0
            je .L_4048ef
.L_403df2:

            lea RAX,QWORD PTR [RSP+80]
            mov QWORD PTR [RSP+48],RAX
.L_403dfc:

            mov RDI,QWORD PTR [RSP+56]
            call .L_406c70

            mov RDI,QWORD PTR [RSP+1080]
            lea RAX,QWORD PTR [RBX+104]
            cmp RDI,RAX
            je .L_403e1c

            call _ZdlPv@PLT
.L_403e1c:

            mov RDI,QWORD PTR [RSP+1048]
            lea RAX,QWORD PTR [RBX+72]
            cmp RDI,RAX
            je .L_403e32

            call _ZdlPv@PLT
.L_403e32:

            mov RAX,QWORD PTR [RSP+1016]
            test RAX,RAX
            je .L_403e4d

            lea RDI,QWORD PTR [RBX+8]
            mov EDX,3
            mov RSI,RDI
            call RAX
.L_403e4d:

            mov RAX,QWORD PTR [RSP+464]
            test RAX,RAX
            je .L_403e69

            mov RDI,QWORD PTR [RSP+32]
            mov EDX,3
            mov RSI,RDI
            call RAX
.L_403e69:

            lea RBP,QWORD PTR [RSP+1392]
.L_403e71:

            mov RAX,QWORD PTR [RSP+432]
            test RAX,RAX
            je .L_403e8d

            mov RDI,QWORD PTR [RSP+24]
            mov EDX,3
            mov RSI,RDI
            call RAX
.L_403e8d:

            mov RAX,QWORD PTR [RSP+400]
            test RAX,RAX
            je .L_403ea9

            mov RDI,QWORD PTR [RSP+16]
            mov EDX,3
            mov RSI,RDI
            call RAX
.L_403ea9:

            lea RDI,QWORD PTR [RBP+128]
            call _ZNSt8ios_baseC2Ev@PLT

            lea RAX,QWORD PTR [RIP+_ZTVSt9basic_iosIcSt11char_traitsIcEE+16]
            mov BYTE PTR [RSP+1744],0
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+24]
            mov QWORD PTR [RSP+1736],0
            mov BYTE PTR [RSP+1745],0
            xor ESI,ESI
            mov QWORD PTR [RSP+1520],RAX
            mov RAX,QWORD PTR [R13-24]
            mov QWORD PTR [RSP+1752],0
            mov QWORD PTR [RSP+1760],0
            mov QWORD PTR [RSP+1768],0
            mov QWORD PTR [RSP+1776],0
            mov QWORD PTR [RSP+1392],R13
            mov QWORD PTR [RSP+RAX*1+1392],RCX
            mov QWORD PTR [RSP+1400],0
            mov RDI,QWORD PTR [R13-24]
            add RDI,RBP
.L_403f40:

            call _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.L_403f45:

            mov RAX,QWORD PTR [R14-24]
            mov QWORD PTR [RSP+1408],R14
            xor ESI,ESI
            lea RDI,QWORD PTR [RBP+RAX*1+16]
            mov RAX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+40]
            mov QWORD PTR [RDI],RAX
.L_403f62:

            call _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.L_403f67:

            mov RAX,QWORD PTR [R15-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+48]
            lea RDI,QWORD PTR [RBP+80]
            mov QWORD PTR [RSP+RAX*1+1392],RCX
            lea RAX,QWORD PTR [RIP+_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+24]
            mov QWORD PTR [RSP+1424],0
            mov QWORD PTR [RSP+1432],0
            mov QWORD PTR [RSP+1440],0
            mov QWORD PTR [RSP+1392],RAX
            add RAX,80
            mov QWORD PTR [RSP+1448],0
            mov QWORD PTR [RSP+1520],RAX
            sub RAX,40
            mov QWORD PTR [RSP+1456],0
            mov QWORD PTR [RSP+1408],RAX
            lea RAX,QWORD PTR [RIP+_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16]
            mov QWORD PTR [RSP+1464],0
            mov QWORD PTR [RSP+1416],RAX
            call _ZNSt6localeC1Ev@PLT

            lea RAX,QWORD PTR [RIP+_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE+16]
            lea RSI,QWORD PTR [RBP+24]
            lea RDI,QWORD PTR [RBP+128]
            mov DWORD PTR [RSP+1480],24
            mov QWORD PTR [RSP+1496],0
            mov QWORD PTR [RSP+1416],RAX
            lea RAX,QWORD PTR [RBP+112]
            mov BYTE PTR [RSP+1504],0
            mov QWORD PTR [RSP+1488],RAX
.L_404046:

            call _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.L_40404b:

            mov RDI,QWORD PTR [RSP+48]
            lea RSI,QWORD PTR [RBP+16]
            xor R8D,R8D
            xor ECX,ECX
            xor EDX,EDX
.L_40405b:

            call .L_409b30
.L_404060:

            lea RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+1000],0
            mov BYTE PTR [RSP+1008],0
            mov QWORD PTR [RSP+992],RAX
            mov RAX,QWORD PTR [RSP+1456]
            test RAX,RAX
            je .L_4048f8

            mov RDX,QWORD PTR [RSP+1440]
            mov RSI,QWORD PTR [RSP+1448]
            cmp RAX,RDX
            jbe .L_404740

            lea R12,QWORD PTR [RSP+816]
            lea RDX,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [RSP+816],RDX
            mov RDX,RAX
.L_4040c5:

            call .L_402450
.L_4040ca:

            mov RSI,QWORD PTR [RSP+816]
            lea RAX,QWORD PTR [R12+16]
            mov RDI,QWORD PTR [RSP+992]
            mov RDX,QWORD PTR [RSP+824]
            cmp RSI,RAX
            je .L_404a20

            lea RAX,QWORD PTR [RBX+16]
            mov RCX,QWORD PTR [RSP+832]
            cmp RDI,RAX
            je .L_404a98

            test RDI,RDI
            mov RAX,QWORD PTR [RSP+1008]
            mov QWORD PTR [RSP+992],RSI
            mov QWORD PTR [RSP+1000],RDX
            mov QWORD PTR [RSP+1008],RCX
            je .L_404ab0

            mov QWORD PTR [RSP+816],RDI
            mov QWORD PTR [RSP+832],RAX
.L_40413e:

            mov QWORD PTR [RSP+824],0
            mov BYTE PTR [RDI],0
            add R12,16
            mov RDI,QWORD PTR [RSP+816]
            cmp RDI,R12
            je .L_404163
.L_40415e:

            call _ZdlPv@PLT
.L_404163:

            lea RAX,QWORD PTR [RIP+_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+24]
            mov RDI,QWORD PTR [RSP+1488]
            mov QWORD PTR [RSP+1392],RAX
            add RAX,80
            mov QWORD PTR [RSP+1520],RAX
            sub RAX,40
            mov QWORD PTR [RSP+1408],RAX
            lea RAX,QWORD PTR [RIP+_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE+16]
            mov QWORD PTR [RSP+1416],RAX
            lea RAX,QWORD PTR [RBP+112]
            cmp RDI,RAX
            je .L_4041af

            call _ZdlPv@PLT
.L_4041af:

            lea RAX,QWORD PTR [RIP+_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16]
            lea RDI,QWORD PTR [RBP+80]
            mov QWORD PTR [RSP+1416],RAX
            call _ZNSt6localeD1Ev@PLT

            mov RAX,QWORD PTR [R15-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+48]
            lea RDI,QWORD PTR [RBP+128]
            mov QWORD PTR [RSP+RAX*1+1392],RCX
            mov RAX,QWORD PTR [R14-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+40]
            mov QWORD PTR [RSP+1408],R14
            mov QWORD PTR [RSP+RAX*1+1408],RCX
            mov RAX,QWORD PTR [R13-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+24]
            mov QWORD PTR [RSP+1392],R13
            mov QWORD PTR [RSP+RAX*1+1392],RCX
            lea RAX,QWORD PTR [RIP+_ZTVSt9basic_iosIcSt11char_traitsIcEE+16]
            mov QWORD PTR [RSP+1400],0
            mov QWORD PTR [RSP+1520],RAX
            call _ZNSt8ios_baseD2Ev@PLT

            mov RDX,QWORD PTR [RSP+328]
            cmp RDX,QWORD PTR [RSP+1000]
            je .L_404800
.L_40424d:

            lea RCX,QWORD PTR [RIP+.L_4102c0]
            lea RSI,QWORD PTR [RIP+.L_40ded7]
            lea RDI,QWORD PTR [RIP+.L_40dee1]
            mov EDX,50
            call __assert_fail@PLT
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_404270:

            cmp AL,3
            jne .L_404f2c

            cmp QWORD PTR [RSP+152],0
            jne .L_40340b

            jmp .L_404705
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_404290:

            mov RDI,QWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RBX+96]
.L_404299:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@PLT
.L_40429e:

            jmp .L_4038f1
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4042a8:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+1008],XMM0
            jmp .L_4028f6
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4042c0:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+336],XMM0
            jmp .L_4027ef
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4042d8:

            test RDX,RDX
            je .L_404300

            cmp RDX,1
            je .L_404af8

            call memcpy@PLT

            mov RDX,QWORD PTR [RSP+360]
            mov RDI,QWORD PTR [RSP+320]
            nop
            nop
            nop
            nop
.L_404300:

            mov QWORD PTR [RSP+328],RDX
            mov BYTE PTR [RDI+RDX*1],0
            mov RDI,QWORD PTR [RSP+352]
            jmp .L_4038cc
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404320:

            test RDX,RDX
            je .L_404348

            cmp RDX,1
            je .L_404b20

            call memcpy@PLT

            mov RDX,QWORD PTR [RSP+392]
            mov RDI,QWORD PTR [RSP+320]
            nop
            nop
            nop
            nop
.L_404348:

            mov QWORD PTR [RSP+328],RDX
            mov BYTE PTR [RDI+RDX*1],0
            mov RDI,QWORD PTR [RSP+384]
            jmp .L_403187
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404368:

            cmp QWORD PTR [RSP+136],0
            je .L_403d34

            cmp DWORD PTR [RSP+1432],15
            jne .L_403a37

            mov RAX,QWORD PTR [RSP+136]
            mov BYTE PTR [RSP+80],1
            test RAX,RAX
            mov QWORD PTR [RSP+88],RAX
            je .L_403d34

            cmp QWORD PTR [RSP+88],0
            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+136],0
            jne .L_40440a

            jmp .L_403d34
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4043c8:

            mov RDX,QWORD PTR [RSP+136]
            cmp AL,2
            mov BYTE PTR [RSP+80],AL
            mov QWORD PTR [RSP+88],RDX
            jne .L_4046d8

            test RDX,RDX
            je .L_4048ef

            cmp QWORD PTR [RSP+88],0
            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+136],0
            je .L_4048ef
.L_40440a:

            lea RAX,QWORD PTR [RSP+80]
            mov QWORD PTR [RSP+48],RAX
.L_404414:

            mov RDI,QWORD PTR [RSP+32]
            call .L_406c70

            mov RDI,QWORD PTR [RSP+1480]
            lea RAX,QWORD PTR [RBP+104]
            cmp RDI,RAX
            je .L_404434

            call _ZdlPv@PLT
.L_404434:

            mov RDI,QWORD PTR [RSP+1448]
            lea RAX,QWORD PTR [RBP+72]
            cmp RDI,RAX
            je .L_40444a

            call _ZdlPv@PLT
.L_40444a:

            mov RAX,QWORD PTR [RSP+1416]
            test RAX,RAX
            je .L_404465

            lea RDI,QWORD PTR [RBP+8]
            mov EDX,3
            mov RSI,RDI
            call RAX
.L_404465:

            mov RAX,QWORD PTR [RSP+496]
            test RAX,RAX
            je .L_403e71

            mov RDI,QWORD PTR [RSP+56]
            mov EDX,3
            mov RSI,RDI
            call RAX

            jmp .L_403e71
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404490:

            cmp AL,3
            jne .L_405246

            cmp QWORD PTR [RSP+136],0
            jne .L_403a29

            jmp .L_404705
.L_4044ac:

            mov RBP,RAX
.L_4044af:

            mov RDI,QWORD PTR [RSP+288]
            add R14,16
            cmp RDI,R14
            je .L_4044cf

            mov QWORD PTR [RSP+8],RDX
            call _ZdlPv@PLT

            mov RDX,QWORD PTR [RSP+8]
.L_4044cf:

            mov RBX,RBP
            mov RBP,RDX
.L_4044d5:

            mov RDI,R15
            call .L_406c70
.L_4044dd:

            mov RDI,R12
            call .L_4055b0
.L_4044e5:

            mov RAX,QWORD PTR [RSP+176]
            test RAX,RAX
            je .L_4044ff

            mov EDX,3
            mov RSI,R13
            mov RDI,R13
            call RAX
.L_4044ff:

            mov RAX,QWORD PTR [RSP+624]
            test RAX,RAX
            je .L_40451e

            lea RDI,QWORD PTR [RSP+608]
            mov EDX,3
            mov RSI,RDI
            call RAX
.L_40451e:

            sub RBP,1
            mov RDI,RBX
            jne .L_404be5

            call __cxa_begin_catch@PLT

            call __cxa_end_catch@PLT

            nop
            nop
            nop
.L_404538:

            xor EAX,EAX
            mov RBX,QWORD PTR [RSP+1784]
            xor RBX,QWORD PTR FS:[40]
            jne .L_404be0

            add RSP,1800
.L_404558:

            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_404563:

            mov RBP,RAX
.L_404566:

            mov RDI,QWORD PTR [RSP+224]
            add R15,16
            cmp RDI,R15
            je .L_404586

            mov QWORD PTR [RSP+8],RDX
            call _ZdlPv@PLT

            mov RDX,QWORD PTR [RSP+8]
.L_404586:

            mov RBX,RBP
            mov RBP,RDX
.L_40458c:

            mov RDI,R14
            call .L_406c70
.L_404594:

            mov RDI,R12
            call .L_4055b0
.L_40459c:

            mov RAX,QWORD PTR [RSP+208]
            test RAX,RAX
            je .L_4044ff

            mov EDX,3
            mov RSI,R13
            mov RDI,R13
            call RAX

            jmp .L_4044ff
.L_4045bf:

            mov R12,RAX
            mov R14,RDX
.L_4045c5:

            mov RDI,QWORD PTR [RSP+576]
            add R13,16
            cmp RDI,R13
            je .L_4045db

            call _ZdlPv@PLT
.L_4045db:

            mov RDI,QWORD PTR [RSP+56]
            call .L_406c70
.L_4045e5:

            mov RDI,RBX
            mov RBP,R14
            mov RBX,R12
            call .L_4055b0
.L_4045f3:

            mov RAX,QWORD PTR [RSP+464]
            test RAX,RAX
            je .L_40460f

            mov RDI,QWORD PTR [RSP+32]
            mov EDX,3
            mov RSI,RDI
            call RAX
.L_40460f:

            mov RAX,QWORD PTR [RSP+432]
            test RAX,RAX
            je .L_40462b

            mov RDI,QWORD PTR [RSP+24]
            mov EDX,3
            mov RSI,RDI
            call RAX
.L_40462b:

            mov RAX,QWORD PTR [RSP+400]
            test RAX,RAX
            je .L_404647

            mov RDI,QWORD PTR [RSP+16]
            mov EDX,3
            mov RSI,RDI
            call RAX
.L_404647:

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+320]
            add RAX,16
            cmp RDI,RAX
            je .L_404662

            call _ZdlPv@PLT
.L_404662:

            cmp RBP,1
            je .L_404b7d

            lea RDI,QWORD PTR [RSP+64]
            call .L_406c70

            jmp .L_40451e
.L_40467b:

            mov R12,RAX
            mov R14,RDX
.L_404681:

            mov RDI,QWORD PTR [RSP+512]
            add R13,16
            cmp RDI,R13
            je .L_404697

            call _ZdlPv@PLT
.L_404697:

            mov RBX,R12
.L_40469a:

            mov RDI,QWORD PTR [RSP+32]
            call .L_406c70
.L_4046a4:

            mov RDI,RBP
            mov RBP,R14
            call .L_4055b0
.L_4046af:

            mov RAX,QWORD PTR [RSP+496]
            test RAX,RAX
            je .L_40460f

            mov RDI,QWORD PTR [RSP+56]
            mov EDX,3
            mov RSI,RDI
            call RAX

            jmp .L_40460f
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_4046d8:

            cmp AL,3
            jne .L_405076

            test RDX,RDX
            je .L_404705

            cmp QWORD PTR [RSP+88],0
            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+136],0
            jne .L_40440a
.L_404705:

            lea RCX,QWORD PTR [RIP+.L_40ed20]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e328]
            mov EDX,1789
            call __assert_fail@PLT
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_404728:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+832],XMM0
            jmp .L_403aed
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404740:

            lea R12,QWORD PTR [RSP+640]
            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [RSP+640],RAX
.L_404758:

            call .L_402450

            mov RSI,QWORD PTR [RSP+640]
            lea RAX,QWORD PTR [R12+16]
            mov RDI,QWORD PTR [RSP+992]
            mov RDX,QWORD PTR [RSP+648]
            cmp RSI,RAX
            je .L_4049d8

            lea RAX,QWORD PTR [RBX+16]
            mov RCX,QWORD PTR [RSP+656]
            cmp RDI,RAX
            je .L_404a68

            test RDI,RDI
            mov RAX,QWORD PTR [RSP+1008]
            mov QWORD PTR [RSP+992],RSI
            mov QWORD PTR [RSP+1000],RDX
            mov QWORD PTR [RSP+1008],RCX
            je .L_404a80

            mov QWORD PTR [RSP+640],RDI
            mov QWORD PTR [RSP+656],RAX
.L_4047d1:

            mov QWORD PTR [RSP+648],0
            mov BYTE PTR [RDI],0
            add R12,16
            mov RDI,QWORD PTR [RSP+640]
            cmp RDI,R12
            jne .L_40415e

            jmp .L_404163
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404800:

            test RDX,RDX
            mov RBP,QWORD PTR [RSP+992]
            je .L_404825

            mov RDI,QWORD PTR [RSP+320]
            mov RSI,RBP
            call memcmp@PLT

            test EAX,EAX
            jne .L_40424d
.L_404825:

            add RBX,16
            cmp RBP,RBX
            je .L_404836

            mov RDI,RBP
            call _ZdlPv@PLT
.L_404836:

            mov RDI,QWORD PTR [RSP+48]
            call .L_406c70

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+320]
            add RAX,16
            cmp RDI,RAX
            je .L_40485b

            call _ZdlPv@PLT
.L_40485b:

            mov RDI,QWORD PTR [RSP+40]
            call .L_406c70

            jmp .L_404538
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404870:

            mov QWORD PTR [RSP+320],RSI
            mov QWORD PTR [RSP+328],RDX
            mov QWORD PTR [RSP+336],RAX
.L_404888:

            lea RDI,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+352],RDI
            jmp .L_4038cc
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4048a0:

            mov QWORD PTR [RSP+320],RSI
            mov QWORD PTR [RSP+328],RDX
            mov QWORD PTR [RSP+336],RAX
.L_4048b8:

            mov RAX,QWORD PTR [RSP+16]
            lea RDI,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+384],RDI
            jmp .L_403187
          .byte 0x66
          .byte 0x90
.L_4048d0:

            test RDX,RDX
            je .L_4048ef

            mov BYTE PTR [RSP+96],0
            mov QWORD PTR [RSP+104],0
.L_4048e3:

            cmp QWORD PTR [RSP+72],0
            jne .L_403773
.L_4048ef:

            call .L_402230

            nop
            nop
            nop
            nop
.L_4048f8:

            lea RSI,QWORD PTR [RBP+96]
            mov RDI,RBX
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@PLT
.L_404904:

            jmp .L_404163
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404910:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+1008],XMM0
            jmp .L_402d3e
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404928:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+272],XMM0
            jmp .L_402c3c
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404940:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+1008],XMM0
            jmp .L_402bbd
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404958:

            cmp AL,3
            jne .L_404ca5

            test RDX,RDX
            je .L_404705

            cmp QWORD PTR [RSP+88],0
            mov BYTE PTR [RSP+144],0
            mov QWORD PTR [RSP+152],0
            jne .L_403df2

            jmp .L_404705
          .byte 0x66
          .byte 0x90
.L_404990:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+624],XMM0
            jmp .L_403556
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4049a8:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+832],XMM0
            jmp .L_4034d7
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4049c0:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+832],XMM0
            jmp .L_40365b
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4049d8:

            test RDX,RDX
            je .L_404a00

            cmp RDX,1
            je .L_404b3f

            call memcpy@PLT

            mov RDX,QWORD PTR [RSP+648]
            mov RDI,QWORD PTR [RSP+992]
            nop
            nop
            nop
            nop
.L_404a00:

            mov QWORD PTR [RSP+1000],RDX
            mov BYTE PTR [RDI+RDX*1],0
            mov RDI,QWORD PTR [RSP+640]
            jmp .L_4047d1
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404a20:

            test RDX,RDX
            je .L_404a48

            cmp RDX,1
            je .L_404b5e

            call memcpy@PLT

            mov RDX,QWORD PTR [RSP+824]
            mov RDI,QWORD PTR [RSP+992]
            nop
            nop
            nop
            nop
.L_404a48:

            mov QWORD PTR [RSP+1000],RDX
            mov BYTE PTR [RDI+RDX*1],0
            mov RDI,QWORD PTR [RSP+816]
            jmp .L_40413e
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404a68:

            mov QWORD PTR [RSP+992],RSI
            mov QWORD PTR [RSP+1000],RDX
            mov QWORD PTR [RSP+1008],RCX
.L_404a80:

            lea RDI,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+640],RDI
            jmp .L_4047d1
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404a98:

            mov QWORD PTR [RSP+992],RSI
            mov QWORD PTR [RSP+1000],RDX
            mov QWORD PTR [RSP+1008],RCX
.L_404ab0:

            lea RDI,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+816],RDI
            jmp .L_40413e
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404ac8:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+832],XMM0
            jmp .L_403c62
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404ae0:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+560],XMM0
            jmp .L_403b6d
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404af8:

            movzx EAX,BYTE PTR [RSP+368]
            mov BYTE PTR [RDI],AL
            mov RDX,QWORD PTR [RSP+360]
            mov RDI,QWORD PTR [RSP+320]
            jmp .L_404300
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404b20:

            movzx EAX,BYTE PTR [RSP+400]
            mov BYTE PTR [RDI],AL
            mov RDX,QWORD PTR [RSP+392]
            mov RDI,QWORD PTR [RSP+320]
            jmp .L_404348
.L_404b3f:

            movzx EAX,BYTE PTR [RSP+656]
            mov BYTE PTR [RDI],AL
            mov RDX,QWORD PTR [RSP+648]
            mov RDI,QWORD PTR [RSP+992]
            jmp .L_404a00
.L_404b5e:

            movzx EAX,BYTE PTR [RSP+832]
            mov BYTE PTR [RDI],AL
            mov RDX,QWORD PTR [RSP+824]
            mov RDI,QWORD PTR [RSP+992]
            jmp .L_404a48
.L_404b7d:

            mov RDI,RBX
            call __cxa_begin_catch@PLT

            lea RCX,QWORD PTR [RIP+.L_4102c0]
            lea RSI,QWORD PTR [RIP+.L_40ded7]
            lea RDI,QWORD PTR [RIP+.L_40e4e8]
            mov EDX,55
            call __assert_fail@PLT
.L_404ba4:

            mov RDI,QWORD PTR [RSP+992]
            add RBX,16
            mov R12,RAX
            mov R13,RDX
            cmp RDI,RBX
            je .L_404bc0

            call _ZdlPv@PLT
.L_404bc0:

            mov RBX,R12
            mov R12,R13
.L_404bc6:

            mov RDI,RBP
            call _ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
.L_404bce:

            mov RDI,QWORD PTR [RSP+48]
            mov RBP,R12
            call .L_406c70

            jmp .L_404647
.L_404be0:

            call __stack_chk_fail@PLT
.L_404be5:

            call _Unwind_Resume@PLT
.L_404bea:

            mov RDI,RBP
            mov R12,RAX
            mov R14,RDX
            call __cxa_free_exception@PLT

            jmp .L_4045c5
.L_404bfd:

            mov RDI,QWORD PTR [RSP+816]
            add R12,16
            mov R14,RAX
            mov R15,RDX
            cmp RDI,R12
            je .L_404c19

            call _ZdlPv@PLT
.L_404c19:

            mov R12,R14
            mov R14,R15
.L_404c1f:

            mov RDI,QWORD PTR [RSP+1392]
            add RBP,16
            cmp RDI,RBP
            je .L_4045c5

            call _ZdlPv@PLT

            jmp .L_4045c5
.L_404c3e:

            mov RDI,QWORD PTR [RSP+608]
            add RBP,16
            mov R14,RAX
            mov R15,RDX
            cmp RDI,RBP
            je .L_404c5a

            call _ZdlPv@PLT
.L_404c5a:

            test R12B,R12B
            mov RBP,R15
            je .L_404c9a

            lea R12,QWORD PTR [RSP+816]
.L_404c6a:

            mov RDI,QWORD PTR [RSP+816]
            add R12,16
            cmp RDI,R12
            je .L_404c80

            call _ZdlPv@PLT
.L_404c80:

            mov RDI,QWORD PTR [RSP+1392]
            lea RAX,QWORD PTR [RSP+1408]
            cmp RDI,RAX
            je .L_404c9a

            call _ZdlPv@PLT
.L_404c9a:

            mov R12,R14
            mov R14,RBP
            jmp .L_4045c5
.L_404ca5:

            lea RAX,QWORD PTR [RSP+80]
            mov BYTE PTR [RSP+144],0
            mov QWORD PTR [RSP+152],0
            mov QWORD PTR [RSP+48],RAX
            jmp .L_403dfc
.L_404cc8:

            mov R12,RAX
            mov R14,RDX
.L_404cce:

            mov RDI,QWORD PTR [RSP+992]
            add RBX,16
            cmp RDI,RBX
            je .L_404681

            call _ZdlPv@PLT

            jmp .L_404681
.L_404ced:

            mov R15,RDX
.L_404cf0:

            mov RDI,QWORD PTR [RSP+816]
            add R12,16
            cmp RDI,R12
            je .L_404d10

            mov QWORD PTR [RSP+40],RAX
            call _ZdlPv@PLT

            mov RAX,QWORD PTR [RSP+40]
.L_404d10:

            mov RDI,QWORD PTR [RSP+992]
            add RBX,16
            cmp RDI,RBX
            je .L_404d30

            mov QWORD PTR [RSP+40],RAX
            call _ZdlPv@PLT

            mov RAX,QWORD PTR [RSP+40]
.L_404d30:

            mov R12,RAX
            mov R14,R15
            jmp .L_404681
.L_404d3b:

            mov BYTE PTR [RSP+112],0
            mov QWORD PTR [RSP+120],0
            jmp .L_402e29
.L_404d4e:

            mov R12,RAX
            mov R14,RDX
            jmp .L_404c1f
.L_404d59:

            mov RDI,QWORD PTR [RSP+816]
            add R12,16
            mov R14,RAX
            mov R15,RDX
            cmp RDI,R12
            je .L_404d75

            call _ZdlPv@PLT
.L_404d75:

            mov R12,R14
            mov R14,R15
            jmp .L_404cce
.L_404d80:

            mov RDI,QWORD PTR [RSP+544]
            add R12,16
            mov R15,RDX
            cmp RDI,R12
            je .L_404da3

            mov QWORD PTR [RSP+40],RAX
            call _ZdlPv@PLT

            mov RAX,QWORD PTR [RSP+40]
.L_404da3:

            test R14B,R14B
            lea R12,QWORD PTR [RSP+816]
            jne .L_404cf0

            jmp .L_404d30
.L_404db9:

            mov RDI,RBP
            mov QWORD PTR [RSP+8],RAX
            mov RBX,RDX
            call __cxa_free_exception@PLT

            mov RAX,QWORD PTR [RSP+8]
            mov RDX,RBX
            mov RBP,RAX
            jmp .L_404566
.L_404dd9:

            mov RDI,QWORD PTR [RSP+992]
            add RBX,16
            cmp RDI,RBX
            je .L_404e03

            mov QWORD PTR [RSP+16],RDX
            mov QWORD PTR [RSP+8],RAX
            call _ZdlPv@PLT

            mov RDX,QWORD PTR [RSP+16]
            mov RAX,QWORD PTR [RSP+8]
.L_404e03:

            mov RDI,QWORD PTR [RSP+1392]
            add RBP,16
            mov RBX,RAX
            cmp RDI,RBP
            je .L_404e26

            mov QWORD PTR [RSP+8],RDX
            call _ZdlPv@PLT

            mov RDX,QWORD PTR [RSP+8]
.L_404e26:

            mov RBP,RBX
            jmp .L_404566
.L_404e2e:

            mov RBX,RAX
            mov RBP,RDX
            jmp .L_4044ff
.L_404e39:

            mov BYTE PTR [RSP+96],0
            mov QWORD PTR [RSP+104],0
            jmp .L_403773
.L_404e4c:

            cmp DWORD PTR [RSP+680],15
            jne .L_4026aa

            cmp AL,8
            jne .L_402df0

            lea RDI,QWORD PTR [RSP+72]
            xor ESI,ESI
            mov BYTE PTR [RSP+64],0
            call .L_4056f0

            movzx EAX,BYTE PTR [RSP+64]
            cmp AL,1
            je .L_4029c8

            cmp AL,2
            je .L_402e1d

            cmp AL,3
            je .L_40380f

            jmp .L_402e29
.L_404e95:

            lea RCX,QWORD PTR [RIP+.L_40ffe0]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e47d]
            mov EDX,9580
            call __assert_fail@PLT
.L_404eb4:

            mov RBX,RAX
            mov RBP,RDX
            jmp .L_4044e5
.L_404ebf:

            mov RBX,RAX
            mov RBP,RDX
            jmp .L_4044d5
.L_404eca:

            lea RAX,QWORD PTR [RSP+320]
            mov RDI,RAX
            mov QWORD PTR [RSP+8],RAX
.L_404eda:

            call .L_406120
.L_404edf:

            xor EBX,EBX
            jmp .L_40280f
.L_404ee6:

            jmp .L_4044ac
.L_404eeb:

            mov RBP,RAX
.L_404eee:

            mov RDI,QWORD PTR [RSP+1392]
            lea RAX,QWORD PTR [RSP+1408]
            cmp RDI,RAX
            je .L_4044af

            mov QWORD PTR [RSP+8],RDX
            call _ZdlPv@PLT

            mov RDX,QWORD PTR [RSP+8]
            jmp .L_4044af
.L_404f1b:

            jmp .L_4044ac
.L_404f20:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
.L_404f27:

            call _ZSt20__throw_length_errorPKc@PLT
.L_404f2c:

            cmp DWORD PTR [RSP+1032],15
            jne .L_403419

            cmp AL,8
            jne .L_403db0

            lea RAX,QWORD PTR [RSP+80]
            lea RDI,QWORD PTR [RSP+88]
            xor ESI,ESI
            mov BYTE PTR [RSP+80],0
            mov QWORD PTR [RSP+48],RAX
            call .L_4056f0

            movzx EAX,BYTE PTR [RSP+80]
            cmp AL,1
            je .L_404f80

            cmp AL,2
            jne .L_404f98

            cmp QWORD PTR [RSP+88],0
            jne .L_403dfc

            jmp .L_4048ef
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_404f80:

            cmp QWORD PTR [RSP+88],0
            jne .L_403dfc

            jmp .L_403d34
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_404f98:

            cmp AL,3
            jne .L_403dfc

            cmp QWORD PTR [RSP+88],0
            jne .L_403dfc

            jmp .L_404705
.L_404fb1:

            mov RBX,RAX
            mov R14,RDX
            jmp .L_4046a4
.L_404fbc:

            mov RBX,RAX
            mov RBP,RDX
            jmp .L_4046af
.L_404fc7:

            mov R15,RDX
            jmp .L_404d10
.L_404fcf:

            mov R15,RDX
            jmp .L_404d30
.L_404fd7:

            lea R12,QWORD PTR [RSP+544]
            mov RDI,R12
.L_404fe2:

            call .L_406120
.L_404fe7:

            xor R14D,R14D
            jmp .L_403b8e
.L_404fef:

            mov RBX,RAX
            mov R14,RDX
            jmp .L_40469a
.L_404ffa:

            jmp .L_404fcf
.L_404ffc:

            jmp .L_404563
.L_405001:

            lea RBP,QWORD PTR [RSP+256]
            mov RDI,RBP
.L_40500c:

            call .L_406120
.L_405011:

            xor EBX,EBX
            jmp .L_402c5c
.L_405018:

            mov RBP,RAX
.L_40501b:

            mov RDI,QWORD PTR [RSP+1392]
            lea RAX,QWORD PTR [RSP+1408]
            cmp RDI,RAX
            je .L_404566

            mov QWORD PTR [RSP+8],RDX
            call _ZdlPv@PLT

            mov RDX,QWORD PTR [RSP+8]
            jmp .L_404566
.L_405048:

            mov RDI,RBX
            mov R12,RAX
            mov R14,RDX
            call __cxa_free_exception@PLT

            jmp .L_404681
.L_40505b:

            jmp .L_404563
.L_405060:

            mov RBX,RAX
            mov RBP,RDX
            jmp .L_4045f3
.L_40506b:

            mov RBX,RAX
            mov RBP,RDX
            jmp .L_40460f
.L_405076:

            lea RAX,QWORD PTR [RSP+80]
            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+136],0
            mov QWORD PTR [RSP+48],RAX
            jmp .L_404414
.L_405099:

            mov RBX,RAX
            mov RBP,RDX
            jmp .L_4044dd
.L_4050a4:

            mov RBP,RAX
.L_4050a7:

            mov RDI,QWORD PTR [RSP+992]
            add RBX,16
            cmp RDI,RBX
            je .L_404eee

            mov QWORD PTR [RSP+8],RDX
            call _ZdlPv@PLT

            mov RDX,QWORD PTR [RSP+8]
            jmp .L_404eee
.L_4050d0:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
.L_4050d7:

            call _ZSt20__throw_length_errorPKc@PLT
.L_4050dc:

            mov RBX,RAX
            mov RBP,RDX
            jmp .L_40459c
.L_4050e7:

            mov RBX,RAX
            mov RBP,RDX
            jmp .L_404594
.L_4050f2:

            mov RBX,RAX
            mov RBP,RDX
            jmp .L_40462b
.L_4050fd:

            mov RBP,RAX
            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+320]
            mov R12,RDX
            add RAX,16
            cmp RDI,RAX
            je .L_40511e

            call _ZdlPv@PLT
.L_40511e:

            mov RDI,RBX
            mov RBX,RBP
            mov RBP,R12
            call _ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT

            jmp .L_404662
.L_405131:

            mov RBP,RAX
            mov R12,RDX
            jmp .L_40511e
.L_405139:

            lea RDI,QWORD PTR [RBX+24]
            mov RBP,RAX
            mov R12,RDX
            call _ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED1Ev

            mov RAX,QWORD PTR [R15-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+48]
            mov QWORD PTR [RSP+RAX*1+992],RCX
            mov RAX,QWORD PTR [R14-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+40]
            mov QWORD PTR [RSP+1008],R14
            mov QWORD PTR [RSP+RAX*1+1008],RCX
            mov RAX,QWORD PTR [R13-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+24]
            mov QWORD PTR [RSP+992],R13
            mov QWORD PTR [RSP+RAX*1+992],RCX
            mov QWORD PTR [RSP+1000],0
.L_40519d:

            lea RAX,QWORD PTR [RIP+_ZTVSt9basic_iosIcSt11char_traitsIcEE+16]
            lea RDI,QWORD PTR [RBX+128]
            mov RBX,RBP
            mov RBP,R12
            mov QWORD PTR [RSP+1120],RAX
            call _ZNSt8ios_baseD2Ev@PLT

            jmp .L_404662
.L_4051c3:

            mov RBX,RAX
            mov R12,RDX
.L_4051c9:

            lea RAX,QWORD PTR [RIP+_ZTVSt9basic_iosIcSt11char_traitsIcEE+16]
            lea RDI,QWORD PTR [RBP+128]
            mov QWORD PTR [RSP+1520],RAX
            call _ZNSt8ios_baseD2Ev@PLT

            jmp .L_404bce
.L_4051e9:

            mov R14,RAX
            mov RBP,RDX
            jmp .L_404c80
.L_4051f4:

            mov R14,RAX
            mov RBP,RDX
            jmp .L_404c6a
.L_4051ff:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
.L_405206:

            call _ZSt20__throw_length_errorPKc@PLT
.L_40520b:

            mov R14,RAX
            mov RBP,RDX
            jmp .L_404c9a
.L_405216:

            lea RBP,QWORD PTR [RSP+608]
            mov RDI,RBP
.L_405221:

            call .L_406120
.L_405226:

            xor R12D,R12D
            jmp .L_403577
.L_40522e:

            mov R12,RAX
            mov R14,RDX
            jmp .L_4045db
.L_405239:

            mov R12,RAX
            mov R14,RDX
            jmp .L_4045e5
.L_405244:

            jmp .L_40520b
.L_405246:

            cmp DWORD PTR [RSP+1432],15
            jne .L_403a37

            cmp AL,8
            jne .L_4043c8

            lea RAX,QWORD PTR [RSP+80]
            lea RDI,QWORD PTR [RSP+88]
            xor ESI,ESI
            mov BYTE PTR [RSP+80],0
            mov QWORD PTR [RSP+48],RAX
            call .L_4056f0

            movzx EAX,BYTE PTR [RSP+80]
            cmp AL,1
            je .L_405298

            cmp AL,2
            jne .L_4052b0

            cmp QWORD PTR [RSP+88],0
            jne .L_404414

            jmp .L_4048ef
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_405298:

            cmp QWORD PTR [RSP+88],0
            jne .L_404414

            jmp .L_403d34
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4052b0:

            cmp AL,3
            jne .L_404414

            cmp QWORD PTR [RSP+88],0
            jne .L_404414

            jmp .L_404705
.L_4052c9:

            mov RBX,RAX
            mov R12,RDX
            jmp .L_404bc6
.L_4052d4:

            lea RDI,QWORD PTR [RBP+24]
            mov RBX,RAX
            mov R12,RDX
            call _ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED1Ev

            mov RAX,QWORD PTR [R15-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+48]
            mov QWORD PTR [RSP+RAX*1+1392],RCX
            mov RAX,QWORD PTR [R14-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+40]
            mov QWORD PTR [RSP+1408],R14
            mov QWORD PTR [RSP+RAX*1+1408],RCX
            mov RAX,QWORD PTR [R13-24]
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+24]
            mov QWORD PTR [RSP+1392],R13
            mov QWORD PTR [RSP+RAX*1+1392],RCX
            mov QWORD PTR [RSP+1400],0
            jmp .L_4051c9
.L_40533d:

            mov RBX,RAX
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+24]
            mov RAX,QWORD PTR [R13-24]
            mov QWORD PTR [RSP+1392],R13
            mov R12,RDX
            mov QWORD PTR [RSP+RAX*1+1392],RCX
            mov QWORD PTR [RSP+1400],0
            jmp .L_4051c9
.L_40536f:

            mov RBX,RAX
            mov RBP,RDX
            jmp .L_40458c
.L_40537a:

            mov RDI,RBP
            mov QWORD PTR [RSP+8],RAX
            mov RBX,RDX
            call __cxa_free_exception@PLT

            mov RAX,QWORD PTR [RSP+8]
            mov RDX,RBX
            mov RBP,RAX
            jmp .L_4044af
.L_40539a:

            mov RDI,QWORD PTR [RSP+992]
            add RBX,16
            cmp RDI,RBX
            je .L_4053c4

            mov QWORD PTR [RSP+16],RDX
            mov QWORD PTR [RSP+8],RAX
            call _ZdlPv@PLT

            mov RDX,QWORD PTR [RSP+16]
            mov RAX,QWORD PTR [RSP+8]
.L_4053c4:

            mov RDI,QWORD PTR [RSP+1392]
            add RBP,16
            mov RBX,RAX
            cmp RDI,RBP
            je .L_4053e7

            mov QWORD PTR [RSP+8],RDX
            call _ZdlPv@PLT

            mov RDX,QWORD PTR [RSP+8]
.L_4053e7:

            mov RBP,RBX
            jmp .L_4044af
.L_4053ef:

            jmp .L_4053c4
.L_4053f1:

            jmp .L_404e03
.L_4053f6:

            mov RDI,QWORD PTR [RSP+256]
            add RBP,16
            cmp RDI,RBP
            je .L_405420

            mov QWORD PTR [RSP+16],RDX
            mov QWORD PTR [RSP+8],RAX
            call _ZdlPv@PLT

            mov RDX,QWORD PTR [RSP+16]
            mov RAX,QWORD PTR [RSP+8]
.L_405420:

            test BL,BL
            mov RBP,RAX
            je .L_404566

            lea RBX,QWORD PTR [RSP+992]
.L_405433:

            mov RDI,QWORD PTR [RSP+992]
            add RBX,16
            cmp RDI,RBX
            je .L_40501b

            mov QWORD PTR [RSP+8],RDX
            call _ZdlPv@PLT

            mov RDX,QWORD PTR [RSP+8]
            jmp .L_40501b
.L_40545c:

            mov RBP,RAX
            jmp .L_405433
.L_405461:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
.L_405468:

            call _ZSt20__throw_length_errorPKc@PLT
.L_40546d:

            mov RBP,RAX
            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+320]
            add RAX,16
            cmp RDI,RAX
            je .L_405495

            mov QWORD PTR [RSP+8],RDX
            call _ZdlPv@PLT

            mov RDX,QWORD PTR [RSP+8]
.L_405495:

            test BL,BL
            je .L_4044af

            lea RBX,QWORD PTR [RSP+992]
            jmp .L_4050a7
.L_4054aa:

            cmp DWORD PTR [RSP+856],15
            jne .L_402b00

            cmp AL,8
            jne .L_403732

            lea RDI,QWORD PTR [RSP+72]
            xor ESI,ESI
            mov BYTE PTR [RSP+64],0
            call .L_4056f0

            movzx EAX,BYTE PTR [RSP+64]
            cmp AL,1
            je .L_403d28

            cmp AL,2
            je .L_4048e3

            cmp AL,3
            je .L_403767

            jmp .L_403773
.L_4054f3:

            mov RBP,RAX
            mov RCX,QWORD PTR [RIP+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+24]
            mov RAX,QWORD PTR [R13-24]
            mov QWORD PTR [RSP+992],R13
            mov R12,RDX
            mov QWORD PTR [RSP+RAX*1+992],RCX
            mov QWORD PTR [RSP+1000],0
            jmp .L_40519d
.L_405525:

            mov RBP,RAX
            mov R12,RDX
            jmp .L_40519d
.L_405530:

            push R12
            push RBP
            mov R12,RDX
            push RBX
.L_405537:

            mov RBP,RSI
            mov RBX,RDI
            mov RDI,RSI
            call strlen@PLT

            xor EDX,EDX
            mov RCX,RBP
            xor ESI,ESI
            mov R8,RAX
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT

            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_405598

            mov QWORD PTR [RBX],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RBX+16],RCX
.L_405575:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RBX+8],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RAX,RBX
            pop RBX
.L_405590:

            pop RBP
            pop R12
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_405598:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movups XMMWORD PTR [RBX+16],XMM0
            jmp .L_405575
.L_4055a3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4055b0:

            push RBX
            mov RBX,RDI
            mov RDI,QWORD PTR [RDI+88]
            lea RAX,QWORD PTR [RBX+104]
            cmp RDI,RAX
            je .L_4055c6

            call _ZdlPv@PLT
.L_4055c6:

            mov RDI,QWORD PTR [RBX+56]
            lea RAX,QWORD PTR [RBX+72]
            cmp RDI,RAX
            je .L_4055d8

            call _ZdlPv@PLT
.L_4055d8:

            mov RAX,QWORD PTR [RBX+24]
            test RAX,RAX
            je .L_4055f0

            lea RDI,QWORD PTR [RBX+8]
            mov EDX,3
            pop RBX
            mov RSI,RDI
            jmp RAX
.L_4055f0:

            pop RBX
            ret 
.L_4055f2:

            nop
            nop
            nop
            nop
            nop
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
.weak _ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev
.type _ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev, @function
#-----------------------------------
_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev:
#-----------------------------------
.align 16
.weak _ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED1Ev
.type _ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED1Ev, @function
#-----------------------------------
_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED1Ev:

            lea RAX,QWORD PTR [RIP+_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE+16]
            push RBX
            mov RBX,RDI
            mov QWORD PTR [RDI],RAX
            mov RDI,QWORD PTR [RDI+72]
            lea RAX,QWORD PTR [RBX+88]
            cmp RDI,RAX
            je .L_405620

            call _ZdlPv@PLT
.L_405620:

            lea RAX,QWORD PTR [RIP+_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16]
            lea RDI,QWORD PTR [RBX+56]
            mov QWORD PTR [RBX],RAX
            pop RBX
            jmp _ZNSt6localeD1Ev@PLT
.L_405634:

            nop
            nop
            nop
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
.weak _ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED0Ev
.type _ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED0Ev, @function
#-----------------------------------
_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED0Ev:

            lea RAX,QWORD PTR [RIP+_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE+16]
            push RBX
            mov RBX,RDI
            mov QWORD PTR [RDI],RAX
            mov RDI,QWORD PTR [RDI+72]
            lea RAX,QWORD PTR [RBX+88]
            cmp RDI,RAX
            je .L_405660

            call _ZdlPv@PLT
.L_405660:

            lea RAX,QWORD PTR [RIP+_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16]
            lea RDI,QWORD PTR [RBX+56]
            mov QWORD PTR [RBX],RAX
            call _ZNSt6localeD1Ev@PLT

            mov RDI,RBX
            pop RBX
            jmp _ZdlPv@PLT
.L_40567c:

            nop
            nop
            nop
            nop
.L_405680:

            mov QWORD PTR [RDI+16],0
            mov RAX,QWORD PTR [RSI+16]
            test RAX,RAX
            je .L_4056c0

            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            mov EDX,2
            sub RSP,8
.L_4056a2:

            call RAX
.L_4056a4:

            mov RAX,QWORD PTR [RBP+24]
            mov QWORD PTR [RBX+24],RAX
            mov RAX,QWORD PTR [RBP+16]
            mov QWORD PTR [RBX+16],RAX
            add RSP,8
            pop RBX
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4056c0:

            ret 
.L_4056c2:

            mov RBP,RAX
            mov RAX,QWORD PTR [RBX+16]
            test RAX,RAX
            je .L_4056db

            mov EDX,3
            mov RSI,RBX
            mov RDI,RBX
            call RAX
.L_4056db:

            mov RDI,RBP
.L_4056de:

            call _Unwind_Resume@PLT
.L_4056e3:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4056f0:

            cmp SIL,7
            ja .L_405800

            push RBP
            lea RDX,QWORD PTR [RIP+.L_40df74]
            push RBX
            movzx EAX,SIL
            mov RBX,RDI
            sub RSP,8
.L_40570e:

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
.L_405720:

            mov EDI,32
.L_405725:

            call _Znwm@PLT
.L_40572a:

            lea RDX,QWORD PTR [RIP+.L_40dfc4]
            mov RBP,RAX
            lea RAX,QWORD PTR [RAX+16]
            mov RDI,RBP
            mov QWORD PTR [RBP],RAX
            mov RSI,RDX
.L_405742:

            call .L_402450
.L_405747:

            mov QWORD PTR [RBX],RBP
.L_40574a:

            add RSP,8
.L_40574e:

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
.L_405758:

            mov QWORD PTR [RDI],0
            add RSP,8
            pop RBX
            pop RBP
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
.L_405770:

            mov BYTE PTR [RDI],0
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
.L_405780:

            mov EDI,48
.L_405785:

            call _Znwm@PLT

            lea RDX,QWORD PTR [RAX+8]
            mov DWORD PTR [RAX+8],0
            mov QWORD PTR [RAX+16],0
            mov QWORD PTR [RAX+40],0
            mov QWORD PTR [RAX+24],RDX
            mov QWORD PTR [RAX+32],RDX
            mov QWORD PTR [RBX],RAX
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
.L_4057c0:

            mov EDI,24
            call _Znwm@PLT

            mov QWORD PTR [RAX],0
            mov QWORD PTR [RAX+8],0
            mov QWORD PTR [RAX+16],0
            mov QWORD PTR [RBX],RAX
            add RSP,8
            pop RBX
            pop RBP
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4057f0:

            mov QWORD PTR [RDI],0
            add RSP,8
            pop RBX
            pop RBP
            ret 
          .byte 0x66
          .byte 0x90
.L_405800:

            ret 
.L_405802:

            mov RBX,RAX
            mov RDI,RBP
            call _ZdlPv@PLT

            mov RDI,RBX
            call _Unwind_Resume@PLT
.L_405815:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405820:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,136
.L_405831:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+120],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RSI+96]
            sub RAX,QWORD PTR [RSI+80]
            mov QWORD PTR [RSP+16],RSI
            cmp RAX,1
            jle .L_406023

            mov RBX,QWORD PTR [RSP+16]
            lea RAX,QWORD PTR [RDI+16]
            mov QWORD PTR [RDI+8],0
            mov BYTE PTR [RDI+16],0
            mov R12,RDI
            mov QWORD PTR [RDI],RAX
            mov QWORD PTR [RSP+8],RAX
            mov RSI,QWORD PTR [RBX+96]
            sub RSI,QWORD PTR [RBX+80]
            sub RSI,2
.L_405884:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm@PLT

            mov RSI,QWORD PTR [RBX+80]
            lea RBP,QWORD PTR [RSI+1]
            mov QWORD PTR [RSP+24],RSI
            mov RSI,QWORD PTR [RBX+96]
            lea RCX,QWORD PTR [RSI-1]
            cmp RBP,RCX
            jae .L_4059fe

            lea RAX,QWORD PTR [RSP+48]
            mov QWORD PTR [RSP+24],RAX
            lea RAX,QWORD PTR [RSP+64]
            mov QWORD PTR [RSP+32],RAX
            nop
            nop
            nop
            nop
            nop
.L_4058c0:

            mov RAX,RCX
            sub RAX,RBP
            mov RDX,RAX
            sar RDX,2
            test RDX,RDX
            jle .L_405de8

            cmp BYTE PTR [RBP],92
            movzx EAX,BYTE PTR [RBP+1]
            lea RBX,QWORD PTR [RBP+1]
            je .L_405a38

            cmp AL,92
            je .L_405979

            cmp BYTE PTR [RBP+2],92
            lea RBX,QWORD PTR [RBP+2]
            je .L_405970

            cmp BYTE PTR [RBP+3],92
            lea RDX,QWORD PTR [RBP+RDX*4]
            mov RAX,RBP
            lea RBX,QWORD PTR [RBP+3]
            jne .L_405937

            jmp .L_405970
          .byte 0x66
          .byte 0x90
.L_405910:

            cmp BYTE PTR [RAX+4],92
            je .L_405970

            cmp BYTE PTR [RBX+1],92
            je .L_405d90

            cmp BYTE PTR [RBX+2],92
            je .L_405da0

            cmp BYTE PTR [RBX+3],92
            je .L_405db0

            mov RAX,RBX
.L_405937:

            lea RBX,QWORD PTR [RAX+4]
            cmp RDX,RBX
            jne .L_405910

            mov RAX,RCX
            sub RAX,RDX
.L_405946:

            cmp RAX,2
            je .L_405dc9

            cmp RAX,3
            je .L_405db9

            cmp RAX,1
            mov RBX,RCX
            je .L_405dd9

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405970:

            cmp RBX,RBP
            je .L_405a30
.L_405979:

            cmp RBX,RBP
            ja .L_40599c

            jmp .L_4059e9
.L_405980:

            mov BYTE PTR [RAX+R13*1],R15B
            mov RAX,QWORD PTR [R12]
            add RBP,1
            cmp RBP,RBX
            mov QWORD PTR [R12+8],R14
            mov BYTE PTR [RAX+R13*1+1],0
            je .L_4059e0
.L_40599c:

            mov RAX,QWORD PTR [R12]
            cmp QWORD PTR [RSP+8],RAX
            mov EDX,15
            mov R13,QWORD PTR [R12+8]
            movzx R15D,BYTE PTR [RBP]
            lea R14,QWORD PTR [R13+1]
            je .L_4059bf

            mov RDX,QWORD PTR [R12+16]
.L_4059bf:

            cmp R14,RDX
            jbe .L_405980

            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,R13
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@PLT

            mov RAX,QWORD PTR [R12]
            jmp .L_405980
          .byte 0x90
.L_4059e0:

            mov RAX,QWORD PTR [RSP+16]
            mov RSI,QWORD PTR [RAX+96]
.L_4059e9:

            sub RBX,1
.L_4059ed:

            lea RBP,QWORD PTR [RBX+1]
            lea RCX,QWORD PTR [RSI-1]
            cmp RCX,RBP
            ja .L_4058c0
.L_4059fe:

            mov RSI,QWORD PTR [RSP+120]
            xor RSI,QWORD PTR FS:[40]
            mov RAX,R12
            jne .L_405fd3

            add RSP,136
.L_405a1c:

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
.L_405a30:

            movzx EAX,BYTE PTR [RBX+1]
            add RBX,1
.L_405a38:

            sub EAX,34
            cmp AL,83
            ja .L_4059ed

            lea RCX,QWORD PTR [RIP+.L_40e048]
            movzx EAX,AL
            movsxd RAX,DWORD PTR [RCX+RAX*4]
            add RAX,RCX
            jmp RAX
.L_405a52:

            mov RBX,QWORD PTR [RSP+32]
            mov RDI,QWORD PTR [RSP+24]
            lea RDX,QWORD PTR [RBP+6]
            lea RSI,QWORD PTR [RBP+2]
            mov QWORD PTR [RSP+48],RBX
            call .L_402450

            mov RDI,QWORD PTR [RSP+48]
            xor ESI,ESI
            mov EDX,16
            call strtoul@PLT

            mov RDI,QWORD PTR [RSP+48]
            mov R13,RAX
            cmp RDI,RBX
            je .L_405a91

            call _ZdlPv@PLT
.L_405a91:

            lea RAX,QWORD PTR [R13-55296]
            cmp RAX,1023
            ja .L_405df0

            mov RSI,QWORD PTR [RSP+16]
            lea RAX,QWORD PTR [RBP+7]
            cmp QWORD PTR [RSI+104],RAX
            jbe .L_405fa1

            cmp BYTE PTR [RBP+6],92
            jne .L_405fa1

            cmp BYTE PTR [RBP+7],117
            jne .L_405fa1

            lea RBX,QWORD PTR [RSP+80]
            lea RDX,QWORD PTR [RBP+12]
            lea RSI,QWORD PTR [RBP+8]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            mov QWORD PTR [RSP+80],RAX
            call .L_402450
.L_405ae9:

            mov RDI,QWORD PTR [RSP+80]
            mov EDX,16
            xor ESI,ESI
            call strtoul@PLT

            mov RDI,QWORD PTR [RSP+80]
            lea RDX,QWORD PTR [RBX+16]
            cmp RDI,RDX
            je .L_405b17

            mov QWORD PTR [RSP+40],RAX
            call _ZdlPv@PLT

            mov RAX,QWORD PTR [RSP+40]
.L_405b17:

            lea RDX,QWORD PTR [RAX-56320]
            cmp RDX,1023
            ja .L_406049

            shl R13,10
            mov ECX,1
            xor EDX,EDX
            lea R13,QWORD PTR [RAX+R13*1-56613888]
            lea RAX,QWORD PTR [RBX+16]
            xor ESI,ESI
            mov RDI,RBX
            mov QWORD PTR [RSP+88],0
            mov BYTE PTR [RSP+96],0
            mov R8,R13
            mov QWORD PTR [RSP+80],RAX
            shr R8,18
            or R8D,4294967280
            movsx R8D,R8B
.L_405b69:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov R8,R13
            mov RSI,QWORD PTR [RSP+88]
            mov ECX,1
            shr R8,12
            xor EDX,EDX
            mov RDI,RBX
            and R8D,63
            or R8D,4294967168
            movsx R8D,R8B
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov R8,R13
            mov RSI,QWORD PTR [RSP+88]
            mov ECX,1
            shr R8,6
            xor EDX,EDX
            mov RDI,RBX
            and R8D,63
            or R8D,4294967168
            movsx R8D,R8B
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov R8D,R13D
            mov RSI,QWORD PTR [RSP+88]
            mov ECX,1
            and R8D,63
            xor EDX,EDX
            mov RDI,RBX
            or R8D,4294967168
            movsx R8D,R8B
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_405bdf:

            mov RDX,QWORD PTR [RSP+88]
            mov RSI,QWORD PTR [RSP+80]
            mov RDI,R12
.L_405bec:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_405bf1:

            mov RDI,QWORD PTR [RSP+80]
            add RBX,16
            cmp RDI,RBX
            je .L_405c04

            call _ZdlPv@PLT
.L_405c04:

            mov RAX,QWORD PTR [RSP+16]
            lea RBX,QWORD PTR [RBP+11]
            mov RSI,QWORD PTR [RAX+96]
            jmp .L_4059ed
.L_405c16:

            movabs RAX,9223372036854775807
            cmp QWORD PTR [R12+8],RAX
            je .L_406089

            lea RSI,QWORD PTR [RIP+.L_40dfc1]
            mov EDX,1
            mov RDI,R12
.L_405c3a:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            nop
.L_405c40:

            mov RAX,QWORD PTR [RSP+16]
            mov RSI,QWORD PTR [RAX+96]
            jmp .L_4059ed
.L_405c4e:

            movabs RAX,9223372036854775807
            cmp QWORD PTR [R12+8],RAX
            je .L_40610d

            lea RSI,QWORD PTR [RIP+.L_40dfc7]
            mov EDX,1
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            jmp .L_405c40
.L_405c79:

            movabs RAX,9223372036854775807
            cmp QWORD PTR [R12+8],RAX
            je .L_4060c7

            lea RSI,QWORD PTR [RIP+.L_40defa]
            mov EDX,1
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            jmp .L_405c40
.L_405ca4:

            movabs RAX,9223372036854775807
            cmp QWORD PTR [R12+8],RAX
            je .L_4060df

            lea RSI,QWORD PTR [RIP+.L_40dfc5]
            mov EDX,1
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            jmp .L_405c40
.L_405cd2:

            movabs RAX,9223372036854775807
            cmp QWORD PTR [R12+8],RAX
            je .L_4060d3

            lea RSI,QWORD PTR [RIP+.L_40dfc3]
            mov EDX,1
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            jmp .L_405c40
.L_405d00:

            movabs RAX,9223372036854775807
            cmp QWORD PTR [R12+8],RAX
            je .L_406101

            lea RSI,QWORD PTR [RIP+.L_40dfcb]
            mov EDX,1
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            jmp .L_405c40
.L_405d2e:

            movabs RAX,9223372036854775807
            cmp QWORD PTR [R12+8],RAX
            je .L_4060f5

            lea RSI,QWORD PTR [RIP+.L_40dfcd]
            mov EDX,1
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            jmp .L_405c40
.L_405d5c:

            movabs RAX,9223372036854775807
            cmp QWORD PTR [R12+8],RAX
            je .L_40607b

            lea RSI,QWORD PTR [RIP+.L_40dfc9]
            mov EDX,1
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_405d85:

            jmp .L_405c40
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_405d90:

            lea RBX,QWORD PTR [RAX+5]
            jmp .L_405970
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405da0:

            lea RBX,QWORD PTR [RAX+6]
            jmp .L_405970
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405db0:

            lea RBX,QWORD PTR [RAX+7]
            jmp .L_405970
.L_405db9:

            cmp BYTE PTR [RDX],92
            mov RBX,RDX
            je .L_405970

            add RDX,1
.L_405dc9:

            cmp BYTE PTR [RDX],92
            mov RBX,RDX
            je .L_405970

            add RDX,1
.L_405dd9:

            cmp BYTE PTR [RDX],92
            cmovne RDX,RCX
            mov RBX,RDX
            jmp .L_405970
.L_405de8:

            mov RDX,RBP
            jmp .L_405946
.L_405df0:

            lea RAX,QWORD PTR [R13-56320]
            cmp RAX,1023
            jbe .L_406095

            lea RBX,QWORD PTR [RSP+80]
            cmp R13,127
            mov QWORD PTR [RSP+88],0
            mov BYTE PTR [RSP+96],0
            lea RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+80],RAX
            jbe .L_405f0f

            cmp R13,2047
            jbe .L_405f25

            cmp R13,65535
            jbe .L_405f4a

            cmp R13,1114111
            ja .L_405f6f

            mov R8,R13
            mov ECX,1
            xor EDX,EDX
            shr R8,18
            xor ESI,ESI
            mov RDI,RBX
            or R8D,4294967280
            movsx R8D,R8B
.L_405e6b:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov R8,R13
            mov RSI,QWORD PTR [RSP+88]
            mov ECX,1
            shr R8,12
            xor EDX,EDX
            mov RDI,RBX
            and R8D,63
            or R8D,4294967168
            movsx R8D,R8B
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_405e97:

            mov R8,R13
            mov RSI,QWORD PTR [RSP+88]
            mov ECX,1
            shr R8,6
            xor EDX,EDX
            mov RDI,RBX
            and R8D,63
            or R8D,4294967168
            movsx R8D,R8B
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_405ebe:

            mov R8D,R13D
            mov RSI,QWORD PTR [RSP+88]
            mov ECX,1
            and R8D,63
            xor EDX,EDX
            mov RDI,RBX
            or R8D,4294967168
            movsx R8D,R8B
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_405ee1:

            mov RDX,QWORD PTR [RSP+88]
            mov RSI,QWORD PTR [RSP+80]
            mov RDI,R12
.L_405eee:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_405ef3:

            mov RDI,QWORD PTR [RSP+80]
            add RBX,16
            cmp RDI,RBX
            je .L_405f06

            call _ZdlPv@PLT
.L_405f06:

            lea RBX,QWORD PTR [RBP+5]
            jmp .L_405c40
.L_405f0f:

            mov R8D,R13D
            mov ECX,1
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBX
.L_405f1e:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            jmp .L_405ee1
.L_405f25:

            mov R8,R13
            mov ECX,1
            xor EDX,EDX
            shr R8,6
            xor ESI,ESI
            mov RDI,RBX
            or R8D,4294967232
            movsx R8D,R8B
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            jmp .L_405ebe
.L_405f4a:

            mov R8,R13
            mov ECX,1
            xor EDX,EDX
            shr R8,12
            xor ESI,ESI
            mov RDI,RBX
            or R8D,4294967264
            movsx R8D,R8B
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_405f6a:

            jmp .L_405e97
.L_405f6f:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            lea RSI,QWORD PTR [RIP+.L_40e020]
            mov RDI,RAX
            mov R13,RAX
.L_405f86:

            call _ZNSt12out_of_rangeC1EPKc@PLT
.L_405f8b:

            mov RDX,QWORD PTR [RIP+_ZNSt12out_of_rangeD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt12out_of_range]
            mov RDI,R13
.L_405f9c:

            call __cxa_throw@PLT
.L_405fa1:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            lea RSI,QWORD PTR [RIP+.L_40dfcf]
            mov RDI,RAX
            mov RBP,RAX
.L_405fb8:

            call _ZNSt16invalid_argumentC1EPKc@PLT
.L_405fbd:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,RBP
.L_405fce:

            call __cxa_throw@PLT
.L_405fd3:

            call __stack_chk_fail@PLT
.L_405fd8:

            mov RDI,R13
            mov RBP,RAX
            call __cxa_free_exception@PLT
.L_405fe3:

            mov RDI,QWORD PTR [RSP+80]
            add RBX,16
            cmp RDI,RBX
            je .L_405ff6

            call _ZdlPv@PLT
.L_405ff6:

            mov RDI,QWORD PTR [R12]
            cmp QWORD PTR [RSP+8],RDI
            je .L_406006

            call _ZdlPv@PLT
.L_406006:

            mov RDI,RBP
.L_406009:

            call _Unwind_Resume@PLT
.L_40600e:

            mov RBX,RAX
            mov RDI,RBP
            call __cxa_free_exception@PLT

            mov RBP,RBX
            jmp .L_405ff6
.L_40601e:

            mov RBP,RAX
            jmp .L_405ff6
.L_406023:

            lea RCX,QWORD PTR [RIP+.L_40f7e0]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40df94]
            mov EDX,10967
            call __assert_fail@PLT
.L_406042:

            mov RBP,RAX
            jmp .L_405fe3
.L_406047:

            jmp .L_406042
.L_406049:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            lea RSI,QWORD PTR [RIP+.L_40e000]
            mov RDI,RAX
            mov RBP,RAX
.L_406060:

            call _ZNSt16invalid_argumentC1EPKc@PLT
.L_406065:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,RBP
.L_406076:

            call __cxa_throw@PLT
.L_40607b:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
            call _ZSt20__throw_length_errorPKc@PLT
.L_406087:

            jmp .L_40600e
.L_406089:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
            call _ZSt20__throw_length_errorPKc@PLT
.L_406095:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            lea RSI,QWORD PTR [RIP+.L_40dfe5]
            mov RDI,RAX
            mov RBP,RAX
.L_4060ac:

            call _ZNSt16invalid_argumentC1EPKc@PLT
.L_4060b1:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,RBP
.L_4060c2:

            call __cxa_throw@PLT
.L_4060c7:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
            call _ZSt20__throw_length_errorPKc@PLT
.L_4060d3:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
            call _ZSt20__throw_length_errorPKc@PLT
.L_4060df:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
            call _ZSt20__throw_length_errorPKc@PLT
.L_4060eb:

            jmp .L_406042
.L_4060f0:

            jmp .L_406042
.L_4060f5:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
            call _ZSt20__throw_length_errorPKc@PLT
.L_406101:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
            call _ZSt20__throw_length_errorPKc@PLT
.L_40610d:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
            call _ZSt20__throw_length_errorPKc@PLT
.L_406119:

            jmp .L_40600e
.L_40611e:

            nop
            nop
.L_406120:

            cmp ESI,15
            push RBX
.L_406124:

            lea RCX,QWORD PTR [RDI+16]
            mov RBX,RDI
            ja .L_4062a0

            lea RDX,QWORD PTR [RIP+.L_40e230]
            mov ESI,ESI
            mov QWORD PTR [RDI],RCX
            movsxd RAX,DWORD PTR [RDX+RSI*4]
            add RAX,RDX
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
.L_406150:

            lea RDX,QWORD PTR [RIP+.L_40e213]
            lea RSI,QWORD PTR [RDX-13]
            call .L_402450
.L_406160:

            mov RAX,RBX
            pop RBX
.L_406164:

            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_406168:

            lea RDX,QWORD PTR [RIP+.L_40e220]
            lea RSI,QWORD PTR [RDX-12]
            call .L_402450

            jmp .L_406160
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406180:

            lea RDX,QWORD PTR [RIP+.L_40e1a7]
            lea RSI,QWORD PTR [RDX-15]
            call .L_402450

            jmp .L_406160
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406198:

            lea RDX,QWORD PTR [RIP+.L_40e1b4]
            lea RSI,QWORD PTR [RDX-12]
            call .L_402450

            jmp .L_406160
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4061b0:

            lea RDX,QWORD PTR [RIP+.L_40e1c2]
            lea RSI,QWORD PTR [RDX-13]
            call .L_402450

            jmp .L_406160
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4061c8:

            lea RDX,QWORD PTR [RIP+.L_40e1cf]
            lea RSI,QWORD PTR [RDX-12]
            call .L_402450

            jmp .L_406160
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4061e0:

            lea RDX,QWORD PTR [RIP+.L_40e1de]
            lea RSI,QWORD PTR [RDX-14]
            call .L_402450

            jmp .L_406160

            nop
            nop
            nop
.L_4061f8:

            lea RDX,QWORD PTR [RIP+.L_40e1ed]
            lea RSI,QWORD PTR [RDX-14]
            call .L_402450

            jmp .L_406160
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_406210:

            lea RDX,QWORD PTR [RIP+.L_40e1f1]
            lea RSI,QWORD PTR [RDX-3]
            call .L_402450

            jmp .L_406160
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_406228:

            lea RDX,QWORD PTR [RIP+.L_40e1f5]
            lea RSI,QWORD PTR [RDX-3]
            call .L_402450

            jmp .L_406160
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_406240:

            lea RDX,QWORD PTR [RIP+.L_40e1f9]
            lea RSI,QWORD PTR [RDX-3]
            call .L_402450

            jmp .L_406160
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_406258:

            lea RDX,QWORD PTR [RIP+.L_40e1fd]
            lea RSI,QWORD PTR [RDX-3]
            call .L_402450

            jmp .L_406160
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_406270:

            lea RDX,QWORD PTR [RIP+.L_40e201]
            lea RSI,QWORD PTR [RDX-3]
            call .L_402450

            jmp .L_406160
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_406288:

            lea RDX,QWORD PTR [RIP+.L_40e205]
            lea RSI,QWORD PTR [RDX-3]
            call .L_402450

            jmp .L_406160
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4062a0:

            lea RDX,QWORD PTR [RIP+.L_40e22e]
            mov QWORD PTR [RDI],RCX
            lea RSI,QWORD PTR [RDX-13]
            call .L_402450

            jmp .L_406160
.L_4062b8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4062c0:

            push R13
            push R12
            push RBP
            push RBX
            sub RSP,152
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+136],RAX
            xor EAX,EAX
            cmp DWORD PTR [RDI+40],ESI
            je .L_406310

            mov RAX,QWORD PTR [RSP+136]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40651f

            add RSP,152
            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_406310:

            lea RDX,QWORD PTR [RIP+.L_40e289]
            mov RBP,RSP
            mov RBX,RDI
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,RBP
            lea RSI,QWORD PTR [RDX-25]
            mov QWORD PTR [RSP],RAX
.L_40632c:

            call .L_402450
.L_406331:

            mov ESI,DWORD PTR [RBX+40]
            cmp ESI,14
            jne .L_406524

            mov RSI,QWORD PTR [RBX+128]
            test RSI,RSI
            je .L_4064c0

            mov RDX,QWORD PTR [RBX+144]
            lea RBX,QWORD PTR [RSP+32]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            mov QWORD PTR [RSP+32],RAX
.L_406365:

            call .L_402450
.L_40636a:

            lea RCX,QWORD PTR [RIP+.L_40e204]
            mov R8D,1
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBX
.L_40637e:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_406383:

            lea RBX,QWORD PTR [RSP+64]
            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+64],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_406510

            mov QWORD PTR [RSP+64],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+80],RCX
.L_4063af:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov QWORD PTR [RSP+72],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+72],RAX
            je .L_406539

            lea RSI,QWORD PTR [RIP+.L_40e204]
            mov EDX,1
            mov RDI,RBX
.L_4063eb:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_4063f0:

            lea RBX,QWORD PTR [RSP+96]
            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+96],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_406500

            mov QWORD PTR [RSP+96],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+112],RCX
.L_40641c:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov R12D,1
            mov QWORD PTR [RSP+104],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
.L_40643a:

            mov RDX,QWORD PTR [RSP+104]
            mov RSI,QWORD PTR [RSP+96]
            mov RDI,RBP
.L_406447:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40644c:

            mov RDI,QWORD PTR [RSP+96]
            add RBX,16
            cmp RDI,RBX
            je .L_40645f

            call _ZdlPv@PLT
.L_40645f:

            test R12B,R12B
            je .L_40648c

            mov RDI,QWORD PTR [RSP+64]
            lea RAX,QWORD PTR [RSP+80]
            cmp RDI,RAX
            je .L_406478

            call _ZdlPv@PLT
.L_406478:

            mov RDI,QWORD PTR [RSP+32]
            lea RAX,QWORD PTR [RSP+48]
            cmp RDI,RAX
            je .L_40648c

            call _ZdlPv@PLT
.L_40648c:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            mov RSI,RBP
            mov RDI,RAX
            mov RBX,RAX
.L_40649f:

            call _ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.L_4064a4:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,RBX
.L_4064b5:

            call __cxa_throw@PLT
.L_4064ba:

            nop
            nop
            nop
            nop
            nop
            nop
.L_4064c0:

            lea RCX,QWORD PTR [RIP+.L_40ef00]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e28a]
            mov EDX,10903
            call __assert_fail@PLT
.L_4064df:

            mov R12,RAX
.L_4064e2:

            mov RDI,QWORD PTR [RSP]
            add RBP,16
            cmp RDI,RBP
            je .L_4064f4

            call _ZdlPv@PLT
.L_4064f4:

            mov RDI,R12
.L_4064f7:

            call _Unwind_Resume@PLT
.L_4064fc:

            nop
            nop
            nop
            nop
.L_406500:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+112],XMM0
            jmp .L_40641c
          .byte 0x90
.L_406510:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+80],XMM0
            jmp .L_4063af
.L_40651f:

            call __stack_chk_fail@PLT
.L_406524:

            lea RBX,QWORD PTR [RSP+96]
            mov RDI,RBX
.L_40652c:

            call .L_406120
.L_406531:

            xor R12D,R12D
            jmp .L_40643a
.L_406539:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
.L_406540:

            call _ZSt20__throw_length_errorPKc@PLT
.L_406545:

            mov R13,RAX
.L_406548:

            mov RDI,QWORD PTR [RSP+64]
            add RBX,16
            cmp RDI,RBX
            je .L_40655b

            call _ZdlPv@PLT
.L_40655b:

            mov RDI,QWORD PTR [RSP+32]
            lea RDX,QWORD PTR [RSP+48]
            cmp RDI,RDX
            je .L_40656f

            call _ZdlPv@PLT
.L_40656f:

            mov R12,R13
            jmp .L_4064e2
.L_406577:

            mov R13,RAX
            jmp .L_40656f
.L_40657c:

            mov RDI,RBX
            mov R12,RAX
            call __cxa_free_exception@PLT

            jmp .L_4064e2
.L_40658c:

            mov RDI,QWORD PTR [RSP+96]
            add RBX,16
            mov R13,RAX
            cmp RDI,RBX
            je .L_4065a2

            call _ZdlPv@PLT
.L_4065a2:

            test R12B,R12B
            lea RBX,QWORD PTR [RSP+64]
            jne .L_406548

            jmp .L_40656f
.L_4065ae:

            mov R13,RAX
            jmp .L_40655b
.L_4065b3:

            jmp .L_406577
.L_4065b5:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4065c0:

            push R14
            push R13
            push R12
            push RBP
            mov EBP,ESI
            push RBX
            sub RSP,144
.L_4065d1:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+136],RAX
            xor EAX,EAX
            cmp DWORD PTR [RDI+40],EBP
            je .L_406790

            lea RDX,QWORD PTR [RIP+.L_40e289]
            mov R12,RSP
            mov RBX,RDI
            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            lea RSI,QWORD PTR [RDX-25]
            mov QWORD PTR [RSP],RAX
.L_40660a:

            call .L_402450
.L_40660f:

            mov ESI,DWORD PTR [RBX+40]
            cmp ESI,14
            jne .L_406b46

            mov RSI,QWORD PTR [RBX+128]
            test RSI,RSI
            je .L_4067c0

            mov RDX,QWORD PTR [RBX+144]
            lea RBX,QWORD PTR [RSP+32]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            mov QWORD PTR [RSP+32],RAX
.L_406643:

            call .L_402450
.L_406648:

            lea RCX,QWORD PTR [RIP+.L_40e204]
            mov R8D,1
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBX
.L_40665c:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_406661:

            lea RBX,QWORD PTR [RSP+64]
            lea RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RSP+64],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_4067f0

            mov QWORD PTR [RSP+64],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+80],RCX
.L_40668d:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+72],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+72],RAX
            je .L_406b5b

            lea RSI,QWORD PTR [RIP+.L_40e204]
            mov EDX,1
            mov RDI,RBX
.L_4066c9:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_4066ce:

            lea R13,QWORD PTR [RSP+96]
            lea RDX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+96],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_4067e0

            mov QWORD PTR [RSP+96],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+112],RCX
.L_4066fa:

            mov RCX,QWORD PTR [RAX+8]
            mov R14D,1
            mov QWORD PTR [RSP+104],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
.L_406718:

            mov RDX,QWORD PTR [RSP+104]
            mov RSI,QWORD PTR [RSP+96]
            mov RDI,R12
.L_406725:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40672a:

            mov RDI,QWORD PTR [RSP+96]
            lea RAX,QWORD PTR [R13+16]
            cmp RDI,RAX
            je .L_40673d

            call _ZdlPv@PLT
.L_40673d:

            test R14B,R14B
            lea RBX,QWORD PTR [RSP+64]
            je .L_40676e

            mov RDI,QWORD PTR [RSP+64]
            lea RAX,QWORD PTR [RBX+16]
            cmp RDI,RAX
            je .L_40675a

            call _ZdlPv@PLT
.L_40675a:

            mov RDI,QWORD PTR [RSP+32]
            lea RAX,QWORD PTR [RSP+48]
            cmp RDI,RAX
            je .L_40676e

            call _ZdlPv@PLT
.L_40676e:

            cmp EBP,15
            ja .L_406b20

            lea RDX,QWORD PTR [RIP+.L_40e2ac]
            movsxd RAX,DWORD PTR [RDX+RBP*4]
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
.L_406790:

            mov RAX,QWORD PTR [RSP+136]
            xor RAX,QWORD PTR FS:[40]
            jne .L_406b41

            add RSP,144
.L_4067ae:

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
.L_4067c0:

            lea RCX,QWORD PTR [RIP+.L_40ef00]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e28a]
            mov EDX,10903
            call __assert_fail@PLT
          .byte 0x90
.L_4067e0:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+112],XMM0
            jmp .L_4066fa
          .byte 0x90
.L_4067f0:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+80],XMM0
            jmp .L_40668d
          .byte 0x90
.L_406800:

            lea RDX,QWORD PTR [RIP+.L_40e1a7]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-15]
            mov QWORD PTR [RSP+64],RAX
.L_406817:

            call .L_402450
.L_40681c:

            nop
            nop
            nop
            nop
.L_406820:

            lea RCX,QWORD PTR [RIP+.L_40e29d]
            mov R8D,11
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,RBX
.L_406834:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_406839:

            lea RDX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+96],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_406b08

            mov QWORD PTR [RSP+96],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+112],RCX
.L_406860:

            mov RCX,QWORD PTR [RAX+8]
            mov RDI,R12
            mov QWORD PTR [RSP+104],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RDX,QWORD PTR [RSP+104]
            mov RSI,QWORD PTR [RSP+96]
.L_406885:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40688a:

            mov RDI,QWORD PTR [RSP+96]
            add R13,16
            cmp RDI,R13
            je .L_40689d

            call _ZdlPv@PLT
.L_40689d:

            mov RDI,QWORD PTR [RSP+64]
            add RBX,16
            cmp RDI,RBX
            je .L_4068b0

            call _ZdlPv@PLT
.L_4068b0:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            mov RSI,R12
            mov RDI,RAX
            mov RBX,RAX
.L_4068c3:

            call _ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.L_4068c8:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,RBX
.L_4068d9:

            call __cxa_throw@PLT
.L_4068de:

            mov RBP,RAX
.L_4068e1:

            mov RDI,QWORD PTR [RSP]
            add R12,16
            cmp RDI,R12
            je .L_4068f3

            call _ZdlPv@PLT
.L_4068f3:

            mov RDI,RBP
.L_4068f6:

            call _Unwind_Resume@PLT
.L_4068fb:

            nop
            nop
            nop
            nop
            nop
.L_406900:

            lea RDX,QWORD PTR [RIP+.L_40e1ed]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-14]
            mov QWORD PTR [RSP+64],RAX
.L_406917:

            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406928:

            lea RDX,QWORD PTR [RIP+.L_40e1f1]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-3]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406950:

            lea RDX,QWORD PTR [RIP+.L_40e1f5]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-3]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406978:

            lea RDX,QWORD PTR [RIP+.L_40e1f9]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-3]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4069a0:

            lea RDX,QWORD PTR [RIP+.L_40e1fd]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-3]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4069c8:

            lea RDX,QWORD PTR [RIP+.L_40e201]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-3]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4069f0:

            lea RDX,QWORD PTR [RIP+.L_40e205]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-3]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406a18:

            lea RDX,QWORD PTR [RIP+.L_40e213]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-13]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406a40:

            lea RDX,QWORD PTR [RIP+.L_40e1b4]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-12]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406a68:

            lea RDX,QWORD PTR [RIP+.L_40e1c2]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-13]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406a90:

            lea RDX,QWORD PTR [RIP+.L_40e1cf]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-12]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406ab8:

            lea RDX,QWORD PTR [RIP+.L_40e1de]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-14]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406ae0:

            lea RDX,QWORD PTR [RIP+.L_40e220]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-12]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450

            jmp .L_406820
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406b08:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+112],XMM0
            jmp .L_406860
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406b20:

            lea RDX,QWORD PTR [RIP+.L_40e22e]
            lea RAX,QWORD PTR [RBX+16]
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-13]
            mov QWORD PTR [RSP+64],RAX
            call .L_402450
.L_406b3c:

            jmp .L_406820
.L_406b41:

            call __stack_chk_fail@PLT
.L_406b46:

            lea R13,QWORD PTR [RSP+96]
            mov RDI,R13
.L_406b4e:

            call .L_406120
.L_406b53:

            xor R14D,R14D
            jmp .L_406718
.L_406b5b:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
.L_406b62:

            call _ZSt20__throw_length_errorPKc@PLT
.L_406b67:

            mov RBP,RAX
.L_406b6a:

            mov RDI,QWORD PTR [RSP+64]
            add RBX,16
            cmp RDI,RBX
            je .L_406b7d

            call _ZdlPv@PLT
.L_406b7d:

            mov RDI,QWORD PTR [RSP+32]
            lea RAX,QWORD PTR [RSP+48]
            cmp RDI,RAX
            je .L_4068e1
.L_406b90:

            call _ZdlPv@PLT

            jmp .L_4068e1
.L_406b9a:

            mov RDI,QWORD PTR [RSP+96]
            add R13,16
            mov RBP,RAX
            cmp RDI,R13
            je .L_406bb0

            call _ZdlPv@PLT
.L_406bb0:

            mov RDI,QWORD PTR [RSP+64]
            add RBX,16
            cmp RDI,RBX
            jne .L_406b90

            jmp .L_4068e1
.L_406bc3:

            mov RBP,RAX
            jmp .L_406b7d
.L_406bc8:

            mov RDI,QWORD PTR [RSP+96]
            add R13,16
            mov RBP,RAX
            cmp RDI,R13
            je .L_406bde

            call _ZdlPv@PLT
.L_406bde:

            test R14B,R14B
            lea RBX,QWORD PTR [RSP+64]
            jne .L_406b6a

            jmp .L_4068e1
.L_406bed:

            mov RBP,RAX
            jmp .L_406bb0
.L_406bf2:

            mov RDI,RBX
            mov RBP,RAX
            call __cxa_free_exception@PLT

            jmp .L_4068e1
.L_406c02:

            jmp .L_4068de
.L_406c07:

            jmp .L_4068de
.L_406c0c:

            nop
            nop
            nop
            nop
.L_406c10:

            test RSI,RSI
            je .L_406c60

            push R12
            mov R12,RDI
            push RBP
            push RBX
            mov RBX,RSI
.L_406c1f:

            mov RSI,QWORD PTR [RBX+24]
            mov RDI,R12
            call .L_406c10

            lea RDI,QWORD PTR [RBX+64]
            mov RBP,QWORD PTR [RBX+16]
            call .L_406c70

            mov RDI,QWORD PTR [RBX+32]
            lea RAX,QWORD PTR [RBX+48]
            cmp RDI,RAX
            je .L_406c4a

            call _ZdlPv@PLT
.L_406c4a:

            mov RDI,RBX
            mov RBX,RBP
            call _ZdlPv@PLT

            test RBP,RBP
            jne .L_406c1f

            pop RBX
            pop RBP
            pop R12
            ret 
          .byte 0x90
.L_406c60:

            ret 
.L_406c62:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406c70:

            push R13
            push R12
            push RBP
            push RBX
            mov RBP,RDI
            sub RSP,8
.L_406c7d:

            movzx EAX,BYTE PTR [RDI]
            cmp AL,1
            je .L_406d00

            cmp AL,2
            jne .L_406ce0

            mov R13,QWORD PTR [RDI+8]
            test R13,R13
            je .L_406d61

            mov R12,QWORD PTR [R13+8]
            mov RBX,QWORD PTR [R13]
            cmp R12,RBX
            je .L_406cbd

            nop
            nop
            nop
            nop
            nop
            nop
.L_406ca8:

            mov RDI,RBX
            add RBX,16
            call .L_406c70

            cmp R12,RBX
            jne .L_406ca8

            mov RBX,QWORD PTR [R13]
.L_406cbd:

            test RBX,RBX
            je .L_406cca

            mov RDI,RBX
            call _ZdlPv@PLT
.L_406cca:

            mov RDI,QWORD PTR [RBP+8]
            add RSP,8
.L_406cd2:

            pop RBX
            pop RBP
            pop R12
            pop R13
            jmp _ZdlPv@PLT
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_406ce0:

            cmp AL,3
            jne .L_406d18

            mov RAX,QWORD PTR [RDI+8]
            test RAX,RAX
            je .L_406d23

            mov RDI,QWORD PTR [RAX]
            add RAX,16
            cmp RDI,RAX
            je .L_406cca

            call _ZdlPv@PLT

            jmp .L_406cca
.L_406d00:

            mov RDI,QWORD PTR [RDI+8]
            test RDI,RDI
            je .L_406d42

            mov RSI,QWORD PTR [RDI+16]
            call .L_406c10

            jmp .L_406cca
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_406d18:

            add RSP,8
            pop RBX
            pop RBP
            pop R12
            pop R13
            ret 
.L_406d23:

            lea RCX,QWORD PTR [RIP+.L_40ed20]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e328]
            mov EDX,1789
            call __assert_fail@PLT
.L_406d42:

            lea RCX,QWORD PTR [RIP+.L_40ed20]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e2f0]
            mov EDX,1787
            call __assert_fail@PLT
.L_406d61:

            call .L_402230
.L_406d66:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406d70:

            push R15
            push R14
            mov R15,RSI
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,104
.L_406d84:

            mov R9,QWORD PTR [RDI+16]
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+88],RAX
            xor EAX,EAX
            mov RAX,QWORD PTR [RDI+72]
            test R9,R9
            je .L_406dbb

            mov RDX,QWORD PTR [RDI+8]
            cmp RDX,RAX
            jne .L_407165

            add RDX,R9
            cmp QWORD PTR [RDI+104],RDX
            jne .L_40711c
.L_406dbb:

            mov RCX,QWORD PTR [RBX+80]
            cmp RCX,RAX
            jb .L_40707c

            mov RBP,QWORD PTR [RBX+96]
            cmp RCX,RBP
            ja .L_4070fd

            mov R8,QWORD PTR [RBX+104]
            cmp RBP,R8
            ja .L_4070de

            mov R12,QWORD PTR [RBX+88]
            test R12,R12
            je .L_406fa8

            cmp R8,R12
            jb .L_4070bf

            mov RDX,RCX
            sub R12,RCX
            sub RDX,RAX
.L_406e01:

            mov RAX,QWORD PTR [RBX]
            sub RBP,RCX
            lea R14,QWORD PTR [RBX+8]
            test RAX,RAX
            je .L_406e22

            mov RSI,QWORD PTR [RAX]
            mov RSI,QWORD PTR [RSI-24]
            test BYTE PTR [RAX+RSI*1+32],2
            je .L_406fc0
.L_406e22:

            lea R13,QWORD PTR [RSP+48]
            test R8,R8
            mov R10,QWORD PTR [RBX+8]
            lea RAX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+48],RAX
            je .L_406e42

            test RCX,RCX
            je .L_40713b
.L_406e42:

            mov RDX,R8
            lea RAX,QWORD PTR [R13+16]
            sub RDX,RCX
            cmp RDX,15
            mov QWORD PTR [RSP+40],RDX
            ja .L_406f38
.L_406e5b:

            cmp RCX,R8
            je .L_406e88

            sub R8,RCX
            add R8,RAX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406e70:

            movzx EDX,BYTE PTR [RCX]
            add RAX,1
            add RCX,1
            mov BYTE PTR [RAX-1],DL
            cmp RAX,R8
            jne .L_406e70

            mov RAX,QWORD PTR [RSP+48]
.L_406e88:

            mov RDX,QWORD PTR [RSP+40]
            mov RSI,R10
            mov RDI,R14
            mov QWORD PTR [RSP+56],RDX
            mov BYTE PTR [RAX+RDX*1],0
            mov RDX,R9
            sub RSI,QWORD PTR [RBX+8]
            mov R8,QWORD PTR [RSP+56]
            mov RCX,QWORD PTR [RSP+48]
.L_406ead:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_406eb2:

            mov RDI,QWORD PTR [RSP+48]
            add R13,16
            cmp RDI,R13
            je .L_406ec5

            call _ZdlPv@PLT
.L_406ec5:

            mov RSI,QWORD PTR [RBX+16]
            xor R8D,R8D
            xor EDX,EDX
            mov ECX,1
            mov RDI,R14
.L_406ed6:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            test R15,R15
            jne .L_406f88
.L_406ee4:

            mov RAX,QWORD PTR [RBX+8]
            test RAX,RAX
            mov QWORD PTR [RBX+72],RAX
            je .L_4070a0

            add R12,RAX
            add RBP,RAX
            mov QWORD PTR [RBX+80],RAX
            add RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX+88],R12
            mov QWORD PTR [RBX+96],RBP
            mov QWORD PTR [RBX+104],RAX
            mov RAX,QWORD PTR [RSP+88]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40709b

            add RSP,104
.L_406f27:

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
.L_406f38:

            lea RSI,QWORD PTR [RSP+40]
            xor EDX,EDX
            mov RDI,R13
            mov QWORD PTR [RSP+24],R10
            mov QWORD PTR [RSP+16],R9
            mov QWORD PTR [RSP+8],RCX
            mov QWORD PTR [RSP],R8
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT

            mov RDX,QWORD PTR [RSP+40]
            mov QWORD PTR [RSP+48],RAX
            mov R10,QWORD PTR [RSP+24]
            mov R9,QWORD PTR [RSP+16]
            mov RCX,QWORD PTR [RSP+8]
            mov R8,QWORD PTR [RSP]
            mov QWORD PTR [RSP+64],RDX
            jmp .L_406e5b
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406f88:

            mov RSI,QWORD PTR [RBX+16]
            lea RCX,QWORD PTR [R15-1]
            mov R8D,1
            xor EDX,EDX
            mov RDI,R14
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            jmp .L_406ee4
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_406fa8:

            mov RDX,RCX
            xor R12D,R12D
            sub RDX,RAX
            jmp .L_406e01
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
.L_406fc0:

            cmp RDX,-1
            je .L_407068

            test RDX,RDX
            je .L_406fe0

            cmp R9,RDX
            mov RDI,R14
            cmovbe RDX,R9
            xor ESI,ESI
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
.L_406fe0:

            mov RAX,QWORD PTR [RBX+40]
            mov QWORD PTR [RBX+48],0
            lea RSI,QWORD PTR [RBX+40]
            mov EDX,10
            mov BYTE PTR [RAX],0
            mov RDI,QWORD PTR [RBX]
            call _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT

            mov RDX,QWORD PTR [RBX+48]
            mov RSI,QWORD PTR [RBX+40]
            mov RDI,R14
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov R13,QWORD PTR [RBX+16]
            lea RCX,QWORD PTR [RBX+24]
            mov EDX,15
            cmp RAX,RCX
            lea R15,QWORD PTR [R13+1]
            je .L_40702e

            mov RDX,QWORD PTR [RBX+24]
.L_40702e:

            cmp R15,RDX
            jbe .L_40704c

            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,R13
            mov RDI,R14
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
.L_40704c:

            mov BYTE PTR [RAX+R13*1],10
            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],R15
            mov BYTE PTR [RAX+R13*1+1],0
            jmp .L_406ee4
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_407068:

            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],0
            mov BYTE PTR [RAX],0
            jmp .L_406fe0
.L_40707c:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e440]
            mov EDX,10850
            call __assert_fail@PLT
.L_40709b:

            call __stack_chk_fail@PLT
.L_4070a0:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e47d]
            mov EDX,10893
            call __assert_fail@PLT
.L_4070bf:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e410]
            mov EDX,10853
            call __assert_fail@PLT
.L_4070de:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e469]
            mov EDX,10852
            call __assert_fail@PLT
.L_4070fd:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e455]
            mov EDX,10851
            call __assert_fail@PLT
.L_40711c:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e3c8]
            mov EDX,10847
            call __assert_fail@PLT
.L_40713b:

            lea RDI,QWORD PTR [RIP+.L_40df48]
            call _ZSt19__throw_logic_errorPKc@PLT
.L_407147:

            mov RDI,QWORD PTR [RSP+48]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_40715d

            call _ZdlPv@PLT
.L_40715d:

            mov RDI,RBX
            call _Unwind_Resume@PLT
.L_407165:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e360]
            mov EDX,10843
            call __assert_fail@PLT
.L_407184:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407190:

            push R15
            push R14
            lea R15,QWORD PTR [RIP+.L_410300]
            push R13
            push R12
            push RBP
            push RBX
            mov RBX,RDI
            sub RSP,392
.L_4071ab:

            mov RCX,QWORD PTR [RDI+96]
            lea R14,QWORD PTR [RSP+336]
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+376],RAX
            xor EAX,EAX
            lea RAX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+8],RAX
            lea RAX,QWORD PTR [RSP+72]
            mov QWORD PTR [RSP+16],RAX
.L_4071dd:

            test RCX,RCX
            mov QWORD PTR [RBX+88],0
            mov QWORD PTR [RBX+80],RCX
            je .L_40971b

            mov RBP,QWORD PTR [RBX+104]
            mov RDX,RBP
            sub RDX,RCX
            cmp RDX,4
            jle .L_407390

            movzx EDX,BYTE PTR [RCX]
            test BYTE PTR [R15+RDX*1],32
            mov RAX,RDX
            jne .L_4074da
.L_407217:

            lea RDX,QWORD PTR [RCX+1]
            cmp AL,91
            mov RSI,RDX
            ja .L_407320

            cmp AL,45
            ja .L_4077d0

            cmp AL,34
            ja .L_407a58

            test AL,AL
            je .L_407e20

            cmp AL,34
            jne .L_407790

            mov QWORD PTR [RBX+96],RDX
            mov QWORD PTR [RBX+88],RDX
            movzx EAX,BYTE PTR [RCX+1]
            cmp AL,31
            jbe .L_407794

            test AL,AL
            js .L_408fee
.L_407262:

            lea RDI,QWORD PTR [RSP+208]
            mov QWORD PTR [RSP],RDI
            lea RDI,QWORD PTR [RSP+72]
            mov QWORD PTR [RSP+8],RDI
            lea RDI,QWORD PTR [RSP+240]
            mov QWORD PTR [RSP+16],RDI
            lea RDI,QWORD PTR [RSP+256]
            mov QWORD PTR [RSP+24],RDI
            jmp .L_407309
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_407298:

            cmp AL,224
            ja .L_408030

            cmp AL,92
            ja .L_4082b4

            cmp AL,31
            jbe .L_408088

            mov RDI,QWORD PTR [RBX+96]
            cmp AL,34
            lea RBP,QWORD PTR [RDI+1]
            jbe .L_40978c

            mov R8,QWORD PTR [RBX+104]
            mov QWORD PTR [RBX+96],RBP
            cmp R8,RBP
            jbe .L_408a58
.L_4072d1:

            movzx EAX,BYTE PTR [RBP]
            cmp AL,101
            ja .L_4088ff

            cmp AL,47
            ja .L_408f3e

            je .L_4072f0

            cmp AL,34
            jne .L_408088

            nop
.L_4072f0:

            mov R8,QWORD PTR [RBX+104]
            add RBP,1
            mov QWORD PTR [RBX+96],RBP
            cmp RBP,R8
            jae .L_408098
.L_407305:

            movzx EAX,BYTE PTR [RBP]
.L_407309:

            movzx EDX,AL
            cmp BYTE PTR [R15+RDX*1],0
            jns .L_407298

            mov RBP,QWORD PTR [RBX+96]
            jmp .L_4072f0
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407320:

            cmp AL,110
            ja .L_407780

            cmp AL,101
            jbe .L_407c58

            cmp AL,102
            je .L_407db8

            cmp AL,110
            jne .L_407790

            mov QWORD PTR [RBX+96],RDX
            mov QWORD PTR [RBX+88],RDX
            cmp BYTE PTR [RCX+1],117
            jne .L_407794

            lea RAX,QWORD PTR [RCX+2]
            mov QWORD PTR [RBX+96],RAX
            cmp BYTE PTR [RCX+2],108
            jne .L_407790

            lea RAX,QWORD PTR [RCX+3]
            mov QWORD PTR [RBX+96],RAX
            cmp BYTE PTR [RCX+3],108
            jne .L_407790

            add RCX,4
            mov DWORD PTR [RBX+112],3
            mov EAX,3
            mov QWORD PTR [RBX+96],RCX
            jmp .L_4077a0
          .byte 0x90
.L_407390:

            mov R13,QWORD PTR [RBX+16]
            mov RSI,QWORD PTR [RBX+72]
            test R13,R13
            je .L_4073b4

            cmp QWORD PTR [RBX+8],RSI
            jne .L_4098d9

            lea RAX,QWORD PTR [RSI+R13*1]
            cmp RBP,RAX
            jne .L_4098ba
.L_4073b4:

            cmp RCX,RSI
            jb .L_4096b9

            cmp RBP,RCX
            jb .L_40973a

            mov RAX,QWORD PTR [RBX]
            lea R12,QWORD PTR [RBX+8]
            test RAX,RAX
            je .L_4073e4

            mov RDI,QWORD PTR [RAX]
            mov RDI,QWORD PTR [RDI-24]
            test BYTE PTR [RAX+RDI*1+32],2
            je .L_407cb0
.L_4073e4:

            mov RAX,QWORD PTR [RSP+8]
            cmp RDX,15
            mov R8,QWORD PTR [RBX+8]
            mov QWORD PTR [RSP+72],RDX
            mov QWORD PTR [RSP+336],RAX
            ja .L_407d60
.L_407404:

            cmp RBP,RCX
            je .L_40742b

            sub RBP,RCX
            add RBP,RAX
            nop
.L_407410:

            movzx EDX,BYTE PTR [RCX]
            add RAX,1
            add RCX,1
            mov BYTE PTR [RAX-1],DL
            cmp RAX,RBP
            jne .L_407410

            mov RAX,QWORD PTR [RSP+336]
.L_40742b:

            mov RDX,QWORD PTR [RSP+72]
            mov RSI,R8
            mov RDI,R12
            mov QWORD PTR [RSP+344],RDX
            mov BYTE PTR [RAX+RDX*1],0
            mov RDX,R13
            sub RSI,QWORD PTR [RBX+8]
            mov R8,QWORD PTR [RSP+344]
            mov RCX,QWORD PTR [RSP+336]
.L_407459:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_40745e:

            mov RDI,QWORD PTR [RSP+336]
            cmp RDI,QWORD PTR [RSP+8]
            je .L_407472

            call _ZdlPv@PLT
.L_407472:

            mov RSI,QWORD PTR [RBX+16]
            xor R8D,R8D
            mov ECX,1
            xor EDX,EDX
            mov RDI,R12
.L_407483:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov RSI,QWORD PTR [RBX+16]
            mov R8D,1
            mov ECX,4
            xor EDX,EDX
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_4074a1:

            mov RCX,QWORD PTR [RBX+8]
            test RCX,RCX
            mov QWORD PTR [RBX+72],RCX
            je .L_409759

            mov RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX+80],RCX
            mov QWORD PTR [RBX+88],RCX
            mov QWORD PTR [RBX+96],RCX
            add RAX,RCX
            mov QWORD PTR [RBX+104],RAX
            movzx EDX,BYTE PTR [RCX]
            test BYTE PTR [R15+RDX*1],32
            mov RAX,RDX
            je .L_407217
.L_4074da:

            lea R12,QWORD PTR [RBX+8]
            lea R13,QWORD PTR [RSP+80]
            jmp .L_4074f6
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4074e8:

            movzx EAX,BYTE PTR [RCX]
            test BYTE PTR [R15+RAX*1],32
            je .L_4071dd
.L_4074f6:

            mov R10,QWORD PTR [RBX+104]
            add RCX,1
            mov QWORD PTR [RBX+96],RCX
            cmp RCX,R10
            jb .L_4074e8

            mov R9,QWORD PTR [RBX+16]
            mov RAX,QWORD PTR [RBX+72]
            test R9,R9
            je .L_40752b

            cmp QWORD PTR [RBX+8],RAX
            jne .L_4098d9

            lea RDX,QWORD PTR [RAX+R9*1]
            cmp R10,RDX
            jne .L_4098ba
.L_40752b:

            mov R8,QWORD PTR [RBX+80]
            cmp R8,RAX
            jb .L_4096b9

            cmp RCX,R8
            jb .L_4096dd

            cmp RCX,R10
            ja .L_40973a

            mov RBP,QWORD PTR [RBX+88]
            test RBP,RBP
            je .L_407690

            cmp R10,RBP
            jb .L_4096fc

            mov RDX,R8
            sub RBP,R8
            sub RDX,RAX
.L_407569:

            mov RAX,QWORD PTR [RBX]
            sub RCX,R8
            mov QWORD PTR [RSP],RCX
            test RAX,RAX
            je .L_40758a

            mov RCX,QWORD PTR [RAX]
            mov RCX,QWORD PTR [RCX-24]
            test BYTE PTR [RAX+RCX*1+32],2
            je .L_4076a0
.L_40758a:

            lea RAX,QWORD PTR [R13+16]
            test R10,R10
            mov RCX,QWORD PTR [RBX+8]
            mov QWORD PTR [RSP+80],RAX
            je .L_4075a5

            test R8,R8
            je .L_4098ae
.L_4075a5:

            mov RDX,R10
            lea RAX,QWORD PTR [R13+16]
            sub RDX,R8
            cmp RDX,15
            mov QWORD PTR [RSP+72],RDX
            ja .L_407730
.L_4075be:

            cmp R10,R8
            je .L_4075e9

            sub R10,R8
            add R10,RAX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4075d0:

            movzx EDX,BYTE PTR [R8]
            add RAX,1
            add R8,1
            mov BYTE PTR [RAX-1],DL
            cmp RAX,R10
            jne .L_4075d0

            mov RAX,QWORD PTR [RSP+80]
.L_4075e9:

            mov RDX,QWORD PTR [RSP+72]
            mov RSI,RCX
            mov RDI,R12
            mov QWORD PTR [RSP+88],RDX
            mov BYTE PTR [RAX+RDX*1],0
            mov RDX,R9
            sub RSI,QWORD PTR [RBX+8]
            mov R8,QWORD PTR [RSP+88]
            mov RCX,QWORD PTR [RSP+80]
.L_40760e:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_407613:

            mov RDI,QWORD PTR [RSP+80]
            lea RAX,QWORD PTR [R13+16]
            cmp RDI,RAX
            je .L_407626

            call _ZdlPv@PLT
.L_407626:

            mov RSI,QWORD PTR [RBX+16]
            xor R8D,R8D
            mov ECX,1
            xor EDX,EDX
            mov RDI,R12
.L_407637:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov RSI,QWORD PTR [RBX+16]
            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_407652:

            mov RAX,QWORD PTR [RBX+8]
            test RAX,RAX
            mov QWORD PTR [RBX+72],RAX
            je .L_409759

            mov RCX,QWORD PTR [RSP]
            add RBP,RAX
            mov QWORD PTR [RBX+80],RAX
            mov QWORD PTR [RBX+88],RBP
            add RCX,RAX
            add RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX+96],RCX
            mov QWORD PTR [RBX+104],RAX
            jmp .L_4074e8
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
.L_407690:

            mov RDX,R8
            xor EBP,EBP
            sub RDX,RAX
            jmp .L_407569
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_4076a0:

            cmp RDX,-1
            je .L_407da0

            test RDX,RDX
            je .L_4076c0

            cmp R9,RDX
            mov RDI,R12
            cmovbe RDX,R9
            xor ESI,ESI
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
.L_4076c0:

            mov RAX,QWORD PTR [RBX+40]
            mov QWORD PTR [RBX+48],0
            lea RSI,QWORD PTR [RBX+40]
            mov EDX,10
            mov BYTE PTR [RAX],0
            mov RDI,QWORD PTR [RBX]
            call _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT

            mov RDX,QWORD PTR [RBX+48]
            mov RSI,QWORD PTR [RBX+40]
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov R9,QWORD PTR [RBX+16]
            lea RCX,QWORD PTR [RBX+24]
            mov EDX,15
            cmp RAX,RCX
            lea R10,QWORD PTR [R9+1]
            je .L_40770e

            mov RDX,QWORD PTR [RBX+24]
.L_40770e:

            cmp R10,RDX
            ja .L_407c78
.L_407717:

            mov BYTE PTR [RAX+R9*1],10
            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],R10
            mov BYTE PTR [RAX+R9*1+1],0
            jmp .L_407652
          .byte 0x90
.L_407730:

            mov RSI,QWORD PTR [RSP+16]
            xor EDX,EDX
            mov RDI,R13
            mov QWORD PTR [RSP+48],RCX
            mov QWORD PTR [RSP+40],R9
            mov QWORD PTR [RSP+32],R8
            mov QWORD PTR [RSP+24],R10
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT

            mov RDX,QWORD PTR [RSP+72]
            mov QWORD PTR [RSP+80],RAX
            mov RCX,QWORD PTR [RSP+48]
            mov R9,QWORD PTR [RSP+40]
            mov R8,QWORD PTR [RSP+32]
            mov R10,QWORD PTR [RSP+24]
            mov QWORD PTR [RSP+96],RDX
            jmp .L_4075be
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407780:

            cmp AL,122
            ja .L_407a30

            cmp AL,116
            je .L_408249
.L_407790:

            mov QWORD PTR [RBX+96],RDX
.L_407794:

            mov DWORD PTR [RBX+112],14
            mov EAX,14
.L_4077a0:

            mov RDI,QWORD PTR [RSP+376]
            xor RDI,QWORD PTR FS:[40]
            jne .L_4096d8

            add RSP,392
.L_4077be:

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
.L_4077d0:

            cmp AL,57
            ja .L_407a08

            cmp AL,47
            jbe .L_407790

            cmp AL,48
            jne .L_407e65

            mov QWORD PTR [RBX+96],RDX
            mov QWORD PTR [RBX+88],RDX
            movzx EAX,BYTE PTR [RCX+1]
            cmp AL,57
            ja .L_408a0b

            cmp AL,46
            je .L_409114

            cmp AL,47
            jbe .L_408238
.L_407808:

            lea RAX,QWORD PTR [RSP+72]
            lea R13,QWORD PTR [RBX+8]
            lea R12,QWORD PTR [RSP+304]
            mov QWORD PTR [RSP],RAX
            jmp .L_40782e
          .byte 0x90
.L_407820:

            movzx EAX,BYTE PTR [RSI]
            sub EAX,48
            cmp AL,9
            ja .L_407794
.L_40782e:

            mov R8,QWORD PTR [RBX+104]
            add RSI,1
            mov QWORD PTR [RBX+96],RSI
            cmp RSI,R8
            jb .L_407820

            mov R9,QWORD PTR [RBX+16]
            mov RAX,QWORD PTR [RBX+72]
            test R9,R9
            je .L_407863

            cmp QWORD PTR [RBX+8],RAX
            jne .L_4098d9

            lea RDX,QWORD PTR [RAX+R9*1]
            cmp R8,RDX
            jne .L_4098ba
.L_407863:

            mov R14,QWORD PTR [RBX+80]
            cmp R14,RAX
            jb .L_4096b9

            cmp RSI,R14
            jb .L_4096dd

            cmp RSI,R8
            ja .L_40973a

            mov RBP,QWORD PTR [RBX+88]
            test RBP,RBP
            je .L_4091f0

            cmp R8,RBP
            jb .L_4096fc

            mov RDX,R14
            sub RBP,R14
            sub RDX,RAX
.L_4078a1:

            mov RAX,QWORD PTR [RBX]
            sub RSI,R14
            mov R15,RSI
            test RAX,RAX
            je .L_4078c1

            mov RSI,QWORD PTR [RAX]
            mov RSI,QWORD PTR [RSI-24]
            test BYTE PTR [RAX+RSI*1+32],2
            je .L_4091fd
.L_4078c1:

            lea RAX,QWORD PTR [R12+16]
            test R8,R8
            mov R10,QWORD PTR [RBX+8]
            mov QWORD PTR [RSP+304],RAX
            je .L_4078e0

            test R14,R14
            je .L_4098ae
.L_4078e0:

            mov RDX,R8
            lea RAX,QWORD PTR [R12+16]
            sub RDX,R14
            cmp RDX,15
            mov QWORD PTR [RSP+72],RDX
            jbe .L_407937

            mov RSI,QWORD PTR [RSP]
            xor EDX,EDX
            mov RDI,R12
            mov QWORD PTR [RSP+24],R10
            mov QWORD PTR [RSP+16],R9
            mov QWORD PTR [RSP+8],R8
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.L_407913:

            mov RDX,QWORD PTR [RSP+72]
            mov R10,QWORD PTR [RSP+24]
            mov R9,QWORD PTR [RSP+16]
            mov R8,QWORD PTR [RSP+8]
            mov QWORD PTR [RSP+304],RAX
            mov QWORD PTR [RSP+320],RDX
.L_407937:

            cmp R8,R14
            je .L_40795c

            nop
            nop
            nop
            nop
.L_407940:

            movzx EDX,BYTE PTR [R14]
            add R14,1
            add RAX,1
            mov BYTE PTR [RAX-1],DL
            cmp R8,R14
            jne .L_407940

            mov RAX,QWORD PTR [RSP+304]
.L_40795c:

            mov RDX,QWORD PTR [RSP+72]
            mov RSI,R10
            mov RDI,R13
            mov QWORD PTR [RSP+312],RDX
            mov BYTE PTR [RAX+RDX*1],0
            mov RDX,R9
            sub RSI,QWORD PTR [RBX+8]
            mov R8,QWORD PTR [RSP+312]
            mov RCX,QWORD PTR [RSP+304]
.L_40798a:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_40798f:

            mov RDI,QWORD PTR [RSP+304]
            lea RAX,QWORD PTR [R12+16]
            cmp RDI,RAX
            je .L_4079a6

            call _ZdlPv@PLT
.L_4079a6:

            mov RSI,QWORD PTR [RBX+16]
            xor R8D,R8D
            mov ECX,1
            xor EDX,EDX
            mov RDI,R13
.L_4079b7:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov RSI,QWORD PTR [RBX+16]
            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RDI,R13
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_4079d2:

            mov RAX,QWORD PTR [RBX+8]
            test RAX,RAX
            mov QWORD PTR [RBX+72],RAX
            je .L_409759

            add RBP,RAX
            lea RSI,QWORD PTR [RAX+R15*1]
            mov QWORD PTR [RBX+80],RAX
            add RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX+88],RBP
            mov QWORD PTR [RBX+96],RSI
            mov QWORD PTR [RBX+104],RAX
            jmp .L_407820
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407a08:

            cmp AL,58
            je .L_407e50

            cmp AL,91
            jne .L_407790

            mov QWORD PTR [RBX+96],RDX
            mov DWORD PTR [RBX+112],8
            mov EAX,8
            jmp .L_4077a0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407a30:

            cmp AL,123
            je .L_407e38

            cmp AL,125
            jne .L_407790

            mov QWORD PTR [RBX+96],RDX
            mov DWORD PTR [RBX+112],11
            mov EAX,11
            jmp .L_4077a0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407a58:

            cmp AL,43
            jbe .L_407790

            cmp AL,44
            je .L_408016

            mov QWORD PTR [RBX+96],RDX
            movzx EAX,BYTE PTR [RCX+1]
            cmp AL,47
            jbe .L_407794

            cmp AL,48
            je .L_408fb8

            cmp AL,57
            ja .L_407794

            lea RAX,QWORD PTR [RSP+72]
            xor R15D,R15D
            lea R13,QWORD PTR [RBX+8]
            lea RBP,QWORD PTR [RSP+272]
            mov QWORD PTR [RSP],RAX
            jmp .L_407abd
.L_407aa2:

            movzx EAX,BYTE PTR [RSI]
            cmp AL,57
            ja .L_408fff

            cmp AL,46
            je .L_40854e

            cmp AL,47
            jbe .L_40856a
.L_407abd:

            mov R8,QWORD PTR [RBX+104]
            add RSI,1
            mov QWORD PTR [RBX+96],RSI
            mov QWORD PTR [RBX+88],RSI
            mov RAX,R8
            sub RAX,RSI
            cmp RAX,2
            jg .L_407aa2

            mov R9,QWORD PTR [RBX+16]
            mov RAX,QWORD PTR [RBX+72]
            test R9,R9
            je .L_407afd

            cmp QWORD PTR [RBX+8],RAX
            jne .L_4098d9

            lea RDX,QWORD PTR [RAX+R9*1]
            cmp R8,RDX
            jne .L_4098ba
.L_407afd:

            mov RCX,QWORD PTR [RBX+80]
            cmp RCX,RAX
            jb .L_4096b9

            cmp RSI,RCX
            jb .L_4096dd

            cmp RSI,R8
            ja .L_40973a

            mov RDX,QWORD PTR [RBX]
            mov R14,RSI
            mov R12,R15
            sub R14,RCX
            test RSI,RSI
            cmovne R12,R14
            test RDX,RDX
            je .L_407b46

            mov RSI,QWORD PTR [RDX]
            mov RSI,QWORD PTR [RSI-24]
            test BYTE PTR [RDX+RSI*1+32],2
            je .L_4093bb
.L_407b46:

            lea RAX,QWORD PTR [RBP+16]
            test R8,R8
            mov R10,QWORD PTR [RBX+8]
            mov QWORD PTR [RSP+272],RAX
            je .L_407b64

            test RCX,RCX
            je .L_4098ae
.L_407b64:

            mov RDX,R8
            lea RAX,QWORD PTR [RBP+16]
            sub RDX,RCX
            cmp RDX,15
            mov QWORD PTR [RSP+72],RDX
            ja .L_409487
.L_407b7d:

            cmp R8,RCX
            je .L_407bac

            mov RDX,R8
            sub RDX,RCX
            add RDX,RAX
            nop
            nop
            nop
            nop
            nop
.L_407b90:

            movzx ESI,BYTE PTR [RCX]
            add RAX,1
            add RCX,1
            mov BYTE PTR [RAX-1],SIL
            cmp RDX,RAX
            jne .L_407b90

            mov RAX,QWORD PTR [RSP+272]
.L_407bac:

            mov RDX,QWORD PTR [RSP+72]
            mov RSI,R10
            mov RDI,R13
            mov QWORD PTR [RSP+280],RDX
            mov BYTE PTR [RAX+RDX*1],0
            mov RDX,R9
            sub RSI,QWORD PTR [RBX+8]
            mov R8,QWORD PTR [RSP+280]
            mov RCX,QWORD PTR [RSP+272]
.L_407bda:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_407bdf:

            mov RDI,QWORD PTR [RSP+272]
            lea RAX,QWORD PTR [RBP+16]
            cmp RDI,RAX
            je .L_407bf5

            call _ZdlPv@PLT
.L_407bf5:

            mov RSI,QWORD PTR [RBX+16]
            xor R8D,R8D
            mov ECX,1
            xor EDX,EDX
            mov RDI,R13
.L_407c06:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov RSI,QWORD PTR [RBX+16]
            mov R8D,1
            mov ECX,2
            xor EDX,EDX
            mov RDI,R13
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_407c24:

            mov RAX,QWORD PTR [RBX+8]
            test RAX,RAX
            mov QWORD PTR [RBX+72],RAX
            je .L_409759

            add R12,RAX
            lea RSI,QWORD PTR [RAX+R14*1]
            mov QWORD PTR [RBX+80],RAX
            add RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX+88],R12
            mov QWORD PTR [RBX+96],RSI
            mov QWORD PTR [RBX+104],RAX
            jmp .L_407aa2
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407c58:

            cmp AL,93
            jne .L_407790

            mov QWORD PTR [RBX+96],RDX
            mov DWORD PTR [RBX+112],10
            mov EAX,10
            jmp .L_4077a0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407c78:

            mov RSI,R9
            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RDI,R12
            mov QWORD PTR [RSP+32],R10
            mov QWORD PTR [RSP+24],R9
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov R10,QWORD PTR [RSP+32]
            mov R9,QWORD PTR [RSP+24]
            jmp .L_407717
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407cb0:

            sub RCX,RSI
            cmp RCX,-1
            je .L_4082a0

            test RCX,RCX
            je .L_407cd6

            cmp R13,RCX
            mov RDX,RCX
            mov RDI,R12
            cmovbe RDX,R13
            xor ESI,ESI
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
.L_407cd6:

            mov RAX,QWORD PTR [RBX+40]
            mov QWORD PTR [RBX+48],0
            lea RSI,QWORD PTR [RBX+40]
            mov EDX,10
            mov BYTE PTR [RAX],0
            mov RDI,QWORD PTR [RBX]
            call _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT

            mov RDX,QWORD PTR [RBX+48]
            mov RSI,QWORD PTR [RBX+40]
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov RBP,QWORD PTR [RBX+16]
            lea RCX,QWORD PTR [RBX+24]
            mov EDX,15
            cmp RAX,RCX
            lea R13,QWORD PTR [RBP+1]
            je .L_407d24

            mov RDX,QWORD PTR [RBX+24]
.L_407d24:

            cmp R13,RDX
            jbe .L_407d42

            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,RBP
            mov RDI,R12
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
.L_407d42:

            mov BYTE PTR [RAX+RBP*1],10
            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],R13
            mov BYTE PTR [RAX+RBP*1+1],0
            jmp .L_4074a1
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407d60:

            mov RSI,QWORD PTR [RSP+16]
            xor EDX,EDX
            mov RDI,R14
            mov QWORD PTR [RSP+24],RCX
            mov QWORD PTR [RSP],R8
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.L_407d78:

            mov RDX,QWORD PTR [RSP+72]
            mov QWORD PTR [RSP+336],RAX
            mov RCX,QWORD PTR [RSP+24]
            mov R8,QWORD PTR [RSP]
            mov QWORD PTR [RSP+352],RDX
            jmp .L_407404
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_407da0:

            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],0
            mov BYTE PTR [RAX],0
            jmp .L_4076c0
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_407db8:

            mov QWORD PTR [RBX+96],RDX
            mov QWORD PTR [RBX+88],RDX
            cmp BYTE PTR [RCX+1],97
            jne .L_407794

            lea RAX,QWORD PTR [RCX+2]
            mov QWORD PTR [RBX+96],RAX
            cmp BYTE PTR [RCX+2],108
            jne .L_407790

            lea RAX,QWORD PTR [RCX+3]
            mov QWORD PTR [RBX+96],RAX
            cmp BYTE PTR [RCX+3],115
            jne .L_407790

            lea RAX,QWORD PTR [RCX+4]
            mov QWORD PTR [RBX+96],RAX
            cmp BYTE PTR [RCX+4],101
            jne .L_407790

            add RCX,5
            mov DWORD PTR [RBX+112],2
            mov EAX,2
            mov QWORD PTR [RBX+96],RCX
            jmp .L_4077a0
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407e20:

            mov QWORD PTR [RBX+96],RDX
            mov DWORD PTR [RBX+112],15
            mov EAX,15
            jmp .L_4077a0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407e38:

            mov QWORD PTR [RBX+96],RDX
            mov DWORD PTR [RBX+112],9
            mov EAX,9
            jmp .L_4077a0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_407e50:

            mov QWORD PTR [RBX+96],RDX
            mov DWORD PTR [RBX+112],12
            mov EAX,12
            jmp .L_4077a0
.L_407e65:

            lea RAX,QWORD PTR [RSP+72]
            lea R14,QWORD PTR [RBX+8]
            lea R13,QWORD PTR [RSP+112]
            mov QWORD PTR [RSP],RAX
            jmp .L_407e95
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407e80:

            movzx EDX,BYTE PTR [RCX]
            test BYTE PTR [R15+RDX*1],64
            mov RAX,RDX
            je .L_4084d5

            lea RDX,QWORD PTR [RCX+1]
.L_407e95:

            mov R8,QWORD PTR [RBX+104]
            mov RCX,RDX
            mov QWORD PTR [RBX+96],RDX
            mov QWORD PTR [RBX+88],RDX
            mov RAX,R8
            sub RAX,RDX
            cmp RAX,2
            jg .L_407e80

            mov R9,QWORD PTR [RBX+16]
            mov RSI,QWORD PTR [RBX+72]
            test R9,R9
            je .L_407ed4

            cmp QWORD PTR [RBX+8],RSI
            jne .L_4098d9

            lea RAX,QWORD PTR [RSI+R9*1]
            cmp R8,RAX
            jne .L_4098ba
.L_407ed4:

            mov RCX,QWORD PTR [RBX+80]
            cmp RCX,RSI
            jb .L_4096b9

            cmp RDX,RCX
            jb .L_4096dd

            cmp RDX,R8
            ja .L_40973a

            mov RAX,QWORD PTR [RBX]
            mov RBP,RDX
            mov R12D,0
            sub RBP,RCX
            test RDX,RDX
            cmovne R12,RBP
            test RAX,RAX
            je .L_407f20

            mov RDX,QWORD PTR [RAX]
            mov RDX,QWORD PTR [RDX-24]
            test BYTE PTR [RAX+RDX*1+32],2
            je .L_408840
.L_407f20:

            lea RAX,QWORD PTR [R13+16]
            test RCX,RCX
            mov R10,QWORD PTR [RBX+8]
            mov QWORD PTR [RSP+112],RAX
            jne .L_407f3b

            test R8,R8
            jne .L_4098ae
.L_407f3b:

            mov RDX,R8
            lea RAX,QWORD PTR [R13+16]
            sub RDX,RCX
            cmp RDX,15
            mov QWORD PTR [RSP+72],RDX
            ja .L_408971
.L_407f54:

            cmp R8,RCX
            je .L_407f79

            sub R8,RCX
            lea RDX,QWORD PTR [RAX+R8*1]
.L_407f60:

            movzx ESI,BYTE PTR [RCX]
            add RAX,1
            add RCX,1
            mov BYTE PTR [RAX-1],SIL
            cmp RAX,RDX
            jne .L_407f60

            mov RAX,QWORD PTR [RSP+112]
.L_407f79:

            mov RDX,QWORD PTR [RSP+72]
            mov RSI,R10
            mov RDI,R14
            mov QWORD PTR [RSP+120],RDX
            mov BYTE PTR [RAX+RDX*1],0
            mov RDX,R9
            sub RSI,QWORD PTR [RBX+8]
            mov R8,QWORD PTR [RSP+120]
            mov RCX,QWORD PTR [RSP+112]
.L_407f9e:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_407fa3:

            mov RDI,QWORD PTR [RSP+112]
            lea RAX,QWORD PTR [R13+16]
            cmp RDI,RAX
            je .L_407fb6

            call _ZdlPv@PLT
.L_407fb6:

            mov RSI,QWORD PTR [RBX+16]
            xor R8D,R8D
            mov ECX,1
            xor EDX,EDX
            mov RDI,R14
.L_407fc7:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov RSI,QWORD PTR [RBX+16]
            mov R8D,1
            mov ECX,2
            xor EDX,EDX
            mov RDI,R14
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_407fe5:

            mov RAX,QWORD PTR [RBX+8]
            test RAX,RAX
            mov QWORD PTR [RBX+72],RAX
            je .L_409759

            add R12,RAX
            lea RCX,QWORD PTR [RAX+RBP*1]
            mov QWORD PTR [RBX+80],RAX
            add RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX+88],R12
            mov QWORD PTR [RBX+96],RCX
            mov QWORD PTR [RBX+104],RAX
            jmp .L_407e80
.L_408016:

            mov QWORD PTR [RBX+96],RDX
            mov DWORD PTR [RBX+112],13
            mov EAX,13
            jmp .L_4077a0

            nop
            nop
            nop
            nop
            nop
.L_408030:

            cmp AL,239
            ja .L_4082f8

            mov RDI,QWORD PTR [RBX+96]
            cmp AL,237
            mov RCX,QWORD PTR [RBX+104]
            lea RBP,QWORD PTR [RDI+1]
            je .L_408a23
.L_40804c:

            cmp RBP,RCX
            mov QWORD PTR [RBX+96],RBP
            jae .L_408637
.L_408059:

            movzx EAX,BYTE PTR [RBP]
            add EAX,-128
            cmp AL,63
            ja .L_408088
.L_408064:

            mov RCX,QWORD PTR [RBX+104]
            add RBP,1
.L_40806c:

            cmp RBP,RCX
            mov QWORD PTR [RBX+96],RBP
            jae .L_408342
.L_408079:

            movzx EAX,BYTE PTR [RBP]
            add EAX,-128
            cmp AL,63
            jbe .L_4072f0
.L_408088:

            mov RAX,QWORD PTR [RBX+88]
            mov QWORD PTR [RBX+96],RAX
            jmp .L_407794
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408098:

            mov R9,QWORD PTR [RBX+16]
            mov RAX,QWORD PTR [RBX+72]
            test R9,R9
            je .L_4080bc

            cmp QWORD PTR [RBX+8],RAX
            jne .L_4098d9

            lea RDX,QWORD PTR [RAX+R9*1]
            cmp R8,RDX
            jne .L_4098ba
.L_4080bc:

            mov RCX,QWORD PTR [RBX+80]
            cmp RCX,RAX
            jb .L_4096b9

            cmp RBP,RCX
            jb .L_4096dd

            cmp RBP,R8
            ja .L_40973a

            mov R12,QWORD PTR [RBX+88]
            test R12,R12
            je .L_40857b

            cmp R8,R12
            jb .L_4096fc

            mov RDX,RCX
            sub R12,RCX
            sub RDX,RAX
.L_4080fa:

            mov RAX,QWORD PTR [RBX]
            sub RBP,RCX
            lea R14,QWORD PTR [RBX+8]
            test RAX,RAX
            je .L_40811b

            mov RSI,QWORD PTR [RAX]
            mov RSI,QWORD PTR [RSI-24]
            test BYTE PTR [RAX+RSI*1+32],2
            je .L_408589
.L_40811b:

            lea R13,QWORD PTR [RSP+144]
            test RCX,RCX
            mov R10,QWORD PTR [RBX+8]
            lea RAX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+144],RAX
            jne .L_408141

            test R8,R8
            jne .L_4098ae
.L_408141:

            mov RDX,R8
            lea RAX,QWORD PTR [R13+16]
            sub RDX,RCX
            cmp RDX,15
            mov QWORD PTR [RSP+72],RDX
            ja .L_408920
.L_40815a:

            cmp R8,RCX
            je .L_40818b

            sub R8,RCX
            lea RSI,QWORD PTR [RAX+R8*1]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_408170:

            movzx EDX,BYTE PTR [RCX]
            add RAX,1
            add RCX,1
            mov BYTE PTR [RAX-1],DL
            cmp RAX,RSI
            jne .L_408170

            mov RAX,QWORD PTR [RSP+144]
.L_40818b:

            mov RDX,QWORD PTR [RSP+72]
            mov RSI,R10
            mov RDI,R14
            mov QWORD PTR [RSP+152],RDX
            mov BYTE PTR [RAX+RDX*1],0
            mov RDX,R9
            sub RSI,QWORD PTR [RBX+8]
            mov R8,QWORD PTR [RSP+152]
            mov RCX,QWORD PTR [RSP+144]
.L_4081b9:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_4081be:

            mov RDI,QWORD PTR [RSP+144]
            add R13,16
            cmp RDI,R13
            je .L_4081d4

            call _ZdlPv@PLT
.L_4081d4:

            mov RSI,QWORD PTR [RBX+16]
            xor R8D,R8D
            mov ECX,1
            xor EDX,EDX
            mov RDI,R14
.L_4081e5:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov RSI,QWORD PTR [RBX+16]
            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RDI,R14
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_408200:

            mov RAX,QWORD PTR [RBX+8]
            test RAX,RAX
            mov QWORD PTR [RBX+72],RAX
            je .L_409759

            add R12,RAX
            add RBP,RAX
            mov QWORD PTR [RBX+80],RAX
            add RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX+88],R12
            mov QWORD PTR [RBX+96],RBP
            mov QWORD PTR [RBX+104],RAX
            jmp .L_407305
.L_408230:

            mov RAX,QWORD PTR [RBX+88]
            mov QWORD PTR [RBX+96],RAX
.L_408238:

            mov DWORD PTR [RBX+112],5
            mov EAX,5
            jmp .L_4077a0
.L_408249:

            mov QWORD PTR [RBX+96],RDX
            mov QWORD PTR [RBX+88],RDX
            cmp BYTE PTR [RCX+1],114
            jne .L_407794

            lea RAX,QWORD PTR [RCX+2]
            mov QWORD PTR [RBX+96],RAX
            cmp BYTE PTR [RCX+2],117
            jne .L_407790

            lea RAX,QWORD PTR [RCX+3]
            mov QWORD PTR [RBX+96],RAX
            cmp BYTE PTR [RCX+3],101
            jne .L_407790

            add RCX,4
            mov DWORD PTR [RBX+112],1
            mov EAX,1
            mov QWORD PTR [RBX+96],RCX
            jmp .L_4077a0
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4082a0:

            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],0
            mov BYTE PTR [RAX],0
            jmp .L_407cd6
.L_4082b4:

            cmp AL,193
            jbe .L_408088

            mov RDI,QWORD PTR [RBX+96]
            cmp AL,224
            mov RCX,QWORD PTR [RBX+104]
            lea RBP,QWORD PTR [RDI+1]
            jne .L_40806c

            cmp RBP,RCX
            mov QWORD PTR [RBX+96],RBP
            jae .L_40901a
.L_4082dd:

            movzx EAX,BYTE PTR [RBP]
            add EAX,96
            cmp AL,31
            jbe .L_408064

            jmp .L_408088
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4082f8:

            cmp AL,240
            je .L_408807

            cmp AL,243
            jbe .L_408e62

            cmp AL,244
            jne .L_408088

            mov RAX,QWORD PTR [RBX+96]
            lea RBP,QWORD PTR [RAX+1]
            cmp RBP,QWORD PTR [RBX+104]
            mov QWORD PTR [RBX+96],RBP
            jae .L_409384
.L_408326:

            movzx EAX,BYTE PTR [RBP]
            add EAX,-128
            cmp AL,15
            ja .L_408088
.L_408335:

            add RBP,1
            mov RCX,QWORD PTR [RBX+104]
            jmp .L_40804c
.L_408342:

            mov R9,QWORD PTR [RBX+16]
            mov RAX,QWORD PTR [RBX+72]
            test R9,R9
            je .L_408366

            cmp QWORD PTR [RBX+8],RAX
            jne .L_4098d9

            lea RDX,QWORD PTR [RAX+R9*1]
            cmp RCX,RDX
            jne .L_4098ba
.L_408366:

            mov R14,QWORD PTR [RBX+80]
            cmp R14,RAX
            jb .L_4096b9

            cmp RBP,R14
            jb .L_4096dd

            cmp RBP,RCX
            ja .L_40973a

            mov R12,QWORD PTR [RBX+88]
            test R12,R12
            je .L_408c41

            cmp R12,RCX
            ja .L_4096fc

            mov RDX,R14
            sub R12,R14
            sub RDX,RAX
.L_4083a4:

            mov RAX,QWORD PTR [RBX]
            sub RBP,R14
            lea R13,QWORD PTR [RBX+8]
            test RAX,RAX
            je .L_4083c5

            mov RSI,QWORD PTR [RAX]
            mov RSI,QWORD PTR [RSI-24]
            test BYTE PTR [RAX+RSI*1+32],2
            je .L_408e90
.L_4083c5:

            mov RAX,QWORD PTR [RSP]
            mov R8,QWORD PTR [RBX+8]
            add RAX,16
            test RCX,RCX
            mov QWORD PTR [RSP+208],RAX
            je .L_4083e7

            test R14,R14
            je .L_4098ae
.L_4083e7:

            mov RAX,QWORD PTR [RSP]
            mov RDX,RCX
            sub RDX,R14
            mov QWORD PTR [RSP+72],RDX
            add RAX,16
            cmp RDX,15
            ja .L_408f70
.L_408404:

            cmp R14,RCX
            je .L_40842c

            sub RCX,R14
            add RCX,RAX
            nop
.L_408410:

            movzx EDX,BYTE PTR [R14]
            add RAX,1
            add R14,1
            mov BYTE PTR [RAX-1],DL
            cmp RCX,RAX
            jne .L_408410

            mov RAX,QWORD PTR [RSP+208]
.L_40842c:

            mov RDX,QWORD PTR [RSP+72]
            mov RSI,R8
            mov RDI,R13
            mov QWORD PTR [RSP+216],RDX
            mov BYTE PTR [RAX+RDX*1],0
            mov RDX,R9
            sub RSI,QWORD PTR [RBX+8]
            mov R8,QWORD PTR [RSP+216]
            mov RCX,QWORD PTR [RSP+208]
.L_40845a:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_40845f:

            mov RAX,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+208]
            add RAX,16
            cmp RDI,RAX
            je .L_408479

            call _ZdlPv@PLT
.L_408479:

            mov RSI,QWORD PTR [RBX+16]
            xor R8D,R8D
            mov ECX,1
            xor EDX,EDX
            mov RDI,R13
.L_40848a:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov RSI,QWORD PTR [RBX+16]
            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RDI,R13
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_4084a5:

            mov RAX,QWORD PTR [RBX+8]
            test RAX,RAX
            mov QWORD PTR [RBX+72],RAX
            je .L_409759

            add R12,RAX
            add RBP,RAX
            mov QWORD PTR [RBX+80],RAX
            add RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX+88],R12
            mov QWORD PTR [RBX+96],RBP
            mov QWORD PTR [RBX+104],RAX
            jmp .L_408079
.L_4084d5:

            cmp DL,68
            ja .L_4089be

            cmp DL,46
            jne .L_408238
.L_4084e7:

            lea RAX,QWORD PTR [RCX+1]
            mov QWORD PTR [RBX+96],RAX
            movzx EDX,BYTE PTR [RCX+1]
            sub EDX,48
            cmp DL,9
            ja .L_408230
.L_4084ff:

            mov RDX,QWORD PTR [RBX+104]
            add RAX,1
            mov QWORD PTR [RBX+96],RAX
            mov QWORD PTR [RBX+88],RAX
            sub RDX,RAX
            cmp RDX,2
            jg .L_408529

            mov ESI,3
            mov RDI,RBX
            call .L_406d70

            mov RAX,QWORD PTR [RBX+96]
.L_408529:

            movzx EDX,BYTE PTR [RAX]
            cmp DL,68
            ja .L_409648

            sub EDX,48
            cmp DL,9
            jbe .L_4084ff
.L_40853d:

            mov DWORD PTR [RBX+112],7
            mov EAX,7
            jmp .L_4077a0
.L_40854e:

            lea RAX,QWORD PTR [RSI+1]
            mov QWORD PTR [RBX+96],RAX
            movzx EDX,BYTE PTR [RSI+1]
            sub EDX,48
            cmp DL,9
            jbe .L_4084ff

            mov RAX,QWORD PTR [RBX+88]
            mov QWORD PTR [RBX+96],RAX
.L_40856a:

            mov DWORD PTR [RBX+112],6
            mov EAX,6
            jmp .L_4077a0
.L_40857b:

            mov RDX,RCX
            xor R12D,R12D
            sub RDX,RAX
            jmp .L_4080fa
.L_408589:

            cmp RDX,-1
            je .L_40903e

            test RDX,RDX
            je .L_4085a9

            cmp R9,RDX
            mov RDI,R14
            cmovbe RDX,R9
            xor ESI,ESI
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
.L_4085a9:

            mov RAX,QWORD PTR [RBX+40]
            mov QWORD PTR [RBX+48],0
            lea RSI,QWORD PTR [RBX+40]
            mov EDX,10
            mov BYTE PTR [RAX],0
            mov RDI,QWORD PTR [RBX]
            call _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT

            mov RDX,QWORD PTR [RBX+48]
            mov RSI,QWORD PTR [RBX+40]
            mov RDI,R14
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov R13,QWORD PTR [RBX+16]
            lea RCX,QWORD PTR [RBX+24]
            mov EDX,15
            cmp RAX,RCX
            lea R9,QWORD PTR [R13+1]
            je .L_4085f7

            mov RDX,QWORD PTR [RBX+24]
.L_4085f7:

            cmp R9,RDX
            jbe .L_40861f

            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,R13
            mov RDI,R14
            mov QWORD PTR [RSP+32],R9
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov R9,QWORD PTR [RSP+32]
.L_40861f:

            mov BYTE PTR [RAX+R13*1],10
            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],R9
            mov BYTE PTR [RAX+R13*1+1],0
            jmp .L_408200
.L_408637:

            mov R9,QWORD PTR [RBX+16]
            mov RAX,QWORD PTR [RBX+72]
            test R9,R9
            je .L_40865b

            cmp QWORD PTR [RBX+8],RAX
            jne .L_4098d9

            lea RDX,QWORD PTR [RAX+R9*1]
            cmp RCX,RDX
            jne .L_4098ba
.L_40865b:

            mov R14,QWORD PTR [RBX+80]
            cmp R14,RAX
            jb .L_4096b9

            cmp R14,RBP
            ja .L_4096dd

            cmp RBP,RCX
            ja .L_40973a

            mov R12,QWORD PTR [RBX+88]
            test R12,R12
            je .L_409030

            cmp R12,RCX
            ja .L_4096fc

            mov RDX,R14
            sub R12,R14
            sub RDX,RAX
.L_408699:

            mov RAX,QWORD PTR [RBX]
            sub RBP,R14
            lea R13,QWORD PTR [RBX+8]
            test RAX,RAX
            je .L_4086ba

            mov RSI,QWORD PTR [RAX]
            mov RSI,QWORD PTR [RSI-24]
            test BYTE PTR [RAX+RSI*1+32],2
            je .L_409066
.L_4086ba:

            mov RAX,QWORD PTR [RSP+24]
            test RCX,RCX
            mov R8,QWORD PTR [RBX+8]
            mov QWORD PTR [RSP+240],RAX
            je .L_4086d9

            test R14,R14
            je .L_4098ae
.L_4086d9:

            mov RAX,QWORD PTR [RSP+16]
            mov RDX,RCX
            sub RDX,R14
            mov QWORD PTR [RSP+72],RDX
            add RAX,16
            cmp RDX,15
            jbe .L_408737

            mov RSI,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+16]
            xor EDX,EDX
            mov QWORD PTR [RSP+48],RCX
            mov QWORD PTR [RSP+40],R8
            mov QWORD PTR [RSP+32],R9
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.L_408713:

            mov RDX,QWORD PTR [RSP+72]
            mov RCX,QWORD PTR [RSP+48]
            mov R8,QWORD PTR [RSP+40]
            mov R9,QWORD PTR [RSP+32]
            mov QWORD PTR [RSP+240],RAX
            mov QWORD PTR [RSP+256],RDX
.L_408737:

            cmp R14,RCX
            je .L_408764

            sub RCX,R14
            add RCX,RAX
            nop
            nop
            nop
            nop
            nop
            nop
.L_408748:

            movzx EDX,BYTE PTR [R14]
            add RAX,1
            add R14,1
            mov BYTE PTR [RAX-1],DL
            cmp RCX,RAX
            jne .L_408748

            mov RAX,QWORD PTR [RSP+240]
.L_408764:

            mov RDX,QWORD PTR [RSP+72]
            mov RSI,R8
            mov RDI,R13
            mov QWORD PTR [RSP+248],RDX
            mov BYTE PTR [RAX+RDX*1],0
            mov RDX,R9
            sub RSI,QWORD PTR [RBX+8]
            mov R8,QWORD PTR [RSP+248]
            mov RCX,QWORD PTR [RSP+240]
.L_408792:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_408797:

            mov RDI,QWORD PTR [RSP+240]
            cmp RDI,QWORD PTR [RSP+24]
            je .L_4087ab

            call _ZdlPv@PLT
.L_4087ab:

            mov RSI,QWORD PTR [RBX+16]
            xor R8D,R8D
            mov ECX,1
            xor EDX,EDX
            mov RDI,R13
.L_4087bc:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov RSI,QWORD PTR [RBX+16]
            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RDI,R13
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_4087d7:

            mov RAX,QWORD PTR [RBX+8]
            test RAX,RAX
            mov QWORD PTR [RBX+72],RAX
            je .L_409759

            add R12,RAX
            add RBP,RAX
            mov QWORD PTR [RBX+80],RAX
            add RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX+88],R12
            mov QWORD PTR [RBX+96],RBP
            mov QWORD PTR [RBX+104],RAX
            jmp .L_408059
.L_408807:

            mov RAX,QWORD PTR [RBX+96]
            lea RBP,QWORD PTR [RAX+1]
            cmp RBP,QWORD PTR [RBX+104]
            mov QWORD PTR [RBX+96],RBP
            jb .L_40882a

            mov ESI,1
            mov RDI,RBX
            call .L_406d70

            mov RBP,QWORD PTR [RBX+96]
.L_40882a:

            movzx EAX,BYTE PTR [RBP]
            add EAX,112
            cmp AL,47
            jbe .L_408335

            jmp .L_408088
          .byte 0x66
          .byte 0x90
.L_408840:

            mov RAX,RCX
            sub RAX,RSI
            cmp RAX,-1
            je .L_409052

            test RAX,RAX
            je .L_408869

            cmp R9,RAX
            mov RDI,R14
            cmovbe RAX,R9
            xor ESI,ESI
            mov RDX,RAX
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
.L_408869:

            mov RAX,QWORD PTR [RBX+40]
            mov QWORD PTR [RBX+48],0
            lea RSI,QWORD PTR [RBX+40]
            mov EDX,10
            mov BYTE PTR [RAX],0
            mov RDI,QWORD PTR [RBX]
            call _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT

            mov RDX,QWORD PTR [RBX+48]
            mov RSI,QWORD PTR [RBX+40]
            mov RDI,R14
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            mov RDX,QWORD PTR [RBX+8]
            mov RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RBX+24]
            mov ECX,15
            cmp RDX,RSI
            lea R9,QWORD PTR [RAX+1]
            je .L_4088b7

            mov RCX,QWORD PTR [RBX+24]
.L_4088b7:

            cmp R9,RCX
            jbe .L_4088e9

            xor EDX,EDX
            mov RSI,RAX
            mov R8D,1
            xor ECX,ECX
            mov RDI,R14
            mov QWORD PTR [RSP+16],R9
            mov QWORD PTR [RSP+8],RAX
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@PLT

            mov RDX,QWORD PTR [RBX+8]
            mov R9,QWORD PTR [RSP+16]
            mov RAX,QWORD PTR [RSP+8]
.L_4088e9:

            mov BYTE PTR [RDX+RAX*1],10
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],R9
            mov BYTE PTR [RDX+RAX*1+1],0
            jmp .L_407fe5
.L_4088ff:

            cmp AL,113
            ja .L_408f58

            and EAX,4294967287
            cmp AL,102
            je .L_4072f0

            jmp .L_408088
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408920:

            mov RSI,QWORD PTR [RSP+8]
            xor EDX,EDX
            mov RDI,R13
            mov QWORD PTR [RSP+56],RCX
            mov QWORD PTR [RSP+48],R10
            mov QWORD PTR [RSP+40],R9
            mov QWORD PTR [RSP+32],R8
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT

            mov RDX,QWORD PTR [RSP+72]
            mov QWORD PTR [RSP+144],RAX
            mov RCX,QWORD PTR [RSP+56]
            mov R10,QWORD PTR [RSP+48]
            mov R9,QWORD PTR [RSP+40]
            mov R8,QWORD PTR [RSP+32]
            mov QWORD PTR [RSP+160],RDX
            jmp .L_40815a
.L_408971:

            mov RSI,QWORD PTR [RSP]
            xor EDX,EDX
            mov RDI,R13
            mov QWORD PTR [RSP+32],R10
            mov QWORD PTR [RSP+24],R9
            mov QWORD PTR [RSP+16],RCX
            mov QWORD PTR [RSP+8],R8
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT

            mov RDX,QWORD PTR [RSP+72]
            mov QWORD PTR [RSP+112],RAX
            mov R10,QWORD PTR [RSP+32]
            mov R9,QWORD PTR [RSP+24]
            mov RCX,QWORD PTR [RSP+16]
            mov R8,QWORD PTR [RSP+8]
            mov QWORD PTR [RSP+128],RDX
            jmp .L_407f54
.L_4089be:

            and EAX,4294967263
            mov ESI,1
            cmp AL,69
            jne .L_408238
.L_4089ce:

            lea RAX,QWORD PTR [RCX+1]
            mov QWORD PTR [RBX+96],RAX
            movzx EDX,BYTE PTR [RCX+1]
            cmp DL,44
            ja .L_408c4f

            cmp DL,43
            je .L_408c54
.L_4089ec:

            mov RAX,QWORD PTR [RBX+88]
            cmp ESI,1
            mov QWORD PTR [RBX+96],RAX
            je .L_408238

            cmp ESI,2
            je .L_40856a

            jmp .L_40853d
.L_408a0b:

            cmp AL,69
            ja .L_408fe1

            jne .L_408238
.L_408a19:

            mov RCX,RDX
            mov ESI,1
            jmp .L_4089ce
.L_408a23:

            cmp RBP,RCX
            mov QWORD PTR [RBX+96],RBP
            jb .L_408a3d

            mov ESI,1
            mov RDI,RBX
            call .L_406d70

            mov RBP,QWORD PTR [RBX+96]
.L_408a3d:

            movzx EAX,BYTE PTR [RBP]
            add EAX,-128
            cmp AL,31
            jbe .L_408064

            jmp .L_408088
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408a58:

            mov R9,QWORD PTR [RBX+16]
            mov RAX,QWORD PTR [RBX+72]
            test R9,R9
            je .L_408a7c

            cmp QWORD PTR [RBX+8],RAX
            jne .L_4098d9

            lea RDX,QWORD PTR [RAX+R9*1]
            cmp R8,RDX
            jne .L_4098ba
.L_408a7c:

            mov RCX,QWORD PTR [RBX+80]
            cmp RCX,RAX
            jb .L_4096b9

            cmp RCX,RBP
            ja .L_4096dd

            cmp R8,RBP
            jb .L_40973a

            mov R13,QWORD PTR [RBX+88]
            test R13,R13
            je .L_40935d

            cmp R8,R13
            jb .L_4096fc

            mov RDI,RCX
            sub R13,RCX
            sub RDI,RAX
            mov RAX,RDI
.L_408abd:

            mov RDX,QWORD PTR [RBX]
            mov R14,RBP
            lea RBP,QWORD PTR [RBX+8]
            sub R14,RCX
            test RDX,RDX
            je .L_408ae1

            mov RSI,QWORD PTR [RDX]
            mov RSI,QWORD PTR [RSI-24]
            test BYTE PTR [RDX+RSI*1+32],2
            je .L_4092ab
.L_408ae1:

            lea R12,QWORD PTR [RSP+176]
            test RCX,RCX
            mov R10,QWORD PTR [RBX+8]
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+176],RAX
            jne .L_408b08

            test R8,R8
            jne .L_4098ae
.L_408b08:

            mov RDX,R8
            lea RAX,QWORD PTR [R12+16]
            sub RDX,RCX
            cmp RDX,15
            mov QWORD PTR [RSP+72],RDX
            jbe .L_408b6a

            mov RSI,QWORD PTR [RSP+8]
            xor EDX,EDX
            mov RDI,R12
            mov QWORD PTR [RSP+56],RCX
            mov QWORD PTR [RSP+48],R10
            mov QWORD PTR [RSP+40],R9
            mov QWORD PTR [RSP+32],R8
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.L_408b41:

            mov RDX,QWORD PTR [RSP+72]
            mov RCX,QWORD PTR [RSP+56]
            mov R10,QWORD PTR [RSP+48]
            mov R9,QWORD PTR [RSP+40]
            mov R8,QWORD PTR [RSP+32]
            mov QWORD PTR [RSP+176],RAX
            mov QWORD PTR [RSP+192],RDX
.L_408b6a:

            cmp R8,RCX
            je .L_408b9b

            mov RSI,R8
            sub RSI,RCX
            add RSI,RAX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_408b80:

            movzx EDX,BYTE PTR [RCX]
            add RAX,1
            add RCX,1
            mov BYTE PTR [RAX-1],DL
            cmp RAX,RSI
            jne .L_408b80

            mov RAX,QWORD PTR [RSP+176]
.L_408b9b:

            mov RDX,QWORD PTR [RSP+72]
            mov RSI,R10
            mov RDI,RBP
            mov QWORD PTR [RSP+184],RDX
            mov BYTE PTR [RAX+RDX*1],0
            mov RDX,R9
            sub RSI,QWORD PTR [RBX+8]
            mov R8,QWORD PTR [RSP+184]
            mov RCX,QWORD PTR [RSP+176]
.L_408bc9:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_408bce:

            mov RDI,QWORD PTR [RSP+176]
            add R12,16
            cmp RDI,R12
            je .L_408be4

            call _ZdlPv@PLT
.L_408be4:

            mov RSI,QWORD PTR [RBX+16]
            xor R8D,R8D
            mov ECX,1
            xor EDX,EDX
            mov RDI,RBP
.L_408bf5:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov RSI,QWORD PTR [RBX+16]
            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RDI,RBP
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_408c10:

            mov RAX,QWORD PTR [RBX+8]
            test RAX,RAX
            mov QWORD PTR [RBX+72],RAX
            je .L_409759

            add R13,RAX
            lea RBP,QWORD PTR [RAX+R14*1]
            mov QWORD PTR [RBX+80],RAX
            add RAX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX+88],R13
            mov QWORD PTR [RBX+96],RBP
            mov QWORD PTR [RBX+104],RAX
            jmp .L_4072d1
.L_408c41:

            mov RDX,R14
            xor R12D,R12D
            sub RDX,RAX
            jmp .L_4083a4
.L_408c4f:

            cmp DL,45
            jne .L_408c60
.L_408c54:

            lea RAX,QWORD PTR [RCX+2]
            mov QWORD PTR [RBX+96],RAX
            movzx EDX,BYTE PTR [RCX+2]
.L_408c60:

            sub EDX,48
            cmp DL,9
            ja .L_4089ec

            lea RDI,QWORD PTR [RSP+72]
            lea R13,QWORD PTR [RBX+8]
            lea R12,QWORD PTR [RSP+336]
            mov QWORD PTR [RSP+8],RDI
            jmp .L_408c93
.L_408c84:

            movzx EDI,BYTE PTR [RAX]
            lea EDX,DWORD PTR [RDI-48]
            cmp DL,9
            ja .L_40853d
.L_408c93:

            mov R14,QWORD PTR [RBX+104]
            add RAX,1
            mov QWORD PTR [RBX+96],RAX
            cmp RAX,R14
            jb .L_408c84

            mov R9,QWORD PTR [RBX+16]
            mov RDX,QWORD PTR [RBX+72]
            test R9,R9
            je .L_408cc8

            cmp QWORD PTR [RBX+8],RDX
            jne .L_4098d9

            lea RCX,QWORD PTR [RDX+R9*1]
            cmp R14,RCX
            jne .L_4098ba
.L_408cc8:

            mov R15,QWORD PTR [RBX+80]
            cmp R15,RDX
            jb .L_4096b9

            cmp RAX,R15
            jb .L_4096dd

            cmp RAX,R14
            ja .L_40973a

            mov RBP,QWORD PTR [RBX+88]
            test RBP,RBP
            je .L_409477

            cmp R14,RBP
            jb .L_4096fc

            mov RDI,R15
            sub RBP,R15
            sub RDI,RDX
            mov RDX,RDI
.L_408d09:

            sub RAX,R15
            mov QWORD PTR [RSP],RAX
            mov RAX,QWORD PTR [RBX]
            test RAX,RAX
            je .L_408d2a

            mov RSI,QWORD PTR [RAX]
            mov RSI,QWORD PTR [RSI-24]
            test BYTE PTR [RAX+RSI*1+32],2
            je .L_4094d7
.L_408d2a:

            lea RAX,QWORD PTR [R12+16]
            test R14,R14
            mov R10,QWORD PTR [RBX+8]
            mov QWORD PTR [RSP+336],RAX
            je .L_408d49

            test R15,R15
            je .L_4098ae
.L_408d49:

            mov RDX,R14
            lea RAX,QWORD PTR [R12+16]
            sub RDX,R15
            cmp RDX,15
            mov QWORD PTR [RSP+72],RDX
            jbe .L_408d97

            mov RSI,QWORD PTR [RSP+8]
            xor EDX,EDX
            mov RDI,R12
            mov QWORD PTR [RSP+24],R10
            mov QWORD PTR [RSP+16],R9
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.L_408d78:

            mov RDX,QWORD PTR [RSP+72]
            mov R10,QWORD PTR [RSP+24]
            mov R9,QWORD PTR [RSP+16]
            mov QWORD PTR [RSP+336],RAX
            mov QWORD PTR [RSP+352],RDX
.L_408d97:

            cmp R14,R15
            je .L_408db8
.L_408d9c:

            movzx EDX,BYTE PTR [R15]
            add R15,1
            add RAX,1
            mov BYTE PTR [RAX-1],DL
            cmp R14,R15
            jne .L_408d9c

            mov RAX,QWORD PTR [RSP+336]
.L_408db8:

            mov RDX,QWORD PTR [RSP+72]
            mov RSI,R10
            mov RDI,R13
            mov QWORD PTR [RSP+344],RDX
            mov BYTE PTR [RAX+RDX*1],0
            mov RDX,R9
            sub RSI,QWORD PTR [RBX+8]
            mov R8,QWORD PTR [RSP+344]
            mov RCX,QWORD PTR [RSP+336]
.L_408de6:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_408deb:

            mov RDI,QWORD PTR [RSP+336]
            lea RAX,QWORD PTR [R12+16]
            cmp RDI,RAX
            je .L_408e02

            call _ZdlPv@PLT
.L_408e02:

            mov RSI,QWORD PTR [RBX+16]
            xor R8D,R8D
            mov ECX,1
            xor EDX,EDX
            mov RDI,R13
.L_408e13:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT

            mov RSI,QWORD PTR [RBX+16]
            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RDI,R13
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L_408e2e:

            mov RDX,QWORD PTR [RBX+8]
            test RDX,RDX
            mov QWORD PTR [RBX+72],RDX
            je .L_409759

            mov RAX,QWORD PTR [RSP]
            add RBP,RDX
            mov QWORD PTR [RBX+80],RDX
            mov QWORD PTR [RBX+88],RBP
            add RAX,RDX
            add RDX,QWORD PTR [RBX+16]
            mov QWORD PTR [RBX+96],RAX
            mov QWORD PTR [RBX+104],RDX
            jmp .L_408c84
.L_408e62:

            mov RAX,QWORD PTR [RBX+96]
            lea RBP,QWORD PTR [RAX+1]
            cmp RBP,QWORD PTR [RBX+104]
            mov QWORD PTR [RBX+96],RBP
            jae .L_40936e
.L_408e78:

            movzx EAX,BYTE PTR [RBP]
            add EAX,-128
            cmp AL,63
            jbe .L_408335

            jmp .L_408088
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_408e90:

            cmp RDX,-1
            je .L_40939a

            test RDX,RDX
            je .L_408eb0

            cmp R9,RDX
            mov RDI,R13
            cmovbe RDX,R9
            xor ESI,ESI
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
.L_408eb0:

            mov RAX,QWORD PTR [RBX+40]
            mov QWORD PTR [RBX+48],0
            lea RSI,QWORD PTR [RBX+40]
            mov EDX,10
            mov BYTE PTR [RAX],0
            mov RDI,QWORD PTR [RBX]
            call _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT

            mov RDX,QWORD PTR [RBX+48]
            mov RSI,QWORD PTR [RBX+40]
            mov RDI,R13
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov R14,QWORD PTR [RBX+16]
            lea RCX,QWORD PTR [RBX+24]
            mov EDX,15
            cmp RAX,RCX
            lea R9,QWORD PTR [R14+1]
            je .L_408efe

            mov RDX,QWORD PTR [RBX+24]
.L_408efe:

            cmp R9,RDX
            jbe .L_408f26

            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,R14
            mov RDI,R13
            mov QWORD PTR [RSP+32],R9
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov R9,QWORD PTR [RSP+32]
.L_408f26:

            mov BYTE PTR [RAX+R14*1],10
            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],R9
            mov BYTE PTR [RAX+R14*1+1],0
            jmp .L_4084a5
.L_408f3e:

            cmp AL,92
            ja .L_40911c

            je .L_4072f0

            jmp .L_408088
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_408f58:

            cmp AL,115
            ja .L_409130

            cmp AL,114
            je .L_4072f0

            jmp .L_408088
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_408f70:

            mov RSI,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP]
            xor EDX,EDX
            mov QWORD PTR [RSP+48],R8
            mov QWORD PTR [RSP+40],R9
            mov QWORD PTR [RSP+32],RCX
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT

            mov RDX,QWORD PTR [RSP+72]
            mov QWORD PTR [RSP+208],RAX
            mov R8,QWORD PTR [RSP+48]
            mov R9,QWORD PTR [RSP+40]
            mov RCX,QWORD PTR [RSP+32]
            mov QWORD PTR [RSP+224],RDX
            jmp .L_408404
.L_408fb8:

            lea RSI,QWORD PTR [RCX+2]
            mov QWORD PTR [RBX+96],RSI
            mov QWORD PTR [RBX+88],RSI
            movzx EAX,BYTE PTR [RCX+2]
            cmp AL,57
            ja .L_408fff

            cmp AL,46
            je .L_40854e

            cmp AL,47
            ja .L_407808

            jmp .L_40856a
.L_408fe1:

            cmp AL,101
            jne .L_408238

            jmp .L_408a19
.L_408fee:

            lea EDX,DWORD PTR [RAX+62]
            cmp DL,50
            ja .L_407794

            jmp .L_407262
.L_408fff:

            cmp AL,69
            ja .L_4093ae

            jne .L_40856a
.L_40900d:

            mov RCX,RSI
            mov ESI,2
            jmp .L_4089ce
.L_40901a:

            mov ESI,1
            mov RDI,RBX
            call .L_406d70

            mov RBP,QWORD PTR [RBX+96]
            jmp .L_4082dd
.L_409030:

            mov RDX,R14
            xor R12D,R12D
            sub RDX,RAX
            jmp .L_408699
.L_40903e:

            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],0
            mov BYTE PTR [RAX],0
            jmp .L_4085a9
.L_409052:

            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],0
            mov BYTE PTR [RAX],0
            jmp .L_408869
.L_409066:

            cmp RDX,-1
            je .L_40957b

            test RDX,RDX
            je .L_409086

            cmp R9,RDX
            mov RDI,R13
            cmovbe RDX,R9
            xor ESI,ESI
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
.L_409086:

            mov RAX,QWORD PTR [RBX+40]
            mov QWORD PTR [RBX+48],0
            lea RSI,QWORD PTR [RBX+40]
            mov EDX,10
            mov BYTE PTR [RAX],0
            mov RDI,QWORD PTR [RBX]
            call _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT

            mov RDX,QWORD PTR [RBX+48]
            mov RSI,QWORD PTR [RBX+40]
            mov RDI,R13
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov R14,QWORD PTR [RBX+16]
            lea RCX,QWORD PTR [RBX+24]
            mov EDX,15
            cmp RAX,RCX
            lea R9,QWORD PTR [R14+1]
            je .L_4090d4

            mov RDX,QWORD PTR [RBX+24]
.L_4090d4:

            cmp R9,RDX
            jbe .L_4090fc

            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,R14
            mov RDI,R13
            mov QWORD PTR [RSP+32],R9
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov R9,QWORD PTR [RSP+32]
.L_4090fc:

            mov BYTE PTR [RAX+R14*1],10
            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],R9
            mov BYTE PTR [RAX+R14*1+1],0
            jmp .L_4087d7
.L_409114:

            mov RCX,RDX
            jmp .L_4084e7
.L_40911c:

            cmp AL,98
            je .L_4072f0

            jmp .L_408088
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409130:

            cmp AL,116
            je .L_4072f0

            cmp AL,117
            jne .L_408088

            add RBP,1
            cmp RBP,QWORD PTR [RBX+104]
            mov QWORD PTR [RBX+96],RBP
            jae .L_40968d
.L_409152:

            movzx EAX,BYTE PTR [RBP]
            cmp AL,64
            ja .L_4095c0

            sub EAX,48
            cmp AL,9
            ja .L_408088
.L_409169:

            add RBP,1
            cmp RBP,QWORD PTR [RBX+104]
            mov QWORD PTR [RBX+96],RBP
            jae .L_409677
.L_40917b:

            movzx EAX,BYTE PTR [RBP]
            cmp AL,64
            ja .L_4095a3

            sub EAX,48
            cmp AL,9
            ja .L_408088
.L_409192:

            add RBP,1
            cmp RBP,QWORD PTR [RBX+104]
            mov QWORD PTR [RBX+96],RBP
            jae .L_409661
.L_4091a4:

            movzx EAX,BYTE PTR [RBP]
            cmp AL,64
            ja .L_409600

            sub EAX,48
            cmp AL,9
            ja .L_408088
.L_4091bb:

            add RBP,1
            cmp RBP,QWORD PTR [RBX+104]
            mov QWORD PTR [RBX+96],RBP
            jae .L_4096a3
.L_4091cd:

            movzx EAX,BYTE PTR [RBP]
            cmp AL,64
            ja .L_4095e0

            sub EAX,48
            cmp AL,9
            jbe .L_4072f0

            jmp .L_408088
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4091f0:

            mov RDX,R14
            xor EBP,EBP
            sub RDX,RAX
            jmp .L_4078a1
.L_4091fd:

            cmp RDX,-1
            je .L_40958f

            test RDX,RDX
            je .L_40921d

            cmp R9,RDX
            mov RDI,R13
            cmovbe RDX,R9
            xor ESI,ESI
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
.L_40921d:

            mov RAX,QWORD PTR [RBX+40]
            mov QWORD PTR [RBX+48],0
            lea RSI,QWORD PTR [RBX+40]
            mov EDX,10
            mov BYTE PTR [RAX],0
            mov RDI,QWORD PTR [RBX]
            call _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT

            mov RDX,QWORD PTR [RBX+48]
            mov RSI,QWORD PTR [RBX+40]
            mov RDI,R13
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            mov RDX,QWORD PTR [RBX+8]
            mov R14,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RBX+24]
            mov ECX,15
            cmp RDX,RSI
            lea R9,QWORD PTR [R14+1]
            je .L_40926b

            mov RCX,QWORD PTR [RBX+24]
.L_40926b:

            cmp R9,RCX
            jbe .L_409293

            xor EDX,EDX
            mov R8D,1
            xor ECX,ECX
            mov RSI,R14
            mov RDI,R13
            mov QWORD PTR [RSP+8],R9
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@PLT

            mov RDX,QWORD PTR [RBX+8]
            mov R9,QWORD PTR [RSP+8]
.L_409293:

            mov BYTE PTR [RDX+R14*1],10
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],R9
            mov BYTE PTR [RDX+R14*1+1],0
            jmp .L_4079d2
.L_4092ab:

            cmp RAX,-1
            je .L_409634

            test RAX,RAX
            je .L_4092ce

            cmp R9,RAX
            mov RDI,RBP
            cmovbe RAX,R9
            xor ESI,ESI
            mov RDX,RAX
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
.L_4092ce:

            mov RAX,QWORD PTR [RBX+40]
            mov QWORD PTR [RBX+48],0
            lea RSI,QWORD PTR [RBX+40]
            mov EDX,10
            mov BYTE PTR [RAX],0
            mov RDI,QWORD PTR [RBX]
            call _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT

            mov RDX,QWORD PTR [RBX+48]
            mov RSI,QWORD PTR [RBX+40]
            mov RDI,RBP
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov R12,QWORD PTR [RBX+16]
            lea RCX,QWORD PTR [RBX+24]
            mov EDX,15
            cmp RAX,RCX
            lea R9,QWORD PTR [R12+1]
            je .L_40931d

            mov RDX,QWORD PTR [RBX+24]
.L_40931d:

            cmp R9,RDX
            jbe .L_409345

            mov R8D,1
            xor ECX,ECX
            xor EDX,EDX
            mov RSI,R12
            mov RDI,RBP
            mov QWORD PTR [RSP+32],R9
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov R9,QWORD PTR [RSP+32]
.L_409345:

            mov BYTE PTR [RAX+R12*1],10
            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],R9
            mov BYTE PTR [RAX+R12*1+1],0
            jmp .L_408c10
.L_40935d:

            mov RDI,RCX
            xor R13D,R13D
            sub RDI,RAX
            mov RAX,RDI
            jmp .L_408abd
.L_40936e:

            mov ESI,1
            mov RDI,RBX
            call .L_406d70

            mov RBP,QWORD PTR [RBX+96]
            jmp .L_408e78
.L_409384:

            mov ESI,1
            mov RDI,RBX
            call .L_406d70

            mov RBP,QWORD PTR [RBX+96]
            jmp .L_408326
.L_40939a:

            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],0
            mov BYTE PTR [RAX],0
            jmp .L_408eb0
.L_4093ae:

            cmp AL,101
            jne .L_40856a

            jmp .L_40900d
.L_4093bb:

            sub RCX,RAX
            cmp RCX,-1
            je .L_409620

            test RCX,RCX
            je .L_4093e1

            cmp R9,RCX
            mov RDX,RCX
            mov RDI,R13
            cmovbe RDX,R9
            xor ESI,ESI
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
.L_4093e1:

            mov RAX,QWORD PTR [RBX+40]
            mov QWORD PTR [RBX+48],0
            lea RSI,QWORD PTR [RBX+40]
            mov EDX,10
            mov BYTE PTR [RAX],0
            mov RDI,QWORD PTR [RBX]
            call _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT

            mov RDX,QWORD PTR [RBX+48]
            mov RSI,QWORD PTR [RBX+40]
            mov RDI,R13
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            mov RDX,QWORD PTR [RBX+8]
            mov RAX,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RBX+24]
            mov ECX,15
            cmp RDX,RSI
            lea R9,QWORD PTR [RAX+1]
            je .L_40942f

            mov RCX,QWORD PTR [RBX+24]
.L_40942f:

            cmp R9,RCX
            jbe .L_409461

            xor EDX,EDX
            mov RSI,RAX
            mov R8D,1
            xor ECX,ECX
            mov RDI,R13
            mov QWORD PTR [RSP+16],R9
            mov QWORD PTR [RSP+8],RAX
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@PLT

            mov RDX,QWORD PTR [RBX+8]
            mov R9,QWORD PTR [RSP+16]
            mov RAX,QWORD PTR [RSP+8]
.L_409461:

            mov BYTE PTR [RDX+RAX*1],10
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],R9
            mov BYTE PTR [RDX+RAX*1+1],0
            jmp .L_407c24
.L_409477:

            mov RDI,R15
            xor EBP,EBP
            sub RDI,RDX
            mov RDX,RDI
            jmp .L_408d09
.L_409487:

            mov RSI,QWORD PTR [RSP]
            xor EDX,EDX
            mov RDI,RBP
            mov QWORD PTR [RSP+32],RCX
            mov QWORD PTR [RSP+24],R10
            mov QWORD PTR [RSP+16],R9
            mov QWORD PTR [RSP+8],R8
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT

            mov RDX,QWORD PTR [RSP+72]
            mov QWORD PTR [RSP+272],RAX
            mov RCX,QWORD PTR [RSP+32]
            mov R10,QWORD PTR [RSP+24]
            mov R9,QWORD PTR [RSP+16]
            mov R8,QWORD PTR [RSP+8]
            mov QWORD PTR [RSP+288],RDX
            jmp .L_407b7d
.L_4094d7:

            cmp RDX,-1
            je .L_409778

            test RDX,RDX
            je .L_4094f7

            cmp R9,RDX
            mov RDI,R13
            cmovbe RDX,R9
            xor ESI,ESI
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm@PLT
.L_4094f7:

            mov RAX,QWORD PTR [RBX+40]
            mov QWORD PTR [RBX+48],0
            lea RSI,QWORD PTR [RBX+40]
            mov EDX,10
            mov BYTE PTR [RAX],0
            mov RDI,QWORD PTR [RBX]
            call _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT

            mov RDX,QWORD PTR [RBX+48]
            mov RSI,QWORD PTR [RBX+40]
            mov RDI,R13
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT

            mov RDX,QWORD PTR [RBX+8]
            mov R14,QWORD PTR [RBX+16]
            lea RSI,QWORD PTR [RBX+24]
            mov ECX,15
            cmp RDX,RSI
            lea R15,QWORD PTR [R14+1]
            je .L_409545

            mov RCX,QWORD PTR [RBX+24]
.L_409545:

            cmp R15,RCX
            jbe .L_409563

            xor EDX,EDX
            mov R8D,1
            xor ECX,ECX
            mov RSI,R14
            mov RDI,R13
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@PLT

            mov RDX,QWORD PTR [RBX+8]
.L_409563:

            mov BYTE PTR [RDX+R14*1],10
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],R15
            mov BYTE PTR [RDX+R14*1+1],0
            jmp .L_408e2e
.L_40957b:

            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],0
            mov BYTE PTR [RAX],0
            jmp .L_409086
.L_40958f:

            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],0
            mov BYTE PTR [RAX],0
            jmp .L_40921d
.L_4095a3:

            cmp AL,70
            jbe .L_409192

            sub EAX,97
            cmp AL,5
            jbe .L_409192

            jmp .L_408088
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_4095c0:

            cmp AL,70
            jbe .L_409169

            sub EAX,97
            cmp AL,5
            jbe .L_409169

            jmp .L_408088
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4095e0:

            cmp AL,70
            jbe .L_4072f0

            sub EAX,97
            cmp AL,5
            jbe .L_4072f0

            jmp .L_408088
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409600:

            cmp AL,70
            jbe .L_4091bb

            sub EAX,97
            cmp AL,5
            jbe .L_4091bb

            jmp .L_408088
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409620:

            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],0
            mov BYTE PTR [RAX],0
            jmp .L_4093e1
.L_409634:

            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],0
            mov BYTE PTR [RAX],0
            jmp .L_4092ce
.L_409648:

            and EDX,4294967263
            mov RCX,RAX
            mov ESI,3
            cmp DL,69
            je .L_4089ce

            jmp .L_40853d
.L_409661:

            mov ESI,1
            mov RDI,RBX
            call .L_406d70

            mov RBP,QWORD PTR [RBX+96]
            jmp .L_4091a4
.L_409677:

            mov ESI,1
            mov RDI,RBX
            call .L_406d70

            mov RBP,QWORD PTR [RBX+96]
            jmp .L_40917b
.L_40968d:

            mov ESI,1
            mov RDI,RBX
            call .L_406d70

            mov RBP,QWORD PTR [RBX+96]
            jmp .L_409152
.L_4096a3:

            mov ESI,1
            mov RDI,RBX
            call .L_406d70

            mov RBP,QWORD PTR [RBX+96]
            jmp .L_4091cd
.L_4096b9:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e440]
            mov EDX,10850
            call __assert_fail@PLT
.L_4096d8:

            call __stack_chk_fail@PLT
.L_4096dd:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e455]
            mov EDX,10851
            call __assert_fail@PLT
.L_4096fc:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e410]
            mov EDX,10853
            call __assert_fail@PLT
.L_40971b:

            lea RCX,QWORD PTR [RIP+.L_40fd60]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e28a]
            mov EDX,9772
            call __assert_fail@PLT
.L_40973a:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e469]
            mov EDX,10852
            call __assert_fail@PLT
.L_409759:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e47d]
            mov EDX,10893
            call __assert_fail@PLT
.L_409778:

            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+16],0
            mov BYTE PTR [RAX],0
            jmp .L_4094f7
.L_40978c:

            mov QWORD PTR [RBX+96],RBP
            mov DWORD PTR [RBX+112],4
            mov EAX,4
            jmp .L_4077a0
.L_4097a1:

            mov RDI,QWORD PTR [RSP+80]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            je .L_4097b7
.L_4097b2:

            call _ZdlPv@PLT
.L_4097b7:

            mov RDI,RBX
            call _Unwind_Resume@PLT
.L_4097bf:

            mov RDI,QWORD PTR [RSP+272]
            add RBP,16
            mov RBX,RAX
            cmp RDI,RBP
            jne .L_4097b2

            jmp .L_4097b7
.L_4097d5:

            mov RDI,QWORD PTR [RSP+144]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            jne .L_4097b2

            jmp .L_4097b7
.L_4097eb:

            mov RDI,QWORD PTR [RSP+336]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            jne .L_4097b2

            jmp .L_4097b7
.L_409801:

            mov RDX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+240]
            mov RBX,RAX
            add RDX,16
            cmp RDI,RDX
            jne .L_4097b2

            jmp .L_4097b7
.L_40981c:

            mov R15,QWORD PTR [RSP]
            mov RDI,QWORD PTR [RSP+208]
            mov RBX,RAX
            add R15,16
            cmp RDI,R15
            jne .L_4097b2

            jmp .L_4097b7
.L_40983d:

            mov RDI,QWORD PTR [RSP+176]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            jne .L_4097b2

            jmp .L_4097b7
.L_40985a:

            mov RDI,QWORD PTR [RSP+112]
            add R13,16
            mov RBX,RAX
            cmp RDI,R13
            jne .L_4097b2

            jmp .L_4097b7
.L_409874:

            mov RDI,QWORD PTR [RSP+304]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            jne .L_4097b2

            jmp .L_4097b7
.L_409891:

            mov RDI,QWORD PTR [RSP+336]
            add R14,16
            mov RBX,RAX
            cmp RDI,R14
            jne .L_4097b2

            jmp .L_4097b7
.L_4098ae:

            lea RDI,QWORD PTR [RIP+.L_40df48]
            call _ZSt19__throw_logic_errorPKc@PLT
.L_4098ba:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e3c8]
            mov EDX,10847
            call __assert_fail@PLT
.L_4098d9:

            lea RCX,QWORD PTR [RIP+.L_40fb40]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e360]
            mov EDX,10843
            call __assert_fail@PLT
.L_4098f8:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_409900:

            push RBX
            cmp BYTE PTR [RSI],8
            mov RBX,RDI
            lea RCX,QWORD PTR [RDI+16]
            ja .L_4099e0

            movzx EAX,BYTE PTR [RSI]
            lea RDX,QWORD PTR [RIP+.L_40e4c4]
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
            jmp RAX
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_409928:

            lea RDX,QWORD PTR [RIP+.L_40e4bc]
            mov QWORD PTR [RDI],RCX
            lea RSI,QWORD PTR [RDX-9]
            call .L_402450

            mov RAX,RBX
            pop RBX
            ret 
.L_409940:

            lea RDX,QWORD PTR [RIP+.L_40e496]
            mov QWORD PTR [RDI],RCX
            lea RSI,QWORD PTR [RDX-4]
            call .L_402450

            mov RAX,RBX
            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409960:

            lea RDX,QWORD PTR [RIP+.L_40e49d]
            mov QWORD PTR [RDI],RCX
            lea RSI,QWORD PTR [RDX-6]
            call .L_402450

            mov RAX,RBX
            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409980:

            lea RDX,QWORD PTR [RIP+.L_40e4a3]
            mov QWORD PTR [RDI],RCX
            lea RSI,QWORD PTR [RDX-5]
            call .L_402450

            mov RAX,RBX
            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4099a0:

            lea RDX,QWORD PTR [RIP+.L_40e4aa]
            mov QWORD PTR [RDI],RCX
            lea RSI,QWORD PTR [RDX-6]
            call .L_402450

            mov RAX,RBX
            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4099c0:

            lea RDX,QWORD PTR [RIP+.L_40e4b2]
            mov QWORD PTR [RDI],RCX
            lea RSI,QWORD PTR [RDX-7]
            call .L_402450

            mov RAX,RBX
            pop RBX
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4099e0:

            lea RDX,QWORD PTR [RIP+.L_40e4c3]
            mov QWORD PTR [RBX],RCX
            mov RDI,RBX
            lea RSI,QWORD PTR [RDX-6]
            call .L_402450

            mov RAX,RBX
            pop RBX
            ret 
.L_4099fb:

            nop
            nop
            nop
            nop
            nop
.L_409a00:

            mov RCX,RSI
            sub RCX,RDI
            mov RAX,RCX
            sar RAX,2
            test RAX,RAX
            jle .L_409b09

            movzx R8D,BYTE PTR [RDX]
            cmp R8B,BYTE PTR [RDI]
            je .L_409b11

            cmp R8B,BYTE PTR [RDI+1]
            je .L_409b16

            cmp R8B,BYTE PTR [RDI+2]
            je .L_409b1c

            cmp R8B,BYTE PTR [RDI+3]
            lea R9,QWORD PTR [RDI+RAX*4]
            lea RAX,QWORD PTR [RDI+3]
            jne .L_409a6b

            jmp .L_409aa0
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409a50:

            cmp R8B,BYTE PTR [RDI+4]
            je .L_409aa0

            cmp R8B,BYTE PTR [RCX+1]
            je .L_409a98

            cmp R8B,BYTE PTR [RCX+2]
            je .L_409ad8

            cmp R8B,BYTE PTR [RCX+3]
            je .L_409ae0

            mov RDI,RCX
.L_409a6b:

            lea RCX,QWORD PTR [RDI+4]
            cmp RCX,R9
            mov RAX,RCX
            jne .L_409a50

            mov RCX,RSI
            sub RCX,R9
.L_409a7d:

            cmp RCX,2
            je .L_409afc

            cmp RCX,3
            je .L_409aef

            cmp RCX,1
            je .L_409ae6
.L_409a8f:

            mov RAX,RSI
            ret 
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409a98:

            lea RAX,QWORD PTR [RDI+5]
            nop
            nop
            nop
            nop
.L_409aa0:

            cmp RSI,RAX
            je .L_409ad0

            lea RCX,QWORD PTR [RAX+1]
            cmp RSI,RCX
            je .L_409ad0

            nop
            nop
.L_409ab0:

            movzx EDI,BYTE PTR [RCX]
            cmp DIL,BYTE PTR [RDX]
            je .L_409abf

            mov BYTE PTR [RAX],DIL
            add RAX,1
.L_409abf:

            add RCX,1
            cmp RSI,RCX
            jne .L_409ab0

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409ad0:

            ret 
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409ad8:

            lea RAX,QWORD PTR [RDI+6]
            jmp .L_409aa0
          .byte 0x66
          .byte 0x90
.L_409ae0:

            lea RAX,QWORD PTR [RDI+7]
            jmp .L_409aa0
.L_409ae6:

            movzx ECX,BYTE PTR [RDX]
.L_409ae9:

            cmp CL,BYTE PTR [RAX]
            jne .L_409a8f

            jmp .L_409aa0
.L_409aef:

            movzx ECX,BYTE PTR [RDX]
            cmp BYTE PTR [RAX],CL
            je .L_409aa0

            add RAX,1
            jmp .L_409aff
.L_409afc:

            movzx ECX,BYTE PTR [RDX]
.L_409aff:

            cmp BYTE PTR [RAX],CL
            je .L_409aa0

            add RAX,1
            jmp .L_409ae9
.L_409b09:

            mov RAX,RDI
            jmp .L_409a7d
.L_409b11:

            mov RAX,RDI
            jmp .L_409aa0
.L_409b16:

            lea RAX,QWORD PTR [RDI+1]
            jmp .L_409aa0
.L_409b1c:

            lea RAX,QWORD PTR [RDI+2]
            jmp .L_409aa0
.L_409b25:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_409b30:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,200
.L_409b41:

            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+184],RAX
            xor EAX,EAX
            cmp BYTE PTR [RDI],8
            mov DWORD PTR [RSP+8],ECX
            mov DWORD PTR [RSP+4],R8D
            mov BYTE PTR [RSP+15],DL
            ja .L_409c68

            movzx EAX,BYTE PTR [RDI]
            mov R15D,EDX
            lea RDX,QWORD PTR [RIP+.L_40e578]
            mov RBX,RDI
            mov R14,RSI
            movsxd RAX,DWORD PTR [RDX+RAX*4]
            add RAX,RDX
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
.L_409b90:

            test RSI,RSI
            je .L_40a7d8

            lea RBP,QWORD PTR [RSP+144]
            add RSI,RDX
            mov EDX,92
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,RBP
            mov QWORD PTR [RSP+144],RAX
.L_409bb8:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
.L_409bbd:

            mov RAX,QWORD PTR [RBX]
            mov RDI,QWORD PTR [RBX+8]
            mov RSI,QWORD PTR [RSP+144]
            add RDI,RAX
            cmp RAX,RDI
            jne .L_40a2b8

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_409be0:

            lea R12,QWORD PTR [RSP+112]
            add RBP,16
            cmp RSI,RBP
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+112],RAX
            je .L_40a3f0

            mov RAX,QWORD PTR [RSP+160]
            mov QWORD PTR [RSP+112],RSI
            mov QWORD PTR [RSP+128],RAX
.L_409c11:

            mov RDX,QWORD PTR [RSP+152]
            mov QWORD PTR [RSP+120],RDX
.L_409c1e:

            mov RDI,R13
.L_409c21:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            lea RSI,QWORD PTR [RIP+.L_40dfcd]
            mov EDX,1
            mov RDI,RAX
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L_409c3a:

            mov RDI,QWORD PTR [RSP+112]
            add R12,16
            cmp RDI,R12
            je .L_409c4d

            call _ZdlPv@PLT
.L_409c4d:

            mov R14,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+80]
            add R14,16
            cmp RDI,R14
            je .L_409c68
.L_409c60:

            call _ZdlPv@PLT

            nop
            nop
            nop
.L_409c68:

            mov RAX,QWORD PTR [RSP+184]
            xor RAX,QWORD PTR FS:[40]
            jne .L_40acee

            add RSP,200
.L_409c86:

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
.L_409c98:

            movsd XMM0,QWORD PTR [RDI+8]
            pxor XMM1,XMM1
            ucomisd XMM0,QWORD PTR [RIP+.L_410410]
            movaps XMMWORD PTR [RSP+144],XMM1
            movaps XMMWORD PTR [RSP+160],XMM1
            jp .L_40a980

            jne .L_40a980

            movmskpd EAX,XMM0
            test AL,1
            je .L_40a350

            mov BYTE PTR [RSP+144],45
            mov EAX,3
            mov EDX,2
            mov ECX,1
.L_409ce8:

            lea RBP,QWORD PTR [RSP+144]
            mov BYTE PTR [RSP+RCX*1+144],48
            mov BYTE PTR [RSP+RDX*1+144],46
            mov BYTE PTR [RSP+RAX*1+144],48
.L_409d08:

            mov RDX,RBP
.L_409d0b:

            mov ECX,DWORD PTR [RDX]
            add RDX,4
            lea EAX,DWORD PTR [RCX-16843009]
            not ECX
            and EAX,ECX
            and EAX,2155905152
            je .L_409d0b
.L_409d22:

            mov ECX,EAX
            mov RSI,RBP
            mov RDI,R14
            shr ECX,16
            test EAX,32896
            cmove EAX,ECX
            lea RCX,QWORD PTR [RDX+2]
            mov EBX,EAX
            cmove RDX,RCX
            add BL,AL
            sbb RDX,3
            sub RDX,RBP
.L_409d48:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            jmp .L_409c68
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409d58:

            lea RSI,QWORD PTR [RIP+.L_40e565]
            mov EDX,11
            mov RDI,R14
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            jmp .L_409c68
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409d78:

            lea RSI,QWORD PTR [RIP+.L_40e492]
            mov EDX,4
            mov RDI,R14
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            jmp .L_409c68
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_409d98:

            mov RAX,QWORD PTR [RDI+8]
            cmp QWORD PTR [RAX+40],0
            je .L_40a7a0

            lea RSI,QWORD PTR [RIP+.L_40e4f6]
            mov EDX,1
            mov RDI,R14
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            test R15B,R15B
            jne .L_40a3a8

            mov RAX,QWORD PTR [RBX+8]
            mov ESI,DWORD PTR [RSP+4]
            lea R12,QWORD PTR [RSP+112]
            mov R13,QWORD PTR [RAX+24]
            add RAX,8
            mov QWORD PTR [RSP+40],RSI
            cmp R13,RAX
            je .L_40a60b
.L_409de7:

            lea RDX,QWORD PTR [RIP+.L_40e2a7]
            lea RAX,QWORD PTR [RIP+.L_40dfc4]
            test R15B,R15B
            cmovne RAX,RDX
            lea RDX,QWORD PTR [RIP+.L_40e571]
            mov QWORD PTR [RSP+24],RAX
            lea RAX,QWORD PTR [RIP+.L_40e574]
            cmovne RAX,RDX
            mov QWORD PTR [RSP+48],RAX
            lea RAX,QWORD PTR [RSP+80]
            mov QWORD PTR [RSP+16],RAX
            lea RAX,QWORD PTR [RSP+179]
            mov QWORD PTR [RSP+56],RAX
.L_409e2f:

            mov RDI,QWORD PTR [RSP+16]
            mov RSI,QWORD PTR [RSP+40]
            mov EDX,32
            lea RAX,QWORD PTR [RDI+16]
            mov QWORD PTR [RSP+80],RAX
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
.L_409e4c:

            mov RDX,QWORD PTR [RSP+88]
            mov RSI,QWORD PTR [RSP+80]
            mov RDI,R14
.L_409e59:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            lea RSI,QWORD PTR [RIP+.L_40dfcd]
            mov EDX,1
            mov RDI,RAX
            mov QWORD PTR [RSP+32],RAX
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            mov RSI,QWORD PTR [R13+32]
            mov R9,QWORD PTR [R13+40]
            lea RDX,QWORD PTR [RSI+R9*1]
            cmp RSI,RDX
            je .L_40a5b0

            mov RCX,RSI
            xor EDI,EDI
            jmp .L_409eb9
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409e98:

            cmp AL,12
            jge .L_409ec8

            lea R8D,DWORD PTR [RAX-8]
            cmp R8B,2
            jbe .L_409ec8
.L_409ea6:

            lea R8,QWORD PTR [RDI+5]
            cmp AL,32
            cmovb RDI,R8
            add RCX,1
            cmp RDX,RCX
            je .L_409ed5
.L_409eb9:

            movzx EAX,BYTE PTR [RCX]
            cmp AL,13
            jle .L_409e98

            cmp AL,34
            je .L_409ec8

            cmp AL,92
            jne .L_409ea6
.L_409ec8:

            add RCX,1
            add RDI,1
            cmp RDX,RCX
            jne .L_409eb9
.L_409ed5:

            test RDI,RDI
            je .L_40a5b0

            lea RBP,QWORD PTR [RSP+144]
            lea RSI,QWORD PTR [R9+RDI*1]
            mov EDX,92
            lea RAX,QWORD PTR [RBP+16]
            mov RDI,RBP
            mov QWORD PTR [RSP+144],RAX
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
.L_409f03:

            mov RAX,QWORD PTR [R13+32]
            mov RDI,QWORD PTR [R13+40]
            mov RSI,QWORD PTR [RSP+144]
            add RDI,RAX
            cmp RAX,RDI
            je .L_40a410

            xor ECX,ECX
            jmp .L_409f6d
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_409f28:

            cmp DL,9
            je .L_40a730

            cmp DL,10
            je .L_40a710

            cmp DL,8
            je .L_40a6f0
.L_409f43:

            cmp DL,31
            jbe .L_40aaf0

            mov BYTE PTR [RSI+RCX*1],DL
            mov RSI,QWORD PTR [RSP+144]
            add RCX,1
            nop
            nop
            nop
            nop
            nop
.L_409f60:

            add RAX,1
            cmp RDI,RAX
            je .L_40a410
.L_409f6d:

            movzx EDX,BYTE PTR [RAX]
            cmp DL,12
            je .L_40a780

            jle .L_409f28

            cmp DL,34
            je .L_40a760

            cmp DL,92
            je .L_40a750

            cmp DL,13
            jne .L_409f43

            mov BYTE PTR [RSI+RCX*1+1],114
            add RCX,2
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_409f60
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_409fa8:

            mov RAX,QWORD PTR [RDI+8]
            mov RSI,QWORD PTR [RAX]
            cmp QWORD PTR [RAX+8],RSI
            je .L_40aab0

            lea RSI,QWORD PTR [RIP+.L_40e4fe]
            mov EDX,1
            mov RDI,R14
.L_409fc8:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            test R15B,R15B
            jne .L_40a368

            mov RAX,QWORD PTR [RBX+8]
            mov ESI,DWORD PTR [RSP+4]
            lea RBP,QWORD PTR [RSP+144]
            mov R12,QWORD PTR [RAX]
            cmp QWORD PTR [RAX+8],R12
            mov QWORD PTR [RSP+16],RSI
            je .L_40a543
.L_409ff8:

            lea RDX,QWORD PTR [RIP+.L_40e571]
            lea RAX,QWORD PTR [RIP+.L_40e574]
            lea RBP,QWORD PTR [RSP+144]
            test R15B,R15B
            cmovne RAX,RDX
            lea R13,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+24],RAX
.L_40a01e:

            mov RSI,QWORD PTR [RSP+16]
            mov EDX,32
            mov RDI,RBP
            mov QWORD PTR [RSP+144],R13
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
.L_40a038:

            mov RDX,QWORD PTR [RSP+152]
            mov RSI,QWORD PTR [RSP+144]
            mov RDI,R14
.L_40a04b:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L_40a050:

            mov RDI,QWORD PTR [RSP+144]
            cmp RDI,R13
            je .L_40a062

            call _ZdlPv@PLT
.L_40a062:

            movzx EDX,BYTE PTR [RSP+15]
            mov R8D,DWORD PTR [RSP+4]
            mov RDI,R12
            mov ECX,DWORD PTR [RSP+8]
            mov RSI,R14
            add R12,16
.L_40a07a:

            call .L_409b30

            mov RAX,QWORD PTR [RBX+8]
            cmp QWORD PTR [RAX+8],R12
            je .L_40a518

            cmp QWORD PTR [RAX],R12
            je .L_40a01e

            mov RDI,QWORD PTR [RSP+24]
            call strlen@PLT

            mov RSI,QWORD PTR [RSP+24]
            mov RDX,RAX
            mov RDI,R14
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            jmp .L_40a01e
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a0b8:

            lea RDI,QWORD PTR [RSP+80]
            lea RDX,QWORD PTR [RIP+.L_40dfce]
            lea RAX,QWORD PTR [RDI+16]
            lea RSI,QWORD PTR [RDX-1]
            mov QWORD PTR [RSP+16],RDI
            mov QWORD PTR [RSP+80],RAX
            call .L_402450
.L_40a0db:

            mov RDX,QWORD PTR [RSP+88]
            mov RSI,QWORD PTR [RSP+80]
            mov RDI,R14
.L_40a0e8:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L_40a0ed:

            mov RBX,QWORD PTR [RBX+8]
            mov R13,RAX
            mov RDX,QWORD PTR [RBX+8]
            mov RAX,QWORD PTR [RBX]
            lea RDI,QWORD PTR [RAX+RDX*1]
            cmp RAX,RDI
            je .L_40a7d8

            xor ESI,ESI
            jmp .L_40a137
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40a110:

            cmp CL,12
            jge .L_40a149

            lea R8D,DWORD PTR [RCX-8]
            cmp R8B,2
            jbe .L_40a149
.L_40a11f:

            lea R8,QWORD PTR [RSI+5]
            cmp CL,32
            cmovb RSI,R8
.L_40a12a:

            add RAX,1
            cmp RDI,RAX
            je .L_409b90
.L_40a137:

            movzx ECX,BYTE PTR [RAX]
            cmp CL,13
            jle .L_40a110

            cmp CL,34
            je .L_40a149

            cmp CL,92
            jne .L_40a11f
.L_40a149:

            add RSI,1
            jmp .L_40a12a
          .byte 0x90
.L_40a150:

            cmp BYTE PTR [RDI+8],1
            lea RSI,QWORD PTR [RIP+.L_40e4ee]
            lea RAX,QWORD PTR [RIP+.L_40e4e8]
            sbb RDX,RDX
            not RDX
            add RDX,5
            cmp BYTE PTR [RDI+8],0
            mov RDI,R14
            cmove RSI,RAX
.L_40a177:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            jmp .L_409c68
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a188:

            mov R9,QWORD PTR [RDI+8]
            pxor XMM0,XMM0
            test R9,R9
            movaps XMMWORD PTR [RSP+144],XMM0
            movaps XMMWORD PTR [RSP+160],XMM0
            jne .L_40a8b0

            lea RBP,QWORD PTR [RSP+144]
            mov BYTE PTR [RSP+144],48
.L_40a1b9:

            mov RDX,RBP
.L_40a1bc:

            mov ECX,DWORD PTR [RDX]
            add RDX,4
            lea EAX,DWORD PTR [RCX-16843009]
            not ECX
            and EAX,ECX
            and EAX,2155905152
            je .L_40a1bc

            jmp .L_409d22
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a1e0:

            mov RCX,QWORD PTR [RDI+8]
            pxor XMM0,XMM0
            test RCX,RCX
            movaps XMMWORD PTR [RSP+144],XMM0
            movaps XMMWORD PTR [RSP+160],XMM0
            je .L_40a7c0

            xor EDI,EDI
            lea RBP,QWORD PTR [RSP+144]
            lea RSI,QWORD PTR [RSP+143]
            movabs R9,-3689348814741910323
            jmp .L_40a223
          .byte 0x90
.L_40a220:

            mov RDI,R8
.L_40a223:

            mov RAX,RCX
            lea R8,QWORD PTR [RDI+1]
            mul R9
            shr RDX,3
            lea RAX,QWORD PTR [RDX+RDX*4]
            add RAX,RAX
            sub RCX,RAX
            add ECX,48
            test RDX,RDX
            mov BYTE PTR [RSI+R8*1],CL
            mov RCX,RDX
            sete DL
            cmp R8,29
            seta AL
            or DL,AL
            je .L_40a220

            cmp R8,30
            je .L_40ae05

            test R8,R8
            je .L_40a292

            lea RAX,QWORD PTR [RBP+RDI*1]
            cmp RAX,RBP
            jbe .L_40a292

            mov RDX,RBP
            nop
            nop
            nop
            nop
            nop
            nop
.L_40a278:

            movzx ECX,BYTE PTR [RDX]
            movzx ESI,BYTE PTR [RAX]
            add RDX,1
            sub RAX,1
            mov BYTE PTR [RDX-1],SIL
            mov BYTE PTR [RAX+1],CL
            cmp RDX,RAX
            jb .L_40a278
.L_40a292:

            mov RDX,RBP
.L_40a295:

            mov ECX,DWORD PTR [RDX]
            add RDX,4
            lea EAX,DWORD PTR [RCX-16843009]
            not ECX
            and EAX,ECX
            and EAX,2155905152
            je .L_40a295

            jmp .L_409d22
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a2b8:

            xor ECX,ECX
            lea R10,QWORD PTR [RIP+.L_410400]
            lea R11,QWORD PTR [RSP+179]
            jmp .L_40a315
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a2d0:

            cmp DL,9
            je .L_40a860

            cmp DL,10
            je .L_40a840

            cmp DL,8
            je .L_40a820
.L_40a2eb:

            cmp DL,31
            jbe .L_40aba0

            mov BYTE PTR [RSI+RCX*1],DL
            mov RSI,QWORD PTR [RSP+144]
            add RCX,1
            nop
            nop
            nop
            nop
            nop
.L_40a308:

            add RAX,1
            cmp RDI,RAX
            je .L_409be0
.L_40a315:

            movzx EDX,BYTE PTR [RAX]
            cmp DL,12
            je .L_40a808

            jle .L_40a2d0

            cmp DL,34
            je .L_40a890

            cmp DL,92
            je .L_40a880

            cmp DL,13
            jne .L_40a2eb

            mov BYTE PTR [RSI+RCX*1+1],114
            add RCX,2
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_40a308
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40a350:

            mov EAX,2
            mov EDX,1
            xor ECX,ECX
            jmp .L_409ce8
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a368:

            mov ESI,DWORD PTR [RSP+8]
            add DWORD PTR [RSP+4],ESI
            lea RSI,QWORD PTR [RIP+.L_40defa]
            mov EDX,1
            mov RDI,R14
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            mov RAX,QWORD PTR [RBX+8]
            mov R12,QWORD PTR [RAX]
            cmp R12,QWORD PTR [RAX+8]
            je .L_40adf3

            mov EAX,DWORD PTR [RSP+4]
            mov QWORD PTR [RSP+16],RAX
            jmp .L_409ff8
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a3a8:

            mov ESI,DWORD PTR [RSP+8]
            add DWORD PTR [RSP+4],ESI
            lea RSI,QWORD PTR [RIP+.L_40defa]
            mov EDX,1
            mov RDI,R14
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L_40a3c4:

            mov RAX,QWORD PTR [RBX+8]
            mov R13,QWORD PTR [RAX+24]
            add RAX,8
            cmp R13,RAX
            je .L_40ad14

            mov EAX,DWORD PTR [RSP+4]
            mov QWORD PTR [RSP+40],RAX
            jmp .L_409de7
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a3f0:

            movdqa XMM0,XMMWORD PTR [RSP+160]
            mov RSI,RAX
            movaps XMMWORD PTR [RSP+128],XMM0
            jmp .L_409c11
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a410:

            lea R12,QWORD PTR [RSP+112]
            add RBP,16
            cmp RSI,RBP
            lea RAX,QWORD PTR [R12+16]
            mov QWORD PTR [RSP+112],RAX
            je .L_40aad0

            mov RAX,QWORD PTR [RSP+160]
            mov QWORD PTR [RSP+112],RSI
            mov QWORD PTR [RSP+128],RAX
.L_40a441:

            mov RDX,QWORD PTR [RSP+152]
            mov QWORD PTR [RSP+120],RDX
.L_40a44e:

            mov RDI,QWORD PTR [RSP+32]
.L_40a453:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            lea RSI,QWORD PTR [RIP+.L_40e4f8]
            mov EDX,2
            mov RDI,RAX
            mov RBP,RAX
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            mov RDI,QWORD PTR [RSP+24]
            call strlen@PLT

            mov RSI,QWORD PTR [RSP+24]
            mov RDX,RAX
            mov RDI,RBP
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L_40a489:

            mov RDI,QWORD PTR [RSP+112]
            lea RAX,QWORD PTR [R12+16]
            cmp RDI,RAX
            je .L_40a49d

            call _ZdlPv@PLT
.L_40a49d:

            mov RAX,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+80]
            add RAX,16
            cmp RDI,RAX
            je .L_40a4b5

            call _ZdlPv@PLT
.L_40a4b5:

            movzx EDX,BYTE PTR [RSP+15]
            mov R8D,DWORD PTR [RSP+4]
            lea RDI,QWORD PTR [R13+64]
            mov ECX,DWORD PTR [RSP+8]
            mov RSI,R14
.L_40a4ca:

            call .L_409b30

            mov RDI,R13
            call _ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base@PLT

            mov R13,RAX
            mov RAX,QWORD PTR [RBX+8]
            lea RDX,QWORD PTR [RAX+8]
            cmp R13,RDX
            je .L_40a5e0

            cmp QWORD PTR [RAX+24],R13
            je .L_409e2f

            mov RBP,QWORD PTR [RSP+48]
            mov RDI,RBP
            call strlen@PLT

            mov RSI,RBP
            mov RDX,RAX
            mov RDI,R14
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            jmp .L_409e2f
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40a518:

            test R15B,R15B
            je .L_40a543
.L_40a51d:

            mov R15D,DWORD PTR [RSP+4]
            sub R15D,DWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RIP+.L_40defa]
            mov EDX,1
            mov RDI,R14
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            mov EAX,R15D
            mov QWORD PTR [RSP+16],RAX
.L_40a543:

            mov RSI,QWORD PTR [RSP+16]
            lea RAX,QWORD PTR [RBP+16]
            mov EDX,32
            mov RDI,RBP
            mov QWORD PTR [RSP+144],RAX
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
.L_40a561:

            mov RDX,QWORD PTR [RSP+152]
            mov RSI,QWORD PTR [RSP+144]
            mov RDI,R14
.L_40a574:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            lea RSI,QWORD PTR [RIP+.L_40e4fc]
            mov EDX,1
            mov RDI,RAX
            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L_40a58d:

            mov RDI,QWORD PTR [RSP+144]
            add RBP,16
            cmp RDI,RBP
            jne .L_409c60

            jmp .L_409c68
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a5b0:

            lea R12,QWORD PTR [RSP+112]
            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [RSP+112],RAX
.L_40a5c2:

            call .L_402450
.L_40a5c7:

            mov RSI,QWORD PTR [RSP+112]
            mov RDX,QWORD PTR [RSP+120]
            jmp .L_40a44e
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
.L_40a5e0:

            test R15B,R15B
            je .L_40a60b
.L_40a5e5:

            mov R15D,DWORD PTR [RSP+4]
            sub R15D,DWORD PTR [RSP+8]
            lea RSI,QWORD PTR [RIP+.L_40defa]
            mov EDX,1
            mov RDI,R14
.L_40a5fe:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            mov EAX,R15D
            mov QWORD PTR [RSP+40],RAX
.L_40a60b:

            mov RSI,QWORD PTR [RSP+40]
            lea RAX,QWORD PTR [R12+16]
            mov EDX,32
            mov RDI,R12
            mov QWORD PTR [RSP+112],RAX
            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
.L_40a627:

            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+120],RAX
            je .L_40ad1e

            lea RSI,QWORD PTR [RIP+.L_40e4f4]
            mov EDX,1
            mov RDI,R12
.L_40a64b:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40a650:

            lea RBP,QWORD PTR [RSP+144]
            lea RDX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+144],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40ab88

            mov QWORD PTR [RSP+144],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+160],RCX
.L_40a688:

            mov RCX,QWORD PTR [RAX+8]
            mov RDI,R14
            mov QWORD PTR [RSP+152],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RDX,QWORD PTR [RSP+152]
            mov RSI,QWORD PTR [RSP+144]
.L_40a6b6:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L_40a6bb:

            mov RDI,QWORD PTR [RSP+144]
            add RBP,16
            cmp RDI,RBP
            je .L_40a6d1

            call _ZdlPv@PLT
.L_40a6d1:

            mov RDI,QWORD PTR [RSP+112]
            add R12,16
            cmp RDI,R12
            jne .L_409c60

            jmp .L_409c68
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a6f0:

            mov BYTE PTR [RSI+RCX*1+1],98
            add RCX,2
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_409f60
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
.L_40a710:

            mov BYTE PTR [RSI+RCX*1+1],110
            add RCX,2
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_409f60
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
.L_40a730:

            mov BYTE PTR [RSI+RCX*1+1],116
            add RCX,2
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_409f60
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
.L_40a750:

            add RCX,2
            jmp .L_409f60
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a760:

            mov BYTE PTR [RSI+RCX*1+1],34
            add RCX,2
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_409f60
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
.L_40a780:

            mov BYTE PTR [RSI+RCX*1+1],102
            add RCX,2
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_409f60
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
.L_40a7a0:

            lea RSI,QWORD PTR [RIP+.L_40e4f3]
            mov EDX,2
            mov RDI,R14
.L_40a7af:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L_40a7b4:

            jmp .L_409c68
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a7c0:

            mov BYTE PTR [RSP+144],48
            lea RBP,QWORD PTR [RSP+144]
            jmp .L_40a292
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40a7d8:

            lea R12,QWORD PTR [RSP+112]
            lea RAX,QWORD PTR [R12+16]
            mov RDI,R12
            mov QWORD PTR [RSP+112],RAX
            mov RSI,QWORD PTR [RBX]
            add RDX,RSI
.L_40a7f0:

            call .L_402450
.L_40a7f5:

            mov RDX,QWORD PTR [RSP+120]
            mov RSI,QWORD PTR [RSP+112]
            jmp .L_409c1e
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40a808:

            mov BYTE PTR [RSI+RCX*1+1],102
            add RCX,2
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_40a308
          .byte 0x66
          .byte 0x90
.L_40a820:

            mov BYTE PTR [RSI+RCX*1+1],98
            add RCX,2
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_40a308
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
.L_40a840:

            mov BYTE PTR [RSI+RCX*1+1],110
            add RCX,2
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_40a308
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
.L_40a860:

            mov BYTE PTR [RSI+RCX*1+1],116
            add RCX,2
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_40a308
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
.L_40a880:

            add RCX,2
            jmp .L_40a308
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40a890:

            mov BYTE PTR [RSI+RCX*1+1],34
            add RCX,2
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_40a308
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
.L_40a8b0:

            mov RCX,R9
            xor R8D,R8D
            lea RSI,QWORD PTR [RSP+143]
            movabs R10,7378697629483820647
            jmp .L_40a8d3
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40a8d0:

            mov R8,RDI
.L_40a8d3:

            mov RAX,RCX
            lea RDI,QWORD PTR [R8+1]
            imul R10
            mov RAX,RCX
            sar RAX,63
            sar RDX,2
            sub RDX,RAX
            lea RAX,QWORD PTR [RDX+RDX*4]
            add RAX,RAX
            sub RCX,RAX
            mov RAX,RCX
            sar RAX,63
            xor RCX,RAX
            sub RCX,RAX
            add ECX,48
            test RDX,RDX
            mov BYTE PTR [RSI+RDI*1],CL
            mov RCX,RDX
            sete DL
            cmp RDI,29
            seta AL
            or DL,AL
            je .L_40a8d0

            cmp RDI,30
            je .L_40add4

            test R9,R9
            jns .L_40a937

            mov BYTE PTR [RSP+RDI*1+144],45
            lea RDI,QWORD PTR [R8+2]
.L_40a937:

            lea RBP,QWORD PTR [RSP+144]
            add RDI,RBP
            cmp RDI,RBP
            je .L_40a1b9

            sub RDI,1
            cmp RDI,RBP
            jbe .L_40a1b9

            mov RAX,RBP
            nop
            nop
            nop
            nop
            nop
.L_40a960:

            movzx EDX,BYTE PTR [RAX]
            movzx ECX,BYTE PTR [RDI]
            add RAX,1
            sub RDI,1
            mov BYTE PTR [RAX-1],CL
            mov BYTE PTR [RDI+1],DL
            cmp RAX,RDI
            jb .L_40a960

            jmp .L_40a1b9
          .byte 0x66
          .byte 0x90
.L_40a980:

            lea RBP,QWORD PTR [RSP+144]
            lea R8,QWORD PTR [RIP+.L_40e50f]
            mov ECX,32
            mov EDX,1
            mov ESI,32
            mov EAX,1
            mov RDI,RBP
            call __snprintf_chk@PLT

            call localeconv@PLT

            test RAX,RAX
            je .L_40ad42

            mov RDX,QWORD PTR [RAX+8]
            mov RAX,QWORD PTR [RAX]
            test RDX,RDX
            je .L_40ac29

            movzx EDX,BYTE PTR [RDX]
            test RAX,RAX
            mov BYTE PTR [RSP+79],DL
            je .L_40acb7

            movzx EBX,BYTE PTR [RAX]
            cmp BL,46
            setne R12B
            test BL,BL
            setne AL
            and R12D,EAX
            test DL,DL
            jne .L_40ac88
.L_40a9f3:

            test R12B,R12B
            je .L_40aa11

            lea RDX,QWORD PTR [RBP+32]
            mov RAX,RBP
            nop
.L_40aa00:

            cmp BYTE PTR [RAX],BL
            je .L_40ac80

            add RAX,1
            cmp RDX,RAX
            jne .L_40aa00
.L_40aa11:

            mov ESI,1
            xor ECX,ECX
            jmp .L_40aa42
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40aa20:

            mov EDX,EAX
            and EDX,4294967263
            cmp DL,69
            setne DL
            cmp AL,46
            setne AL
            add RCX,1
            and EAX,EDX
            and ESI,EAX
            cmp RCX,32
            je .L_40ac4e
.L_40aa42:

            movzx EAX,BYTE PTR [RBP+RCX*1]
            test AL,AL
            jne .L_40aa20

            test SIL,SIL
            je .L_409d08

            lea RAX,QWORD PTR [RCX+2]
            cmp RAX,31
            ja .L_40ac57

            cmp BYTE PTR [RSP+RCX*1+143],0
            je .L_40ad9a

            mov BYTE PTR [RSP+RCX*1+144],46
            mov BYTE PTR [RSP+RCX*1+145],48
            cmp BYTE PTR [RSP+RAX*1+144],0
            je .L_409d08

            lea RCX,QWORD PTR [RIP+.L_40e620]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e550]
            mov EDX,8382
            call __assert_fail@PLT
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40aab0:

            lea RSI,QWORD PTR [RIP+.L_40e4fb]
            mov EDX,2
            mov RDI,R14
.L_40aabf:

            call _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT

            jmp .L_409c68
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40aad0:

            movdqa XMM0,XMMWORD PTR [RSP+160]
            mov RSI,RAX
            movaps XMMWORD PTR [RSP+128],XMM0
            jmp .L_40a441
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40aaf0:

            lea R11,QWORD PTR [RIP+.L_410400]
            movsx R8D,DL
            and EDX,15
            sar R8D,4
            mov R9D,12405
            mov R10,QWORD PTR [RSP+56]
            movzx EDX,BYTE PTR [R11+RDX*1]
            movsxd R8,R8D
            mov WORD PTR [RSP+179],R9W
            movzx R8D,BYTE PTR [R11+R8*1]
            lea R9,QWORD PTR [RCX+5]
            mov BYTE PTR [RSP+181],48
            sub R10,RCX
            mov BYTE PTR [RSP+183],DL
            mov RDX,RCX
            add RDX,1
            mov BYTE PTR [RSP+182],R8B
            mov R8D,117
            cmp RDX,R9
            mov BYTE PTR [RSI+RDX*1],R8B
            je .L_40ab71
.L_40ab57:

            movzx R8D,BYTE PTR [R10+RDX*1]
            mov RSI,QWORD PTR [RSP+144]
            add RDX,1
            cmp RDX,R9
            mov BYTE PTR [RSI+RDX*1],R8B
            jne .L_40ab57
.L_40ab71:

            add RCX,6
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_409f60
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40ab88:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+160],XMM0
            jmp .L_40a688
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40aba0:

            mov R8D,12405
            lea R9,QWORD PTR [RCX+5]
            mov RBX,R11
            mov WORD PTR [RSP+179],R8W
            movsx R8D,DL
            and EDX,15
            sar R8D,4
            movzx EDX,BYTE PTR [R10+RDX*1]
            sub RBX,RCX
            movsxd R8,R8D
            mov BYTE PTR [RSP+181],48
            movzx R8D,BYTE PTR [R10+R8*1]
            mov BYTE PTR [RSP+183],DL
            mov RDX,RCX
            add RDX,1
            mov BYTE PTR [RSP+182],R8B
            cmp R9,RDX
            mov R8D,117
            mov BYTE PTR [RSI+RDX*1],R8B
            je .L_40ac18
.L_40abfe:

            movzx R8D,BYTE PTR [RBX+RDX*1]
            mov RSI,QWORD PTR [RSP+144]
            add RDX,1
            cmp R9,RDX
            mov BYTE PTR [RSI+RDX*1],R8B
            jne .L_40abfe
.L_40ac18:

            add RCX,6
            mov RSI,QWORD PTR [RSP+144]
            jmp .L_40a308
.L_40ac29:

            test RAX,RAX
            mov BYTE PTR [RSP+79],0
            je .L_40aa11

            movzx EBX,BYTE PTR [RAX]
            test BL,BL
            setne R12B
            cmp BL,46
            setne AL
            and R12D,EAX
            jmp .L_40a9f3
.L_40ac4e:

            test SIL,SIL
            je .L_409d08
.L_40ac57:

            lea RCX,QWORD PTR [RIP+.L_40e620]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e524]
            mov EDX,8372
            call __assert_fail@PLT
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
.L_40ac80:

            mov BYTE PTR [RAX],46
            jmp .L_40aa11
.L_40ac88:

            lea R13,QWORD PTR [RBP+32]
            lea RDX,QWORD PTR [RSP+79]
            mov RDI,RBP
            mov RSI,R13
            call .L_409a00

            sub R13,RAX
            je .L_40a9f3

            mov RDX,R13
            xor ESI,ESI
            mov RDI,RAX
            call memset@PLT

            jmp .L_40a9f3
.L_40acb7:

            test DL,DL
            je .L_40aa11

            lea RBX,QWORD PTR [RBP+32]
            lea RDX,QWORD PTR [RSP+79]
            mov RDI,RBP
            mov RSI,RBX
            call .L_409a00

            sub RBX,RAX
            je .L_40aa11

            mov RDX,RBX
            xor ESI,ESI
            mov RDI,RAX
            call memset@PLT

            jmp .L_40aa11
.L_40acee:

            call __stack_chk_fail@PLT
.L_40acf3:

            mov RDI,QWORD PTR [RSP+144]
            add RBP,16
            mov RBX,RAX
            cmp RDI,RBP
            je .L_40ad0c
.L_40ad07:

            call _ZdlPv@PLT
.L_40ad0c:

            mov RDI,RBX
            call _Unwind_Resume@PLT
.L_40ad14:

            lea R12,QWORD PTR [RSP+112]
            jmp .L_40a5e5
.L_40ad1e:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
.L_40ad25:

            call _ZSt20__throw_length_errorPKc@PLT
.L_40ad2a:

            mov RBX,RAX
.L_40ad2d:

            mov R14,QWORD PTR [RSP+16]
            mov RDI,QWORD PTR [RSP+80]
            add R14,16
            cmp RDI,R14
            jne .L_40ad07

            jmp .L_40ad0c
.L_40ad42:

            lea RCX,QWORD PTR [RIP+.L_40e620]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e515]
            mov EDX,8326
            call __assert_fail@PLT
.L_40ad61:

            mov RDI,QWORD PTR [RSP+112]
            add R12,16
            mov RBX,RAX
            cmp RDI,R12
            je .L_40ad2d

            call _ZdlPv@PLT

            jmp .L_40ad2d
.L_40ad79:

            mov RBX,RAX
.L_40ad7c:

            mov RDI,QWORD PTR [RSP+112]
            add R12,16
            cmp RDI,R12
            jne .L_40ad07

            jmp .L_40ad0c
.L_40ad93:

            jmp .L_40acf3
.L_40ad98:

            jmp .L_40ad61
.L_40ad9a:

            lea RCX,QWORD PTR [RIP+.L_40e620]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e53b]
            mov EDX,8375
            call __assert_fail@PLT
.L_40adb9:

            mov RDI,QWORD PTR [RSP+144]
            add RBP,16
            mov RBX,RAX
            cmp RDI,RBP
            je .L_40ad7c

            call _ZdlPv@PLT

            jmp .L_40ad7c
.L_40add4:

            lea RCX,QWORD PTR [RIP+.L_40eae0]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e500]
            mov EDX,8282
            call __assert_fail@PLT
.L_40adf3:

            lea RBP,QWORD PTR [RSP+144]
            jmp .L_40a51d
.L_40ae00:

            jmp .L_40ad2a
.L_40ae05:

            lea RCX,QWORD PTR [RIP+.L_40e880]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e500]
            mov EDX,8282
            call __assert_fail@PLT
.L_40ae24:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ae30:

            push R15
            push R14
            mov R15,RSI
            push R13
            push R12
            mov R12,RDI
            push RBP
            push RBX
            mov RBX,RSI
            mov RBP,RSI
            sub RSP,24
.L_40ae4a:

            mov RCX,QWORD PTR [RDI]
            mov RAX,QWORD PTR [RDI+8]
            sub RAX,RCX
            sub RBX,RCX
            sar RAX,4
            test RAX,RAX
            je .L_40af90

            lea RCX,QWORD PTR [RAX+RAX*1]
            cmp RAX,RCX
            mov QWORD PTR [RSP],RCX
            jbe .L_40b128

            movabs RAX,1152921504606846975
            mov RDI,-16
            mov QWORD PTR [RSP],RAX
.L_40ae8a:

            mov QWORD PTR [RSP+8],RDX
            call _Znwm@PLT

            mov RDX,QWORD PTR [RSP+8]
            mov R14,RAX
.L_40ae9c:

            add RBX,R14
            je .L_40aedd

            movzx EAX,BYTE PTR [RDX]
            mov RCX,QWORD PTR [RDX+8]
            mov QWORD PTR [RBX+8],RCX
            cmp AL,1
            mov BYTE PTR [RBX],AL
            je .L_40b150

            cmp AL,2
            jne .L_40b1a0

            test RCX,RCX
            je .L_40b1d0

            cmp QWORD PTR [RBX+8],0
            mov BYTE PTR [RDX],0
            mov QWORD PTR [RDX+8],0
            je .L_40b1d0
.L_40aedd:

            mov R8,QWORD PTR [R12]
            cmp R8,R15
            mov R13,R8
            je .L_40b180
.L_40aeed:

            mov RDX,R8
            mov RAX,R14
            jmp .L_40af4a
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40aef8:

            cmp SIL,2
            jne .L_40b0b0

            cmp QWORD PTR [RDX+8],0
            je .L_40b1d0
.L_40af0d:

            mov BYTE PTR [RDX],0
            movzx ESI,BYTE PTR [RAX]
            mov QWORD PTR [RDX+8],0
            cmp SIL,1
            je .L_40afa8

            cmp SIL,2
            jne .L_40b0e8

            cmp QWORD PTR [RAX+8],0
            je .L_40b1d0
.L_40af3a:

            add RDX,16
            lea RSI,QWORD PTR [RAX+16]
            cmp R15,RDX
            je .L_40afbc
.L_40af47:

            mov RAX,RSI
.L_40af4a:

            test RAX,RAX
            je .L_40af3a

            movzx ESI,BYTE PTR [RDX]
            mov BYTE PTR [RAX],SIL
            mov RSI,QWORD PTR [RDX+8]
            mov QWORD PTR [RAX+8],RSI
            movzx ESI,BYTE PTR [RDX]
            cmp SIL,1
            jne .L_40aef8

            cmp QWORD PTR [RDX+8],0
            jne .L_40af0d
.L_40af6d:

            lea RCX,QWORD PTR [RIP+.L_40ed20]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e2f0]
            mov EDX,1787
            call __assert_fail@PLT
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40af90:

            mov QWORD PTR [RSP],1
.L_40af98:

            mov RDI,QWORD PTR [RSP]
            shl RDI,4
            jmp .L_40ae8a
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40afa8:

            cmp QWORD PTR [RAX+8],0
            je .L_40af6d

            add RDX,16
            lea RSI,QWORD PTR [RAX+16]
            cmp R15,RDX
            jne .L_40af47
.L_40afbc:

            mov RDI,QWORD PTR [R12+8]
            lea RBX,QWORD PTR [RAX+32]
            cmp RDI,R15
            je .L_40b060
.L_40afce:

            mov RSI,R15
            jmp .L_40b00f
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40afd8:

            cmp AL,2
            jne .L_40b100

            test RDX,RDX
            je .L_40b1d0

            cmp QWORD PTR [RBX+8],0
            mov BYTE PTR [RSI],0
            mov QWORD PTR [RSI+8],0
            je .L_40b1d0
.L_40afff:

            add RSI,16
            add RBX,16
            cmp RSI,RDI
            mov RBP,RSI
            je .L_40b054
.L_40b00f:

            test RBX,RBX
            je .L_40afff

            movzx EAX,BYTE PTR [RSI]
            mov RDX,QWORD PTR [RSI+8]
            mov QWORD PTR [RBX+8],RDX
            cmp AL,1
            mov BYTE PTR [RBX],AL
            jne .L_40afd8

            test RDX,RDX
            je .L_40af6d

            cmp QWORD PTR [RBX+8],0
            mov BYTE PTR [RSI],0
            mov QWORD PTR [RSI+8],0
            je .L_40af6d

            add RSI,16
            add RBX,16
            cmp RSI,RDI
            mov RBP,RSI
            jne .L_40b00f
.L_40b054:

            cmp R8,RDI
            je .L_40b075

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40b060:

            mov RDI,R13
            add R13,16
            call .L_406c70

            cmp R13,RBP
            jne .L_40b060

            mov RDI,QWORD PTR [R12]
.L_40b075:

            test RDI,RDI
            je .L_40b07f

            call _ZdlPv@PLT
.L_40b07f:

            mov R13,QWORD PTR [RSP]
            mov QWORD PTR [R12],R14
            mov QWORD PTR [R12+8],RBX
            shl R13,4
            add R14,R13
            mov QWORD PTR [R12+16],R14
            add RSP,24
.L_40b09c:

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
.L_40b0b0:

            cmp SIL,3
            jne .L_40af0d

            cmp QWORD PTR [RDX+8],0
            jne .L_40af0d
.L_40b0c5:

            lea RCX,QWORD PTR [RIP+.L_40ed20]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e328]
            mov EDX,1789
            call __assert_fail@PLT
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40b0e8:

            cmp SIL,3
            jne .L_40af3a

            cmp QWORD PTR [RAX+8],0
            jne .L_40af3a

            jmp .L_40b0c5
          .byte 0x90
.L_40b100:

            cmp AL,3
            jne .L_40b1f6

            test RDX,RDX
            je .L_40b0c5

            cmp QWORD PTR [RBX+8],0
            mov BYTE PTR [RSI],0
            mov QWORD PTR [RSI+8],0
            jne .L_40afff

            jmp .L_40b0c5
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40b128:

            movabs RAX,1152921504606846975
            cmp RCX,RAX
            jbe .L_40b1e5

            mov RDI,-16
            mov QWORD PTR [RSP],RAX
            jmp .L_40ae8a
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b150:

            test RCX,RCX
            je .L_40af6d

            cmp QWORD PTR [RBX+8],0
            mov BYTE PTR [RDX],0
            mov QWORD PTR [RDX+8],0
            je .L_40af6d

            mov R8,QWORD PTR [R12]
            cmp R8,R15
            mov R13,R8
            jne .L_40aeed

            nop
.L_40b180:

            mov RDI,QWORD PTR [R12+8]
            lea RBX,QWORD PTR [R14+16]
            cmp R15,RDI
            jne .L_40afce

            jmp .L_40b075
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b1a0:

            cmp AL,3
            jne .L_40b1d5

            test RCX,RCX
            je .L_40b0c5

            cmp QWORD PTR [RBX+8],0
            mov BYTE PTR [RDX],0
            mov QWORD PTR [RDX+8],0
            jne .L_40aedd

            jmp .L_40b0c5
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b1d0:

            call .L_402230
.L_40b1d5:

            mov BYTE PTR [RDX],0
            mov QWORD PTR [RDX+8],0
            jmp .L_40aedd
.L_40b1e5:

            test RCX,RCX
            jne .L_40af98

            xor R14D,R14D
            jmp .L_40ae9c
.L_40b1f6:

            mov BYTE PTR [RSI],0
            mov QWORD PTR [RSI+8],0
            jmp .L_40afff
.L_40b206:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40b210:

            push R15
            push R14
            push R13
            push R12
            push RBP
            push RBX
            sub RSP,24
.L_40b21e:

            mov RBX,QWORD PTR [RDI+16]
            mov QWORD PTR [RSP+8],RDI
            mov QWORD PTR [RSP],RSI
            test RBX,RBX
            je .L_40b308

            mov RAX,QWORD PTR [RSP]
            mov R15,QWORD PTR [RAX+8]
            mov RBP,QWORD PTR [RAX]
            jmp .L_40b259
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b248:

            mov RAX,QWORD PTR [RBX+16]
            mov ESI,1
            test RAX,RAX
            je .L_40b2a7
.L_40b256:

            mov RBX,RAX
.L_40b259:

            mov R14,QWORD PTR [RBX+40]
            mov R13,QWORD PTR [RBX+32]
            cmp R15,R14
            mov R12,R14
            cmovbe R12,R15
            test R12,R12
            je .L_40b282

            mov RDX,R12
            mov RSI,R13
            mov RDI,RBP
            call memcmp@PLT

            test EAX,EAX
            jne .L_40b298
.L_40b282:

            mov RAX,R15
            sub RAX,R14
            cmp RAX,2147483647
            jg .L_40b29c

            cmp RAX,-2147483648
            jl .L_40b248
.L_40b298:

            test EAX,EAX
            js .L_40b248
.L_40b29c:

            mov RAX,QWORD PTR [RBX+24]
            xor ESI,ESI
            test RAX,RAX
            jne .L_40b256
.L_40b2a7:

            test SIL,SIL
            mov R9,RBX
            jne .L_40b30c

            test R12,R12
            jne .L_40b34b
.L_40b2b8:

            sub R14,R15
            cmp R14,2147483647
            jg .L_40b2f0
.L_40b2c4:

            cmp R14,-2147483648
            jl .L_40b2d4

            mov EAX,R14D
.L_40b2d0:

            test EAX,EAX
            jns .L_40b2f0
.L_40b2d4:

            add RSP,24
.L_40b2d8:

            xor EAX,EAX
            mov RDX,R9
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
.L_40b2f0:

            add RSP,24
            mov RAX,RBX
            xor EDX,EDX
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
.L_40b308:

            lea RBX,QWORD PTR [RDI+8]
.L_40b30c:

            mov RAX,QWORD PTR [RSP+8]
            cmp QWORD PTR [RAX+24],RBX
            je .L_40b380

            mov RDI,RBX
            call _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@PLT

            mov RCX,QWORD PTR [RSP]
            mov R14,QWORD PTR [RAX+40]
            mov R9,RBX
            mov R13,QWORD PTR [RAX+32]
            mov RBX,RAX
            mov R15,QWORD PTR [RCX+8]
            mov R12,R14
            mov RBP,QWORD PTR [RCX]
            cmp R15,R14
            cmovbe R12,R15
            test R12,R12
            je .L_40b2b8
.L_40b34b:

            mov RDX,R12
            mov RSI,RBP
            mov RDI,R13
            mov QWORD PTR [RSP],R9
            call memcmp@PLT

            test EAX,EAX
            mov R9,QWORD PTR [RSP]
            jne .L_40b2d0

            sub R14,R15
            cmp R14,2147483647
            jle .L_40b2c4

            jmp .L_40b2f0
          .byte 0x66
          .byte 0x90
.L_40b380:

            add RSP,24
.L_40b384:

            mov RDX,RBX
            xor EAX,EAX
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_40b394:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40b3a0:

            push R15
            lea RAX,QWORD PTR [RDI+8]
            push R14
            push R13
            push R12
            mov R13,RDI
            push RBP
            push RBX
            mov R15,RDX
            sub RSP,24
.L_40b3b8:

            cmp RSI,RAX
            je .L_40b5b8

            mov R12,QWORD PTR [RDX+8]
            mov RBP,QWORD PTR [RSI+40]
            mov RBX,RSI
            mov R8,QWORD PTR [RSI+32]
            mov R14,QWORD PTR [RDX]
            cmp R12,RBP
            mov RCX,RBP
            cmovbe RCX,R12
            test RCX,RCX
            jne .L_40b498

            mov RAX,R12
            sub RAX,RBP
            cmp RAX,2147483647
            jg .L_40b4ea
.L_40b3f8:

            cmp RAX,-2147483648
            jl .L_40b408

            test EAX,EAX
            jns .L_40b590
.L_40b408:

            cmp QWORD PTR [R13+24],RBX
            mov RAX,RBX
            mov RDX,RBX
            je .L_40b5a5

            mov RDI,RBX
            call _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@PLT

            mov RBP,QWORD PTR [RAX+40]
            mov RCX,RAX
            cmp R12,RBP
            mov RDX,RBP
            cmovbe RDX,R12
            test RDX,RDX
            je .L_40b44e

            mov RDI,QWORD PTR [RAX+32]
            mov RSI,R14
            mov QWORD PTR [RSP],RAX
            call memcmp@PLT

            test EAX,EAX
            mov RCX,QWORD PTR [RSP]
            jne .L_40b469
.L_40b44e:

            sub RBP,R12
            cmp RBP,2147483647
            jg .L_40b610

            cmp RBP,-2147483648
            jl .L_40b471

            mov EAX,EBP
.L_40b469:

            test EAX,EAX
            jns .L_40b610
.L_40b471:

            cmp QWORD PTR [RCX+24],0
            mov EAX,0
            cmovne RAX,RBX
            cmove RBX,RCX
            add RSP,24
.L_40b487:

            mov RDX,RBX
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
.L_40b498:

            mov RDX,RCX
            mov RSI,R8
            mov RDI,R14
            mov QWORD PTR [RSP+8],RCX
            mov QWORD PTR [RSP],R8
            call memcmp@PLT

            test EAX,EAX
            mov R8,QWORD PTR [RSP]
            mov RCX,QWORD PTR [RSP+8]
            jne .L_40b630

            mov RAX,R12
            sub RAX,RBP
            cmp RAX,2147483647
            jle .L_40b3f8

            nop
            nop
            nop
            nop
            nop
            nop
.L_40b4d8:

            mov RDX,RCX
            mov RSI,R14
            mov RDI,R8
            call memcmp@PLT

            test EAX,EAX
            jne .L_40b505
.L_40b4ea:

            sub RBP,R12
            cmp RBP,2147483647
            jg .L_40b5a0

            cmp RBP,-2147483648
            jl .L_40b50d

            mov EAX,EBP
.L_40b505:

            test EAX,EAX
            jns .L_40b5a0
.L_40b50d:

            cmp QWORD PTR [R13+32],RBX
            je .L_40b5f5

            mov RDI,RBX
            call _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base@PLT

            mov RBP,QWORD PTR [RAX+40]
            mov RCX,RAX
            cmp R12,RBP
            mov RDX,RBP
            cmovbe RDX,R12
            test RDX,RDX
            je .L_40b54d

            mov RSI,QWORD PTR [RAX+32]
            mov RDI,R14
            mov QWORD PTR [RSP],RAX
            call memcmp@PLT

            test EAX,EAX
            mov RCX,QWORD PTR [RSP]
            jne .L_40b569
.L_40b54d:

            sub R12,RBP
            cmp R12,2147483647
            jg .L_40b610

            cmp R12,-2147483648
            jl .L_40b571

            mov EAX,R12D
.L_40b569:

            test EAX,EAX
            jns .L_40b610
.L_40b571:

            cmp QWORD PTR [RBX+24],0
            mov EAX,0
            cmovne RBX,RCX
            cmovne RAX,RCX
            mov RDX,RBX
            jmp .L_40b5a5
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b590:

            test RCX,RCX
            jne .L_40b4d8

            jmp .L_40b4ea
          .byte 0x66
          .byte 0x90
.L_40b5a0:

            mov RAX,RBX
            xor EDX,EDX
.L_40b5a5:

            add RSP,24
.L_40b5a9:

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
.L_40b5b8:

            cmp QWORD PTR [RDI+40],0
            je .L_40b610

            mov RBX,QWORD PTR [RDI+32]
            mov R12,QWORD PTR [RDX+8]
            mov RBP,QWORD PTR [RBX+40]
            mov RDX,R12
            cmp RBP,R12
            cmovbe RDX,RBP
            test RDX,RDX
            jne .L_40b640
.L_40b5da:

            sub RBP,R12
            cmp RBP,2147483647
            jg .L_40b610

            cmp RBP,-2147483648
            jl .L_40b5f5

            mov EAX,EBP
.L_40b5f1:

            test EAX,EAX
            jns .L_40b610
.L_40b5f5:

            add RSP,24
.L_40b5f9:

            mov RDX,RBX
            xor EAX,EAX
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
.L_40b610:

            add RSP,24
            mov RSI,R15
            mov RDI,R13
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            jmp .L_40b210
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40b630:

            js .L_40b408

            jmp .L_40b4d8
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40b640:

            mov RDI,QWORD PTR [RBX+32]
            mov RSI,QWORD PTR [R15]
            call memcmp@PLT

            test EAX,EAX
            je .L_40b5da

            jmp .L_40b5f1
.L_40b652:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40b660:

            push R15
            push R14
            push R13
            push R12
            mov R13D,EDX
            push RBP
            push RBX
            mov RBP,RSI
            mov RBX,RDI
            mov ESI,8
            add RDI,8
            sub RSP,616
.L_40b683:

            mov BYTE PTR [RDI-8],8
            mov R12D,EDX
            mov RAX,QWORD PTR FS:[40]
            mov QWORD PTR [RSP+600],RAX
            xor EAX,EAX
.L_40b69d:

            call .L_4056f0
.L_40b6a2:

            movzx EAX,BYTE PTR [RBX]
            cmp AL,1
            je .L_40b6f0

            cmp AL,2
            jne .L_40b6e0

            cmp QWORD PTR [RBX+8],0
            je .L_40c43a
.L_40b6b8:

            mov ESI,DWORD PTR [RBP+40]
            cmp ESI,9
            ja .L_40c138

            lea RCX,QWORD PTR [RIP+.L_40e5f0]
            mov EDX,ESI
            movsxd RAX,DWORD PTR [RCX+RDX*4]
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
.L_40b6e0:

            cmp AL,3
            jne .L_40b6b8

            cmp QWORD PTR [RBX+8],0
            jne .L_40b6b8

            jmp .L_40c35c
.L_40b6f0:

            cmp QWORD PTR [RBX+8],0
            jne .L_40b6b8
.L_40b6f7:

            lea RCX,QWORD PTR [RIP+.L_40ed20]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e2f0]
            mov EDX,1787
            call __assert_fail@PLT
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
.L_40b720:

            test R12B,R12B
            je .L_40b75e

            cmp QWORD PTR [RBP+24],0
            je .L_40c3b0

            mov EAX,DWORD PTR [RBP]
            mov BYTE PTR [RSP+64],0
            lea RSI,QWORD PTR [RSP+72]
            lea RDI,QWORD PTR [RBP+8]
            mov RCX,RBX
            lea EDX,DWORD PTR [RAX+1]
            mov DWORD PTR [RSP+72],EAX
            mov DWORD PTR [RBP],EDX
            lea RDX,QWORD PTR [RSP+64]
.L_40b753:

            call QWORD PTR [RBP+32]

            test AL,AL
            jne .L_40c3b0
.L_40b75e:

            xor R13D,R13D
.L_40b761:

            lea R14,QWORD PTR [RBP+48]
            mov RDI,R14
            call .L_407190

            cmp EAX,11
            mov DWORD PTR [RBP+40],EAX
            je .L_40c950

            mov ESI,13
            mov RDI,RBP
            call .L_4062c0

            mov EAX,DWORD PTR [RBP+40]
            cmp EAX,13
            je .L_40c458
.L_40b792:

            cmp EAX,4
            je .L_40c490

            lea R12,QWORD PTR [RSP+240]
            lea RDX,QWORD PTR [RIP+.L_40e289]
            lea RAX,QWORD PTR [R12+16]
            lea RSI,QWORD PTR [RDX-25]
            mov RDI,R12
            mov QWORD PTR [RSP+240],RAX
            call .L_402450
.L_40b7c3:

            mov ESI,DWORD PTR [RBP+40]
            cmp ESI,14
            jne .L_40dad5

            mov RSI,QWORD PTR [RBP+128]
            test RSI,RSI
            je .L_40c470

            lea R13,QWORD PTR [RSP+528]
            mov RDX,QWORD PTR [RBP+144]
            lea RAX,QWORD PTR [R13+16]
            mov RDI,R13
            mov QWORD PTR [RSP+528],RAX
.L_40b7fd:

            call .L_402450
.L_40b802:

            lea RCX,QWORD PTR [RIP+.L_40e204]
            mov R8D,1
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,R13
.L_40b816:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_40b81b:

            lea R14,QWORD PTR [RSP+496]
            lea RDX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+496],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40d140

            mov QWORD PTR [RSP+496],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+512],RCX
.L_40b853:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+504],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+504],RAX
            je .L_40dcd0

            lea RSI,QWORD PTR [RIP+.L_40e204]
            mov EDX,1
            mov RDI,R14
.L_40b895:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40b89a:

            lea RBP,QWORD PTR [RSP+272]
            lea RDX,QWORD PTR [RBP+16]
            mov QWORD PTR [RSP+272],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40d170

            mov QWORD PTR [RSP+272],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+288],RCX
.L_40b8d2:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov R14D,1
            mov QWORD PTR [RSP+280],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
.L_40b8f3:

            mov RDX,QWORD PTR [RSP+280]
            mov RSI,QWORD PTR [RSP+272]
            mov RDI,R12
.L_40b906:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40b90b:

            mov RDI,QWORD PTR [RSP+272]
            add RBP,16
            cmp RDI,RBP
            je .L_40b921

            call _ZdlPv@PLT
.L_40b921:

            test R14B,R14B
            lea R13,QWORD PTR [RSP+528]
            je .L_40b966

            mov RDI,QWORD PTR [RSP+496]
            lea RAX,QWORD PTR [RSP+512]
            cmp RDI,RAX
            je .L_40b948

            call _ZdlPv@PLT
.L_40b948:

            lea R13,QWORD PTR [RSP+528]
            mov RDI,QWORD PTR [RSP+528]
            lea RAX,QWORD PTR [R13+16]
            cmp RDI,RAX
            je .L_40b966

            call _ZdlPv@PLT
.L_40b966:

            lea RDX,QWORD PTR [RIP+.L_40e1de]
            lea RAX,QWORD PTR [R13+16]
            mov RDI,R13
            lea RSI,QWORD PTR [RDX-14]
            mov QWORD PTR [RSP+528],RAX
.L_40b980:

            call .L_402450
.L_40b985:

            lea RCX,QWORD PTR [RIP+.L_40e29d]
            mov R8D,11
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,R13
.L_40b999:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_40b99e:

            lea R14,QWORD PTR [RSP+496]
            lea RDX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+496],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40d158

            mov QWORD PTR [RSP+496],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+512],RCX
.L_40b9d6:

            mov RCX,QWORD PTR [RAX+8]
            mov RDI,R12
            mov QWORD PTR [RSP+504],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RDX,QWORD PTR [RSP+504]
            mov RSI,QWORD PTR [RSP+496]
.L_40ba04:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40ba09:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            cmp RDI,R14
            je .L_40ba1f

            call _ZdlPv@PLT
.L_40ba1f:

            mov RDI,QWORD PTR [RSP+528]
            add R13,16
            cmp RDI,R13
            je .L_40ba35

            call _ZdlPv@PLT
.L_40ba35:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            mov RSI,R12
            mov RDI,RAX
            mov R13,RAX
.L_40ba48:

            call _ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.L_40ba4d:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,R13
.L_40ba5e:

            call __cxa_throw@PLT
.L_40ba63:

            nop
            nop
            nop
            nop
            nop
.L_40ba68:

            test R12B,R12B
            je .L_40baa6

            cmp QWORD PTR [RBP+24],0
            je .L_40c380

            mov EAX,DWORD PTR [RBP]
            mov BYTE PTR [RSP+68],2
            lea RSI,QWORD PTR [RSP+88]
            lea RDI,QWORD PTR [RBP+8]
            mov RCX,RBX
            lea EDX,DWORD PTR [RAX+1]
            mov DWORD PTR [RSP+88],EAX
            mov DWORD PTR [RBP],EDX
            lea RDX,QWORD PTR [RSP+68]
.L_40ba9b:

            call QWORD PTR [RBP+32]

            test AL,AL
            jne .L_40c380
.L_40baa6:

            xor R13D,R13D
.L_40baa9:

            lea R14,QWORD PTR [RBP+48]
            mov RDI,R14
            call .L_407190

            cmp EAX,10
            mov DWORD PTR [RBP+40],EAX
            je .L_40c890

            cmp EAX,13
            je .L_40cec0

            lea RAX,QWORD PTR [RSP+144]
            lea R12,QWORD PTR [RSP+208]
            movzx R15D,R13B
            mov QWORD PTR [RSP+8],RAX
.L_40bae3:

            mov EDX,R15D
            mov RSI,RBP
            mov RDI,R12
            call .L_40b660

            test R13B,R13B
            je .L_40bbb8

            cmp BYTE PTR [RSP+208],8
            je .L_40bbb8

            movzx EAX,BYTE PTR [RBX]
            test AL,AL
            je .L_40c400

            cmp AL,2
            jne .L_40dd15

            mov RDI,QWORD PTR [RBX+8]
.L_40bb1f:

            mov RSI,QWORD PTR [RDI+8]
            cmp RSI,QWORD PTR [RDI+16]
            je .L_40d0d0

            test RSI,RSI
            je .L_40bba8

            movzx EAX,BYTE PTR [RSP+208]
            mov BYTE PTR [RSI],AL
            mov RAX,QWORD PTR [RSP+216]
            mov QWORD PTR [RSI+8],RAX
            movzx EAX,BYTE PTR [RSP+208]
            cmp AL,1
            je .L_40d0f0

            cmp AL,2
            jne .L_40d120

            cmp QWORD PTR [RSP+216],0
            je .L_40c43a
.L_40bb6f:

            mov BYTE PTR [RSP+208],0
            movzx EAX,BYTE PTR [RSI]
            mov QWORD PTR [RSP+216],0
            cmp AL,1
            je .L_40d0e0

            cmp AL,2
            jne .L_40d108

            cmp QWORD PTR [RSI+8],0
            je .L_40c43a

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40bba8:

            add RSI,16
            mov QWORD PTR [RDI+8],RSI
.L_40bbb0:

            mov BYTE PTR [RSP+208],0
.L_40bbb8:

            mov RDI,R12
            call .L_406c70

            cmp DWORD PTR [RBP+40],13
            jne .L_40c058

            mov RDI,R14
            call .L_407190

            mov DWORD PTR [RBP+40],EAX
            jmp .L_40bae3
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40bbe0:

            mov R15,QWORD PTR [RBP+128]
            lea RAX,QWORD PTR [RBP+48]
            mov QWORD PTR [RSP+16],RAX
            test R15,R15
            je .L_40d920

            mov R13,QWORD PTR [RBP+144]
            cmp R15,R13
            jae .L_40dc41

            cmp ESI,5
            je .L_40ca00

            cmp ESI,6
            jne .L_40be08

            mov QWORD PTR [RSP+224],0
            call __errno_location@PLT

            lea RSI,QWORD PTR [RSP+224]
            mov EDX,10
            mov DWORD PTR [RAX],0
            mov RDI,R15
            mov R14,RAX
            call strtoll@PLT

            mov RDX,RAX
            mov RSI,RAX
            not RDX
            shr RSI,63
            shr RDX,63
            cmp DL,SIL
            je .L_40be08

            mov EDX,DWORD PTR [R14]
            test EDX,EDX
            jne .L_40be08

            cmp R13,QWORD PTR [RSP+224]
            jne .L_40be08

            mov BYTE PTR [RBX],5
            mov QWORD PTR [RBX+8],RAX
            nop
            nop
            nop
            nop
.L_40bc88:

            mov RDI,QWORD PTR [RSP+16]
            call .L_407190

            mov DWORD PTR [RBP+40],EAX
            jmp .L_40bd73
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40bca0:

            lea R14,QWORD PTR [RBP+48]
            lea R13,QWORD PTR [RSP+528]
            mov RSI,R14
            mov RDI,R13
            call .L_405820
.L_40bcb7:

            mov RDI,R14
.L_40bcba:

            call .L_407190

            mov DWORD PTR [RBP+40],EAX
            mov EDI,32
            mov QWORD PTR [RSP+216],0
            mov BYTE PTR [RSP+208],3
            call _Znwm@PLT
.L_40bce0:

            mov RSI,QWORD PTR [RSP+528]
            mov RDX,QWORD PTR [RSP+536]
            mov R14,RAX
            lea RAX,QWORD PTR [RAX+16]
            mov RDI,R14
            mov QWORD PTR [R14],RAX
            add RDX,RSI
.L_40bd00:

            call .L_402450
.L_40bd05:

            movzx EAX,BYTE PTR [RSP+208]
            cmp AL,3
            jne .L_40c030

            movzx EAX,BYTE PTR [RBX]
            mov BYTE PTR [RBX],3
            mov BYTE PTR [RSP+208],AL
            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],R14
            mov QWORD PTR [RSP+216],RAX
.L_40bd32:

            lea RDI,QWORD PTR [RSP+208]
            add R13,16
            call .L_406c70

            mov RDI,QWORD PTR [RSP+528]
            cmp RDI,R13
            je .L_40bd73

            call _ZdlPv@PLT

            jmp .L_40bd73
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40bd60:

            lea RDI,QWORD PTR [RBP+48]
.L_40bd64:

            call .L_407190

            mov DWORD PTR [RBP+40],EAX
            mov BYTE PTR [RBX],4
            mov BYTE PTR [RBX+8],0
.L_40bd73:

            test R12B,R12B
            je .L_40bda7

            cmp QWORD PTR [RBP+24],0
            je .L_40bda7

            mov EAX,DWORD PTR [RBP]
            mov BYTE PTR [RSP+71],5
            lea RDX,QWORD PTR [RSP+71]
            lea RSI,QWORD PTR [RSP+100]
            lea RDI,QWORD PTR [RBP+8]
            mov RCX,RBX
            mov DWORD PTR [RSP+100],EAX
            call QWORD PTR [RBP+32]

            test AL,AL
            je .L_40bfb0
.L_40bda7:

            mov RCX,QWORD PTR [RSP+600]
            xor RCX,QWORD PTR FS:[40]
            mov RAX,RBX
            jne .L_40d6ad

            add RSP,616
.L_40bdc8:

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
.L_40bdd8:

            lea RDI,QWORD PTR [RBP+48]
            call .L_407190

            mov DWORD PTR [RBP+40],EAX
            mov BYTE PTR [RBX],4
            mov BYTE PTR [RBX+8],1
            jmp .L_40bd73
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40bdf0:

            lea RDI,QWORD PTR [RBP+48]
            call .L_407190

            mov DWORD PTR [RBP+40],EAX
            mov BYTE PTR [RBX],0
            jmp .L_40bd73
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40be08:

            lea R14,QWORD PTR [RSP+496]
            mov QWORD PTR [RSP+504],0
            mov BYTE PTR [RSP+512],0
            lea RAX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+496],RAX
            mov RAX,R13
            sub RAX,R15
            mov QWORD PTR [RSP+8],RAX
            je .L_40dc1d

            call localeconv@PLT

            test RAX,RAX
            je .L_40dbfe

            mov RAX,QWORD PTR [RAX]
            test RAX,RAX
            je .L_40bf5c

            movzx EAX,BYTE PTR [RAX]
            cmp AL,46
            mov BYTE PTR [RSP+24],AL
            je .L_40bf5c

            mov RAX,QWORD PTR [RSP+8]
            sar RAX,2
            test RAX,RAX
            jle .L_40d5a6

            cmp BYTE PTR [R15],46
            je .L_40d598

            cmp BYTE PTR [R15+1],46
            je .L_40d600

            cmp BYTE PTR [R15+2],46
            je .L_40d5f7

            cmp BYTE PTR [R15+3],46
            lea RSI,QWORD PTR [R15+RAX*4]
            mov RDX,R15
            lea RAX,QWORD PTR [R15+3]
            jne .L_40bed7

            jmp .L_40bf08
.L_40beb0:

            cmp BYTE PTR [RDX+4],46
            je .L_40bf08

            cmp BYTE PTR [RAX+1],46
            je .L_40d1f8

            cmp BYTE PTR [RAX+2],46
            je .L_40d20b

            cmp BYTE PTR [RAX+3],46
            je .L_40d214

            mov RDX,RAX
.L_40bed7:

            lea RAX,QWORD PTR [RDX+4]
            cmp RSI,RAX
            jne .L_40beb0

            sub R13,RSI
.L_40bee3:

            cmp R13,2
            je .L_40d3ad

            cmp R13,3
            je .L_40d3a0

            cmp R13,1
            jne .L_40bf5c
.L_40befd:

            cmp BYTE PTR [RSI],46
            jne .L_40bf5c
.L_40bf02:

            mov RAX,RSI
            nop
            nop
            nop
.L_40bf08:

            sub RAX,R15
            cmp QWORD PTR [RSP+8],RAX
            mov QWORD PTR [RSP+32],RAX
            je .L_40bf5c
.L_40bf17:

            mov RCX,QWORD PTR [RSP+8]
            lea RAX,QWORD PTR [RCX+1]
            cmp RAX,63
            ja .L_40d1a0

            test RCX,RCX
            lea R13,QWORD PTR [RSP+528]
            jne .L_40d21d
.L_40bf3b:

            mov RAX,QWORD PTR [RSP+8]
            movzx ECX,BYTE PTR [RSP+24]
            mov R15,R13
            mov BYTE PTR [RSP+RAX*1+528],0
            mov RAX,QWORD PTR [RSP+32]
            mov BYTE PTR [RSP+RAX*1+528],CL
.L_40bf5c:

            lea RSI,QWORD PTR [RSP+224]
            mov RDI,R15
            mov QWORD PTR [RSP+224],0
            call strtod@PLT

            mov RAX,QWORD PTR [RSP+8]
            mov RDI,QWORD PTR [RSP+496]
            add RAX,R15
            cmp QWORD PTR [RSP+224],RAX
            je .L_40ca58

            add R14,16
            cmp RDI,R14
            je .L_40bc88

            call _ZdlPv@PLT

            jmp .L_40bc88
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40bfb0:

            lea R12,QWORD PTR [RSP+224]
            mov ESI,8
            mov BYTE PTR [RSP+224],8
            lea RDI,QWORD PTR [R12+8]
            call .L_4056f0

            movzx EDX,BYTE PTR [RSP+224]
            mov RAX,QWORD PTR [RSP+232]
            cmp DL,1
            je .L_40c858

            cmp DL,2
            jne .L_40c328

            test RAX,RAX
            je .L_40c43a

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],2
            mov BYTE PTR [RSP+224],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+232],RDX
            je .L_40c43a
.L_40c020:

            mov RDI,R12
            call .L_406c70

            jmp .L_40bda7
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40c030:

            movzx EDX,BYTE PTR [RBX]
            mov BYTE PTR [RBX],AL
            mov RAX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],R14
            mov BYTE PTR [RSP+208],DL
            mov QWORD PTR [RSP+216],RAX
            jmp .L_40bd32
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c058:

            mov ESI,10
            mov RDI,RBP
            call .L_4065c0

            mov RDI,R14
            call .L_407190

            test R13B,R13B
            mov DWORD PTR [RBP+40],EAX
            je .L_40bda7

            cmp QWORD PTR [RBP+24],0
            je .L_40bda7

            mov EAX,DWORD PTR [RBP]
            mov BYTE PTR [RSP+70],3
            lea RDX,QWORD PTR [RSP+70]
            lea RSI,QWORD PTR [RSP+96]
            lea RDI,QWORD PTR [RBP+8]
            mov RCX,RBX
            sub EAX,1
            mov DWORD PTR [RBP],EAX
            mov DWORD PTR [RSP+96],EAX
            call QWORD PTR [RBP+32]

            test AL,AL
            jne .L_40bda7

            lea RBP,QWORD PTR [RSP+192]
            mov ESI,8
            mov BYTE PTR [RSP+192],8
            lea RDI,QWORD PTR [RBP+8]
            call .L_4056f0

            movzx EDX,BYTE PTR [RSP+192]
            mov RAX,QWORD PTR [RSP+200]
            cmp DL,1
            je .L_40d326

            cmp DL,2
            jne .L_40d360

            test RAX,RAX
            je .L_40c43a

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],2
            mov BYTE PTR [RSP+192],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+200],RDX
            je .L_40c43a

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40c128:

            mov RDI,RBP
            call .L_406c70

            jmp .L_40bda7
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40c138:

            lea R12,QWORD PTR [RSP+432]
            lea RDX,QWORD PTR [RIP+.L_40e289]
            lea RAX,QWORD PTR [R12+16]
            lea RSI,QWORD PTR [RDX-25]
            mov RDI,R12
            mov QWORD PTR [RSP+432],RAX
            call .L_402450
.L_40c160:

            mov ESI,DWORD PTR [RBP+40]
            cmp ESI,14
            jne .L_40d908

            mov RSI,QWORD PTR [RBP+128]
            test RSI,RSI
            je .L_40c470

            lea R13,QWORD PTR [RSP+528]
            mov RDX,QWORD PTR [RBP+144]
            lea RAX,QWORD PTR [R13+16]
            mov RDI,R13
            mov QWORD PTR [RSP+528],RAX
.L_40c19a:

            call .L_402450
.L_40c19f:

            lea RCX,QWORD PTR [RIP+.L_40e204]
            mov R8D,1
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,R13
.L_40c1b3:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_40c1b8:

            lea R14,QWORD PTR [RSP+496]
            lea RDX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+496],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40d242

            mov QWORD PTR [RSP+496],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+512],RCX
.L_40c1f0:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+504],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+504],RAX
            je .L_40d7c1

            lea RSI,QWORD PTR [RIP+.L_40e204]
            mov EDX,1
            mov RDI,R14
.L_40c232:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40c237:

            lea R15,QWORD PTR [RSP+464]
            lea RDX,QWORD PTR [R15+16]
            mov QWORD PTR [RSP+464],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40d230

            mov QWORD PTR [RSP+464],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+480],RCX
.L_40c26f:

            mov RCX,QWORD PTR [RAX+8]
            mov R13D,1
            mov QWORD PTR [RSP+472],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
.L_40c290:

            mov RDX,QWORD PTR [RSP+472]
            mov RSI,QWORD PTR [RSP+464]
            mov RDI,R12
.L_40c2a3:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40c2a8:

            mov RDI,QWORD PTR [RSP+464]
            lea RAX,QWORD PTR [R15+16]
            cmp RDI,RAX
            je .L_40c2be

            call _ZdlPv@PLT
.L_40c2be:

            test R13B,R13B
            je .L_40c2f7

            mov RDI,QWORD PTR [RSP+496]
            lea RAX,QWORD PTR [RSP+512]
            cmp RDI,RAX
            je .L_40c2dd

            call _ZdlPv@PLT
.L_40c2dd:

            mov RDI,QWORD PTR [RSP+528]
            lea RAX,QWORD PTR [RSP+544]
            cmp RDI,RAX
            je .L_40c2f7

            call _ZdlPv@PLT
.L_40c2f7:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            mov RSI,R12
            mov RDI,RAX
            mov R13,RAX
.L_40c30a:

            call _ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.L_40c30f:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,R13
.L_40c320:

            call __cxa_throw@PLT
.L_40c325:

            nop
            nop
            nop
.L_40c328:

            cmp DL,3
            jne .L_40d84d

            test RAX,RAX
            je .L_40c35c

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],3
            mov BYTE PTR [RSP+224],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+232],RDX
            jne .L_40c020
.L_40c35c:

            lea RCX,QWORD PTR [RIP+.L_40ed20]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e328]
            mov EDX,1789
            call __assert_fail@PLT
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40c380:

            lea RDI,QWORD PTR [RSP+128]
            mov BYTE PTR [RBX],2
            mov ESI,2
.L_40c390:

            call .L_4056f0

            mov RAX,QWORD PTR [RSP+128]
            mov QWORD PTR [RBX+8],RAX
            jmp .L_40baa9
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
.L_40c3b0:

            lea RDI,QWORD PTR [RSP+104]
            mov BYTE PTR [RBX],1
            mov ESI,1
            call .L_4056f0
.L_40c3c2:

            mov RAX,QWORD PTR [RSP+104]
            mov QWORD PTR [RBX+8],RAX
            jmp .L_40b761
.L_40c3d0:

            mov RBP,RAX
.L_40c3d3:

            mov RDI,QWORD PTR [RSP+240]
            add R12,16
            cmp RDI,R12
            je .L_40c3e9
.L_40c3e4:

            call _ZdlPv@PLT
.L_40c3e9:

            mov RDI,RBX
            call .L_406c70

            mov RDI,RBP
.L_40c3f4:

            call _Unwind_Resume@PLT
.L_40c3f9:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40c400:

            mov RDI,QWORD PTR [RSP+8]
            mov BYTE PTR [RBX],2
            mov ESI,2
.L_40c40d:

            call .L_4056f0
.L_40c412:

            movzx EAX,BYTE PTR [RBX]
            mov RDI,QWORD PTR [RSP+144]
            mov QWORD PTR [RBX+8],RDI
            cmp AL,1
            je .L_40d18c

            cmp AL,2
            jne .L_40d1dd

            test RDI,RDI
            jne .L_40bb1f
.L_40c43a:

            call .L_402230
.L_40c43f:

            mov RBP,RAX
.L_40c442:

            mov RDI,QWORD PTR [RSP+432]
            add R12,16
            cmp RDI,R12
            jne .L_40c3e4

            jmp .L_40c3e9
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40c458:

            mov RDI,R14
.L_40c45b:

            call .L_407190

            mov DWORD PTR [RBP+40],EAX
            jmp .L_40b792
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c470:

            lea RCX,QWORD PTR [RIP+.L_40ef00]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e28a]
            mov EDX,10903
            call __assert_fail@PLT
          .byte 0x90
.L_40c490:

            lea R15,QWORD PTR [RSP+464]
            mov RSI,R14
            mov RDI,R15
            call .L_405820
.L_40c4a3:

            test R13B,R13B
            je .L_40d201

            cmp QWORD PTR [RBP+24],0
            je .L_40d182

            mov EDI,32
            mov QWORD PTR [RSP+232],0
            mov BYTE PTR [RSP+224],3
.L_40c4d0:

            call _Znwm@PLT
.L_40c4d5:

            mov RSI,QWORD PTR [RSP+464]
            mov RDX,QWORD PTR [RSP+472]
            mov R12,RAX
            lea RAX,QWORD PTR [RAX+16]
            mov RDI,R12
            mov QWORD PTR [R12],RAX
            add RDX,RSI
.L_40c4f6:

            call .L_402450
.L_40c4fb:

            cmp QWORD PTR [RBP+24],0
            mov EAX,DWORD PTR [RBP]
            mov QWORD PTR [RSP+232],R12
            mov BYTE PTR [RSP+66],4
            mov DWORD PTR [RSP+80],EAX
            je .L_40db1f

            lea R12,QWORD PTR [RSP+224]
            lea RDX,QWORD PTR [RSP+66]
            lea RSI,QWORD PTR [RSP+80]
            lea RDI,QWORD PTR [RBP+8]
            mov RCX,R12
.L_40c533:

            call QWORD PTR [RBP+32]
.L_40c536:

            mov RDI,R12
            mov BYTE PTR [RSP+8],AL
            call .L_406c70
.L_40c542:

            mov RDI,R14
.L_40c545:

            call .L_407190

            cmp EAX,12
            mov DWORD PTR [RBP+40],EAX
            je .L_40cac0

            lea R12,QWORD PTR [RSP+304]
            lea RDX,QWORD PTR [RIP+.L_40e289]
            lea RAX,QWORD PTR [R12+16]
            lea RSI,QWORD PTR [RDX-25]
            mov RDI,R12
            mov QWORD PTR [RSP+304],RAX
            call .L_402450
.L_40c57e:

            mov ESI,DWORD PTR [RBP+40]
            cmp ESI,14
            jne .L_40daed

            mov RSI,QWORD PTR [RBP+128]
            test RSI,RSI
            je .L_40c470

            lea R13,QWORD PTR [RSP+528]
            mov RDX,QWORD PTR [RBP+144]
            lea RAX,QWORD PTR [R13+16]
            mov RDI,R13
            mov QWORD PTR [RSP+528],RAX
.L_40c5b8:

            call .L_402450
.L_40c5bd:

            lea RCX,QWORD PTR [RIP+.L_40e204]
            mov R8D,1
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,R13
.L_40c5d1:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_40c5d6:

            lea R14,QWORD PTR [RSP+496]
            lea RDX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+496],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40d2f4

            mov QWORD PTR [RSP+496],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+512],RCX
.L_40c60e:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+504],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+504],RAX
            je .L_40dcdc

            lea RSI,QWORD PTR [RIP+.L_40e204]
            mov EDX,1
            mov RDI,R14
.L_40c650:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40c655:

            lea R13,QWORD PTR [RSP+336]
            lea RDX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+336],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40d2d0

            mov QWORD PTR [RSP+336],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+352],RCX
.L_40c68d:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov R14D,1
            mov QWORD PTR [RSP+344],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
.L_40c6ae:

            mov RDX,QWORD PTR [RSP+344]
            mov RSI,QWORD PTR [RSP+336]
            mov RDI,R12
.L_40c6c1:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40c6c6:

            mov RDI,QWORD PTR [RSP+336]
            add R13,16
            cmp RDI,R13
            je .L_40c6dc

            call _ZdlPv@PLT
.L_40c6dc:

            test R14B,R14B
            lea R13,QWORD PTR [RSP+528]
            je .L_40c721

            mov RDI,QWORD PTR [RSP+496]
            lea RAX,QWORD PTR [RSP+512]
            cmp RDI,RAX
            je .L_40c703

            call _ZdlPv@PLT
.L_40c703:

            lea R13,QWORD PTR [RSP+528]
            mov RDI,QWORD PTR [RSP+528]
            lea RAX,QWORD PTR [R13+16]
            cmp RDI,RAX
            je .L_40c721

            call _ZdlPv@PLT
.L_40c721:

            lea RDX,QWORD PTR [RIP+.L_40e201]
            lea RAX,QWORD PTR [R13+16]
            mov RDI,R13
            lea RSI,QWORD PTR [RDX-3]
            mov QWORD PTR [RSP+528],RAX
.L_40c73b:

            call .L_402450
.L_40c740:

            lea RCX,QWORD PTR [RIP+.L_40e29d]
            mov R8D,11
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,R13
.L_40c754:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_40c759:

            lea R14,QWORD PTR [RSP+496]
            lea RDX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+496],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40d2e2

            mov QWORD PTR [RSP+496],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+512],RCX
.L_40c791:

            mov RCX,QWORD PTR [RAX+8]
            mov RDI,R12
            mov QWORD PTR [RSP+504],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            mov RDX,QWORD PTR [RSP+504]
            mov RSI,QWORD PTR [RSP+496]
.L_40c7bf:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40c7c4:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            cmp RDI,R14
            je .L_40c7da

            call _ZdlPv@PLT
.L_40c7da:

            mov RDI,QWORD PTR [RSP+528]
            add R13,16
            cmp RDI,R13
            je .L_40c7f0

            call _ZdlPv@PLT
.L_40c7f0:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            mov RSI,R12
            mov RDI,RAX
            mov R13,RAX
.L_40c803:

            call _ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.L_40c808:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,R13
.L_40c819:

            call __cxa_throw@PLT
.L_40c81e:

            mov RBP,RAX
.L_40c821:

            mov RDI,QWORD PTR [RSP+304]
            add R12,16
            cmp RDI,R12
            je .L_40c837

            call _ZdlPv@PLT
.L_40c837:

            mov RDI,QWORD PTR [RSP+464]
            lea RAX,QWORD PTR [R15+16]
            cmp RDI,RAX
            jne .L_40c3e4

            jmp .L_40c3e9
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c858:

            test RAX,RAX
            je .L_40b6f7

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],1
            mov BYTE PTR [RSP+224],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+232],RDX
            jne .L_40c020

            jmp .L_40b6f7
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40c890:

            mov RDI,R14
.L_40c893:

            call .L_407190

            cmp QWORD PTR [RBP+24],0
            mov DWORD PTR [RBP+40],EAX
            je .L_40bda7

            mov EAX,DWORD PTR [RBP]
            mov BYTE PTR [RSP+69],3
            lea RDX,QWORD PTR [RSP+69]
            lea RSI,QWORD PTR [RSP+92]
            lea RDI,QWORD PTR [RBP+8]
            mov RCX,RBX
            sub EAX,1
            mov DWORD PTR [RBP],EAX
            mov DWORD PTR [RSP+92],EAX
            call QWORD PTR [RBP+32]

            test AL,AL
            jne .L_40bda7

            lea RBP,QWORD PTR [RSP+176]
            mov ESI,8
            mov BYTE PTR [RSP+176],8
            lea RDI,QWORD PTR [RBP+8]
            call .L_4056f0

            movzx EDX,BYTE PTR [RSP+176]
            mov RAX,QWORD PTR [RSP+184]
            cmp DL,1
            je .L_40d254

            cmp DL,2
            jne .L_40d290

            test RAX,RAX
            je .L_40c43a

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],2
            mov BYTE PTR [RSP+176],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+184],RDX
            jne .L_40c128

            jmp .L_40c43a
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c950:

            mov RDI,R14
            call .L_407190

            test R13B,R13B
            mov DWORD PTR [RBP+40],EAX
            je .L_40bda7

            cmp QWORD PTR [RBP+24],0
            je .L_40bda7

            mov EAX,DWORD PTR [RBP]
            mov BYTE PTR [RSP+65],1
            lea RDX,QWORD PTR [RSP+65]
            lea RSI,QWORD PTR [RSP+76]
            lea RDI,QWORD PTR [RBP+8]
            mov RCX,RBX
            sub EAX,1
            mov DWORD PTR [RBP],EAX
            mov DWORD PTR [RSP+76],EAX
            call QWORD PTR [RBP+32]

            test AL,AL
            jne .L_40bda7

            lea RBP,QWORD PTR [RSP+112]
            mov ESI,8
            mov BYTE PTR [RSP+112],8
            lea RDI,QWORD PTR [RBP+8]
            call .L_4056f0
.L_40c9b5:

            movzx EDX,BYTE PTR [RSP+112]
            mov RAX,QWORD PTR [RSP+120]
            cmp DL,1
            je .L_40d3e3

            cmp DL,2
            jne .L_40d418

            test RAX,RAX
            je .L_40c43a

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],2
            mov BYTE PTR [RSP+112],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+120],RDX
            jne .L_40c128

            jmp .L_40c43a
          .byte 0x90
.L_40ca00:

            mov QWORD PTR [RSP+224],0
            call __errno_location@PLT

            lea RSI,QWORD PTR [RSP+224]
            mov R14,RAX
            mov DWORD PTR [RAX],0
            mov EDX,10
            mov RDI,R15
            call strtoull@PLT

            mov ECX,DWORD PTR [R14]
            test ECX,ECX
            jne .L_40be08

            cmp R13,QWORD PTR [RSP+224]
            jne .L_40be08

            mov BYTE PTR [RBX],6
            mov QWORD PTR [RBX+8],RAX
            jmp .L_40bc88
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40ca58:

            ucomisd XMM0,QWORD PTR [RIP+.L_410410]
            jp .L_40ca6e

            jne .L_40ca6e

            cmp BYTE PTR [R15],45
            je .L_40d306
.L_40ca6e:

            add R14,16
            cmp RDI,R14
            je .L_40ca88
.L_40ca77:

            movsd QWORD PTR [RSP+8],XMM0
            call _ZdlPv@PLT

            movsd XMM0,QWORD PTR [RSP+8]
.L_40ca88:

            movsd QWORD PTR [RBX+8],XMM0
            andpd XMM0,XMMWORD PTR [RIP+.L_410430]
            mov BYTE PTR [RBX],7
            movsd XMM1,QWORD PTR [RIP+.L_410420]
            ucomisd XMM1,XMM0
            jae .L_40bc88

            mov BYTE PTR [RBX],0
            mov QWORD PTR [RBX+8],0
            jmp .L_40bc88
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40cac0:

            mov RDI,R14
.L_40cac3:

            call .L_407190

            mov DWORD PTR [RBP+40],EAX
            lea RAX,QWORD PTR [RSP+128]
            movzx EDX,R13B
            mov RSI,RBP
            mov RDI,RAX
            mov QWORD PTR [RSP+16],RAX
            call .L_40b660
.L_40cae7:

            cmp BYTE PTR [RSP+8],0
            je .L_40cdc1

            test R13B,R13B
            je .L_40cdc1

            movzx EAX,BYTE PTR [RSP+128]
            cmp AL,8
            je .L_40cdc1

            mov RDX,QWORD PTR [RSP+136]
            cmp AL,1
            mov BYTE PTR [RSP+144],AL
            mov QWORD PTR [RSP+152],RDX
            je .L_40d450

            cmp AL,2
            jne .L_40d55c

            test RDX,RDX
            je .L_40c43a

            cmp QWORD PTR [RSP+152],0
            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+136],0
            je .L_40c43a
.L_40cb5e:

            movzx EAX,BYTE PTR [RBX]
            test AL,AL
            je .L_40d520
.L_40cb69:

            cmp AL,1
            jne .L_40d9c2

            mov RAX,QWORD PTR [RBX+8]
            mov R8,QWORD PTR [RAX+16]
            lea R12,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+32],RAX
            mov QWORD PTR [RSP+24],R12
            test R8,R8
            je .L_40d609

            mov R9,QWORD PTR [RSP+472]
            mov RAX,QWORD PTR [RSP+464]
            mov QWORD PTR [RSP+40],RBX
            mov QWORD PTR [RSP+48],RBP
            mov RBP,R8
            mov BYTE PTR [RSP+63],R13B
            mov QWORD PTR [RSP+8],RAX
            mov RBX,R9
            jmp .L_40cbc9
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40cbc0:

            mov RBP,QWORD PTR [RBP+24]
.L_40cbc4:

            test RBP,RBP
            je .L_40cc15
.L_40cbc9:

            mov R13,QWORD PTR [RBP+40]
            mov RDX,RBX
            cmp R13,RBX
            cmovbe RDX,R13
            test RDX,RDX
            je .L_40cbee

            mov RDI,QWORD PTR [RBP+32]
            mov RSI,QWORD PTR [RSP+8]
            call memcmp@PLT

            test EAX,EAX
            jne .L_40cc08
.L_40cbee:

            mov RCX,R13
            sub RCX,RBX
            cmp RCX,2147483647
            jg .L_40cc0c

            cmp RCX,-2147483648
            jl .L_40cbc0

            mov EAX,ECX
.L_40cc08:

            test EAX,EAX
            js .L_40cbc0
.L_40cc0c:

            mov R12,RBP
            mov RBP,QWORD PTR [RBP+16]
            jmp .L_40cbc4
.L_40cc15:

            cmp QWORD PTR [RSP+24],R12
            mov R9,RBX
            mov RBP,QWORD PTR [RSP+48]
            mov RBX,QWORD PTR [RSP+40]
            movzx R13D,BYTE PTR [RSP+63]
            je .L_40cc8e

            mov RCX,QWORD PTR [R12+40]
            cmp R9,RCX
            mov RDX,RCX
            cmovbe RDX,R9
            test RDX,RDX
            je .L_40cc6a

            mov RSI,QWORD PTR [R12+32]
            mov RDI,QWORD PTR [RSP+8]
            mov QWORD PTR [RSP+48],RCX
            mov QWORD PTR [RSP+40],R9
            call memcmp@PLT

            test EAX,EAX
            mov R9,QWORD PTR [RSP+40]
            mov RCX,QWORD PTR [RSP+48]
            jne .L_40cc86
.L_40cc6a:

            sub R9,RCX
            cmp R9,2147483647
            jg .L_40cd52

            cmp R9,-2147483648
            jl .L_40cc8e

            mov EAX,R9D
.L_40cc86:

            test EAX,EAX
            jns .L_40cd52
.L_40cc8e:

            mov EDI,80
            mov QWORD PTR [RSP+40],R12
.L_40cc98:

            call _Znwm@PLT
.L_40cc9d:

            mov RSI,QWORD PTR [RSP+464]
            mov RDX,QWORD PTR [RSP+472]
            mov R12,RAX
            lea RDI,QWORD PTR [RAX+32]
            lea RAX,QWORD PTR [RAX+48]
            add RDX,RSI
            mov QWORD PTR [R12+32],RAX
            mov QWORD PTR [RSP+8],RDI
            mov QWORD PTR [RSP+48],RAX
.L_40ccca:

            call .L_402450
.L_40cccf:

            lea RDI,QWORD PTR [R12+72]
            xor ESI,ESI
            mov BYTE PTR [R12+64],0
            call .L_4056f0

            movzx EAX,BYTE PTR [R12+64]
            cmp AL,1
            je .L_40d613

            cmp AL,2
            jne .L_40d624

            cmp QWORD PTR [R12+72],0
            je .L_40c43a
.L_40cd03:

            mov RDX,QWORD PTR [RSP+8]
            mov RSI,QWORD PTR [RSP+40]
            mov RDI,QWORD PTR [RSP+32]
            call .L_40b3a0

            test RDX,RDX
            mov R9,RDX
            je .L_40d5b3

            test RAX,RAX
            jne .L_40cd33

            cmp QWORD PTR [RSP+24],RDX
            jne .L_40d63d
.L_40cd33:

            mov EDI,1
.L_40cd38:

            mov RCX,QWORD PTR [RSP+24]
            mov RDX,R9
            mov RSI,R12
            call _ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@PLT

            mov RAX,QWORD PTR [RSP+32]
            add QWORD PTR [RAX+40],1
.L_40cd52:

            movzx EAX,BYTE PTR [RSP+144]
            mov RDX,QWORD PTR [RSP+152]
            cmp AL,1
            je .L_40d488

            cmp AL,2
            jne .L_40d4d0

            test RDX,RDX
            je .L_40c43a

            movzx EAX,BYTE PTR [R12+64]
            mov RDX,QWORD PTR [RSP+152]
            mov BYTE PTR [R12+64],2
            mov BYTE PTR [RSP+144],AL
            mov RAX,QWORD PTR [R12+72]
            mov QWORD PTR [R12+72],RDX
            mov QWORD PTR [RSP+152],RAX
            cmp QWORD PTR [R12+72],0
            je .L_40c43a
.L_40cdb4:

            lea RDI,QWORD PTR [RSP+144]
            call .L_406c70
.L_40cdc1:

            mov RDI,QWORD PTR [RSP+16]
            call .L_406c70

            mov RDI,QWORD PTR [RSP+464]
            lea RAX,QWORD PTR [R15+16]
            cmp RDI,RAX
            je .L_40cde1

            call _ZdlPv@PLT
.L_40cde1:

            cmp DWORD PTR [RBP+40],13
            je .L_40c458

            mov ESI,11
            mov RDI,RBP
.L_40cdf3:

            call .L_4065c0

            mov RDI,R14
            call .L_407190

            test R13B,R13B
            mov DWORD PTR [RBP+40],EAX
            je .L_40bda7

            cmp QWORD PTR [RBP+24],0
            je .L_40bda7

            mov EAX,DWORD PTR [RBP]
            mov BYTE PTR [RSP+67],1
            lea RDX,QWORD PTR [RSP+67]
            lea RSI,QWORD PTR [RSP+84]
            lea RDI,QWORD PTR [RBP+8]
            mov RCX,RBX
            sub EAX,1
            mov DWORD PTR [RBP],EAX
            mov DWORD PTR [RSP+84],EAX
            call QWORD PTR [RBP+32]

            test AL,AL
            jne .L_40bda7

            lea RBP,QWORD PTR [RSP+160]
            mov ESI,8
            mov BYTE PTR [RSP+160],8
            lea RDI,QWORD PTR [RBP+8]
            call .L_4056f0

            movzx EDX,BYTE PTR [RSP+160]
            mov RAX,QWORD PTR [RSP+168]
            cmp DL,1
            je .L_40d6ef

            cmp DL,2
            jne .L_40d6b2

            test RAX,RAX
            je .L_40c43a

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],2
            mov BYTE PTR [RSP+160],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+168],RDX
            jne .L_40c128

            jmp .L_40c43a
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40cec0:

            lea R12,QWORD PTR [RSP+368]
            lea RDX,QWORD PTR [RIP+.L_40e289]
            lea RAX,QWORD PTR [R12+16]
            lea RSI,QWORD PTR [RDX-25]
            mov RDI,R12
            mov QWORD PTR [RSP+368],RAX
            call .L_402450
.L_40cee8:

            mov ESI,DWORD PTR [RBP+40]
            cmp ESI,14
            jne .L_40d944

            mov RSI,QWORD PTR [RBP+128]
            test RSI,RSI
            je .L_40c470

            lea R13,QWORD PTR [RSP+528]
            mov RDX,QWORD PTR [RBP+144]
            lea RAX,QWORD PTR [R13+16]
            mov RDI,R13
            mov QWORD PTR [RSP+528],RAX
.L_40cf22:

            call .L_402450
.L_40cf27:

            lea RCX,QWORD PTR [RIP+.L_40e204]
            mov R8D,1
            xor EDX,EDX
            xor ESI,ESI
            mov RDI,R13
.L_40cf3b:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_40cf40:

            lea R14,QWORD PTR [RSP+496]
            lea RDX,QWORD PTR [R14+16]
            mov QWORD PTR [RSP+496],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40d3d1

            mov QWORD PTR [RSP+496],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+512],RCX
.L_40cf78:

            mov RCX,QWORD PTR [RAX+8]
            mov QWORD PTR [RSP+504],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
            mov BYTE PTR [RAX+16],0
            movabs RAX,9223372036854775807
            cmp QWORD PTR [RSP+504],RAX
            je .L_40d994

            lea RSI,QWORD PTR [RIP+.L_40e204]
            mov EDX,1
            mov RDI,R14
.L_40cfba:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40cfbf:

            lea R13,QWORD PTR [RSP+400]
            lea RDX,QWORD PTR [R13+16]
            mov QWORD PTR [RSP+400],RDX
            mov RCX,QWORD PTR [RAX]
            lea RDX,QWORD PTR [RAX+16]
            cmp RCX,RDX
            je .L_40d3bf

            mov QWORD PTR [RSP+400],RCX
            mov RCX,QWORD PTR [RAX+16]
            mov QWORD PTR [RSP+416],RCX
.L_40cff7:

            mov RCX,QWORD PTR [RAX+8]
            mov BYTE PTR [RAX+16],0
            mov R14D,1
            mov QWORD PTR [RSP+408],RCX
            mov QWORD PTR [RAX],RDX
            mov QWORD PTR [RAX+8],0
.L_40d018:

            mov RDX,QWORD PTR [RSP+408]
            mov RSI,QWORD PTR [RSP+400]
            mov RDI,R12
.L_40d02b:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L_40d030:

            mov RDI,QWORD PTR [RSP+400]
            add R13,16
            cmp RDI,R13
            je .L_40d046

            call _ZdlPv@PLT
.L_40d046:

            test R14B,R14B
            je .L_40d07f

            mov RDI,QWORD PTR [RSP+496]
            lea RAX,QWORD PTR [RSP+512]
            cmp RDI,RAX
            je .L_40d065

            call _ZdlPv@PLT
.L_40d065:

            mov RDI,QWORD PTR [RSP+528]
            lea RAX,QWORD PTR [RSP+544]
            cmp RDI,RAX
            je .L_40d07f

            call _ZdlPv@PLT
.L_40d07f:

            mov EDI,16
            call __cxa_allocate_exception@PLT

            mov RSI,R12
            mov RDI,RAX
            mov R13,RAX
.L_40d092:

            call _ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.L_40d097:

            mov RDX,QWORD PTR [RIP+_ZNSt16invalid_argumentD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt16invalid_argument]
            mov RDI,R13
.L_40d0a8:

            call __cxa_throw@PLT
.L_40d0ad:

            mov RBP,RAX
.L_40d0b0:

            mov RDI,QWORD PTR [RSP+368]
            add R12,16
            cmp RDI,R12
            jne .L_40c3e4

            jmp .L_40c3e9
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d0d0:

            mov RDX,R12
.L_40d0d3:

            call .L_40ae30
.L_40d0d8:

            jmp .L_40bbb0
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40d0e0:

            cmp QWORD PTR [RSI+8],0
            jne .L_40bba8

            jmp .L_40b6f7
.L_40d0f0:

            cmp QWORD PTR [RSP+216],0
            jne .L_40bb6f

            jmp .L_40b6f7
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40d108:

            cmp AL,3
            jne .L_40bba8

            cmp QWORD PTR [RSI+8],0
            jne .L_40bba8

            jmp .L_40c35c
.L_40d120:

            cmp AL,3
            jne .L_40bb6f

            cmp QWORD PTR [RSP+216],0
            jne .L_40bb6f

            jmp .L_40c35c
          .byte 0xf
          .byte 0x1f
          .byte 0x40
          .byte 0x0
.L_40d140:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+512],XMM0
            jmp .L_40b853
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d158:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+512],XMM0
            jmp .L_40b9d6
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d170:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+288],XMM0
            jmp .L_40b8d2
.L_40d182:

            mov BYTE PTR [RSP+8],R13B
            jmp .L_40c542
.L_40d18c:

            test RDI,RDI
            jne .L_40bb1f

            jmp .L_40b6f7
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d1a0:

            mov R8,QWORD PTR [RSP+8]
            mov RDX,QWORD PTR [RSP+504]
            mov RCX,R15
            xor ESI,ESI
            mov RDI,R14
.L_40d1b5:

            call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.L_40d1ba:

            movzx ESI,BYTE PTR [RSP+24]
            mov RAX,QWORD PTR [RSP+496]
            mov RCX,QWORD PTR [RSP+32]
            mov BYTE PTR [RAX+RCX*1],SIL
            mov R15,QWORD PTR [RSP+496]
            jmp .L_40bf5c
.L_40d1dd:

            cmp AL,3
            jne .L_40bb1f

            test RDI,RDI
            jne .L_40bb1f

            jmp .L_40c35c
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d1f8:

            lea RAX,QWORD PTR [RDX+5]
            jmp .L_40bf08
.L_40d201:

            mov BYTE PTR [RSP+8],0
            jmp .L_40c542
.L_40d20b:

            lea RAX,QWORD PTR [RDX+6]
            jmp .L_40bf08
.L_40d214:

            lea RAX,QWORD PTR [RDX+7]
            jmp .L_40bf08
.L_40d21d:

            mov RDX,RCX
            mov RSI,R15
            mov RDI,R13
            call memmove@PLT

            jmp .L_40bf3b
.L_40d230:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+480],XMM0
            jmp .L_40c26f
.L_40d242:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+512],XMM0
            jmp .L_40c1f0
.L_40d254:

            test RAX,RAX
            je .L_40b6f7

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],1
            mov BYTE PTR [RSP+176],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+184],RDX
            jne .L_40c128

            jmp .L_40b6f7
          .byte 0xf
          .byte 0x1f
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d290:

            cmp DL,3
            jne .L_40db68

            test RAX,RAX
            je .L_40c35c

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],3
            mov BYTE PTR [RSP+176],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+184],RDX
            jne .L_40c128

            jmp .L_40c35c
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40d2d0:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+352],XMM0
            jmp .L_40c68d
.L_40d2e2:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+512],XMM0
            jmp .L_40c791
.L_40d2f4:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+512],XMM0
            jmp .L_40c60e
.L_40d306:

            add R14,16
            cmp RDI,R14
            jne .L_40d893

            mov RAX,QWORD PTR [RIP+.L_410418]
            mov BYTE PTR [RBX],7
            mov QWORD PTR [RBX+8],RAX
            jmp .L_40bc88
.L_40d326:

            test RAX,RAX
            je .L_40b6f7

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],1
            mov BYTE PTR [RSP+192],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+200],RDX
            jne .L_40c128

            jmp .L_40b6f7
          .byte 0x66
          .byte 0xf
          .byte 0x1f
          .byte 0x44
          .byte 0x0
          .byte 0x0
.L_40d360:

            cmp DL,3
            jne .L_40d7cd

            test RAX,RAX
            je .L_40c35c

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],3
            mov BYTE PTR [RSP+192],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+200],RDX
            jne .L_40c128

            jmp .L_40c35c
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40d3a0:

            cmp BYTE PTR [RSI],46
            je .L_40bf02

            add RSI,1
.L_40d3ad:

            cmp BYTE PTR [RSI],46
            je .L_40bf02

            add RSI,1
            jmp .L_40befd
.L_40d3bf:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+416],XMM0
            jmp .L_40cff7
.L_40d3d1:

            movdqu XMM0,XMMWORD PTR [RAX+16]
            movaps XMMWORD PTR [RSP+512],XMM0
            jmp .L_40cf78
.L_40d3e3:

            test RAX,RAX
            je .L_40b6f7

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],1
            mov BYTE PTR [RSP+112],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+120],RDX
            jne .L_40c128

            jmp .L_40b6f7
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d418:

            cmp DL,3
            jne .L_40d96c

            test RAX,RAX
            je .L_40c35c

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],3
            mov BYTE PTR [RSP+112],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+120],RDX
            jne .L_40c128

            jmp .L_40c35c
          .byte 0x90
.L_40d450:

            test RDX,RDX
            je .L_40b6f7

            cmp QWORD PTR [RSP+152],0
            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+136],0
            jne .L_40cb5e

            jmp .L_40b6f7
          .byte 0xf
          .byte 0x1f
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d488:

            test RDX,RDX
            je .L_40b6f7

            movzx EAX,BYTE PTR [R12+64]
            mov RDX,QWORD PTR [RSP+152]
            mov BYTE PTR [R12+64],1
            mov BYTE PTR [RSP+144],AL
            mov RAX,QWORD PTR [R12+72]
            mov QWORD PTR [R12+72],RDX
            mov QWORD PTR [RSP+152],RAX
            cmp QWORD PTR [R12+72],0
            jne .L_40cdb4

            jmp .L_40b6f7
          .byte 0x90
.L_40d4d0:

            cmp AL,3
            jne .L_40daa4

            test RDX,RDX
            je .L_40c35c

            movzx EAX,BYTE PTR [R12+64]
            mov RDX,QWORD PTR [RSP+152]
            mov BYTE PTR [R12+64],3
            mov BYTE PTR [RSP+144],AL
            mov RAX,QWORD PTR [R12+72]
            mov QWORD PTR [R12+72],RDX
            mov QWORD PTR [RSP+152],RAX
            cmp QWORD PTR [R12+72],0
            jne .L_40cdb4

            jmp .L_40c35c
          .byte 0x90
.L_40d520:

            mov BYTE PTR [RBX],1
            mov EDI,48
.L_40d528:

            call _Znwm@PLT
.L_40d52d:

            lea RDX,QWORD PTR [RAX+8]
            mov DWORD PTR [RAX+8],0
            mov QWORD PTR [RAX+16],0
            mov QWORD PTR [RAX+40],0
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RAX+24],RDX
            mov QWORD PTR [RAX+32],RDX
            movzx EAX,BYTE PTR [RBX]
            jmp .L_40cb69
.L_40d55c:

            cmp AL,3
            jne .L_40d7ee

            test RDX,RDX
            je .L_40c35c

            cmp QWORD PTR [RSP+152],0
            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+136],0
            jne .L_40cb5e

            jmp .L_40c35c
          .byte 0xf
          .byte 0x1f
          .byte 0x0
.L_40d598:

            mov QWORD PTR [RSP+32],0
            jmp .L_40bf17
.L_40d5a6:

            mov R13,QWORD PTR [RSP+8]
            mov RSI,R15
            jmp .L_40bee3
.L_40d5b3:

            lea RDI,QWORD PTR [R12+64]
            mov QWORD PTR [RSP+8],RAX
            call .L_406c70

            mov RDI,QWORD PTR [R12+32]
            cmp QWORD PTR [RSP+48],RDI
            mov RAX,QWORD PTR [RSP+8]
            je .L_40d5dd

            call _ZdlPv@PLT

            mov RAX,QWORD PTR [RSP+8]
.L_40d5dd:

            mov RDI,R12
            mov QWORD PTR [RSP+8],RAX
            call _ZdlPv@PLT

            mov RAX,QWORD PTR [RSP+8]
            mov R12,RAX
            jmp .L_40cd52
.L_40d5f7:

            lea RAX,QWORD PTR [R15+2]
            jmp .L_40bf08
.L_40d600:

            lea RAX,QWORD PTR [R15+1]
            jmp .L_40bf08
.L_40d609:

            mov R12,QWORD PTR [RSP+24]
            jmp .L_40cc8e
.L_40d613:

            cmp QWORD PTR [R12+72],0
            jne .L_40cd03

            jmp .L_40b6f7
.L_40d624:

            cmp AL,3
            jne .L_40cd03

            cmp QWORD PTR [R12+72],0
            jne .L_40cd03

            jmp .L_40c35c
.L_40d63d:

            mov R8,QWORD PTR [R12+40]
            mov RCX,QWORD PTR [RDX+40]
            cmp R8,RCX
            mov RDX,RCX
            cmovbe RDX,R8
            test RDX,RDX
            je .L_40d685

            mov RSI,QWORD PTR [R9+32]
            mov RDI,QWORD PTR [R12+32]
            mov QWORD PTR [RSP+48],RCX
            mov QWORD PTR [RSP+40],R8
            mov QWORD PTR [RSP+8],R9
            call memcmp@PLT

            test EAX,EAX
            mov R9,QWORD PTR [RSP+8]
            mov R8,QWORD PTR [RSP+40]
            mov RCX,QWORD PTR [RSP+48]
            jne .L_40d6a3
.L_40d685:

            mov RAX,R8
            sub RAX,RCX
            cmp RAX,2147483647
            jg .L_40d723

            cmp RAX,-2147483648
            jl .L_40cd33
.L_40d6a3:

            shr EAX,31
            mov EDI,EAX
            jmp .L_40cd38
.L_40d6ad:

            call __stack_chk_fail@PLT
.L_40d6b2:

            cmp DL,3
            jne .L_40d82c

            test RAX,RAX
            je .L_40c35c

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],3
            mov BYTE PTR [RSP+160],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+168],RDX
            jne .L_40c128

            jmp .L_40c35c
.L_40d6ef:

            test RAX,RAX
            je .L_40b6f7

            movzx EDX,BYTE PTR [RBX]
            test RAX,RAX
            mov BYTE PTR [RBX],1
            mov BYTE PTR [RSP+160],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov QWORD PTR [RSP+168],RDX
            jne .L_40c128

            jmp .L_40b6f7
.L_40d723:

            xor EDI,EDI
            jmp .L_40cd38
.L_40d72a:

            mov RBP,RAX
.L_40d72d:

            lea RDI,QWORD PTR [RSP+144]
            call .L_406c70

            mov RDI,QWORD PTR [RSP+16]
            call .L_406c70

            jmp .L_40c837
.L_40d749:

            mov RBP,RAX
.L_40d74c:

            mov RDI,R12
            call .L_406c70

            jmp .L_40c3e9
.L_40d759:

            mov RDI,QWORD PTR [RSP+464]
            mov RBP,RAX
            lea RAX,QWORD PTR [R15+16]
            cmp RDI,RAX
            je .L_40d772

            call _ZdlPv@PLT
.L_40d772:

            test R13B,R13B
            lea R14,QWORD PTR [RSP+496]
            je .L_40c442
.L_40d783:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            cmp RDI,R14
            je .L_40d799

            call _ZdlPv@PLT
.L_40d799:

            mov RDI,QWORD PTR [RSP+528]
            lea RAX,QWORD PTR [RSP+544]
            cmp RDI,RAX
            je .L_40c442

            call _ZdlPv@PLT

            jmp .L_40c442
.L_40d7bc:

            mov RBP,RAX
            jmp .L_40d783
.L_40d7c1:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
.L_40d7c8:

            call _ZSt20__throw_length_errorPKc@PLT
.L_40d7cd:

            movzx ECX,BYTE PTR [RBX]
            mov BYTE PTR [RBX],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov BYTE PTR [RSP+192],CL
            mov QWORD PTR [RSP+200],RDX
            jmp .L_40c128
.L_40d7ee:

            mov BYTE PTR [RSP+128],0
            mov QWORD PTR [RSP+136],0
            jmp .L_40cb5e
.L_40d807:

            mov RDI,R14
            mov RBP,RAX
            call _ZdlPv@PLT
.L_40d812:

            mov RDI,QWORD PTR [RSP+528]
            add R13,16
            cmp RDI,R13
            jne .L_40c3e4

            jmp .L_40c3e9
.L_40d82c:

            movzx ECX,BYTE PTR [RBX]
            mov BYTE PTR [RBX],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov BYTE PTR [RSP+160],CL
            mov QWORD PTR [RSP+168],RDX
            jmp .L_40c128
.L_40d84d:

            movzx ECX,BYTE PTR [RBX]
            mov BYTE PTR [RBX],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov BYTE PTR [RSP+224],CL
            mov QWORD PTR [RSP+232],RDX
            jmp .L_40c020
.L_40d86e:

            mov RBP,RAX
            jmp .L_40d812
.L_40d873:

            mov RDI,R13
            mov RBP,RAX
            call __cxa_free_exception@PLT

            jmp .L_40c821
.L_40d883:

            mov RDI,R13
            mov RBP,RAX
            call __cxa_free_exception@PLT

            jmp .L_40c442
.L_40d893:

            movsd XMM0,QWORD PTR [RIP+.L_410418]
            jmp .L_40ca77
.L_40d8a0:

            mov RDI,QWORD PTR [RSP+400]
            add R13,16
            mov RBP,RAX
            cmp RDI,R13
            je .L_40d8b9

            call _ZdlPv@PLT
.L_40d8b9:

            test R14B,R14B
            je .L_40d0b0

            lea R14,QWORD PTR [RSP+496]
.L_40d8ca:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            cmp RDI,R14
            je .L_40d8e0

            call _ZdlPv@PLT
.L_40d8e0:

            mov RDI,QWORD PTR [RSP+528]
            lea RAX,QWORD PTR [RSP+544]
            cmp RDI,RAX
            je .L_40d0b0

            call _ZdlPv@PLT

            jmp .L_40d0b0
.L_40d903:

            jmp .L_40c43f
.L_40d908:

            lea R15,QWORD PTR [RSP+464]
            mov RDI,R15
.L_40d913:

            call .L_406120
.L_40d918:

            xor R13D,R13D
            jmp .L_40c290
.L_40d920:

            lea RCX,QWORD PTR [RIP+.L_40f4a0]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e28a]
            mov EDX,11251
            call __assert_fail@PLT
.L_40d93f:

            jmp .L_40d0ad
.L_40d944:

            lea R13,QWORD PTR [RSP+400]
            mov RDI,R13
.L_40d94f:

            call .L_406120
.L_40d954:

            xor R14D,R14D
            jmp .L_40d018
.L_40d95c:

            mov RDI,R13
            mov RBP,RAX
            call __cxa_free_exception@PLT

            jmp .L_40c3d3
.L_40d96c:

            movzx ECX,BYTE PTR [RBX]
            mov BYTE PTR [RBX],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov BYTE PTR [RSP+112],CL
            mov QWORD PTR [RSP+120],RDX
            jmp .L_40c128
.L_40d987:

            jmp .L_40d0ad
.L_40d98c:

            mov RBP,RAX
            jmp .L_40d8ca
.L_40d994:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
.L_40d99b:

            call _ZSt20__throw_length_errorPKc@PLT
.L_40d9a0:

            mov RBP,RAX
            jmp .L_40c3e9
.L_40d9a8:

            jmp .L_40c43f
.L_40d9ad:

            mov RDI,RAX
            call __cxa_begin_catch@PLT

            mov RDI,R12
            call _ZdlPv@PLT
.L_40d9bd:

            call __cxa_rethrow@PLT
.L_40d9c2:

            lea R14,QWORD PTR [RSP+496]
            mov EDI,16
            call __cxa_allocate_exception@PLT

            mov RSI,RBX
            mov RDI,R14
            mov R12,RAX
.L_40d9dd:

            call .L_409900
.L_40d9e2:

            lea R13,QWORD PTR [RSP+528]
            lea RSI,QWORD PTR [RIP+.L_40e59c]
            mov RDX,R14
            mov RDI,R13
.L_40d9f7:

            call .L_405530
.L_40d9fc:

            mov RSI,R13
            mov RDI,R12
.L_40da02:

            call _ZNSt12domain_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.L_40da07:

            mov RDI,QWORD PTR [RSP+528]
            add R13,16
            cmp RDI,R13
            je .L_40da1d

            call _ZdlPv@PLT
.L_40da1d:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            cmp RDI,R14
            je .L_40da33

            call _ZdlPv@PLT
.L_40da33:

            mov RDX,QWORD PTR [RIP+_ZNSt12domain_errorD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt12domain_error]
            mov RDI,R12
.L_40da44:

            call __cxa_throw@PLT
.L_40da49:

            mov RDI,QWORD PTR [RSP+528]
            add R13,16
            mov RBP,RAX
            cmp RDI,R13
            je .L_40da62

            call _ZdlPv@PLT
.L_40da62:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            cmp RDI,R14
            je .L_40da78

            call _ZdlPv@PLT
.L_40da78:

            mov RDI,R12
            call __cxa_free_exception@PLT

            jmp .L_40d72d
.L_40da85:

            mov RBP,RAX
            jmp .L_40da62
.L_40da8a:

            mov RBP,RAX
            jmp .L_40da78
.L_40da8f:

            mov RBP,RAX
            call __cxa_end_catch@PLT

            jmp .L_40d72d
.L_40da9c:

            mov RBP,RAX
            jmp .L_40d8e0
.L_40daa4:

            movzx EDX,BYTE PTR [R12+64]
            mov BYTE PTR [R12+64],AL
            mov RAX,QWORD PTR [R12+72]
            mov BYTE PTR [RSP+144],DL
            mov RDX,QWORD PTR [RSP+152]
            mov QWORD PTR [R12+72],RDX
            mov QWORD PTR [RSP+152],RAX
            jmp .L_40cdb4
.L_40dad5:

            lea RBP,QWORD PTR [RSP+272]
            mov RDI,RBP
.L_40dae0:

            call .L_406120
.L_40dae5:

            xor R14D,R14D
            jmp .L_40b8f3
.L_40daed:

            lea R13,QWORD PTR [RSP+336]
            mov RDI,R13
.L_40daf8:

            call .L_406120
.L_40dafd:

            xor R14D,R14D
            jmp .L_40c6ae
.L_40db05:

            jmp .L_40c3d0
.L_40db0a:

            jmp .L_40c81e
.L_40db0f:

            mov RDI,R12
            mov RBP,RAX
            call .L_406c70

            jmp .L_40c837
.L_40db1f:

            lea R12,QWORD PTR [RSP+224]
.L_40db27:

            call _ZSt25__throw_bad_function_callv@PLT
.L_40db2c:

            mov RBP,RAX
.L_40db2f:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            cmp RDI,R14
            je .L_40db45

            call _ZdlPv@PLT
.L_40db45:

            mov RDI,QWORD PTR [RSP+528]
            lea RAX,QWORD PTR [RSP+544]
            cmp RDI,RAX
            je .L_40c821
.L_40db5e:

            call _ZdlPv@PLT

            jmp .L_40c821
.L_40db68:

            movzx ECX,BYTE PTR [RBX]
            mov BYTE PTR [RBX],DL
            mov RDX,QWORD PTR [RBX+8]
            mov QWORD PTR [RBX+8],RAX
            mov BYTE PTR [RSP+176],CL
            mov QWORD PTR [RSP+184],RDX
            jmp .L_40c128
.L_40db89:

            mov RBP,RAX
            jmp .L_40db45
.L_40db8e:

            jmp .L_40c81e
.L_40db93:

            mov RBP,RAX
            jmp .L_40d799
.L_40db9b:

            mov RBP,RAX
.L_40db9e:

            mov RDI,QWORD PTR [RSP+528]
            add R13,16
            cmp RDI,R13
            jne .L_40db5e

            jmp .L_40c821
.L_40dbb4:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            mov RBP,RAX
            cmp RDI,R14
            je .L_40db9e

            call _ZdlPv@PLT

            jmp .L_40db9e
.L_40dbcf:

            mov RDI,QWORD PTR [RSP+336]
            add R13,16
            mov RBP,RAX
            cmp RDI,R13
            je .L_40dbe8

            call _ZdlPv@PLT
.L_40dbe8:

            test R14B,R14B
            je .L_40c821

            lea R14,QWORD PTR [RSP+496]
            jmp .L_40db2f
.L_40dbfe:

            lea RCX,QWORD PTR [RIP+.L_40f260]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e515]
            mov EDX,11149
            call __assert_fail@PLT
.L_40dc1d:

            lea RCX,QWORD PTR [RIP+.L_40f260]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e5e8]
            mov EDX,11143
            call __assert_fail@PLT
.L_40dc3c:

            jmp .L_40c3d0
.L_40dc41:

            lea RCX,QWORD PTR [RIP+.L_40f4a0]
            lea RSI,QWORD PTR [RIP+.L_40dec4]
            lea RDI,QWORD PTR [RIP+.L_40e5d5]
            mov EDX,11252
            call __assert_fail@PLT
.L_40dc60:

            mov RBP,RAX
.L_40dc63:

            mov RDI,QWORD PTR [RSP+528]
            lea RAX,QWORD PTR [RSP+544]
            cmp RDI,RAX
            je .L_40c3d3
.L_40dc7c:

            call _ZdlPv@PLT

            jmp .L_40c3d3
.L_40dc86:

            mov RDI,QWORD PTR [RSP+272]
            add RBP,16
            mov R13,RAX
            cmp RDI,RBP
            je .L_40dc9f

            call _ZdlPv@PLT
.L_40dc9f:

            test R14B,R14B
            mov RBP,R13
            je .L_40c3d3

            lea R14,QWORD PTR [RSP+496]
.L_40dcb3:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            cmp RDI,R14
            je .L_40dc63

            call _ZdlPv@PLT

            jmp .L_40dc63
.L_40dccb:

            mov RBP,RAX
            jmp .L_40dcb3
.L_40dcd0:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
.L_40dcd7:

            call _ZSt20__throw_length_errorPKc@PLT
.L_40dcdc:

            lea RDI,QWORD PTR [RIP+.L_40dfac]
.L_40dce3:

            call _ZSt20__throw_length_errorPKc@PLT
.L_40dce8:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            mov RBP,RAX
            cmp RDI,R14
            jne .L_40c3e4

            jmp .L_40c3e9
.L_40dd05:

            mov RDI,R13
            mov RBP,RAX
            call __cxa_free_exception@PLT

            jmp .L_40d0b0
.L_40dd15:

            lea R14,QWORD PTR [RSP+496]
            mov EDI,16
            call __cxa_allocate_exception@PLT

            mov RSI,RBX
            mov RDI,R14
            mov R15,RAX
.L_40dd30:

            call .L_409900
.L_40dd35:

            lea R13,QWORD PTR [RSP+528]
            lea RSI,QWORD PTR [RIP+.L_40e5b8]
            mov RDX,R14
            mov RDI,R13
.L_40dd4a:

            call .L_405530
.L_40dd4f:

            mov RSI,R13
            mov RDI,R15
.L_40dd55:

            call _ZNSt12domain_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.L_40dd5a:

            mov RDI,QWORD PTR [RSP+528]
            add R13,16
            cmp RDI,R13
            je .L_40dd70

            call _ZdlPv@PLT
.L_40dd70:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            cmp RDI,R14
            je .L_40dd86

            call _ZdlPv@PLT
.L_40dd86:

            mov RDX,QWORD PTR [RIP+_ZNSt12domain_errorD1Ev@GOTPCREL]
            lea RSI,QWORD PTR [RIP+_ZTISt12domain_error]
            mov RDI,R15
.L_40dd97:

            call __cxa_throw@PLT
.L_40dd9c:

            mov RDI,QWORD PTR [RSP+528]
            add R13,16
            mov RBP,RAX
            cmp RDI,R13
            je .L_40ddb5

            call _ZdlPv@PLT
.L_40ddb5:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            cmp RDI,R14
            je .L_40ddcb

            call _ZdlPv@PLT
.L_40ddcb:

            mov RDI,R15
            call __cxa_free_exception@PLT

            jmp .L_40d74c
.L_40ddd8:

            mov RBP,RAX
            jmp .L_40ddb5
.L_40dddd:

            mov RBP,RAX
            jmp .L_40ddcb
.L_40dde2:

            mov RBP,RAX
.L_40dde5:

            mov RDI,QWORD PTR [RSP+528]
            add R13,16
            cmp RDI,R13
            jne .L_40dc7c

            jmp .L_40c3d3
.L_40ddff:

            mov RDI,QWORD PTR [RSP+496]
            add R14,16
            mov RBP,RAX
            cmp RDI,R14
            je .L_40dde5

            call _ZdlPv@PLT

            jmp .L_40dde5
.L_40de1a:

            mov RDI,R12
            mov RBP,RAX
            call _ZdlPv@PLT

            jmp .L_40c837
.L_40de2a:

            mov RBP,RAX
            jmp .L_40c837
.L_40de32:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40de40:

            push R15
            push R14
            mov R15,RDX
            push R13
            push R12
            lea R12,QWORD PTR [RIP+.L_611b68]
            push RBP
            lea RBP,QWORD PTR [RIP+.L_611b78]
            push RBX
            mov R13D,EDI
            mov R14,RSI
            sub RBP,R12
            sub RSP,8
            sar RBP,3
            call 4202008

            test RBP,RBP
            je .L_40de96

            xor EBX,EBX
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40de80:

            mov RDX,R15
            mov RSI,R14
            mov EDI,R13D
            call QWORD PTR [R12+RBX*8]

            add RBX,1
            cmp RBP,RBX
            jne .L_40de80
.L_40de96:

            add RSP,8
            pop RBX
            pop RBP
            pop R12
            pop R13
            pop R14
            pop R15
            ret 
.L_40dea5:

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40deb0:

            ret 
.L_40deb2:
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
.L_40dec4:
          .string "BUILD/src/json.hpp"
.L_40ded7:
          .string "target.cc"
.L_40dee1:
          .string "s1 == s2"
.L_40deea:
          .string "rb"
.L_40deed:
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
.L_40defa:
          .string "\n"
.L_40defc:
          .string "read error!\n"
          .zero 7
.L_40df10:
          .string "m_type != value_t::array or m_value.array != nullptr"
          .zero 3
.L_40df48:
          .string "basic_string::_M_construct null not valid"
          .zero 2
.L_40df74:
          .long .L_40574a-.L_40df74
          .long .L_405780-.L_40df74
          .long .L_4057c0-.L_40df74
          .long .L_405720-.L_40df74
          .long .L_405770-.L_40df74
          .long .L_405758-.L_40df74
          .long .L_405758-.L_40df74
          .long .L_4057f0-.L_40df74
.L_40df94:
          .string "m_cursor - m_start >= 2"
.L_40dfac:
          .string "basic_string::append"
.L_40dfc1:
          .string "\t"
.L_40dfc3:
          .byte 0x8
.L_40dfc4:
          .zero 1
.L_40dfc5:
          .string ""
.L_40dfc7:
          .string "\r"
.L_40dfc9:
          .string "\\"
.L_40dfcb:
          .string "/"
.L_40dfcd:
          .byte 0x22
.L_40dfce:
          .zero 1
.L_40dfcf:
          .string "missing low surrogate"
.L_40dfe5:
          .string "missing high surrogate"
          .zero 4
.L_40e000:
          .string "missing or wrong low surrogate"
          .zero 1
.L_40e020:
          .string "code points above 0x10FFFF are invalid"
          .zero 1
.L_40e048:
          .long .L_405d2e-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_405d00-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_405d5c-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_405cd2-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_405ca4-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_405c79-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_405c4e-.L_40e048
          .long .L_4059ed-.L_40e048
          .long .L_405c16-.L_40e048
          .long .L_405a52-.L_40e048
          .byte 0x3c
          .byte 0x75
          .byte 0x6e
          .byte 0x69
          .byte 0x6e
          .byte 0x69
          .byte 0x74
          .byte 0x69
          .byte 0x61
          .byte 0x6c
          .byte 0x69
          .byte 0x7a
          .byte 0x65
          .byte 0x64
          .byte 0x3e
.L_40e1a7:
          .byte 0x0
          .byte 0x74
          .byte 0x72
          .byte 0x75
          .byte 0x65
          .byte 0x20
          .byte 0x6c
          .byte 0x69
          .byte 0x74
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x6c
.L_40e1b4:
          .byte 0x0
          .byte 0x66
          .byte 0x61
          .byte 0x6c
          .byte 0x73
          .byte 0x65
          .byte 0x20
          .byte 0x6c
          .byte 0x69
          .byte 0x74
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x6c
.L_40e1c2:
          .byte 0x0
          .byte 0x6e
          .byte 0x75
          .byte 0x6c
          .byte 0x6c
          .byte 0x20
          .byte 0x6c
          .byte 0x69
          .byte 0x74
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x6c
.L_40e1cf:
          .byte 0x0
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
          .byte 0x6c
.L_40e1de:
          .byte 0x0
          .byte 0x6e
          .byte 0x75
          .byte 0x6d
          .byte 0x62
          .byte 0x65
          .byte 0x72
          .byte 0x20
          .byte 0x6c
          .byte 0x69
          .byte 0x74
          .byte 0x65
          .byte 0x72
          .byte 0x61
          .byte 0x6c
.L_40e1ed:
          .byte 0x0
          .byte 0x27
          .byte 0x5b
          .byte 0x27
.L_40e1f1:
          .byte 0x0
          .byte 0x27
          .byte 0x7b
          .byte 0x27
.L_40e1f5:
          .byte 0x0
          .byte 0x27
          .byte 0x5d
          .byte 0x27
.L_40e1f9:
          .byte 0x0
          .byte 0x27
          .byte 0x7d
          .byte 0x27
.L_40e1fd:
          .byte 0x0
          .byte 0x27
          .byte 0x3a
          .byte 0x27
.L_40e201:
          .byte 0x0
          .byte 0x27
          .byte 0x2c
.L_40e204:
          .byte 0x27
.L_40e205:
          .byte 0x0
          .byte 0x3c
          .byte 0x70
          .byte 0x61
          .byte 0x72
          .byte 0x73
          .byte 0x65
          .byte 0x20
          .byte 0x65
          .byte 0x72
          .byte 0x72
          .byte 0x6f
          .byte 0x72
          .byte 0x3e
.L_40e213:
          .byte 0x0
          .byte 0x65
          .byte 0x6e
          .byte 0x64
          .byte 0x20
          .byte 0x6f
          .byte 0x66
          .byte 0x20
          .byte 0x69
          .byte 0x6e
          .byte 0x70
          .byte 0x75
          .byte 0x74
.L_40e220:
          .byte 0x0
          .byte 0x75
          .byte 0x6e
          .byte 0x6b
          .byte 0x6e
          .byte 0x6f
          .byte 0x77
          .byte 0x6e
          .byte 0x20
          .byte 0x74
          .byte 0x6f
          .byte 0x6b
          .byte 0x65
          .byte 0x6e
.L_40e22e:
          .zero 2
.L_40e230:
          .long .L_406180-.L_40e230
          .long .L_406198-.L_40e230
          .long .L_4061b0-.L_40e230
          .long .L_4061c8-.L_40e230
          .long .L_4061e0-.L_40e230
          .long .L_4061f8-.L_40e230
          .long .L_4061f8-.L_40e230
          .long .L_4061f8-.L_40e230
          .long .L_406210-.L_40e230
          .long .L_406228-.L_40e230
          .long .L_406240-.L_40e230
          .long .L_406258-.L_40e230
          .long .L_406270-.L_40e230
          .long .L_406288-.L_40e230
          .long .L_406150-.L_40e230
          .long .L_406168-.L_40e230
          .byte 0x70
          .byte 0x61
          .byte 0x72
          .byte 0x73
          .byte 0x65
          .byte 0x20
          .byte 0x65
          .byte 0x72
          .byte 0x72
          .byte 0x6f
          .byte 0x72
          .byte 0x20
          .byte 0x2d
          .byte 0x20
          .byte 0x75
          .byte 0x6e
          .byte 0x65
          .byte 0x78
          .byte 0x70
          .byte 0x65
          .byte 0x63
          .byte 0x74
          .byte 0x65
          .byte 0x64
          .byte 0x20
.L_40e289:
          .zero 1
.L_40e28a:
          .string "m_start != nullptr"
.L_40e29d:
          .byte 0x3b
          .byte 0x20
          .byte 0x65
          .byte 0x78
          .byte 0x70
          .byte 0x65
          .byte 0x63
          .byte 0x74
          .byte 0x65
          .byte 0x64
.L_40e2a7:
          .string " "
          .zero 3
.L_40e2ac:
          .long .L_406800-.L_40e2ac
          .long .L_406a40-.L_40e2ac
          .long .L_406a68-.L_40e2ac
          .long .L_406a90-.L_40e2ac
          .long .L_406ab8-.L_40e2ac
          .long .L_406900-.L_40e2ac
          .long .L_406900-.L_40e2ac
          .long .L_406900-.L_40e2ac
          .long .L_406928-.L_40e2ac
          .long .L_406950-.L_40e2ac
          .long .L_406978-.L_40e2ac
          .long .L_4069a0-.L_40e2ac
          .long .L_4069c8-.L_40e2ac
          .long .L_4069f0-.L_40e2ac
          .long .L_406a18-.L_40e2ac
          .long .L_406ae0-.L_40e2ac
          .zero 4
.L_40e2f0:
          .string "m_type != value_t::object or m_value.object != nullptr"
          .zero 1
.L_40e328:
          .string "m_type != value_t::string or m_value.string != nullptr"
          .zero 1
.L_40e360:
          .string "m_line_buffer.empty() or m_content == reinterpret_cast<const lexer_char_t*>(m_line_buffer.data())"
          .zero 6
.L_40e3c8:
          .string "m_line_buffer.empty() or m_limit == m_content + m_line_buffer.size()"
          .zero 3
.L_40e410:
          .string "m_marker == nullptr or m_marker <= m_limit"
          .zero 5
.L_40e440:
          .string "m_content <= m_start"
.L_40e455:
          .string "m_start <= m_cursor"
.L_40e469:
          .string "m_cursor <= m_limit"
.L_40e47d:
          .string "m_content != nullptr"
.L_40e492:
          .byte 0x6e
          .byte 0x75
          .byte 0x6c
          .byte 0x6c
.L_40e496:
          .byte 0x0
          .byte 0x6f
          .byte 0x62
          .byte 0x6a
          .byte 0x65
          .byte 0x63
          .byte 0x74
.L_40e49d:
          .byte 0x0
          .byte 0x61
          .byte 0x72
          .byte 0x72
          .byte 0x61
          .byte 0x79
.L_40e4a3:
          .byte 0x0
          .byte 0x73
          .byte 0x74
          .byte 0x72
          .byte 0x69
          .byte 0x6e
          .byte 0x67
.L_40e4aa:
          .byte 0x0
          .byte 0x62
          .byte 0x6f
          .byte 0x6f
          .byte 0x6c
          .byte 0x65
          .byte 0x61
          .byte 0x6e
.L_40e4b2:
          .byte 0x0
          .byte 0x64
          .byte 0x69
          .byte 0x73
          .byte 0x63
          .byte 0x61
          .byte 0x72
          .byte 0x64
          .byte 0x65
          .byte 0x64
.L_40e4bc:
          .byte 0x0
          .byte 0x6e
          .byte 0x75
          .byte 0x6d
          .byte 0x62
          .byte 0x65
          .byte 0x72
.L_40e4c3:
          .zero 1
.L_40e4c4:
          .long .L_409940-.L_40e4c4
          .long .L_409960-.L_40e4c4
          .long .L_409980-.L_40e4c4
          .long .L_4099a0-.L_40e4c4
          .long .L_4099c0-.L_40e4c4
          .long .L_4099e0-.L_40e4c4
          .long .L_4099e0-.L_40e4c4
          .long .L_4099e0-.L_40e4c4
          .long .L_409928-.L_40e4c4
.L_40e4e8:
          .string "false"
.L_40e4ee:
          .string "true"
.L_40e4f3:
          .byte 0x7b
.L_40e4f4:
          .string "}"
.L_40e4f6:
          .string "{"
.L_40e4f8:
          .string "\":"
.L_40e4fb:
          .byte 0x5b
.L_40e4fc:
          .string "]"
.L_40e4fe:
          .string "["
.L_40e500:
          .string "i < s_capacity"
.L_40e50f:
          .string "%.16g"
.L_40e515:
          .string "loc != nullptr"
.L_40e524:
          .string "(i + 2) < m_buf.size()"
.L_40e53b:
          .string "m_buf[i - 1] != \'\\0\'"
.L_40e550:
          .string "m_buf[i + 2] == \'\\0\'"
.L_40e565:
          .string "<discarded>"
.L_40e571:
          .string ",\n"
.L_40e574:
          .string ","
          .zero 2
.L_40e578:
          .long .L_409d78-.L_40e578
          .long .L_409d98-.L_40e578
          .long .L_409fa8-.L_40e578
          .long .L_40a0b8-.L_40e578
          .long .L_40a150-.L_40e578
          .long .L_40a188-.L_40e578
          .long .L_40a1e0-.L_40e578
          .long .L_409c98-.L_40e578
          .long .L_409d58-.L_40e578
.L_40e59c:
          .string "cannot use operator[] with "
.L_40e5b8:
          .string "cannot use push_back() with "
.L_40e5d5:
          .string "m_start < m_cursor"
.L_40e5e8:
          .string "len > 0"
.L_40e5f0:
          .long .L_40c138-.L_40e5f0
          .long .L_40bdd8-.L_40e5f0
          .long .L_40bd60-.L_40e5f0
          .long .L_40bdf0-.L_40e5f0
          .long .L_40bca0-.L_40e5f0
          .long .L_40bbe0-.L_40e5f0
          .long .L_40bbe0-.L_40e5f0
          .long .L_40bbe0-.L_40e5f0
          .long .L_40ba68-.L_40e5f0
          .long .L_40b720-.L_40e5f0
          .zero 8
.L_40e620:
          .string "void nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::numtostr::x_write(NumberType, std::false_type) [with NumberType = double; ObjectType = std::map; ArrayType = std::vector; StringType = std::__cxx11::basic_string<char>; BooleanType = bool; NumberIntegerType = long int; NumberUnsignedType = long unsigned int; NumberFloatType = double; AllocatorType = std::allocator; JSONSerializer = nlohmann::adl_serializer; std::false_type = std::integral_constant<bool, false>]"
          .zero 31
.L_40e880:
          .string "void nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::numtostr::x_write(NumberType, std::true_type) [with NumberType = long unsigned int; ObjectType = std::map; ArrayType = std::vector; StringType = std::__cxx11::basic_string<char>; BooleanType = bool; NumberIntegerType = long int; NumberUnsignedType = long unsigned int; NumberFloatType = double; AllocatorType = std::allocator; JSONSerializer = nlohmann::adl_serializer; std::true_type = std::integral_constant<bool, true>]"
          .zero 23
.L_40eae0:
          .string "void nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::numtostr::x_write(NumberType, std::true_type) [with NumberType = long int; ObjectType = std::map; ArrayType = std::vector; StringType = std::__cxx11::basic_string<char>; BooleanType = bool; NumberIntegerType = long int; NumberUnsignedType = long unsigned int; NumberFloatType = double; AllocatorType = std::allocator; JSONSerializer = nlohmann::adl_serializer; std::true_type = std::integral_constant<bool, true>]"
.L_40ed20:
          .string "void nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::assert_invariant() const [with ObjectType = std::map; ArrayType = std::vector; StringType = std::__cxx11::basic_string<char>; BooleanType = bool; NumberIntegerType = long int; NumberUnsignedType = long unsigned int; NumberFloatType = double; AllocatorType = std::allocator; JSONSerializer = nlohmann::adl_serializer]"
          .zero 1
.L_40ef00:
          .string "nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::string_t nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::lexer::get_token_string() const [with ObjectType = std::map; ArrayType = std::vector; StringType = std::__cxx11::basic_string<char>; BooleanType = bool; NumberIntegerType = long int; NumberUnsignedType = long unsigned int; NumberFloatType = double; AllocatorType = std::allocator; JSONSerializer = nlohmann::adl_serializer; nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::string_t = std::__cxx11::basic_string<char>]"
          .zero 15
.L_40f260:
          .string "bool nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::lexer::strtonum::parse(T&, std::false_type) const [with T = double; ObjectType = std::map; ArrayType = std::vector; StringType = std::__cxx11::basic_string<char>; BooleanType = bool; NumberIntegerType = long int; NumberUnsignedType = long unsigned int; NumberFloatType = double; AllocatorType = std::allocator; JSONSerializer = nlohmann::adl_serializer; std::false_type = std::integral_constant<bool, false>]"
          .zero 5
.L_40f4a0:
          .string "bool nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::lexer::get_number(nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>&, nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::lexer::token_type) const [with ObjectType = std::map; ArrayType = std::vector; StringType = std::__cxx11::basic_string<char>; BooleanType = bool; NumberIntegerType = long int; NumberUnsignedType = long unsigned int; NumberFloatType = double; AllocatorType = std::allocator; JSONSerializer = nlohmann::adl_serializer]"
          .zero 20
.L_40f7e0:
          .string "nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::string_t nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::lexer::get_string() const [with ObjectType = std::map; ArrayType = std::vector; StringType = std::__cxx11::basic_string<char>; BooleanType = bool; NumberIntegerType = long int; NumberUnsignedType = long unsigned int; NumberFloatType = double; AllocatorType = std::allocator; JSONSerializer = nlohmann::adl_serializer; nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::string_t = std::__cxx11::basic_string<char>]"
          .zero 21
.L_40fb40:
          .string "void nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::lexer::fill_line_buffer(size_t) [with ObjectType = std::map; ArrayType = std::vector; StringType = std::__cxx11::basic_string<char>; BooleanType = bool; NumberIntegerType = long int; NumberUnsignedType = long unsigned int; NumberFloatType = double; AllocatorType = std::allocator; JSONSerializer = nlohmann::adl_serializer; size_t = long unsigned int]"
          .zero 30
.L_40fd60:
          .string "nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::lexer::token_type nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::lexer::scan() [with ObjectType = std::map; ArrayType = std::vector; StringType = std::__cxx11::basic_string<char>; BooleanType = bool; NumberIntegerType = long int; NumberUnsignedType = long unsigned int; NumberFloatType = double; AllocatorType = std::allocator; JSONSerializer = nlohmann::adl_serializer]"
          .zero 2
.L_40ffe0:
          .string "nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::lexer::lexer(const lexer_char_t*, size_t) [with ObjectType = std::map; ArrayType = std::vector; StringType = std::__cxx11::basic_string<char>; BooleanType = bool; NumberIntegerType = long int; NumberUnsignedType = long unsigned int; NumberFloatType = double; AllocatorType = std::allocator; JSONSerializer = nlohmann::adl_serializer; nlohmann::basic_json<ObjectType, ArrayType, StringType, BooleanType, NumberIntegerType, NumberUnsignedType, NumberFloatType, AllocatorType, JSONSerializer>::lexer::lexer_char_t = unsigned char; size_t = long unsigned int]"
          .zero 23
.L_4102c0:
          .string "int LLVMFuzzerTestOneInput(const uint8_t*, size_t)"
          .zero 13
.L_410300:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x20
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
          .byte 0xa0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0xc0
          .byte 0xc0
          .byte 0xc0
          .byte 0xc0
          .byte 0xc0
          .byte 0xc0
          .byte 0xc0
          .byte 0xc0
          .byte 0xc0
          .byte 0xc0
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
          .byte 0x80
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
.L_410400:
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
          .byte 0x61
          .byte 0x62
          .byte 0x63
          .byte 0x64
          .byte 0x65
          .byte 0x66
.L_410410:
          .zero 8
.L_410418:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
.L_410420:
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xef
          .byte 0x7f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_410430:
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
#===================================
# end section .rodata
#===================================

#===================================
.section .gcc_except_table ,"a",@progbits
.align 8
#===================================

.L_410ce8:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_410cec-.L_410cec
.L_410cec:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_410cf8-.L_410cf0
.L_410cf0:
          .uleb128 .L_4056a2-.L_405680
          .uleb128 .L_4056a4-.L_4056a2
          .uleb128 .L_4056c2-.L_405680
          .zero 1
          .uleb128 .L_4056de-.L_405680
          .uleb128 .L_4056e3-.L_4056de
          .zero 2
.L_410cf8:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_410d0b-.L_410cfc
.L_410cfc:
          .uleb128 .L_405725-.L_4056f0
          .uleb128 .L_40572a-.L_405725
          .zero 2
          .uleb128 .L_405742-.L_4056f0
          .uleb128 .L_405747-.L_405742
          .uleb128 .L_405802-.L_4056f0
          .zero 1
          .uleb128 .L_405785-.L_4056f0
          .uleb128 .L_405815-.L_405785
          .zero 2
.L_410d0b:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_410d6f-.L_410d0f
.L_410d0f:
          .uleb128 .L_405884-.L_405820
          .uleb128 .L_405ae9-.L_405884
          .uleb128 .L_40601e-.L_405820
          .zero 1
          .uleb128 .L_405b69-.L_405820
          .uleb128 .L_405bdf-.L_405b69
          .uleb128 .L_406047-.L_405820
          .zero 1
          .uleb128 .L_405bec-.L_405820
          .uleb128 .L_405bf1-.L_405bec
          .uleb128 .L_406042-.L_405820
          .zero 1
          .uleb128 .L_405c3a-.L_405820
          .uleb128 .L_405d85-.L_405c3a
          .uleb128 .L_40601e-.L_405820
          .zero 1
          .uleb128 .L_405e6b-.L_405820
          .uleb128 .L_405ee1-.L_405e6b
          .uleb128 .L_4060eb-.L_405820
          .zero 1
          .uleb128 .L_405eee-.L_405820
          .uleb128 .L_405ef3-.L_405eee
          .uleb128 .L_4060f0-.L_405820
          .zero 1
          .uleb128 .L_405f1e-.L_405820
          .uleb128 .L_405f6a-.L_405f1e
          .uleb128 .L_4060eb-.L_405820
          .zero 1
          .uleb128 .L_405f86-.L_405820
          .uleb128 .L_405f8b-.L_405f86
          .uleb128 .L_405fd8-.L_405820
          .zero 1
          .uleb128 .L_405f9c-.L_405820
          .uleb128 .L_405fa1-.L_405f9c
          .uleb128 .L_4060eb-.L_405820
          .zero 1
          .uleb128 .L_405fb8-.L_405820
          .uleb128 .L_405fbd-.L_405fb8
          .uleb128 .L_40600e-.L_405820
          .zero 1
          .uleb128 .L_405fce-.L_405820
          .uleb128 .L_405fd3-.L_405fce
          .uleb128 .L_40601e-.L_405820
          .zero 1
          .uleb128 .L_406009-.L_405820
          .uleb128 .L_40600e-.L_406009
          .zero 2
          .uleb128 .L_406060-.L_405820
          .uleb128 .L_406065-.L_406060
          .uleb128 .L_406087-.L_405820
          .zero 1
          .uleb128 .L_406076-.L_405820
          .uleb128 .L_406095-.L_406076
          .uleb128 .L_40601e-.L_405820
          .zero 1
          .uleb128 .L_4060ac-.L_405820
          .uleb128 .L_4060b1-.L_4060ac
          .uleb128 .L_406119-.L_405820
          .zero 1
          .uleb128 .L_4060c2-.L_405820
          .uleb128 .L_406119-.L_4060c2
          .uleb128 .L_40601e-.L_405820
          .zero 1
.L_410d6f:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_410dac-.L_410d73
.L_410d73:
          .uleb128 .L_40632c-.L_4062c0
          .uleb128 .L_406331-.L_40632c
          .zero 2
          .uleb128 .L_406365-.L_4062c0
          .uleb128 .L_40636a-.L_406365
          .uleb128 .L_4065b3-.L_4062c0
          .zero 1
          .uleb128 .L_40637e-.L_4062c0
          .uleb128 .L_406383-.L_40637e
          .uleb128 .L_4065ae-.L_4062c0
          .zero 1
          .uleb128 .L_4063eb-.L_4062c0
          .uleb128 .L_4063f0-.L_4063eb
          .uleb128 .L_406545-.L_4062c0
          .zero 1
          .uleb128 .L_406447-.L_4062c0
          .uleb128 .L_40644c-.L_406447
          .uleb128 .L_40658c-.L_4062c0
          .zero 1
          .uleb128 .L_40649f-.L_4062c0
          .uleb128 .L_4064a4-.L_40649f
          .uleb128 .L_40657c-.L_4062c0
          .zero 1
          .uleb128 .L_4064b5-.L_4062c0
          .uleb128 .L_4064ba-.L_4064b5
          .uleb128 .L_4064df-.L_4062c0
          .zero 1
          .uleb128 .L_4064f7-.L_4062c0
          .uleb128 .L_4064fc-.L_4064f7
          .zero 2
          .uleb128 .L_40652c-.L_4062c0
          .uleb128 .L_406531-.L_40652c
          .uleb128 .L_406577-.L_4062c0
          .zero 1
          .uleb128 .L_406540-.L_4062c0
          .uleb128 .L_406545-.L_406540
          .uleb128 .L_406545-.L_4062c0
          .zero 1
.L_410dac:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_410e02-.L_410db0
.L_410db0:
          .uleb128 .L_40660a-.L_4065c0
          .uleb128 .L_40660f-.L_40660a
          .zero 2
          .uleb128 .L_406643-.L_4065c0
          .uleb128 .L_406648-.L_406643
          .uleb128 .L_406c02-.L_4065c0
          .zero 1
          .uleb128 .L_40665c-.L_4065c0
          .uleb128 .L_406661-.L_40665c
          .uleb128 .L_406bc3-.L_4065c0
          .zero 1
          .uleb128 .L_4066c9-.L_4065c0
          .uleb128 .L_4066ce-.L_4066c9
          .uleb128 .L_406b67-.L_4065c0
          .zero 1
          .uleb128 .L_406725-.L_4065c0
          .uleb128 .L_40672a-.L_406725
          .uleb128 .L_406bc8-.L_4065c0
          .zero 1
          .uleb128 .L_406817-.L_4065c0
          .uleb128 .L_40681c-.L_406817
          .uleb128 .L_4068de-.L_4065c0
          .zero 1
          .uleb128 .L_406834-.L_4065c0
          .uleb128 .L_406839-.L_406834
          .uleb128 .L_406bed-.L_4065c0
          .zero 1
          .uleb128 .L_406885-.L_4065c0
          .uleb128 .L_40688a-.L_406885
          .uleb128 .L_406b9a-.L_4065c0
          .zero 1
          .uleb128 .L_4068c3-.L_4065c0
          .uleb128 .L_4068c8-.L_4068c3
          .uleb128 .L_406bf2-.L_4065c0
          .zero 1
          .uleb128 .L_4068d9-.L_4065c0
          .uleb128 .L_4068de-.L_4068d9
          .uleb128 .L_4068de-.L_4065c0
          .zero 1
          .uleb128 .L_4068f6-.L_4065c0
          .uleb128 .L_4068fb-.L_4068f6
          .zero 2
          .uleb128 .L_406917-.L_4065c0
          .uleb128 .L_406b3c-.L_406917
          .uleb128 .L_4068de-.L_4065c0
          .zero 1
          .uleb128 .L_406b4e-.L_4065c0
          .uleb128 .L_406b53-.L_406b4e
          .uleb128 .L_406c07-.L_4065c0
          .zero 1
          .uleb128 .L_406b62-.L_4065c0
          .uleb128 .L_406b67-.L_406b62
          .uleb128 .L_406b67-.L_4065c0
          .zero 1
.L_410e02:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_410e12-.L_410e06
.L_410e06:
          .uleb128 .L_406ead-.L_406d70
          .uleb128 .L_406eb2-.L_406ead
          .uleb128 .L_407147-.L_406d70
          .zero 1
          .uleb128 .L_406ed6-.L_406d70
          .uleb128 .L_407165-.L_406ed6
          .zero 2
.L_410e12:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_410e8a-.L_410e16
.L_410e16:
          .uleb128 .L_407459-.L_407190
          .uleb128 .L_40745e-.L_407459
          .uleb128 .L_409891-.L_407190
          .zero 1
          .uleb128 .L_407483-.L_407190
          .uleb128 .L_4074a1-.L_407483
          .zero 2
          .uleb128 .L_40760e-.L_407190
          .uleb128 .L_407613-.L_40760e
          .uleb128 .L_4097a1-.L_407190
          .zero 1
          .uleb128 .L_407637-.L_407190
          .uleb128 .L_407913-.L_407637
          .zero 2
          .uleb128 .L_40798a-.L_407190
          .uleb128 .L_40798f-.L_40798a
          .uleb128 .L_409874-.L_407190
          .zero 1
          .uleb128 .L_4079b7-.L_407190
          .uleb128 .L_4079d2-.L_4079b7
          .zero 2
          .uleb128 .L_407bda-.L_407190
          .uleb128 .L_407bdf-.L_407bda
          .uleb128 .L_4097bf-.L_407190
          .zero 1
          .uleb128 .L_407c06-.L_407190
          .uleb128 .L_407d78-.L_407c06
          .zero 2
          .uleb128 .L_407f9e-.L_407190
          .uleb128 .L_407fa3-.L_407f9e
          .uleb128 .L_40985a-.L_407190
          .zero 1
          .uleb128 .L_407fc7-.L_407190
          .uleb128 .L_407fe5-.L_407fc7
          .zero 2
          .uleb128 .L_4081b9-.L_407190
          .uleb128 .L_4081be-.L_4081b9
          .uleb128 .L_4097d5-.L_407190
          .zero 1
          .uleb128 .L_4081e5-.L_407190
          .uleb128 .L_408200-.L_4081e5
          .zero 2
          .uleb128 .L_40845a-.L_407190
          .uleb128 .L_40845f-.L_40845a
          .uleb128 .L_40981c-.L_407190
          .zero 1
          .uleb128 .L_40848a-.L_407190
          .uleb128 .L_408713-.L_40848a
          .zero 2
          .uleb128 .L_408792-.L_407190
          .uleb128 .L_408797-.L_408792
          .uleb128 .L_409801-.L_407190
          .zero 1
          .uleb128 .L_4087bc-.L_407190
          .uleb128 .L_408b41-.L_4087bc
          .zero 2
          .uleb128 .L_408bc9-.L_407190
          .uleb128 .L_408bce-.L_408bc9
          .uleb128 .L_40983d-.L_407190
          .zero 1
          .uleb128 .L_408bf5-.L_407190
          .uleb128 .L_408d78-.L_408bf5
          .zero 2
          .uleb128 .L_408de6-.L_407190
          .uleb128 .L_408deb-.L_408de6
          .uleb128 .L_4097eb-.L_407190
          .zero 1
          .uleb128 .L_408e13-.L_407190
          .uleb128 .L_4098ba-.L_408e13
          .zero 2
.L_410e8a:
          .byte 0xff
          .byte 0xff
          .byte 0x1
          .uleb128 .L_410f03-.L_410e8e
.L_410e8e:
          .uleb128 .L_409bb8-.L_409b30
          .uleb128 .L_409bbd-.L_409bb8
          .uleb128 .L_40ae00-.L_409b30
          .zero 1
          .uleb128 .L_409c21-.L_409b30
          .uleb128 .L_409c3a-.L_409c21
          .uleb128 .L_40ad61-.L_409b30
          .zero 1
          .uleb128 .L_409d48-.L_409b30
          .uleb128 .L_409e4c-.L_409d48
          .zero 2
          .uleb128 .L_409e59-.L_409b30
          .uleb128 .L_409f03-.L_409e59
          .uleb128 .L_40ad2a-.L_409b30
          .zero 1
          .uleb128 .L_409fc8-.L_409b30
          .uleb128 .L_40a038-.L_409fc8
          .zero 2
          .uleb128 .L_40a04b-.L_409b30
          .uleb128 .L_40a050-.L_40a04b
          .uleb128 .L_40ad93-.L_409b30
          .zero 1
          .uleb128 .L_40a07a-.L_409b30
          .uleb128 .L_40a0db-.L_40a07a
          .zero 2
          .uleb128 .L_40a0e8-.L_409b30
          .uleb128 .L_40a0ed-.L_40a0e8
          .uleb128 .L_40ae00-.L_409b30
          .zero 1
          .uleb128 .L_40a177-.L_409b30
          .uleb128 .L_40a3c4-.L_40a177
          .zero 2
          .uleb128 .L_40a453-.L_409b30
          .uleb128 .L_40a489-.L_40a453
          .uleb128 .L_40ad98-.L_409b30
          .zero 1
          .uleb128 .L_40a4ca-.L_409b30
          .uleb128 .L_40a561-.L_40a4ca
          .zero 2
          .uleb128 .L_40a574-.L_409b30
          .uleb128 .L_40a58d-.L_40a574
          .uleb128 .L_40acf3-.L_409b30
          .zero 1
          .uleb128 .L_40a5c2-.L_409b30
          .uleb128 .L_40a5c7-.L_40a5c2
          .uleb128 .L_40ad2a-.L_409b30
          .zero 1
          .uleb128 .L_40a5fe-.L_409b30
          .uleb128 .L_40a627-.L_40a5fe
          .zero 2
          .uleb128 .L_40a64b-.L_409b30
          .uleb128 .L_40a650-.L_40a64b
          .uleb128 .L_40ad79-.L_409b30
          .zero 1
          .uleb128 .L_40a6b6-.L_409b30
          .uleb128 .L_40a6bb-.L_40a6b6
          .uleb128 .L_40adb9-.L_409b30
          .zero 1
          .uleb128 .L_40a7af-.L_409b30
          .uleb128 .L_40a7b4-.L_40a7af
          .zero 2
          .uleb128 .L_40a7f0-.L_409b30
          .uleb128 .L_40a7f5-.L_40a7f0
          .uleb128 .L_40ae00-.L_409b30
          .zero 1
          .uleb128 .L_40aabf-.L_409b30
          .uleb128 .L_40ad14-.L_40aabf
          .zero 2
          .uleb128 .L_40ad25-.L_409b30
          .uleb128 .L_40ad2a-.L_40ad25
          .uleb128 .L_40ad79-.L_409b30
          .zero 1
.L_410f03:
          .zero 1
.L_410f04:
          .byte 0xff
          .byte 0x9b
          .uleb128 .L_4110b8-.L_410f08
.L_410f08:
          .byte 0x1
          .uleb128 .L_4110b0-.L_410f0b
.L_410f0b:
          .uleb128 .L_40b69d-.L_40b660
          .uleb128 .L_40b6a2-.L_40b69d
          .zero 2
          .uleb128 .L_40b753-.L_40b660
          .uleb128 .L_40b7c3-.L_40b753
          .uleb128 .L_40d9a0-.L_40b660
          .zero 1
          .uleb128 .L_40b7fd-.L_40b660
          .uleb128 .L_40b802-.L_40b7fd
          .uleb128 .L_40dc3c-.L_40b660
          .zero 1
          .uleb128 .L_40b816-.L_40b660
          .uleb128 .L_40b81b-.L_40b816
          .uleb128 .L_40dc60-.L_40b660
          .zero 1
          .uleb128 .L_40b895-.L_40b660
          .uleb128 .L_40b89a-.L_40b895
          .uleb128 .L_40dccb-.L_40b660
          .zero 1
          .uleb128 .L_40b906-.L_40b660
          .uleb128 .L_40b90b-.L_40b906
          .uleb128 .L_40dc86-.L_40b660
          .zero 1
          .uleb128 .L_40b980-.L_40b660
          .uleb128 .L_40b985-.L_40b980
          .uleb128 .L_40c3d0-.L_40b660
          .zero 1
          .uleb128 .L_40b999-.L_40b660
          .uleb128 .L_40b99e-.L_40b999
          .uleb128 .L_40dde2-.L_40b660
          .zero 1
          .uleb128 .L_40ba04-.L_40b660
          .uleb128 .L_40ba09-.L_40ba04
          .uleb128 .L_40ddff-.L_40b660
          .zero 1
          .uleb128 .L_40ba48-.L_40b660
          .uleb128 .L_40ba4d-.L_40ba48
          .uleb128 .L_40d95c-.L_40b660
          .zero 1
          .uleb128 .L_40ba5e-.L_40b660
          .uleb128 .L_40ba63-.L_40ba5e
          .uleb128 .L_40c3d0-.L_40b660
          .zero 1
          .uleb128 .L_40ba9b-.L_40b660
          .uleb128 .L_40bcb7-.L_40ba9b
          .uleb128 .L_40d9a0-.L_40b660
          .zero 1
          .uleb128 .L_40bcba-.L_40b660
          .uleb128 .L_40bce0-.L_40bcba
          .uleb128 .L_40d86e-.L_40b660
          .zero 1
          .uleb128 .L_40bd00-.L_40b660
          .uleb128 .L_40bd05-.L_40bd00
          .uleb128 .L_40d807-.L_40b660
          .zero 1
          .uleb128 .L_40bd64-.L_40b660
          .uleb128 .L_40c160-.L_40bd64
          .uleb128 .L_40d9a0-.L_40b660
          .zero 1
          .uleb128 .L_40c19a-.L_40b660
          .uleb128 .L_40c19f-.L_40c19a
          .uleb128 .L_40d903-.L_40b660
          .zero 1
          .uleb128 .L_40c1b3-.L_40b660
          .uleb128 .L_40c1b8-.L_40c1b3
          .uleb128 .L_40db93-.L_40b660
          .zero 1
          .uleb128 .L_40c232-.L_40b660
          .uleb128 .L_40c237-.L_40c232
          .uleb128 .L_40d7bc-.L_40b660
          .zero 1
          .uleb128 .L_40c2a3-.L_40b660
          .uleb128 .L_40c2a8-.L_40c2a3
          .uleb128 .L_40d759-.L_40b660
          .zero 1
          .uleb128 .L_40c30a-.L_40b660
          .uleb128 .L_40c30f-.L_40c30a
          .uleb128 .L_40d883-.L_40b660
          .zero 1
          .uleb128 .L_40c320-.L_40b660
          .uleb128 .L_40c325-.L_40c320
          .uleb128 .L_40c43f-.L_40b660
          .zero 1
          .uleb128 .L_40c390-.L_40b660
          .uleb128 .L_40c3c2-.L_40c390
          .uleb128 .L_40d9a0-.L_40b660
          .zero 1
          .uleb128 .L_40c3f4-.L_40b660
          .uleb128 .L_40c3f9-.L_40c3f4
          .zero 2
          .uleb128 .L_40c40d-.L_40b660
          .uleb128 .L_40c412-.L_40c40d
          .uleb128 .L_40d749-.L_40b660
          .zero 1
          .uleb128 .L_40c45b-.L_40b660
          .uleb128 .L_40c4a3-.L_40c45b
          .uleb128 .L_40d9a0-.L_40b660
          .zero 1
          .uleb128 .L_40c4d0-.L_40b660
          .uleb128 .L_40c4d5-.L_40c4d0
          .uleb128 .L_40de2a-.L_40b660
          .zero 1
          .uleb128 .L_40c4f6-.L_40b660
          .uleb128 .L_40c4fb-.L_40c4f6
          .uleb128 .L_40de1a-.L_40b660
          .zero 1
          .uleb128 .L_40c533-.L_40b660
          .uleb128 .L_40c536-.L_40c533
          .uleb128 .L_40db0f-.L_40b660
          .zero 1
          .uleb128 .L_40c545-.L_40b660
          .uleb128 .L_40c57e-.L_40c545
          .uleb128 .L_40de2a-.L_40b660
          .zero 1
          .uleb128 .L_40c5b8-.L_40b660
          .uleb128 .L_40c5bd-.L_40c5b8
          .uleb128 .L_40db8e-.L_40b660
          .zero 1
          .uleb128 .L_40c5d1-.L_40b660
          .uleb128 .L_40c5d6-.L_40c5d1
          .uleb128 .L_40db89-.L_40b660
          .zero 1
          .uleb128 .L_40c650-.L_40b660
          .uleb128 .L_40c655-.L_40c650
          .uleb128 .L_40db2c-.L_40b660
          .zero 1
          .uleb128 .L_40c6c1-.L_40b660
          .uleb128 .L_40c6c6-.L_40c6c1
          .uleb128 .L_40dbcf-.L_40b660
          .zero 1
          .uleb128 .L_40c73b-.L_40b660
          .uleb128 .L_40c740-.L_40c73b
          .uleb128 .L_40c81e-.L_40b660
          .zero 1
          .uleb128 .L_40c754-.L_40b660
          .uleb128 .L_40c759-.L_40c754
          .uleb128 .L_40db9b-.L_40b660
          .zero 1
          .uleb128 .L_40c7bf-.L_40b660
          .uleb128 .L_40c7c4-.L_40c7bf
          .uleb128 .L_40dbb4-.L_40b660
          .zero 1
          .uleb128 .L_40c803-.L_40b660
          .uleb128 .L_40c808-.L_40c803
          .uleb128 .L_40d873-.L_40b660
          .zero 1
          .uleb128 .L_40c819-.L_40b660
          .uleb128 .L_40c81e-.L_40c819
          .uleb128 .L_40c81e-.L_40b660
          .zero 1
          .uleb128 .L_40c893-.L_40b660
          .uleb128 .L_40c9b5-.L_40c893
          .uleb128 .L_40d9a0-.L_40b660
          .zero 1
          .uleb128 .L_40cac3-.L_40b660
          .uleb128 .L_40cae7-.L_40cac3
          .uleb128 .L_40de2a-.L_40b660
          .zero 1
          .uleb128 .L_40cc98-.L_40b660
          .uleb128 .L_40cc9d-.L_40cc98
          .uleb128 .L_40d72a-.L_40b660
          .zero 1
          .uleb128 .L_40ccca-.L_40b660
          .uleb128 .L_40cccf-.L_40ccca
          .uleb128 .L_40d9ad-.L_40b660
          .byte 0x1
          .uleb128 .L_40cdf3-.L_40b660
          .uleb128 .L_40cee8-.L_40cdf3
          .uleb128 .L_40d9a0-.L_40b660
          .zero 1
          .uleb128 .L_40cf22-.L_40b660
          .uleb128 .L_40cf27-.L_40cf22
          .uleb128 .L_40d93f-.L_40b660
          .zero 1
          .uleb128 .L_40cf3b-.L_40b660
          .uleb128 .L_40cf40-.L_40cf3b
          .uleb128 .L_40da9c-.L_40b660
          .zero 1
          .uleb128 .L_40cfba-.L_40b660
          .uleb128 .L_40cfbf-.L_40cfba
          .uleb128 .L_40d98c-.L_40b660
          .zero 1
          .uleb128 .L_40d02b-.L_40b660
          .uleb128 .L_40d030-.L_40d02b
          .uleb128 .L_40d8a0-.L_40b660
          .zero 1
          .uleb128 .L_40d092-.L_40b660
          .uleb128 .L_40d097-.L_40d092
          .uleb128 .L_40dd05-.L_40b660
          .zero 1
          .uleb128 .L_40d0a8-.L_40b660
          .uleb128 .L_40d0ad-.L_40d0a8
          .uleb128 .L_40d0ad-.L_40b660
          .zero 1
          .uleb128 .L_40d0d3-.L_40b660
          .uleb128 .L_40d0d8-.L_40d0d3
          .uleb128 .L_40d749-.L_40b660
          .zero 1
          .uleb128 .L_40d1b5-.L_40b660
          .uleb128 .L_40d1ba-.L_40d1b5
          .uleb128 .L_40dce8-.L_40b660
          .zero 1
          .uleb128 .L_40d528-.L_40b660
          .uleb128 .L_40d52d-.L_40d528
          .uleb128 .L_40d72a-.L_40b660
          .zero 1
          .uleb128 .L_40d7c8-.L_40b660
          .uleb128 .L_40d7cd-.L_40d7c8
          .uleb128 .L_40d7bc-.L_40b660
          .zero 1
          .uleb128 .L_40d913-.L_40b660
          .uleb128 .L_40d918-.L_40d913
          .uleb128 .L_40d9a8-.L_40b660
          .zero 1
          .uleb128 .L_40d94f-.L_40b660
          .uleb128 .L_40d954-.L_40d94f
          .uleb128 .L_40d987-.L_40b660
          .zero 1
          .uleb128 .L_40d99b-.L_40b660
          .uleb128 .L_40d9a0-.L_40d99b
          .uleb128 .L_40d98c-.L_40b660
          .zero 1
          .uleb128 .L_40d9bd-.L_40b660
          .uleb128 .L_40d9c2-.L_40d9bd
          .uleb128 .L_40da8f-.L_40b660
          .zero 1
          .uleb128 .L_40d9dd-.L_40b660
          .uleb128 .L_40d9e2-.L_40d9dd
          .uleb128 .L_40da8a-.L_40b660
          .zero 1
          .uleb128 .L_40d9f7-.L_40b660
          .uleb128 .L_40d9fc-.L_40d9f7
          .uleb128 .L_40da85-.L_40b660
          .zero 1
          .uleb128 .L_40da02-.L_40b660
          .uleb128 .L_40da07-.L_40da02
          .uleb128 .L_40da49-.L_40b660
          .zero 1
          .uleb128 .L_40da44-.L_40b660
          .uleb128 .L_40da49-.L_40da44
          .uleb128 .L_40d72a-.L_40b660
          .zero 1
          .uleb128 .L_40dae0-.L_40b660
          .uleb128 .L_40dae5-.L_40dae0
          .uleb128 .L_40db05-.L_40b660
          .zero 1
          .uleb128 .L_40daf8-.L_40b660
          .uleb128 .L_40dafd-.L_40daf8
          .uleb128 .L_40db0a-.L_40b660
          .zero 1
          .uleb128 .L_40db27-.L_40b660
          .uleb128 .L_40db2c-.L_40db27
          .uleb128 .L_40db0f-.L_40b660
          .zero 1
          .uleb128 .L_40dcd7-.L_40b660
          .uleb128 .L_40dcdc-.L_40dcd7
          .uleb128 .L_40dccb-.L_40b660
          .zero 1
          .uleb128 .L_40dce3-.L_40b660
          .uleb128 .L_40dce8-.L_40dce3
          .uleb128 .L_40db2c-.L_40b660
          .zero 1
          .uleb128 .L_40dd30-.L_40b660
          .uleb128 .L_40dd35-.L_40dd30
          .uleb128 .L_40dddd-.L_40b660
          .zero 1
          .uleb128 .L_40dd4a-.L_40b660
          .uleb128 .L_40dd4f-.L_40dd4a
          .uleb128 .L_40ddd8-.L_40b660
          .zero 1
          .uleb128 .L_40dd55-.L_40b660
          .uleb128 .L_40dd5a-.L_40dd55
          .uleb128 .L_40dd9c-.L_40b660
          .zero 1
          .uleb128 .L_40dd97-.L_40b660
          .uleb128 .L_40dd9c-.L_40dd97
          .uleb128 .L_40d749-.L_40b660
          .zero 1
.L_4110b0:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4110b8:
          .byte 0xff
          .byte 0x9b
          .uleb128 .L_411280-.L_4110bc
.L_4110bc:
          .byte 0x1
          .uleb128 .L_411273-.L_4110bf
.L_4110bf:
          .uleb128 .L_402573-.L_402520
          .uleb128 .L_402578-.L_402573
          .uleb128 .L_404e2e-.L_402520
          .byte 0x3
          .uleb128 .L_402593-.L_402520
          .uleb128 .L_402598-.L_402593
          .uleb128 .L_404eb4-.L_402520
          .byte 0x3
          .uleb128 .L_40265a-.L_402520
          .uleb128 .L_40267b-.L_40265a
          .uleb128 .L_405099-.L_402520
          .byte 0x3
          .uleb128 .L_4026cc-.L_402520
          .uleb128 .L_4026d1-.L_4026cc
          .uleb128 .L_404ebf-.L_402520
          .byte 0x3
          .uleb128 .L_402711-.L_402520
          .uleb128 .L_402716-.L_402711
          .uleb128 .L_404ee6-.L_402520
          .byte 0x3
          .uleb128 .L_40272a-.L_402520
          .uleb128 .L_40272f-.L_40272a
          .uleb128 .L_404eeb-.L_402520
          .byte 0x3
          .uleb128 .L_4027a9-.L_402520
          .uleb128 .L_4027ae-.L_4027a9
          .uleb128 .L_4050a4-.L_402520
          .byte 0x3
          .uleb128 .L_402822-.L_402520
          .uleb128 .L_402827-.L_402822
          .uleb128 .L_40546d-.L_402520
          .byte 0x3
          .uleb128 .L_4028a0-.L_402520
          .uleb128 .L_4028a5-.L_4028a0
          .uleb128 .L_4044ac-.L_402520
          .byte 0x3
          .uleb128 .L_4028b9-.L_402520
          .uleb128 .L_4028be-.L_4028b9
          .uleb128 .L_4053ef-.L_402520
          .byte 0x3
          .uleb128 .L_402924-.L_402520
          .uleb128 .L_402929-.L_402924
          .uleb128 .L_40539a-.L_402520
          .byte 0x3
          .uleb128 .L_402968-.L_402520
          .uleb128 .L_40296d-.L_402968
          .uleb128 .L_40537a-.L_402520
          .byte 0x3
          .uleb128 .L_40297e-.L_402520
          .uleb128 .L_402983-.L_40297e
          .uleb128 .L_4044ac-.L_402520
          .byte 0x3
          .uleb128 .L_402a0f-.L_402520
          .uleb128 .L_402a14-.L_402a0f
          .uleb128 .L_4050dc-.L_402520
          .byte 0x3
          .uleb128 .L_402ab0-.L_402520
          .uleb128 .L_402ad1-.L_402ab0
          .uleb128 .L_4050e7-.L_402520
          .byte 0x3
          .uleb128 .L_402b22-.L_402520
          .uleb128 .L_402b27-.L_402b22
          .uleb128 .L_40536f-.L_402520
          .byte 0x3
          .uleb128 .L_402b67-.L_402520
          .uleb128 .L_402b6c-.L_402b67
          .uleb128 .L_404ffc-.L_402520
          .byte 0x3
          .uleb128 .L_402b80-.L_402520
          .uleb128 .L_402b85-.L_402b80
          .uleb128 .L_405018-.L_402520
          .byte 0x3
          .uleb128 .L_402bff-.L_402520
          .uleb128 .L_402c04-.L_402bff
          .uleb128 .L_40545c-.L_402520
          .byte 0x3
          .uleb128 .L_402c6f-.L_402520
          .uleb128 .L_402c74-.L_402c6f
          .uleb128 .L_4053f6-.L_402520
          .byte 0x3
          .uleb128 .L_402ce8-.L_402520
          .uleb128 .L_402ced-.L_402ce8
          .uleb128 .L_404563-.L_402520
          .byte 0x3
          .uleb128 .L_402d01-.L_402520
          .uleb128 .L_402d06-.L_402d01
          .uleb128 .L_4053f1-.L_402520
          .byte 0x3
          .uleb128 .L_402d6c-.L_402520
          .uleb128 .L_402d71-.L_402d6c
          .uleb128 .L_404dd9-.L_402520
          .byte 0x3
          .uleb128 .L_402db0-.L_402520
          .uleb128 .L_402db5-.L_402db0
          .uleb128 .L_404db9-.L_402520
          .byte 0x3
          .uleb128 .L_402dc6-.L_402520
          .uleb128 .L_402dcb-.L_402dc6
          .uleb128 .L_404563-.L_402520
          .byte 0x3
          .uleb128 .L_402f5a-.L_402520
          .uleb128 .L_402f5f-.L_402f5a
          .uleb128 .L_405525-.L_402520
          .byte 0x5
          .uleb128 .L_402f83-.L_402520
          .uleb128 .L_402f88-.L_402f83
          .uleb128 .L_4054f3-.L_402520
          .byte 0x5
          .uleb128 .L_40306e-.L_402520
          .uleb128 .L_403073-.L_40306e
          .uleb128 .L_405139-.L_402520
          .byte 0x5
          .uleb128 .L_403088-.L_402520
          .uleb128 .L_40308d-.L_403088
          .uleb128 .L_405131-.L_402520
          .byte 0x5
          .uleb128 .L_40310a-.L_402520
          .uleb128 .L_40310f-.L_40310a
          .uleb128 .L_4050fd-.L_402520
          .byte 0x5
          .uleb128 .L_4032a6-.L_402520
          .uleb128 .L_4032ab-.L_4032a6
          .uleb128 .L_4050f2-.L_402520
          .byte 0x5
          .uleb128 .L_4032de-.L_402520
          .uleb128 .L_4032e3-.L_4032de
          .uleb128 .L_40506b-.L_402520
          .byte 0x5
          .uleb128 .L_4032f7-.L_402520
          .uleb128 .L_4032fc-.L_4032f7
          .uleb128 .L_405060-.L_402520
          .byte 0x5
          .uleb128 .L_4033bb-.L_402520
          .uleb128 .L_4033e4-.L_4033bb
          .uleb128 .L_405239-.L_402520
          .byte 0x5
          .uleb128 .L_40343b-.L_402520
          .uleb128 .L_403440-.L_40343b
          .uleb128 .L_40522e-.L_402520
          .byte 0x5
          .uleb128 .L_403480-.L_402520
          .uleb128 .L_403485-.L_403480
          .uleb128 .L_40520b-.L_402520
          .byte 0x5
          .uleb128 .L_403499-.L_402520
          .uleb128 .L_40349e-.L_403499
          .uleb128 .L_4051e9-.L_402520
          .byte 0x5
          .uleb128 .L_403519-.L_402520
          .uleb128 .L_40351e-.L_403519
          .uleb128 .L_4051f4-.L_402520
          .byte 0x5
          .uleb128 .L_40358a-.L_402520
          .uleb128 .L_40358f-.L_40358a
          .uleb128 .L_404c3e-.L_402520
          .byte 0x5
          .uleb128 .L_403604-.L_402520
          .uleb128 .L_403609-.L_403604
          .uleb128 .L_4045bf-.L_402520
          .byte 0x5
          .uleb128 .L_40361d-.L_402520
          .uleb128 .L_403622-.L_40361d
          .uleb128 .L_404d4e-.L_402520
          .byte 0x5
          .uleb128 .L_403689-.L_402520
          .uleb128 .L_40368e-.L_403689
          .uleb128 .L_404bfd-.L_402520
          .byte 0x5
          .uleb128 .L_4036cd-.L_402520
          .uleb128 .L_4036d2-.L_4036cd
          .uleb128 .L_404bea-.L_402520
          .byte 0x5
          .uleb128 .L_4036e3-.L_402520
          .uleb128 .L_4036e8-.L_4036e3
          .uleb128 .L_4045bf-.L_402520
          .byte 0x5
          .uleb128 .L_40384f-.L_402520
          .uleb128 .L_403854-.L_40384f
          .uleb128 .L_4050fd-.L_402520
          .byte 0x5
          .uleb128 .L_40393b-.L_402520
          .uleb128 .L_403940-.L_40393b
          .uleb128 .L_404fbc-.L_402520
          .byte 0x5
          .uleb128 .L_4039d9-.L_402520
          .uleb128 .L_403a02-.L_4039d9
          .uleb128 .L_404fb1-.L_402520
          .byte 0x5
          .uleb128 .L_403a59-.L_402520
          .uleb128 .L_403a5e-.L_403a59
          .uleb128 .L_404fef-.L_402520
          .byte 0x5
          .uleb128 .L_403a96-.L_402520
          .uleb128 .L_403a9b-.L_403a96
          .uleb128 .L_404fcf-.L_402520
          .byte 0x5
          .uleb128 .L_403aaf-.L_402520
          .uleb128 .L_403ab4-.L_403aaf
          .uleb128 .L_404fc7-.L_402520
          .byte 0x5
          .uleb128 .L_403b2f-.L_402520
          .uleb128 .L_403b34-.L_403b2f
          .uleb128 .L_404ced-.L_402520
          .byte 0x5
          .uleb128 .L_403ba1-.L_402520
          .uleb128 .L_403ba6-.L_403ba1
          .uleb128 .L_404d80-.L_402520
          .byte 0x5
          .uleb128 .L_403c0b-.L_402520
          .uleb128 .L_403c10-.L_403c0b
          .uleb128 .L_40467b-.L_402520
          .byte 0x5
          .uleb128 .L_403c24-.L_402520
          .uleb128 .L_403c29-.L_403c24
          .uleb128 .L_404cc8-.L_402520
          .byte 0x5
          .uleb128 .L_403c90-.L_402520
          .uleb128 .L_403c95-.L_403c90
          .uleb128 .L_404d59-.L_402520
          .byte 0x5
          .uleb128 .L_403cd4-.L_402520
          .uleb128 .L_403cd9-.L_403cd4
          .uleb128 .L_405048-.L_402520
          .byte 0x5
          .uleb128 .L_403cea-.L_402520
          .uleb128 .L_403cef-.L_403cea
          .uleb128 .L_40467b-.L_402520
          .byte 0x5
          .uleb128 .L_403f40-.L_402520
          .uleb128 .L_403f45-.L_403f40
          .uleb128 .L_4051c3-.L_402520
          .byte 0x5
          .uleb128 .L_403f62-.L_402520
          .uleb128 .L_403f67-.L_403f62
          .uleb128 .L_40533d-.L_402520
          .byte 0x5
          .uleb128 .L_404046-.L_402520
          .uleb128 .L_40404b-.L_404046
          .uleb128 .L_4052d4-.L_402520
          .byte 0x5
          .uleb128 .L_40405b-.L_402520
          .uleb128 .L_404060-.L_40405b
          .uleb128 .L_4052c9-.L_402520
          .byte 0x5
          .uleb128 .L_4040c5-.L_402520
          .uleb128 .L_4040ca-.L_4040c5
          .uleb128 .L_404ba4-.L_402520
          .byte 0x5
          .uleb128 .L_404299-.L_402520
          .uleb128 .L_40429e-.L_404299
          .uleb128 .L_4050fd-.L_402520
          .byte 0x5
          .uleb128 .L_404758-.L_402520
          .uleb128 .L_404904-.L_404758
          .uleb128 .L_404ba4-.L_402520
          .byte 0x5
          .uleb128 .L_404be5-.L_402520
          .uleb128 .L_404bea-.L_404be5
          .zero 2
          .uleb128 .L_404eda-.L_402520
          .uleb128 .L_404edf-.L_404eda
          .uleb128 .L_404f1b-.L_402520
          .byte 0x3
          .uleb128 .L_404f27-.L_402520
          .uleb128 .L_404f2c-.L_404f27
          .uleb128 .L_404ced-.L_402520
          .byte 0x5
          .uleb128 .L_404fe2-.L_402520
          .uleb128 .L_404fe7-.L_404fe2
          .uleb128 .L_404ffa-.L_402520
          .byte 0x5
          .uleb128 .L_40500c-.L_402520
          .uleb128 .L_405011-.L_40500c
          .uleb128 .L_40505b-.L_402520
          .byte 0x3
          .uleb128 .L_4050d7-.L_402520
          .uleb128 .L_4050dc-.L_4050d7
          .uleb128 .L_4050a4-.L_402520
          .byte 0x3
          .uleb128 .L_405206-.L_402520
          .uleb128 .L_40520b-.L_405206
          .uleb128 .L_4051f4-.L_402520
          .byte 0x5
          .uleb128 .L_405221-.L_402520
          .uleb128 .L_405226-.L_405221
          .uleb128 .L_405244-.L_402520
          .byte 0x5
          .uleb128 .L_405468-.L_402520
          .uleb128 .L_40546d-.L_405468
          .uleb128 .L_40545c-.L_402520
          .byte 0x3
.L_411273:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x7d
          .byte 0x1
          .byte 0x7d
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_41127c:
          .long .L_612220-.L_41127c
.L_411280:
#===================================
# end section .gcc_except_table
#===================================

#===================================
.section .init_array ,"wa"
.align 8
#===================================

.L_611b68:
          .quad .L_402440
          .quad .L_402330
#===================================
# end section .init_array
#===================================

#===================================
.section .fini_array ,"wa"
.align 8
#===================================

.L_611b78:
#===================================
# end section .fini_array
#===================================

#===================================
.section .data.rel.ro ,"wa",@progbits
.align 16
#===================================

#-----------------------------------
.align 16
.weak _ZTVSt9basic_iosIcSt11char_traitsIcEE_copy
.type _ZTVSt9basic_iosIcSt11char_traitsIcEE_copy, @object
#-----------------------------------
_ZTVSt9basic_iosIcSt11char_traitsIcEE_copy:
          .zero 32
#-----------------------------------
.align 16
.weak _ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE_copy
.type _ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE_copy, @object
#-----------------------------------
_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE_copy:
          .zero 80
#-----------------------------------
.align 16
.weak _ZTISt12domain_error_copy
.type _ZTISt12domain_error_copy, @object
#-----------------------------------
_ZTISt12domain_error_copy:
          .zero 24
#-----------------------------------
.align 8
.weak _ZTVSt15basic_streambufIcSt11char_traitsIcEE_copy
.type _ZTVSt15basic_streambufIcSt11char_traitsIcEE_copy, @object
#-----------------------------------
_ZTVSt15basic_streambufIcSt11char_traitsIcEE_copy:
          .zero 152
#-----------------------------------
.align 16
.weak _ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE_copy
.type _ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE_copy, @object
#-----------------------------------
_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE_copy:
          .zero 120
#-----------------------------------
.align 8
.weak _ZTISt12out_of_range_copy
.type _ZTISt12out_of_range_copy, @object
#-----------------------------------
_ZTISt12out_of_range_copy:
          .zero 24
#-----------------------------------
.align 16
.weak _ZTISt16invalid_argument_copy
.type _ZTISt16invalid_argument_copy, @object
#-----------------------------------
_ZTISt16invalid_argument_copy:
          .zero 24
#-----------------------------------
.align 8
.weak _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE_copy
.type _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE_copy, @object
#-----------------------------------
_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE_copy:
          .zero 128
_DYNAMIC:
#===================================
# end section .data.rel.ro
#===================================

#===================================
.data
.align 16
#===================================

          .zero 8
.L_612218:
          .zero 8
.L_612220:
          .byte 0x30
          .byte 0x1d
          .byte 0x61
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_612228:
          .quad __gxx_personality_v0
#===================================
# end section .data
#===================================

#===================================
.bss
.align 16
#===================================

.L_612230:
          .zero 1
.L_612231:
          .zero 7
#===================================
# end section .bss
#===================================
