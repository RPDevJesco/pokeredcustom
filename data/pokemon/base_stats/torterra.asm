    db DEX_TORTERRA ; pokedex id ; TODO_BACKPORT

    db 95,  109, 105,  56,    85
    ;  hp   atk  def  speed  special

    db GRASS, GROUND ; type
    db 5 ; catch rate
    db 64 ; base exp

    INCBIN "gfx/pokemon/front/torterra.pic", 0, 1 ; sprite dimensions
    dw TorterraPicFront, TorterraPicBack

    db THRASH, TACKLE, WITHDRAW, ABSORB ; level 1 learnset
    db GROWTH_MEDIUM_SLOW ; growth rate

    ; tm/hm learnset
    tmhm TOXIC,        BODY_SLAM,    SWORDS_DANCE, TAKE_DOWN,    DOUBLE_EDGE,   \
         HYPER_BEAM,   PAY_DAY,      SUBMISSION,   MEGA_DRAIN,   SOLARBEAM,     \
         DRAGON_RAGE,  EARTHQUAKE,   DIG,          MIMIC,        DOUBLE_TEAM,   \
         REFLECT,      BIDE,         METRONOME,    SWIFT,        REST,          \
         ROCK_SLIDE,   SUBSTITUTE,   CUT,          STRENGTH                     \
    ; end

    db 0 ; padding