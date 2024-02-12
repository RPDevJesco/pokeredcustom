	object_const_def
	const_export SSANNE1FROOMS_GENTLEMAN1
	const_export SSANNE1FROOMS_GENTLEMAN2
	const_export SSANNE1FROOMS_YOUNGSTER
	const_export SSANNE1FROOMS_COOLTRAINER_F
	const_export SSANNE1FROOMS_GIRL1
	const_export SSANNE1FROOMS_MIDDLE_AGED_MAN
	const_export SSANNE1FROOMS_LITTLE_GIRL
	const_export SSANNE1FROOMS_WIGGLYTUFF
	const_export SSANNE1FROOMS_GIRL2
	const_export SSANNE1FROOMS_TM_BODY_SLAM
	const_export SSANNE1FROOMS_GENTLEMAN3

SSAnne1FRooms_Object:
	db $c ; border block

	def_warp_events
	warp_event  0,  0, SS_ANNE_1F, 3
	warp_event 10,  0, SS_ANNE_1F, 4
	warp_event 20,  0, SS_ANNE_1F, 5
	warp_event  0, 10, SS_ANNE_1F, 6
	warp_event 10, 10, SS_ANNE_1F, 7
	warp_event 20, 10, SS_ANNE_1F, 8

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, STAY, LEFT, TEXT_SSANNE1FROOMS_GENTLEMAN1, OPP_GENTLEMAN, 1
	object_event 11,  4, SPRITE_GENTLEMAN, STAY, UP, TEXT_SSANNE1FROOMS_GENTLEMAN2, OPP_GENTLEMAN, 2
	object_event 11, 14, SPRITE_YOUNGSTER, STAY, UP, TEXT_SSANNE1FROOMS_YOUNGSTER, OPP_YOUNGSTER, 8
	object_event 13, 11, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_SSANNE1FROOMS_COOLTRAINER_F, OPP_LASS, 11
	object_event 22,  3, SPRITE_GIRL, WALK, UP_DOWN, TEXT_SSANNE1FROOMS_GIRL1
	object_event  0, 14, SPRITE_MIDDLE_AGED_MAN, STAY, NONE, TEXT_SSANNE1FROOMS_MIDDLE_AGED_MAN
	object_event  2, 11, SPRITE_LITTLE_GIRL, STAY, DOWN, TEXT_SSANNE1FROOMS_LITTLE_GIRL
	object_event  3, 11, SPRITE_FAIRY, STAY, DOWN, TEXT_SSANNE1FROOMS_WIGGLYTUFF
	object_event 10, 13, SPRITE_GIRL, STAY, RIGHT, TEXT_SSANNE1FROOMS_GIRL2
	object_event 12, 15, SPRITE_POKE_BALL, STAY, NONE, TEXT_SSANNE1FROOMS_TM_BODY_SLAM, TM_BODY_SLAM
	object_event 21, 13, SPRITE_GENTLEMAN, WALK, LEFT_RIGHT, TEXT_SSANNE1FROOMS_GENTLEMAN3

	def_warps_to SS_ANNE_1F_ROOMS