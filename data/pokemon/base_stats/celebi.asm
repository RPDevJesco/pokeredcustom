    db DEX_CELEBI; pokedex id ; TODO_BACKPORT

    db 100, 100, 100,  100,    100
    ;  hp   atk  def  speed  special

    db PSYCHIC_TYPE, GRASS ; type
    db 45 ; catch rate
    db 270 ; base exp

    INCBIN "gfx/pokemon/front/celebi.pic", 0, 1 ; sprite dimensions
    dw CelebiPicFront, CelebiPicBack

    db LEECH_SEED, CONFUSION, RECOVER, DISABLE ; level 1 learnset
    db GROWTH_MEDIUM_SLOW ; growth rate

    ; tm/hm learnset
    tmhm WHIRLWIND,   TOXIC,        BODY_SLAM,    HYPER_BEAM,   \
         PAY_DAY,     RAGE,         MEGA_DRAIN,   SOLARBEAM,    \
         PSYCHIC_M,   TELEPORT,     MIMIC,        DOUBLE_TEAM,  \ 
         BIDE,        METRONOME,    SELFDESTRUCT, SWIFT,        \
         DREAM_EATER, PSYWAVE,      EXPLOSION,    SUBSTITUTE,   \
         FLASH                                                  \
    ; end

    db 0 ; padding
