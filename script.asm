circle_throw_move_script:
    attackcanceler 
    accuracycheck 0x081D695E, 0x03020000 
    critcalc 
    damagecalc 
    typecalc 
    adjustnormaldamage 
    attackanimation 
    waitanimation 
    effectivenesssound 
    hitanimation 0x0 
    waitstate 
    healthbarupdate 0x0 
    datahpupdate 0x0 
    critmessage 
    waitmessage 0x40 
    resultmessage 
    waitmessage 0x40 
    jumpifhasnohp 0x0, 0x081D6947 
    // handle type immunities
    jumpifmovehadnoeffect 0x081D6947
    // ability 0x15 is Suction Cups
    jumpifability 0x0, 0x15, 0x081D9408 
    // status3 0x400 is rooted
    jumpifstatus3condition 0x0, 0x0400, 0x0, 0x081D8F27
    forcerandomswitch 0x081D7DF2 
    goto 0x081D6947 