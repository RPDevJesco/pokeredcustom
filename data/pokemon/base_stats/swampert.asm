    db DEX_SWAMPERT ; pokedex id ; TODO_BACKPORT

    db 100, 110,  90,   60,    90
    ;  hp   atk  def  speed  special

    db WATER, GROUND ; type
    db 45 ; catch rate
    db 241 ; base exp

    INCBIN "gfx/pokemon/front/swampert.pic", 0, 1 ; sprite dimensions
    dw SwampertPicFront, SwampertPicBack

    db MEDITATE, SAND_ATTACK, TACKLE, WATER_GUN ; level 1 learnset
    db GROWTH_MEDIUM_SLOW ; growth rate

    ; tm/hm learnset
    tmhm MEGA_PUNCH,  MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
        DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
        HYPER_BEAM,   PAY_DAY,      SUBMISSION,   EARTHQUAKE,   DIG,          \
        MIMIC,        METRONOME,    REST,         ROCK_SLIDE,   SUBSTITUTE,   \        
        SURF
    ; end

    db 0 ; padding