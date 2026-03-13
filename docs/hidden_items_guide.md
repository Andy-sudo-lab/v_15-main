# Hidden Items Guide — Complete Map Locations

All hidden items extracted from decompiled ActionScript (`subCheck()`, `subCheck2()`, `dataCheck()`).  
Format: `TEflg[ID]` → **Map** @ **(X, Y)** → Item rewarded.

> **How it works**: Each item is tracked by a `TEflg[]` flag. When the player walks on or interacts with the tile, if `TEflg[n]` is still `true`, the item is given and the flag is set to `false` (picked up).

---

## World Map (Map 0) — Hidden Ground Items

| TEflg | Location (X,Y) | Item ID | Item Name | Notes |
|-------|----------------|---------|-----------|-------|
| 11 | (47, 57) | 6 | Energy Water | Near starting village |
| 12 | (46, 56) | 171 | Mountain bell | Near starting village |
| 15 | (35, 19) | 57 | Perfume D | Face left (pHo=0) |
| 16 | (34, 18) | 3 | 120 ero (gold) | Face down (pHo=3) |
| 19 | (41, 51) | 10 | Supplement A | |
| 20 | (39, 58) | 108 | Briefs A | |
| 21 | (33, 60) | 170 | Royal family's crest | |
| 22 | (22, 57) | 195 | Herb | |
| 23 | (23, 58) | 111 | Shorts A | |
| 24 | (30, 58) | 6 | Energy Water | |
| 25 | (31, 58) | 7 | Cool gel | |
| 26 | (30, 59) | 7 | Cool gel | |
| 27 | (31, 59) | 21 | Aphrodisiac A | |
| 28 | (46, 58) | 190 | Marara's fruit | Special event |
| 30 | (22, 48) | 7 | Cool gel | |
| 31 | (13, 61) | 16 | Aphrodisiac lotion | |
| 32 | (11, 58) | 7 | Cool gel | |
| 33 | (12, 62) | 7 | Cool gel | |
| 34 | (3, 67) | 190 | Marara's fruit | |
| 35 | (20, 52) | 190 | Marara's fruit | |
| 40 | (21, 10) | 172 | Thunder wand | Face left; requires BTEflg[1] |
| 41 | (13, 8) | 28 | Incense | |
| 42 | (16, 14) | 112 | Shorts B | |
| 43 | (15, 12) | 31 | Oil A | |
| 44 | (36, 15) | 3 | 277 ero (gold) | |
| 45 | (9, 10) | 10 | Supplement A | |
| 46 | (9, 11) | 14 | Lotion A | |
| 47 | (9, 12) | 7 | Cool gel | |
| 48 | (20, 44) | 17 | Guardian angel's tear | |
| 55 | (9, 15) | 7 | Cool gel | |
| 56 | (9, 16) | 23 | Candle A | |
| 57 | (19, 26) | 195 | Herb | |
| 58 | (20, 27) | 195 | Herb | |
| 59 | (3, 31) | 171 | Mountain bell | |
| 63 | (17, 38) | 7 | Cool gel | |
| 64 | (18, 37) | 19 | Lotion S | |
| 65 | (20, 50) | 29 | Oil S | |
| 67 | (16, 80) | 174 | Crestone | Requires BTEflg[2]; face up |
| 68 | (22, 79) | 117 | Spats B | Requires BTEflg[2]; face left |
| 70 | (10, 79) | 24 | Candle S | |
| 75 | (12, 88) | 201 | Signpost letter | Face left |
| 76 | (21, 89) | 201 | Signpost letter | Face left |
| 77 | (25, 91) | 201 | Signpost letter | Face left |
| 78 | (26, 87) | 201 | Signpost letter | Face left |
| 79 | (37, 94) | 201 | Signpost letter | Face up |
| 130 | (94, 95) | 202 | Mystery book | Requires TElv[1]==1; face left |
| 131 | (66, 86) | 203 | Mystery book 2 | Requires TElv[1]==4 |
| 134 | (96, 64) | 195 | Herb | |
| 135 | (82, 63) | 195 | Herb | |
| 136 | (96, 62) | 191 | Thunder stone | |
| 137 | (84, 61) | 195 | Herb | |
| 139 | (69, 88) | 17 | Guardian angel's tear | |
| 140 | (59, 94) | 7 | Cool gel | |
| 141 | (59, 93) | 23 | Candle A | |
| 142 | (59, 92) | 7 | Cool gel | |
| 144 | (61, 96) | 7 | Cool gel | |
| 145 | (65, 94) | 84 | Snow cap | Face up |
| 146 | (73, 94) | 177 | Holy water | Face up; requires BTEflg[3] |
| 147 | (76, 92) | 21 | Aphrodisiac A | Face up |
| 148 | (94, 93) | 25 | Candle KING | Face left |
| 164 | (63, 73) | 83 | Fire cap | Face up |
| 166 | (38, 67) | 7 | Cool gel | |
| 167 | (45, 66) | 7 | Cool gel | |
| 168 | (51, 65) | 11 | Supplement S | |
| 169 | (48, 66) | 7 | Cool gel | |
| 170 | (38, 69) | 179 | Medicine | |
| 180 | (86, 53) | 17 | Guardian angel's tear | Face up |
| 181 | (87, 53) | 34 | Oil KING | Face up |
| 182 | (96, 44) | 52 | Battery KING | Requires TEflg[179]=false |
| 183 | (72, 65) | 173 | Dynamite | |
| 270 | (83, 31) | 208 | Mystery book 4 | Face left |
| 272 | (84, 18) | 204 | Mystery book 3 | Requires TEflg[271]=false |

---

## Castle Area — Treasure Chests (Map 0 continued)

| TEflg | Location (X,Y) | Item ID | Notes |
|-------|----------------|---------|-------|
| 194 | (49, 66) | — | NPC event tile (chest marker) |
| 155 | (83, 49) | — | Warp point appears |

---

## Mine / Dungeon (Maps 31-34) — Locked Chests

All of these start as tile type **47** (locked/Mimic) and convert to **48** (open) after giving the item.

| TEflg | Map | Location (X,Y) | Item ID | Item Name |
|-------|-----|----------------|---------|-----------|
| 264 | 31 | (19, 19) | 184 | Whirlwind pants A |
| 265 | 31 | (5, 5) | 149 | Leather pants A |
| 266 | 31 | (5, 19) | 71 | Vibration G |
| 267 | 31 | (19, 5) | 151 | Leather pants S |
| 263 | 32 | (18, 13) | 150 | Leather pants B |
| 262 | 33 | (23, 13) | 148 | Armor pants |
| 261 | 34 | (17, 4) | 54 | Battery KING |

### Mine Rooms (Map 34) — Hidden Floor Items

| TEflg | Location (X,Y) | Item ID | Item Name |
|-------|----------------|---------|-----------|
| 250 | (10, 6) | 12 | Gold ingot |
| 251 | (12, 6) | 12 | Gold ingot |
| 252 | (14, 6) | 179 | Medicine |
| 253 | (16, 6) | 12 | Gold ingot |
| 254 | (10, 9) | 8 | Energy water S |
| 255 | (10, 20) | 8 | Energy water S |
| 256 | (12, 20) | 8 | Energy water S |
| 257 | (14, 20) | 179 | Medicine |
| 258 | (16, 20) | 8 | Energy water S |
| 259 | (10, 17) | 8 | Energy water S |

---

## Graveyard Rooms (Maps 35-36)

### Map 35 — Locked/Mimic Chests

| TEflg | Location (X,Y) | Item ID | Item Name | Type |
|-------|----------------|---------|-----------|------|
| 290 | (4, 11) | 182 | Whirlwind pants KING | Locked (tile 45→46) |
| 291 | (11, 11) | — | **MIMIC** battle! | Tile 45 → Mimic fight |
| 327 | (3, 3) | 225 | Angel pants | Locked (47→48); needs TEflg[337]=false |
| 328 | (10, 3) | 224 | Devil pants | Locked (47→48); needs BTEflg[7] |

### Map 35 — Hidden Floor Items (Gravekeeper's Treasures)

| TEflg | Location (X,Y) | Item ID | Item Name |
|-------|----------------|---------|-----------|
| 292 | (16, 3) | 210 | Satan's book | Requires TEflg[303]=false |
| 293 | (17, 3) | 193 | Ring KING | Requires TEflg[303]=false |

---

## Satan's World (Maps 36-37)

### Map 37 — Satan's World Items

| TEflg | Location (X,Y) | Item ID | Item Name | Notes |
|-------|----------------|---------|-----------|-------|
| 317 | (8, 16) | 220 | Thunder ring | Face down; requires TEflg[311]=false |
| 323 | (4, 22) | 44 | Vivi extension | Locked chest (45→46) |

---

## Hell (Map 38) — Final Area

| TEflg | Location (X,Y) | Item ID | Item Name | Type |
|-------|----------------|---------|-----------|------|
| 330 | (11, 19) | — | **MIMIC** battle! | Locked chest (tile 45) |
| 331 | (9, 21) | — | **MIMIC** battle! | Tile 47 |
| 332 | (18, 18) | 156 | Hell pants | Locked (45→46) |

---

## Special Story Items (found via dataCheck events)

These aren't "hidden on ground" but are given through NPC/event interactions at specific coordinates:

| TEflg | Map | Location | Item ID | Item Name | Condition |
|-------|-----|----------|---------|-----------|-----------|
| 28 | 0 | (46, 58) | 190 | Marara's fruit | Must dig |
| 161 | 0 | (48, 62) | 205 | Lake treasure | After lake quest |
| 192 | 15 | (5, 4) | — | Triggers NPC event | |
| 10 | 22 | (4, 4) | — | NPC event | |
| 8 | 22 | (3, 3) | — | Chest on map 22 |
| 9 | 22 | (5, 3) | — | Chest on map 22 |
| 184 | 20 | (3, 3) | — | Chest on map 20 |
| 185 | 20 | (4, 3) | — | Chest on map 20 |
| 186 | 21 | (5, 3) | — | Chest on map 21 |

---

## Key Item Locations (Story Quest Items)

| Item | Where to Find | How |
|------|--------------|-----|
| **Royal family's crest** (170) | Map 0, (33, 60) | Hidden ground item |
| **Mountain bell** (171) | Map 0, (46, 56) or (3, 31) | Hidden ground items |
| **Thunder wand** (172) | Map 0, (21, 10) | Requires BTEflg[1] |
| **Crestone** (174) | Map 0, (16, 80) | Requires BTEflg[2] |
| **Dynamite** (173) | Map 0, (72, 65) | Hidden ground item |
| **Holy water** (177) | Map 0, (73, 94) | Requires BTEflg[3] |
| **Thunder stone** (191) | Map 0, (96, 62) | Hidden ground item |
| **Thunder ring** (220) | Map 37, (8, 16) | Story progression |
| **Lake treasure** (205) | Lake via event at (48, 62) | After completing lake quest |
| **Mystery books** 1-4 | Various locations | Story progression items |

---

## Tips

- **Mimic traps** (tile 47 or 45) at: Map 35 (11,11), Map 38 (11,19), Map 38 (9,21) — triggers enemy #33 (Mimic) battle
- Many items require **story progression flags** (`BTEflg[1-7]`) to appear
- **Locked chests** (tile 45) must be unlocked by specific events before rewarding items
- Items at coordinates like (9, 10-16) on Map 0 are clustered — **check the whole NW fishing village area**
- The SE port area (59-69, 88-96) has many **Cool gels** and **herbs** hidden in the ground
