    db DEX_KARTANA; pokedex id ; TODO_BACKPORT

    db 59,  181, 131,  109,    59
    ;  hp   atk  def  speed  special

    db GRASS, STEEL ; type
    db 345 ; catch rate
    db 257 ; base exp

    INCBIN "gfx/pokemon/front/kartana.pic", 0, 1 ; sprite dimensions
    dw KartanaPicFront, KartanaPicBack

    db DRILL_PECK, HI_JUMP_KICK, VICEGRIP, PIN_MISSILE ; level 1 learnset
    db GROWTH_SLOW ; growth rate

    ; tm/hm learnset
    tmhm SWORDS_DANCE, MEGA_KICK,   TOXIC,        BODY_SLAM,    PAY_DAY,       \
         SUBMISSION,  MEGA_DRAIN,   PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,   \
         BIDE,        METRONOME,    SWIFT,        SKY_ATTACK,   REST,          \
         SUBSTITUTE,  CUT,          FLY                                        \
    ; end

    db 0 ; padding