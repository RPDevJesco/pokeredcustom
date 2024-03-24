	db DEX_RESHIRAM ; pokedex id ; TODO_BACKPORT

	db 100, 120, 100,  90,    150
	;  hp   atk  def  speed  special

	db DRAGON, FIRE ; type
	db 5 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/reshiram.pic", 0, 1 ; sprite dimensions
	dw ReshiramPicFront, ReshiramPicBack

	db FIRE_PUNCH, DRAGON_RAGE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    HYPER_BEAM,   PAY_DAY,      SUBMISSION,   \
	     DRAGON_RAGE,  EARTHQUAKE,        RAGE,    PSYCHIC_M,    DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   \
	     REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,          FLY,          \
	     STRENGTH                                                              \
	; end

	db 0 ; padding