.macro bs_goto, addr
    .byte 0x28
    .word addr
.endmacro

.macro bs_setmoveeffect, effect
    .byte 0x2E
    .word effect_to_apply
    .byte effect
.endmacro

.macro bs_playanimation, bank, animation, var_address
    .byte 0x45
    .byte bank
    .byte animation
    .word var_address
.endmacro

.macro bs_printstring, stringid
    .byte 0x10
    .halfword stringid
.endmacro

.macro bs_waitmessage, delay_
    .byte 0x12
    .halfword delay_
.endmacro

.macro bs_return
	.byte 0x3c
.endmacro

.macro bs_call, address
	.byte 0x41
	.word address
.endmacro

.macro bs_orword, pointer, value
	.byte 0x35
	.word pointer
	.word value
.endmacro

.macro bs_healthbarupdate, bank
	.byte 0x0b
	.byte bank
.endmacro

.macro bs_datahpupdate, bank
	.byte 0x0c
	.byte bank
.endmacro

.macro bs_updatestatusicon, battler
	.byte 0x98
	.byte battler
.endmacro

.macro bs_printfromtable, ptr
	.byte 0x13
	.word ptr
.endmacro

.macro bs_seteffectprimary
	.byte 0x16
.endmacro

.macro bs_statbuffchange, param0, param1
	.byte 0x89
	.byte param0
	.word param1
.endmacro

.macro bs_setbyte, ptr, param1
	.byte 0x2e
	.word ptr
	.byte param1
.endmacro

.macro bs_setword, addr, value
	.byte 0xFA
	.word addr
	.word value
.endmacro

.macro bs_msgbox, stringid
	bs_printstring stringid
	bs_waitmessage 0x40
.endmacro

.macro bs_playanimation_useitem, bank
	bs_playanimation bank, 0x7, 0x0
.endmacro

.macro bs_forcerandomswitch, param0
	.byte 0x8F
	.word param0
.endmacro

.macro bs_attackcanceler
	.byte 0x00
.endmacro

.macro bs_accuracycheck, p0, p1
	.byte 0x01
	.word p0
	.word p1
.endmacro

.macro bs_critcalc
	.byte 0x04
.endmacro

.macro bs_damagecalc
	.byte 0x05
.endmacro

.macro bs_typecalc
	.byte 0x06
.endmacro

.macro bs_adjustnormaldamage
	.byte 0x07
.endmacro

.macro bs_attackanimation
	.byte 0x09
.endmacro

.macro bs_waitanimation
	.byte 0x0A
.endmacro

.macro bs_effectivenesssound
	.byte 0x0E
.endmacro

.macro bs_hitanimation, p0
	.byte 0x5C
	.byte p0
.endmacro

.macro bs_waitstate
	.byte 0x3A
.endmacro

.macro bs_critmessage
	.byte 0x0D
.endmacro

.macro bs_resultmessage
	.byte 0x0F
.endmacro

.macro bs_jumpifhasnohp, p0, p1
	.byte 0xE3
	.byte p0
	.word p1
.endmacro

.macro bs_jumpifability, p0, p1, p2
	.byte 0x1E
	.byte p0
	.byte p1
	.word p2
.endmacro

.macro bs_jumpifstatus3condition, p0, p1, p2, p3
	.byte 0x21
	.byte p0
	.word p1
	.byte p2
	.word p3
.endmacro

.macro bs_jumpiftype, battler, type, ptr
	.byte 0x22
	.byte battler
	.byte type
	.word ptr
.endmacro

.macro bs_end
	.byte 0x3D
.endmacro

.macro bs_jumpifmovehadnoeffect, jumpptr
	bs_jumpifbyte CMP_COMMON_BITS, b_attack_effectivity, MOVE_RESULT_NO_EFFECT, jumpptr
.endmacro

.macro bs_jumpifbyte, ifflag, param1, param2, param3
	.byte 0x29
	.byte ifflag
	.word param1
	.byte param2
	.word param3
.endmacro