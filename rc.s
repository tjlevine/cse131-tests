    ! ====================================
    ! =========   DATA SECTION   =========
    ! ====================================
    .section ".data"
    .align 4

    ! local static i
static.main$i:
    .word 0

    ! local static k
static.main$k:
    .single 0r2.0

    ! local static m
static.main$m:
    .word 0

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

    ! ===================================
    ! =========   BSS SECTION   =========
    ! ===================================
    .section ".bss"
    .align 4

    ! uninitialized local static j
static.main$j:
    .skip 4

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

    ret
    restore

    SAVE.main = -(92 + 0) & -8

