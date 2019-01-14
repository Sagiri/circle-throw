.definelabel free, 0x08800000

.definelabel move_scripts, 0x08903B70           // mrds
EFFECT_CIRCLE_THROW equ 231

// -----------------------------------------------------------------------------

.definelabel b_attack_effectivity, 0x02023DCC

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

.org move_scripts + (EFFECT_CIRCLE_THROW) *4
.word circle_throw_move_script

.close