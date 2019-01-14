.definelabel free, 0x08800000

EFFECT_CIRCLE_THROW equ 231

// -----------------------------------------------------------------------------

.definelabel b_attack_effectivity, 0x02023DCC
.definelabel move_scripts_ptr, 0x08025CF8

CMP_COMMON_BITS equ 0x4
MOVE_RESULT_NO_EFFECT equ 0x29

// -----------------------------------------------------------------------------

.gba

.include "battlescript.s"

.open "rom.gba", "test.gba", 0x08000000

.org free

.area 80
    .include "script.asm"
.endarea

.org readu32("rom.gba", move_scripts_ptr & 0x1FFFFFF) + (EFFECT_CIRCLE_THROW) *4
.word circle_throw_move_script

.close