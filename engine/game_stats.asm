ResetGameStats::
	ld a, 1
	ldh [hStatsDisabled], a
	
	xor a
	ld hl, wStatsData
	ld bc, wStatsDataEnd - wStatsData
	call FillMemory

	ld a, $ff
	ld [wStatsPresent], a

	xor a
	ldh [hStatsDisabled], a
	ret

MACRO gamestatmethod
\1::
	ld hl, \1_
	jp GameStatsStart
ENDM


	gamestatmethod GameStatsFrameCount
GameStatsFrameCount_::
	ld hl, wStatsFrameCount
	call FourByteIncrement
	ld hl, wStatsOWFrameCount
	ldh a, [hTimerType]
	add l
	ld l, a
	jp FourByteIncrement


	gamestatmethod GameStatsIncrement2Byte
GameStatsIncrement2Byte_::
	ld h, d
	ld l, e
	jp TwoByteIncrement


	gamestatmethod GameStatsIncrement4Byte
GameStatsIncrement4Byte_::
	ld h, d
	ld l, e
	jp FourByteIncrement


	gamestatmethod GameStatsAddBuffer2Byte
GameStatsAddBuffer2Byte_::
	ld h, d
	ld l, e
	inc hl
	cp a
	jp TwoByteAddBuffer


	gamestatmethod GameStatsAddBuffer4Byte
GameStatsAddBuffer4Byte_::
	ld h, d
	ld l, e
	jp FourByteAddBuffer


	gamestatmethod GameStatsTotalDamageBuffer
GameStatsTotalDamageBuffer_::
	ld hl, wStatsEnemyTotalDamage + 3
	ldh a, [hWhoseTurn]
	and a
	jr z, .playersTurn
	ld hl, wStatsPlayerTotalDamage + 3
.playersTurn
	jp FourByteAddBuffer


	gamestatmethod GameStatsActualDamageBuffer
GameStatsActualDamageBuffer_::
	ld hl, wStatsEnemyActualDamage + 3
	ldh a, [hWhoseTurn]
	and a
	jr z, .playersTurn
	ld hl, wStatsPlayerActualDamage + 3
.playersTurn
	jp FourByteAddBuffer


	gamestatmethod GameStatsStepCount
GameStatsStepCount_::
	ld hl, wStatsStepCount
	call FourByteIncrement
	ld hl, wStatsStepCountWalk
	ld a, [wWalkBikeSurfState]
	sla a
	sla a
	add l
	ld l, a
.increment
	jp FourByteIncrement


	gamestatmethod GameStatsPlayerOrEnemy
GameStatsPlayerOrEnemy_::
	ld h, d
	ld l, e
	ldh a, [hWhoseTurn]
	and a
	jr z, .skip
	inc hl
	inc hl
.skip
	jp TwoByteIncrement


GameStatsStart::
; takes return address in hl
; check enable
	ldh a, [hStatsDisabled]
	and a
	ret nz
; done, move to actual code
	jp hl


GameStatsRecordTypeEffectiveness::
	ldh a, [hWhoseTurn]
	and a
	jr nz, .enemyTurn1
	ld a, [wPlayerMovePower]
	jr .playerTurn1
.enemyTurn1
	ld a, [wEnemyMovePower]
.playerTurn1
	and a
	ld de, wStatsMovesStatus
	jp z, GameStatsPlayerOrEnemy
	dec a
	ld de, wStatsMovesSpecial
	jp z, GameStatsPlayerOrEnemy
	ld a, [wEnemyMoveType]
	ld hl, wStatsEnemyMoves0xE
	push hl
	ld hl, wBattleMonType
	ldh a, [hWhoseTurn]
	and a
	jr nz, .enemyTurn2
	ld a, [wPlayerMoveType]
	pop hl
	ld hl, wStatsPlayerMoves0xE
	push hl
	ld hl, wEnemyMonType
.enemyTurn2
	ld d, a					; type of attacker
	ld b, [hl]				; type 1 of defender
	inc hl
	ld c, [hl]				; type 2 of defender
; d = type of attacker
; b = type 1 of defender
; c = type 2 of defender
	call GameStatsCalcEffectiveness
	and a
	jr z, .skip
	ld e, a
	ld b, c
	call GameStatsCalcEffectiveness
	and a
	jr z, .skip
	add e
	dec a
; a: 0 -> x0
;    1 -> x0.25
;    2 -> x0.5
;    3 -> x1
;    4 -> x2
;    5 -> x4
	sla a	; a *= 2
.skip
	pop de
	add e
	ld e, a	; de += a
	jp GameStatsIncrement2Byte

; d = type of attacker
; b = type of defender
; return a:
;  0 -> x0
;  1 -> x0.5
;  2 -> x1
;  3 -> x2
GameStatsCalcEffectiveness:
	ld hl, GameStatsTypeEffects
.loop
	; are we at the end of the list?
	ld a, [hl]
	cp $ff
	ld a, 2
	ret z
	; check attacker type
	ld a, [hli]
	cp d
	jr nz, .next1
	; check defender type
	ld a, [hli]
	cp b
	jr nz, .next2
	; match was found
	ld a, [hl]  ; 20, 10, 05, 00
	srl a       ; 10, 05, 02, 00
	srl a       ; 05, 02, 01, 00
	cp 5
	ret nz      ; ret if 0, 1, or 2
	ld a, 3 
	ret         ; else ret 3
.next1
	inc hl
.next2
	inc hl
	jr .loop


GameStatsTypeEffects:
INCLUDE "data/types/type_matchups.asm"


FourByteAddBuffer::
	ld a, [wStatsBuffer + 3]
	add [hl]
	ld [hld], a
ThreeByteAddBuffer::
	ld a, [wStatsBuffer + 2]
	adc [hl]
	ld [hld], a
TwoByteAddBuffer::
	ld a, [wStatsBuffer + 1]
	adc [hl]
	ld [hld], a
OneByteAddBuffer::
	ld a, [wStatsBuffer + 0]
	adc [hl]
	ld [hld], a
	ret

FourByteIncrement::
	inc hl
	inc hl
	inc hl
	inc [hl]
	ret nz
	dec hl
	inc [hl]
	ret nz
	dec hl
	jr :+
TwoByteIncrement::
	inc hl
:	inc [hl]
	ret nz
	dec hl
	inc [hl]
	ret
