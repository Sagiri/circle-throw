.macro goto, addr
    .byte 0x28
    .word addr
.endmacro

.macro setmoveeffect, effect
    .byte 0x2E
    .word effect_to_apply
    .byte effect
.endmacro

.macro playanimation, bank, animation, var_address
    .byte 0x45
    .byte bank
    .byte animation
    .word var_address
.endmacro

.macro printstring, stringid
    .byte 0x10
    .halfword stringid
.endmacro

.macro waitmessage, delay_
    .byte 0x12
    .halfword delay_
.endmacro

.macro return
	.byte 0x3c
.endmacro

.macro call, address
	.byte 0x41
	.word address
.endmacro

.macro orword, pointer, value
	.byte 0x35
	.word pointer
	.word value
.endmacro

.macro healthbarupdate, bank
	.byte 0x0b
	.byte bank
.endmacro

.macro datahpupdate, bank
	.byte 0x0c
	.byte bank
.endmacro

.macro updatestatusicon, battler
	.byte 0x98
	.byte battler
.endmacro

.macro printfromtable, ptr
	.byte 0x13
	.word ptr
.endmacro

.macro seteffectprimary
	.byte 0x16
.endmacro

.macro statbuffchange, param0, param1
	.byte 0x89
	.byte param0
	.word param1
.endmacro

.macro setbyte, ptr, param1
	.byte 0x2e
	.word ptr
	.byte param1
.endmacro

.macro setword, addr, value
	.byte 0xFA
	.word addr
	.word value
.endmacro

.macro msgbox, stringid
	printstring stringid
	waitmessage 0x40
.endmacro

.macro playanimation_useitem, bank
	playanimation bank, 0x7, 0x0
.endmacro

.macro forcerandomswitch, param0
	.byte 0x8F
	.word param0
.endmacro

.macro attackcanceler
	.byte 0x00
.endmacro

.macro accuracycheck, p0, p1
	.byte 0x01
	.word p0
	.word p1
.endmacro

.macro critcalc
	.byte 0x04
.endmacro

.macro damagecalc
	.byte 0x05
.endmacro

.macro typecalc
	.byte 0x06
.endmacro

.macro adjustnormaldamage
	.byte 0x07
.endmacro

.macro attackanimation
	.byte 0x09
.endmacro

.macro waitanimation
	.byte 0x0A
.endmacro

.macro effectivenesssound
	.byte 0x0E
.endmacro

.macro hitanimation, p0
	.byte 0x5C
	.byte p0
.endmacro

.macro waitstate
	.byte 0x3A
.endmacro

.macro critmessage
	.byte 0x0D
.endmacro

.macro resultmessage
	.byte 0x0F
.endmacro

.macro jumpifhasnohp, p0, p1
	.byte 0xE3
	.byte p0
	.word p1
.endmacro

.macro jumpifability, p0, p1, p2
	.byte 0x1E
	.byte p0
	.byte p1
	.word p2
.endmacro

.macro jumpifstatus3condition, p0, p1, p2, p3
	.byte 0x21
	.byte p0
	.word p1
	.byte p2
	.word p3
.endmacro

.macro jumpiftype, battler, type, ptr
	.byte 0x22
	.byte battler
	.byte type
	.word ptr
.endmacro

.macro end
	.byte 0x3D
.endmacro

.macro jumpifmovehadnoeffect, jumpptr
	jumpifbyte CMP_COMMON_BITS, b_attack_effectivity, MOVE_RESULT_NO_EFFECT, jumpptr
.endmacro

.macro jumpifbyte, ifflag, param1, param2, param3
	.byte 0x29
	.byte ifflag
	.word param1
	.byte param2
	.word param3
.endmacro