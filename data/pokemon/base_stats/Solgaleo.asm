	db DEX_SOLGALEO; pokedex id ; TODO_BACKPORT

	db 137, 137, 107,  97,     113
	;  hp   atk  def  speed  special

	db PSYCHIC_TYPE, STEEL ; type
	db 45 ; catch rate
	db 306 ; base exp

	INCBIN "gfx/pokemon/front/solgaleo.pic", 0, 1 ; sprite dimensions
	dw SolgaleoPicFront, SolgaleoPicBack

	db THUNDERPUNCH, DRAGON_RAGE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

    ; tm/hm learnset
    tmhm MEGA_PUNCH,  TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
        DOUBLE_EDGE,  HYPER_BEAM,   PAY_DAY,      SUBMISSION,   \
        SOLARBEAM,    DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      \
        EARTHQUAKE,   DIG,          PSYCHIC_M,    TELEPORT,     \
        MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
        FIRE_BLAST,   SWIFT,        DREAM_EATER,  REST,         \
        THUNDER_WAVE, PSYWAVE,      ROCK_SLIDE,   TRI_ATTACK,   \
        SUBSTITUTE                                              \
    ; end

	db 0 ; padding
