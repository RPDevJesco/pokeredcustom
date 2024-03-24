	db DEX_NECROZMA ; pokedex id ; TODO_BACKPORT

	db 97,  107, 101,  79,     127
	;  hp   atk  def  speed  special

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 255 ; catch rate
	db 274 ; base exp

	INCBIN "gfx/pokemon/front/necrozma.pic", 0, 1 ; sprite dimensions
	dw NecrozmaPicFront, NecrozmaPicBack

	db RECOVER, THUNDERPUNCH, VICEGRIP, CONFUSION ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   SOLARBEAM,    DRAGON_RAGE,  \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   DIG,          PSYCHIC_M,    \
	     TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
		 METRONOME,    FIRE_BLAST,   SWIFT,        SOFTBOILED,   DREAM_EATER,  \
	     SKY_ATTACK,   REST,         THUNDER_WAVE, PSYWAVE,      ROCK_SLIDE,   \
	     SUBSTITUTE
	; end

	db 0 ; padding
