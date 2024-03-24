	db DEX_REGIGIGAS; pokedex id ; TODO_BACKPORT

	db 110, 160, 110,  100,    110
	;  hp   atk  def  speed  special

	db NORMAL, NORMAL ; type
	db 3 ; catch rate
	db 302 ; base exp

	INCBIN "gfx/pokemon/front/regigigas.pic", 0, 1 ; sprite dimensions
	dw RegigigasPicFront, RegigigasPicBack

	db FIRE_PUNCH, ICE_PUNCH, THUNDERPUNCH, RAGE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     PAY_DAY,      SUBMISSION,   SEISMIC_TOSS, RAGE,         THUNDERBOLT,  \
	     THUNDER,      EARTHQUAKE,   DIG,          PSYCHIC_M,    TELEPORT,     \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
	     SKY_ATTACK,   REST,         THUNDER_WAVE, PSYWAVE,      ROCK_SLIDE,   \
	     SUBSTITUTE,   STRENGTH
	; end

	db 0 ; padding
