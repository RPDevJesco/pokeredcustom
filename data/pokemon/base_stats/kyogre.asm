	; SteveMPlays & Speedrunner0218 choices
	; 25% higher special to give it a "drought" bonus
	; Took higher SpA as Spc

	db DEX_KYOGRE ; pokedex id ; TODO_BACKPORT

	db  100,  100,  90,  90,  187
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 3 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/kyogre.pic", 0, 1 ; sprite dimensions
	dw KyogrePicFront, KyogrePicBack

	db BUBBLEBEAM, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, \
		 DOUBLE_EDGE, BUBBLEBEAM, WATER_GUN, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUBMISSION, \
		 RAGE, \
		 THUNDERBOLT, THUNDER, EARTHQUAKE, \
		 FISSURE, MIMIC, DOUBLE_TEAM, BIDE, METRONOME, \
		 SKULL_BASH, REST, \
		 SUBSTITUTE, SURF, STRENGTH
	; end

	db 0 ; padding
