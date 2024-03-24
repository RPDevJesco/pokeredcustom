	db DEX_SHUCKLE ; 250

	db 20,  10,  230,  5,     230
	;  hp   atk  def  speed  special

	db BUG, ROCK ; type
	db 190       ; catch rate
	db 80       ; base exp

    INCBIN "gfx/pokemon/front/shuckle.pic", 0, 1 ; sprite dimensions
    dw ShucklePicFront, ShucklePicBack

	db SAND_ATTACK, WITHDRAW, CONSTRICT, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   TOXIC,        BODY_SLAM,    PAY_DAY,      EARTHQUAKE,   \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     METRONOME,    REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH,     \
		 FLASH
	; end

	db 0 ; padding