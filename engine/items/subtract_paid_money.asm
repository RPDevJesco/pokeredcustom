; subtracts the amount the player paid from their money
; OUTPUT: carry = 0(success) or 1(fail because there is not enough money)
SubtractAmountPaidFromMoney_::
	ld de, wPlayerMoney
	ld hl, hMoney ; total price of items
	ld c, 3 ; length of money in bytes
	call StringCmp
	ret c
	ld de, wPlayerMoney + 2
	ld hl, hMoney + 2 ; total price of items
	ld c, 3 ; length of money in bytes
	predef SubBCDPredef ; subtract total price from money
	; GAME STATS: money spend (mart)
	push_all
	xor a
	ld [wStatsBuffer + 0], a
	ld a, [hMoney + 0]
	ld [wStatsBuffer + 1], a
	ld a, [hMoney + 1]
	ld [wStatsBuffer + 2], a
	ld a, [hMoney + 2]
	ld [wStatsBuffer + 3], a
	ld hl, wStatsBuffer + 3
	ld de, wStatsMoneySpent + 3
	ld c, $4
	ldh a, [hStatsDisabled]
	and a
	predef_flag nz, AddBCDPredef
	pop_all
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID ; redraw money text box
	and a
	ret
