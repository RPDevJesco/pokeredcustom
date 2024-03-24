db DEX_BLAZIKEN ; pokedex id ; TODO_BACKPORT

db 80,  120, 70,   80,    110
;  hp   atk  def  speed  special

db FIRE, FIGHTING ; type
db 5 ; catch rate
db 64 ; base exp

INCBIN "gfx/pokemon/front/blaziken.pic", 0, 1 ; sprite dimensions
dw BlazikenPicFront, BlazikenPicBack

db ROCK_SLIDE, FIRE_PUNCH, SCRATCH, EMBER ; level 1 learnset
db GROWTH_MEDIUM_SLOW ; growth rate

    ; tm/hm learnset
    tmhm MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    TOXIC,        BODY_SLAM,    \
         DOUBLE_EDGE,  HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      \
         SEISMIC_TOSS, RAGE,         THUNDERBOLT,  EARTHQUAKE,   DIG,          \
         MIMIC,        DOUBLE_TEAM,  BIDE,         METRONOME,    FIRE_BLAST,   \
         SKY_ATTACK,   REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,          \
         STRENGTH                                                              \
    ; end

db 0 ; padding