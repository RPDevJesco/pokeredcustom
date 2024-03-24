; Boolean checks
DEF FALSE EQU 0
DEF TRUE  EQU 1

; flag operations
	const_def
	const FLAG_RESET ; 0
	const FLAG_SET   ; 1
	const FLAG_TEST  ; 2

; wOptions
DEF TEXT_DELAY_FAST   EQU %010 ; 1 --Now instant text
DEF TEXT_DELAY_MEDIUM EQU %010 ; 3 --Now instant text
DEF TEXT_DELAY_SLOW   EQU %010 ; 5 --Now instant text

	const_def 6
	const BIT_BATTLE_SHIFT     ; 6
	const BIT_BATTLE_ANIMATION ; 7

; wd732 flags
DEF BIT_DEBUG_MODE EQU 1
