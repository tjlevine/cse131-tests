    ! ====================================
    ! =========   DATA SECTION   =========
    ! ====================================
    .section ".data"
    .align 4

    ! ====================================
    ! ========   RODATA SECTION   ========
    ! ====================================
    .section ".rodata"
    .align 4

    ! useful constants
.endl:
    .asciz "\n"
.intFmt:
    .asciz "%d"
.strFmt:
    .asciz "%s"
.boolT:
    .asciz "true"
.boolF:
    .asciz "false"

    ! string literal "oh hai" for cout
.strLit0:
    .asciz "oh hai"

    ! ===================================
    ! =========   BSS SECTION   =========
    ! ===================================
    .section ".bss"
    .align 4

    ! ====================================
    ! =========   TEXT SECTION   =========
    ! ====================================
    .section ".text"
    .align 4

    ! function main
    .global main
main:
    set SAVE.main, %g1
    save %sp, %g1, %sp

    ! cout << "oh hai"
    set .strFmt, %o0
    set .strLit0, %o1
    call printf
    nop

    ! cout << endl
    set .strFmt, %o0
    set .endl, %o1
    call printf
    nop

    ret
    restore

    SAVE.main = -(92 + 0) & -8

