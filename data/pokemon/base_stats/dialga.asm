	db DEX_DIALGA ; pokedex id ; TODO_BACKPORT

	db 100, 120, 120,  90,     150
	;  hp   atk  def  speed  special

	db STEEL, DRAGON ; type
	db 3 ; catch rate
	db 340 ; base exp

	INCBIN "gfx/pokemon/front/dialga.pic", 0, 1 ; sprite dimensions
	dw DialgaPicFront, DialgaPicBack

	db STRING_SHOT, DRAGON_RAGE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

    ; tm/hm learnset
    tmhm MEGA_PUNCH,  TOXIC,        ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
        PAY_DAY,      SUBMISSION,   DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      \
        EARTHQUAKE,   DIG,          TELEPORT,     MIMIC,        DOUBLE_TEAM,  \
        BIDE,         METRONOME,    FIRE_BLAST,   SWIFT,        SKY_ATTACK,   \
        REST,         THUNDER_WAVE, ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE,   \
        CUT,          STRENGTH                                                \
    ; end

	db 0 ; padding