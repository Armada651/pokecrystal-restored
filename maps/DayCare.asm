DayCare_MapScriptHeader: ; 0x62f76
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x62f7b
; 0x62f7b

UnknownScript_0x62f7b: ; 0x62f7b
	checkflag $0005
	iftrue UnknownScript_0x62f88
	clearevent $06e5
	setevent $06e6
	return
; 0x62f88

UnknownScript_0x62f88: ; 0x62f88
	setevent $06e5
	clearevent $06e6
	return
; 0x62f8f

GrampsScript_0x62f8f: ; 0x62f8f
	faceplayer
	loadfont
	checkevent EVENT_GOT_ODD_EGG_TICKET
	iftrue UnknownScript_0x62fbd
	2writetext UnknownText_0x62ff7
	keeptextopen
	writebyte $81
	special $00a5
	iftrue UnknownScript_0x62fb6
	verbosegiveitem EGG_TICKET, 1
	2writetext UnknownText_0x631a1
	closetext
	loadmovesprites
	setevent EVENT_GOT_ODD_EGG_TICKET
	end
; 0x62fb6

UnknownScript_0x62fb6: ; 0x62fb6
	2writetext UnknownText_0x63237
	closetext
	loadmovesprites
	end
; 0x62fbd

UnknownScript_0x62fbd: ; 0x62fbd
	special $001e
	closetext
	loadmovesprites
	end
; 0x62fc3

GrannyScript_0x62fc3: ; 0x62fc3
	faceplayer
	loadfont
	checkflag $0005
	iftrue UnknownScript_0x62fd1
	special $001f
	closetext
	loadmovesprites
	end
; 0x62fd1

UnknownScript_0x62fd1: ; 0x62fd1
	2writetext UnknownText_0x62fda
	closetext
	loadmovesprites
	end
; 0x62fd7

MapDayCareSignpost1Script: ; 0x62fd7
	jumpstd $0001
; 0x62fda

UnknownText_0x62fda: ; 0x62fda
	text "Gramps was looking"
	line "for you."
	done
; 0x62ff7

UnknownText_0x62ff7: ; 0x62ff7
	text "I'm the DAY-CARE"
	line "MAN."

	para "There's something"
	line "new in GOLDENROD"

	para "called the TRADE"
	line "CORNER."

	para "I was given an EGG"
	line "TICKET that can be"

	para "traded in for a"
	line "ODD EGG."

	para "But since we run a"
	line "DAY-CARE, we don't"

	para "need it. You may"
	line "as well have it."
	done
; 0x630ce

UnknownText_0x630ce: ; 0x630ce
	text "I'm the DAY-CARE"
	line "MAN."

	para "Do you know about"
	line "EGGS?"

	para "I was raising"
	line "#MON with my"
	cont "wife, you see."

	para "We were shocked to"
	line "find an EGG!"

	para "How incredible is"
	line "that?"

	para "Well, wouldn't you"
	line "like this EGG?"

	para "Then fine, this is"
	line "yours to keep!"
	done
; 0x631a1

UnknownText_0x631a1: ; 0x631a1
	text "Come again."
	done
; 0x631ae

UnknownText_0x631c3: ; 0x631c3
	text "I found that when"
	line "I was caring for"

	para "someone's #MON"
	line "before."

	para "But the trainer"
	line "didn't want the"

	para "EGG, so I'd kept"
	line "it around."
	done
; 0x63237

UnknownText_0x63237: ; 0x63237
	text "You've no room for"
	line "this."
	done
; 0x63250

DayCare_MapEventHeader: ; 0x63250
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $5, $0, 3, GROUP_ROUTE_34, MAP_ROUTE_34
	warp_def $6, $0, 4, GROUP_ROUTE_34, MAP_ROUTE_34
	warp_def $7, $2, 5, GROUP_ROUTE_34, MAP_ROUTE_34
	warp_def $7, $3, 5, GROUP_ROUTE_34, MAP_ROUTE_34

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapDayCareSignpost1Script
	signpost 1, 1, $0, MapDayCareSignpost1Script

	; people-events
	db 2
	person_event SPRITE_GRAMPS, 7, 6, $9, $0, 255, 255, $0, 0, GrampsScript_0x62f8f, $06e5
	person_event SPRITE_GRANNY, 7, 9, $8, $0, 255, 255, $80, 0, GrannyScript_0x62fc3, $ffff
; 0x6328e


