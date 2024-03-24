	db DEX_ARCEUS ; pokedex id ; TODO_BACKPORT

	db 120, 120, 120,  120,    120
	;  hp   atk  def  speed  special

	db NORMAL, NORMAL ; type
	db 5 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/arceus.pic", 0, 1 ; sprite dimensions
	dw ArceusPicFront, ArceusPicBack

	db SEISMIC_TOSS, DEFENSE_CURL, GROWTH, BITE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

    ; tm/hm learnset
    tmhm MEGA_PUNCH,  RAZOR_WIND,   SWORDS_DANCE, WHIRLWIND,    MEGA_KICK,    \
        TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
        BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
        PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
        MEGA_DRAIN,   SOLARBEAM,    DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      \
        EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    TELEPORT,     \
        MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
        SELFDESTRUCT, EGG_BOMB,     FIRE_BLAST,   SWIFT,        SKULL_BASH,   \
        SOFTBOILED,   DREAM_EATER,  SKY_ATTACK,   REST,         THUNDER_WAVE, \
        PSYWAVE,      EXPLOSION,    ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE,   \
        CUT,          FLY,          SURF,         STRENGTH,     FLASH,        \
        UNUSED
    ; end

	db 0 ; padding