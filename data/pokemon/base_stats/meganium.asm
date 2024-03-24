	db DEX_MEGANIUM; pokedex id ; TODO_BACKPORT

	db 80,   82, 100,  80,     100
	;  hp   atk  def  speed  special

	db GRASS, GRASS ; type
	db 3 ; catch rate
	db 306 ; base exp

	INCBIN "gfx/pokemon/front/meganium.pic", 0, 1 ; sprite dimensions
	dw MeganiumPicFront, MeganiumPicBack

	db SWORDS_DANCE, TACKLE, RAZOR_LEAF, REFLECT ; level 1 learnset
	db GROWTH_SLOW ; growth rate

    ; tm/hm learnset
    tmhm MEGA_PUNCH,  TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
        HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    \
        EARTHQUAKE,   MIMIC,        DOUBLE_TEAM,  REFLECT,      \
        BIDE,         METRONOME,    REST,         SUBSTITUTE,   \
        CUT,          STRENGTH,     FLASH                       \
    ; end

	db 0 ; padding
