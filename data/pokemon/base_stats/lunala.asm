	db DEX_LUNALA; pokedex id ; TODO_BACKPORT

	db 137, 113,  89,  97,     137
	;  hp   atk  def  speed  special

	db PSYCHIC_TYPE, GHOST ; type
	db 45 ; catch rate
	db 306 ; base exp

	INCBIN "gfx/pokemon/front/lunala.pic", 0, 1 ; sprite dimensions
	dw LunalaPicFront, LunalaPicBack

	db GROWTH, HYPNOSIS, TELEPORT, CONFUSION ; level 1 learnset
	db GROWTH_SLOW ; growth rate

    ; tm/hm learnset
    tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  ICE_BEAM,     BLIZZARD,     \
        HYPER_BEAM,    PAY_DAY,      SUBMISSION,   THUNDERBOLT,  THUNDER,      \
        PSYCHIC_M,    TELEPORT,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
        BIDE,         METRONOME,     FIRE_BLAST,   SWIFT,        DREAM_EATER,  \
    	SKY_ATTACK,   REST,         THUNDER_WAVE,  PSYWAVE,      TRI_ATTACK,   \
        SUBSTITUTE,   FLY                                                      \
    ; end

	db 0 ; padding
