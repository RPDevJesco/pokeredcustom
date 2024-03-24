	db DEX_LATIAS ; pokedex id ; TODO_BACKPORT

	db 80,  80,  90,   110,    130
	;  hp   atk  def  speed  special

	db DRAGON, PSYCHIC_TYPE ; type
	db 5 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/latias.pic", 0, 1 ; sprite dimensions
	dw LatiasPicFront, LatiasPicBack

	db PSYWAVE, SOFTBOILED, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

    ; tm/hm learnset
    tmhm BODY_SLAM,   DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
        HYPER_BEAM,   PAY_DAY,      RAGE,         SOLARBEAM,    DRAGON_RAGE,  \
        THUNDERBOLT,  THUNDER,      EARTHQUAKE,   PSYCHIC_M,    MIMIC,        \
        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    SELFDESTRUCT, \
        SWIFT,        DREAM_EATER,  SKY_ATTACK,   REST,         THUNDER_WAVE, \
        PSYWAVE,      SUBSTITUTE,   CUT,          FLY,          SURF,         \
        FLASH
    ; end

	db 0 ; padding