	db DEX_DEOXYS ; pokedex id

	db  50, 150, 50,  150, 150
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 270 ; base exp

	INCBIN "gfx/pokemon/front/deoxysatk.pic", 0, 1 ; sprite dimensions
	dw DeoxysPicFront, DeoxysPicBack

	db LEER, WRAP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, MEGA_KICK, TOXIC, BODY_SLAM, DOUBLE_EDGE,   \
         BUBBLEBEAM, ICE_BEAM, HYPER_BEAM, PAY_DAY, SUBMISSION,  \
         COUNTER, RAGE, SOLARBEAM, THUNDERBOLT, THUNDER,         \
         PSYCHIC_M, TELEPORT, MIMIC, DOUBLE_TEAM, REFLECT,       \
         BIDE, METRONOME, FIRE_BLAST, SWIFT, DREAM_EATER,        \
         SKY_ATTACK, REST, THUNDER_WAVE, PSYWAVE, ROCK_SLIDE,    \
         TRI_ATTACK, SUBSTITUTE, CUT, STRENGTH, FLASH            \
	; end


	db 0 ; padding
