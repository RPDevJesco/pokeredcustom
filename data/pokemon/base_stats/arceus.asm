	db DEX_ARCEUS ; pokedex id ; TODO_BACKPORT

	db 120, 120, 120,  120,    120
	;  hp   atk  def  speed  special

	db NORMAL, NORMAL ; type
	db 5 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/arceus.pic", 0, 1 ; sprite dimensions
	dw ArceusPicFront, ArceusPicBack

	db THUNDERPUNCH, DRAGON_RAGE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    HYPER_BEAM,   PAY_DAY,      SUBMISSION,   \
	     RAGE,         DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     PSYCHIC_M,    TELEPORT,     DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     METRONOME,    SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, \
	     ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE,   CUT,          FLY,          \
	     STRENGTH                                                              \
	; end

	db 0 ; padding