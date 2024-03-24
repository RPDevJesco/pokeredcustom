db DEX_DELPHOX ; pokedex id ; TODO_BACKPORT

db 75,  69,  72,   104,    114
;  hp   atk  def  speed  special

db FIRE, PSYCHIC_TYPE ; type
db 5 ; catch rate
db 64 ; base exp

INCBIN "gfx/pokemon/front/delphox.pic", 0, 1 ; sprite dimensions
dw DelphoxPicFront, DelphoxPicBack

db FLAMETHROWER, PSYWAVE, LICK, SCRATCH ; level 1 learnset
db GROWTH_MEDIUM_SLOW ; growth rate

    ; tm/hm learnset
    tmhm MEGA_PUNCH,   TOXIC,        BODY_SLAM,    HYPER_BEAM,   PAY_DAY,      \
         SUBMISSION,   RAGE,         SOLARBEAM,    THUNDERBOLT,  PSYCHIC_M,    \
         MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
         FIRE_BLAST,   SWIFT,        DREAM_EATER,  REST,         PSYWAVE,      \
         SUBSTITUTE,   CUT                                                     \
    ; end

db 0