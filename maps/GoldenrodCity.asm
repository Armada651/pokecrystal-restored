GoldenrodCity_MapScriptHeader: ; 0x1988d0
	; trigger count
	db 0

	; callback count
	db 2

	; callbacks

	dbw 5, UnknownScript_0x1988d8

	dbw 2, UnknownScript_0x1988e8
; 0x1988d8

UnknownScript_0x1988d8: ; 0x1988d8
	setflag $0046
	setflag $0016
	checkevent $00b9
	iftrue UnknownScript_0x1988e7
	clearevent $0769
UnknownScript_0x1988e7: ; 0x1988e7
	return
; 0x1988e8

UnknownScript_0x1988e8: ; 0x1988e8
	checkevent $0044
	iffalse UnknownScript_0x198908
	checkitem COIN_CASE
	iffalse UnknownScript_0x1988fd
	checkcode $b
	if_equal WEDNESDAY, UnknownScript_0x198900
	if_equal SATURDAY, UnknownScript_0x198900
UnknownScript_0x1988fd: ; 0x1988fd
	disappear $10
	return
; 0x198900

UnknownScript_0x198900: ; 0x198900
	checkflag $005e
	iftrue UnknownScript_0x198908
	appear $10
UnknownScript_0x198908: ; 0x198908
	return
; 0x198909

PokefanMScript_0x198909: ; 0x198909
	faceplayer
	loadfont
	2writetext UnknownText_0x199042
	yesorno
	iffalse UnknownScript_0x19899a
	special $004f
	2writetext UnknownText_0x199090
	yesorno
	iffalse UnknownScript_0x1989a0
	checkcoins 4000
	if_equal $2, UnknownScript_0x1989dd
	2writetext UnknownText_0x1990ce
	loadmenudata MenuDataHeader_0x198967
	interpretmenu2
	writebackup
	if_equal $1, UnknownScript_0x19893a
	if_equal $2, UnknownScript_0x198949
	if_equal $3, UnknownScript_0x198958
	2jump UnknownScript_0x1989d7
; 0x19893a

UnknownScript_0x19893a: ; 0x19893a
	writebyte $1
	2writetext UnknownText_0x1991cf
	special $0083
	if_equal $0, UnknownScript_0x1989a6
	2jump UnknownScript_0x1989d7
; 0x198949

UnknownScript_0x198949: ; 0x198949
	writebyte $2
	2writetext UnknownText_0x1991cf
	special $0083
	if_equal $0, UnknownScript_0x1989a6
	2jump UnknownScript_0x1989d7
; 0x198958

UnknownScript_0x198958: ; 0x198958
	writebyte $3
	2writetext UnknownText_0x1991cf
	special $0083
	if_equal $0, UnknownScript_0x1989a6
	2jump UnknownScript_0x1989d7
; 0x198967


MenuDataHeader_0x198967: ; 0x198967
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 15 ; end coords
	dw MenuData2_0x19896f
	db 1 ; default option
; 0x19896f

MenuData2_0x19896f: ; 0x19896f
	db $80 ; flags
	db 4 ; items
	db "FLAMETHROWER@"
	db "THUNDERBOLT@"
	db "ICE BEAM@"
	db "CANCEL@"
; 0x19899a


UnknownScript_0x19899a: ; 0x19899a
	2writetext UnknownText_0x1990b4
	closetext
	loadmovesprites
	end
; 0x1989a0

UnknownScript_0x1989a0: ; 0x1989a0
	2writetext UnknownText_0x199107
	closetext
	loadmovesprites
	end
; 0x1989a6

UnknownScript_0x1989a6: ; 0x1989a6
	2writetext UnknownText_0x19913a
	keeptextopen
	takecoins 4000
	waitbutton
	playsound SFX_TRANSACTION
	special $004f
	2writetext UnknownText_0x19918b
	closetext
	loadmovesprites
	checkcode $9
	if_equal $2, UnknownScript_0x1989c6
	applymovement $10, MovementData_0x198a5f
	2jump UnknownScript_0x1989ca
; 0x1989c6

UnknownScript_0x1989c6: ; 0x1989c6
	applymovement $10, MovementData_0x198a63
UnknownScript_0x1989ca: ; 0x1989ca
	playsound SFX_ENTER_DOOR
	disappear $10
	clearevent $076b
	setflag $005e
	waitbutton
	end
; 0x1989d7

UnknownScript_0x1989d7: ; 0x1989d7
	2writetext UnknownText_0x1991a4
	closetext
	loadmovesprites
	end
; 0x1989dd

UnknownScript_0x1989dd: ; 0x1989dd
	2writetext UnknownText_0x1991ac
	closetext
	loadmovesprites
	end
; 0x1989e3

PokefanMScript_0x1989e3: ; 0x1989e3
	jumptextfaceplayer UnknownText_0x198a69
; 0x1989e6

YoungsterScript_0x1989e6: ; 0x1989e6
	jumptextfaceplayer UnknownText_0x198aa9
; 0x1989e9

CooltrainerFScript_0x1989e9: ; 0x1989e9
	faceplayer
	loadfont
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x1989f7
	2writetext UnknownText_0x198ae6
	closetext
	loadmovesprites
	end
; 0x1989f7

UnknownScript_0x1989f7: ; 0x1989f7
	2writetext UnknownText_0x198b2d
	closetext
	loadmovesprites
	end
; 0x1989fd

CooltrainerFScript_0x1989fd: ; 0x1989fd
	faceplayer
	loadfont
	checkflag $0000
	iftrue UnknownScript_0x198a0b
	2writetext UnknownText_0x198b73
	closetext
	loadmovesprites
	end
; 0x198a0b

UnknownScript_0x198a0b: ; 0x198a0b
	2writetext UnknownText_0x198c14
	closetext
	loadmovesprites
	end
; 0x198a11

YoungsterScript_0x198a11: ; 0x198a11
	jumptextfaceplayer UnknownText_0x198c36
; 0x198a14

LassScript_0x198a14: ; 0x198a14
	jumptextfaceplayer UnknownText_0x198c83
; 0x198a17

GrampsScript_0x198a17: ; 0x198a17
	jumptextfaceplayer UnknownText_0x198ccf
; 0x198a1a

RocketScript_0x198a1a: ; 0x198a1a
	loadfont
	2writetext UnknownText_0x198d0d
	keeptextopen
	faceplayer
	2writetext UnknownText_0x198d2a
	closetext
	loadmovesprites
	spriteface $9, $1
	end
; 0x198a29

RocketScript_0x198a29: ; 0x198a29
	jumptextfaceplayer UnknownText_0x198d4e
; 0x198a2c

RocketScript_0x198a2c: ; 0x198a2c
	jumptextfaceplayer UnknownText_0x198d6d
; 0x198a2f

RocketScript_0x198a2f: ; 0x198a2f
	jumptextfaceplayer UnknownText_0x198daa
; 0x198a32

RocketScript_0x198a32: ; 0x198a32
	jumptextfaceplayer UnknownText_0x198de2
; 0x198a35

RocketScript_0x198a35: ; 0x198a35
	jumptextfaceplayer UnknownText_0x198e1f
; 0x198a38

RocketScript_0x198a38: ; 0x198a38
	jumptextfaceplayer UnknownText_0x198e4b
; 0x198a3b

MapGoldenrodCitySignpost0Script: ; 0x198a3b
	jumptext UnknownText_0x198e77
; 0x198a3e

MapGoldenrodCitySignpost1Script: ; 0x198a3e
	jumptext UnknownText_0x198e8f
; 0x198a41

MapGoldenrodCitySignpost2Script: ; 0x198a41
	jumptext UnknownText_0x198eab
; 0x198a44

MapGoldenrodCitySignpost3Script: ; 0x198a44
	jumptext UnknownText_0x198ee4
; 0x198a47

MapGoldenrodCitySignpost4Script: ; 0x198a47
	jumptext UnknownText_0x198f29
; 0x198a4a

MapGoldenrodCitySignpost5Script: ; 0x198a4a
	jumptext UnknownText_0x198f5b
; 0x198a4d

MapGoldenrodCitySignpost6Script: ; 0x198a4d
	jumptext UnknownText_0x198f81
; 0x198a50

MapGoldenrodCitySignpost7Script: ; 0x198a50
	jumptext UnknownText_0x198fae
; 0x198a53

MapGoldenrodCitySignpost8Script: ; 0x198a53
	jumptext UnknownText_0x198fd8
; 0x198a56

MapGoldenrodCitySignpost9Script: ; 0x198a56
	jumptext UnknownText_0x198fee
; 0x198a59

MapGoldenrodCitySignpost10Script: ; 0x198a59
	jumptext UnknownText_0x199004
; 0x198a5c

MapGoldenrodCitySignpost11Script: ; 0x198a5c
	jumptext UnknownText_0x199022
; 0x198a5f

MovementData_0x198a5f: ; 0x198a5f
	step_right
	step_right
	step_up
	step_end
; 0x198a63

MovementData_0x198a63: ; 0x198a63
	step_down
	step_right
	step_right
	step_up
	step_up
	step_end
; 0x198a69

UnknownText_0x198a69: ; 0x198a69
	text "They built the new"
	line "RADIO TOWER to"

	para "replace the old,"
	line "creaky one."
	done
; 0x198aa9

UnknownText_0x198aa9: ; 0x198aa9
	text "I know there's a"
	line "new BIKE SHOP, but"

	para "I can't find it"
	line "anywhere."
	done
; 0x198ae6

UnknownText_0x198ae6: ; 0x198ae6
	text "Is that man in"
	line "black dressed up"

	para "like a TEAM ROCKET"
	line "member? How silly!"
	done
; 0x198b2d

UnknownText_0x198b2d: ; 0x198b2d
	text "Was that man in"
	line "black really part"

	para "of TEAM ROCKET? I"
	line "can't believe it!"
	done
; 0x198b73

UnknownText_0x198b73: ; 0x198b73
	text "The RADIO TOWER in"
	line "GOLDENROD CITY is"
	cont "a landmark."

	para "They're running a"
	line "promotional cam- "
	cont "paign right now."

	para "They'll modify"
	line "your #GEAR,"

	para "so it can also"
	line "serve as a radio."
	done
; 0x198c14

UnknownText_0x198c14: ; 0x198c14
	text "Oh, your #GEAR"
	line "works as a radio!"
	done
; 0x198c36

UnknownText_0x198c36: ; 0x198c36
	text "E-he-he-he…"

	para "I got in trouble"
	line "for playing in the"

	para "basement of the"
	line "DEPT.STORE."
	done
; 0x198c83

UnknownText_0x198c83: ; 0x198c83
	text "The man at that"
	line "house rates your"
	cont "#MON names."

	para "He can even rename"
	line "your #MON."
	done
; 0x198ccf

UnknownText_0x198ccf: ; 0x198ccf
	text "Whew! This is one"
	line "big town. I don't"

	para "know where any-"
	line "thing is."
	done
; 0x198d0d

UnknownText_0x198d0d: ; 0x198d0d
	text "So this is the"
	line "RADIO TOWER…"
	done
; 0x198d2a

UnknownText_0x198d2a: ; 0x198d2a
	text "What do you want,"
	line "you pest? Scram!"
	done
; 0x198d4e

UnknownText_0x198d4e: ; 0x198d4e
	text "Stay out of the"
	line "way! Beat it!"
	done
; 0x198d6d

UnknownText_0x198d6d: ; 0x198d6d
	text "Take over the"
	line "RADIO TOWER…"

	para "What? It's none of"
	line "your business!"
	done
; 0x198daa

UnknownText_0x198daa: ; 0x198daa
	text "#MON? They're"
	line "nothing more than"

	para "tools for making"
	line "money!"
	done
; 0x198de2

UnknownText_0x198de2: ; 0x198de2
	text "Our dream will"
	line "soon come true…"

	para "It was such a long"
	line "struggle…"
	done
; 0x198e1f

UnknownText_0x198e1f: ; 0x198e1f
	text "Hey, brat! You"
	line "don't belong here!"
	cont "Get lost!"
	done
; 0x198e4b

UnknownText_0x198e4b: ; 0x198e4b
	text "Come taste the"
	line "true terror of"
	cont "TEAM ROCKET!"
	done
; 0x198e77

UnknownText_0x198e77: ; 0x198e77
	text "GOLDENROD CITY"
	line "STATION"
	done
; 0x198e8f

UnknownText_0x198e8f: ; 0x198e8f
	text "GOLDENROD CITY"
	line "RADIO TOWER"
	done
; 0x198eab

UnknownText_0x198eab: ; 0x198eab
	text "Full Selection of"
	line "#MON Goods!"

	para "GOLDENROD CITY"
	line "DEPT.STORE"
	done
; 0x198ee4

UnknownText_0x198ee4: ; 0x198ee4
	text "GOLDENROD CITY"
	line "#MON GYM"
	cont "LEADER: WHITNEY"

	para "The Incredibly"
	line "Pretty Girl!"
	done
; 0x198f29

UnknownText_0x198f29: ; 0x198f29
	text "GOLDENROD CITY"

	para "The Festive City"
	line "of Opulent Charm"
	done
; 0x198f5b

UnknownText_0x198f5b: ; 0x198f5b
	text "The World is a"
	line "Cycle Path!"
	cont "BIKE SHOP"
	done
; 0x198f81

UnknownText_0x198f81: ; 0x198f81
	text "Your Playground!"

	para "GOLDENROD CITY"
	line "GAME CORNER"
	done
; 0x198fae

UnknownText_0x198fae: ; 0x198fae
	text "NAME RATER"

	para "Get Your #MON"
	line "Nicknames Rated"
	done
; 0x198fd8

UnknownText_0x198fd8: ; 0x198fd8
	text "UNDERGROUND"
	line "ENTRANCE"
	done
; 0x198fee

UnknownText_0x198fee: ; 0x198fee
	text "UNDERGROUND"
	line "ENTRANCE"
	done
; 0x199004

UnknownText_0x199004: ; 0x199004
	text "For Mobile Tips!"
	line "#COM CENTER"
	done
; 0x199022

UnknownText_0x199022: ; 0x199022
	text "Blooming Beautiful"
	line "FLOWER SHOP"
	done
; 0x199042

UnknownText_0x199042: ; 0x199042
	text "I can teach your"
	line "#MON amazing"

	para "moves if you'd"
	line "like."

	para "Should I teach a"
	line "new move?"
	done
; 0x199090

UnknownText_0x199090: ; 0x199090
	text "It will cost you"
	line "4000 coins. Okay?"
	done
; 0x1990b4

UnknownText_0x1990b4: ; 0x1990b4
	text "Aww… But they're"
	line "amazing…"
	done
; 0x1990ce

UnknownText_0x1990ce: ; 0x1990ce
	text "Wahahah! You won't"
	line "regret it!"

	para "Which move should"
	line "I teach?"
	done
; 0x199107

UnknownText_0x199107: ; 0x199107
	text "Hm, too bad. I'll"
	line "have to get some"
	cont "cash from home…"
	done
; 0x19913a

UnknownText_0x19913a: ; 0x19913a
	text "If you understand"
	line "what's so amazing"

	para "about this move,"
	line "you've made it as"
	cont "a trainer."
	done
; 0x19918b

UnknownText_0x19918b: ; 0x19918b
	text "Wahahah!"
	line "Farewell, kid!"
	done
; 0x1991a4

UnknownText_0x1991a4: ; 0x1991a4
	text "B-but…"
	done
; 0x1991ac

UnknownText_0x1991ac: ; 0x1991ac
	text "…You don't have"
	line "enough coins here…"
	done
; 0x1991cf

UnknownText_0x1991cf: ; 0x1991cf
	db $0, $57
; 0x1991d1

GoldenrodCity_MapEventHeader: ; 0x1991d1
	; filler
	db 0, 0

	; warps
	db 15
	warp_def $7, $18, 1, GROUP_GOLDENROD_GYM, MAP_GOLDENROD_GYM
	warp_def $1d, $1d, 1, GROUP_GOLDENROD_BIKE_SHOP, MAP_GOLDENROD_BIKE_SHOP
	warp_def $15, $1f, 1, GROUP_GOLDENROD_HAPPINESS_RATER, MAP_GOLDENROD_HAPPINESS_RATER
	warp_def $19, $5, 1, GROUP_GOLDENROD_BILLS_HOUSE, MAP_GOLDENROD_BILLS_HOUSE
	warp_def $d, $9, 2, GROUP_GOLDENROD_MAGNET_TRAIN_STATION, MAP_GOLDENROD_MAGNET_TRAIN_STATION
	warp_def $5, $1d, 1, GROUP_GOLDENROD_FLOWER_SHOP, MAP_GOLDENROD_FLOWER_SHOP
	warp_def $9, $21, 1, GROUP_GOLDENROD_PP_SPEECH_HOUSE, MAP_GOLDENROD_PP_SPEECH_HOUSE
	warp_def $7, $f, 1, GROUP_GOLDENROD_NAME_RATERS_HOUSE, MAP_GOLDENROD_NAME_RATERS_HOUSE
	warp_def $1b, $18, 1, GROUP_GOLDENROD_DEPT_STORE_1F, MAP_GOLDENROD_DEPT_STORE_1F
	warp_def $15, $e, 1, GROUP_GOLDENROD_GAME_CORNER, MAP_GOLDENROD_GAME_CORNER
	warp_def $f, $5, 1, GROUP_RADIO_TOWER_1F, MAP_RADIO_TOWER_1F
	warp_def $1, $13, 3, GROUP_ROUTE_35_GOLDENROD_GATE, MAP_ROUTE_35_GOLDENROD_GATE
	warp_def $5, $9, 8, GROUP_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, MAP_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES
	warp_def $1d, $9, 5, GROUP_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, MAP_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES
	warp_def $1b, $e, 1, GROUP_GOLDENROD_POKECENTER_1F, MAP_GOLDENROD_POKECENTER_1F

	; xy triggers
	db 0

	; signposts
	db 12
	signpost 14, 10, $0, MapGoldenrodCitySignpost0Script
	signpost 17, 4, $0, MapGoldenrodCitySignpost1Script
	signpost 27, 26, $0, MapGoldenrodCitySignpost2Script
	signpost 9, 26, $0, MapGoldenrodCitySignpost3Script
	signpost 18, 22, $0, MapGoldenrodCitySignpost4Script
	signpost 30, 28, $0, MapGoldenrodCitySignpost5Script
	signpost 22, 16, $0, MapGoldenrodCitySignpost6Script
	signpost 7, 12, $0, MapGoldenrodCitySignpost7Script
	signpost 6, 8, $0, MapGoldenrodCitySignpost8Script
	signpost 30, 10, $0, MapGoldenrodCitySignpost9Script
	signpost 27, 17, $1, MapGoldenrodCitySignpost10Script
	signpost 6, 30, $0, MapGoldenrodCitySignpost11Script

	; people-events
	db 15
	person_event SPRITE_POKEFAN_M, 22, 11, $7, $0, 255, 255, $0, 0, PokefanMScript_0x1989e3, $06cf
	person_event SPRITE_YOUNGSTER, 21, 34, $2, $11, 255, 255, $0, 0, YoungsterScript_0x1989e6, $06cf
	person_event SPRITE_COOLTRAINER_F, 20, 16, $8, $0, 255, 255, $a0, 0, CooltrainerFScript_0x1989e9, $06cf
	person_event SPRITE_COOLTRAINER_F, 30, 24, $2, $21, 255, 255, $0, 0, CooltrainerFScript_0x1989fd, $06cf
	person_event SPRITE_YOUNGSTER, 21, 23, $2, $11, 255, 255, $80, 0, YoungsterScript_0x198a11, $06cf
	person_event SPRITE_LASS, 14, 21, $5, $2, 255, 255, $a0, 0, LassScript_0x198a14, $06cf
	person_event SPRITE_GRAMPS, 31, 14, $5, $1, 255, 255, $0, 0, GrampsScript_0x198a17, $06cf
	person_event SPRITE_ROCKET, 20, 8, $7, $0, 255, 255, $0, 0, RocketScript_0x198a1a, $06cc
	person_event SPRITE_ROCKET, 24, 32, $7, $0, 255, 255, $0, 0, RocketScript_0x198a29, $06cd
	person_event SPRITE_ROCKET, 19, 12, $6, $0, 255, 255, $0, 0, RocketScript_0x198a2c, $06cd
	person_event SPRITE_ROCKET, 27, 20, $9, $0, 255, 255, $0, 0, RocketScript_0x198a2f, $06ce
	person_event SPRITE_ROCKET, 24, 33, $7, $0, 255, 255, $0, 0, RocketScript_0x198a32, $06ce
	person_event SPRITE_ROCKET, 11, 33, $6, $0, 255, 255, $0, 0, RocketScript_0x198a35, $06ce
	person_event SPRITE_ROCKET, 14, 35, $8, $0, 255, 255, $0, 0, RocketScript_0x198a38, $06ce
	person_event SPRITE_POKEFAN_M, 26, 16, $3, $0, 255, 255, $80, 0, PokefanMScript_0x198909, $076a
; 0x199321

