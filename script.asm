circle_throw_move_script:
    bs_attackcanceler 
    bs_accuracycheck 0x081D695E, 0x03020000 
    bs_critcalc 
    bs_damagecalc 
    bs_typecalc 
    bs_adjustnormaldamage 
    bs_attackanimation 
    bs_waitanimation 
    bs_effectivenesssound 
    bs_hitanimation 0x0 
    bs_waitstate 
    bs_healthbarupdate 0x0 
    bs_datahpupdate 0x0 
    bs_critmessage 
    bs_waitmessage 0x40 
    bs_resultmessage 
    bs_waitmessage 0x40 
    bs_jumpifhasnohp 0x0, 0x081D6947 
    // handle type immunities
    bs_jumpifmovehadnoeffect 0x081D6947
    // ability 0x15 is Suction Cups
    bs_jumpifability 0x0, 0x15, 0x081D9408 
    // status3 0x400 is rooted
    bs_jumpifstatus3condition 0x0, 0x0400, 0x0, 0x081D8F27
    bs_forcerandomswitch 0x081D7DF2 
    bs_goto 0x081D6947 