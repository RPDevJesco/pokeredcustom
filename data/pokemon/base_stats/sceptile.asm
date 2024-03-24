	db DEX_SCEPTILE; pokedex id ; TODO_BACKPORT

	db 137, 137, 107,  97,     113
	;  hp   atk  def  speed  special

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 239 ; base exp

	INCBIN "gfx/pokemon/front/sceptile.pic", 0, 1 ; sprite dimensions
	dw SceptilePicFront, SceptilePicBack

	db MEGA_PUNCH, ABSORB, LEER, POUND ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
    tmhm MEGA_PUNCH,  SWORDS_DANCE,  MEGA_KICK,    TOXIC,       \ 
		BODY_SLAM,    DOUBLE_EDGE,   HYPER_BEAM,   PAY_DAY,     \
		SUBMISSION,   COUNTER,       SEISMIC_TOSS, MEGA_DRAIN,  \
		SOLARBEAM,    DRAGON_RAGE,   THUNDERBOLT,  EARTHQUAKE,  \
		DIG,          MIMIC,         DOUBLE_TEAM,  BIDE,        \
	    METRONOME,    SWIFT,         SKY_ATTACK,   REST,        \
		ROCK_SLIDE,   SUBSTITUTE,    CUT,          STRENGTH,    \ 
		FLASH                                                   \

	db 0 ; padding
