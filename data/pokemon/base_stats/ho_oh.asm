	db DEX_HO_OH ; 250

	db 106, 130, 90,  90,     154
	;  hp   atk  def  speed  special

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 220 ; base exp

    INCBIN "gfx/pokemon/front/ho-oh.pic", 0, 1 ; sprite dimensions
    dw Ho_ohPicFront, Ho_ohPicBack

	db THUNDERPUNCH, DRAGON_RAGE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate


	; tm/hm learnset
	tmhm TOXIC, HYPER_BEAM, SOLARBEAM, THUNDER, EARTHQUAKE,
	     PSYCHIC_M, DOUBLE_TEAM, FIRE_BLAST, SWIFT, DREAM_EATER,
	     REST, FLY, STRENGTH, FLASH,THUNDERBOLT
	; end

	db 0 ; padding