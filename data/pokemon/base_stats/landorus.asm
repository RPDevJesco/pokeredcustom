	db DEX_LANDORUS; pokedex id ; TODO_BACKPORT

	db 89,  145, 90,   91,     105
	;  hp   atk  def  speed  special

	db GROUND, FLYING ; type
	db 3 ; catch rate
	db 300 ; base exp

	INCBIN "gfx/pokemon/front/landorusT.pic", 0, 1 ; sprite dimensions
	dw LandorusPicFront, LandorusPicBack

	db BONE_CLUB, FOCUS_ENERGY, ROCK_THROW, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, WHIRLWIND,   TOXIC,       BODY_SLAM,     \ 
		 DOUBLE_EDGE,  HYPER_BEAM,  PAY_DAY,     SUBMISSION,    \
		 RAGE,         MEGA_DRAIN,  DRAGON_RAGE, EARTHQUAKE,    \
		 FISSURE, DIG, PSYCHIC_M,   TELEPORT,    MIMIC,         \
		 DOUBLE_TEAM,  BIDE,        METRONOME,   SWIFT,         \
		 REST,         PSYWAVE,     ROCK_SLIDE,  SUBSTITUTE,    \
		 FLY, STRENGTH
	; end
	
	db 0 ; padding
