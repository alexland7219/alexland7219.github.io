:- use_module(library(lists)).
:- dynamic(have/1).

avail(equipment_slot_1).
avail(equipment_slot_2).
avail(equipment_slot_3).

% LOCATIONS IN LIGHT WORLD

avail(sahasrahlas_hut___left).
avail(sahasrahlas_hut___middle).
avail(sahasrahlas_hut___right).

avail(sahasrahla) :- have(pendant_of_courage).

avail(king_zora) :- have(flippers).
avail(king_zora) :- have(power_glove).

avail(potion_shop) :- have(mushroom).

avail(zoras_ledge) :- have(flippers).

location(waterfall_fairy___left) :- have(flippers).
location(waterfall_fairy___right) :- have(flippers).

avail(master_sword_pedestal) :- have(pendant_of_wisdom), have(pendant_of_courage), have(pendant_of_power).

avail(kings_tomb) :- have(pegasus_boots), have(titans_mitt).
avail(kings_tomb) :- have(pegasus_boots), can_access(dark_world_west), have(magic_mirror).

avail(kakariko_tavern).
avail(chicken_house).
avail(kakariko_well___top).
avail(kakariko_well___left).
avail(kakariko_well___middle).
avail(kakariko_well___right).
avail(kakariko_well___bottom).

avail(blinds_hideout___top).
avail(blinds_hideout___left).
avail(blinds_hideout___right).
avail(blinds_hideout___far_left).
avail(blinds_hideout___far_right).

avail(pegasus_rocks) :- have(pegasus_boots).

avail(bottle_merchant).

avail(magic_bat) :- have(powder), have(hammer).
avail(magic_bat) :- have(powder), have(titans_mitt), have(magic_mirror).

avail(sick_kid) :- have(bottle_one).
avail(sick_kid) :- have(bottle_with_gold_bee).
avail(sick_kid) :- have(bottle_with_blue_potion).
avail(sick_kid) :- have(bottle_with_green_potion).
avail(sick_kid) :- have(bottle_with_red_potion).

avail(lost_woods_hideout).

avail(lumberjack_tree) :- have(aganhim), have(pegasus_boots).

avail(graveyard_ledge) :- have(magic_mirror), can_access(dark_world_west).

avail(mushroom).
avail(floodgate_chest).
avail(links_house).
avail(aginahs_cave).
avail(mini_moldorm_cave___far_left).
avail(mini_moldorm_cave___left).
avail(mini_moldorm_cave___right).
avail(mini_moldorm_cave___far_right).
avail(mini_moldorm_cave___npc).

avail(ice_rod_cave).

avail(hobo) :- have(flippers).

avail(bombos_tablet) :- have(magic_mirror), have(master_sword), have(book_of_mudora), can_access(dark_world_west).
avail(cave_45) :- have(magic_mirror), can_access(dark_world_west).

avail(checkerboard_cave) :- have(magic_mirror), can_access(dark_world_mire).
avail(library) :- have(pegasus_boots).
avail(maze_race).

avail(desert_ledge) :- can_access(desert_palace).

avail(lake_hylia_island) :- have(magic_mirror), have(flippers), can_access(dark_world_east).
avail(lake_hylia_island) :- have(magic_mirror), have(flippers), can_access(dark_world_west).

avail(sunken_treasure).
avail(flute_spot) :- have(shovel).

% LOCATIONS IN HYRULE CASTLE

avail(sanctuary).

avail(sewers___secret_room___left) :- (have(lamp) ; have(power_glove)).
avail(sewers___secret_room___middle) :- (have(lamp) ; have(power_glove)).
avail(sewers___secret_room___right) :- (have(lamp) ; have(power_glove)).
avail(sewers___dark_cross) :- have(lamp).

avail(hyrule_castle___boomerang_chest).
avail(hyrule_castle___map_chest).
avail(hyrule_castle___zeldas_cell).
avail(links_uncle).
avail(secret_passage).

%% LOCATIONS IN EASTERN PALACE

avail(eastern_palace___compass_chest).
avail(eastern_palace___big_chest) :- have(big_key_p1).
avail(eastern_palace___cannonball_chest).
avail(eastern_palace___big_key_chest) :- have(lamp).
avail(eastern_palace___map_chest).
avail(eastern_palace___boss) :- have(lamp), have(normal_bow), have(big_key_p1).
avail(eastern_palace___prize) :- avail(eastern_palace___boss).

%% LOCATIONS IN DESERT PALACE

avail(desert_palace___map_chest) :- can_access(desert_palace).
avail(desert_palace___torch) :- can_access(desert_palace), have(pegasus_boots).
avail(desert_palace___compass_chest) :- can_access(desert_palace), have(key_p2).
avail(desert_palace___big_key_chest) :- can_access(desert_palace), have(key_p2).
avail(desert_palace___big_chest) :- can_access(desert_palace), have(big_key_p2).

avail(desert_palace___boss) :- can_access(desert_palace), have(power_glove), have(big_key_p2), have(lamp).
avail(desert_palace___boss) :- can_access(desert_palace), have(power_glove), have(big_key_p2), have(fire_rod).

avail(desert_palace___prize) :- avail(desert_palace___boss).

%% LOCATIONS IN DEATH MOUNTAIN (LIGHT)

avail(old_man) :- can_access(death_mountain), have(lamp).
avail(spectacle_rock_cave) :- can_access(death_mountain).

avail(ether_tablet) :- can_access(death_mountain), have(book_of_mudora), have(master_sword), have(magic_mirror).
avail(ether_tablet) :- can_access(death_mountain), have(book_of_mudora), have(master_sword), have(hookshot), have(hammer).

avail(spectacle_rock) :- can_access(death_mountain), have(magic_mirror).

avail(mimic_cave) :- can_access(turtle_rock), have(magic_mirror).

avail(spiral_cave) :- can_access(east_death_mountain).
avail(paradox_cave_lower___far_left) :- can_access(east_death_mountain).
avail(paradox_cave_lower___left) :- can_access(east_death_mountain).
avail(paradox_cave_lower___right) :- can_access(east_death_mountain).
avail(paradox_cave_lower___far_right) :- can_access(east_death_mountain).
avail(paradox_cave_lower___middle) :- can_access(east_death_mountain).
avail(paradox_cave_upper___left) :- can_access(east_death_mountain).
avail(paradox_cave_upper___right) :- can_access(east_death_mountain).

avail(floating_island) :- can_access(dark_world_death_mountain), have(magic_mirror).

%% LOCATIONS IN TOWER OF HERA

avail(tower_of_hera___big_key_chest) :- can_access(tower_of_hera), have(key_p3), (have(lamp) ; have(fire_rod)).
avail(tower_of_hera___basement_cage) :- can_access(tower_of_hera).
avail(tower_of_hera___map_chest) :- can_access(tower_of_hera).
avail(tower_of_hera___compass_chest) :- can_access(tower_of_hera), have(big_key_p3).
avail(tower_of_hera___big_chest) :- can_access(tower_of_hera), have(big_key_p3).
avail(tower_of_hera___boss) :- can_access(tower_of_hera), have(big_key_p3).
avail(tower_of_hera___prize) :- can_access(tower_of_hera), have(big_key_p3).

%% LOCATIONS IN CASTLE TOWER

avail(castle_tower___room_03) :- can_access(castle_tower).
avail(castle_tower___dark_maze) :- can_access(castle_tower), have(key_a1_1), have(lamp).

avail(aganhim) :- can_access(castle_tower), have(key_a1_2), have(lamp), have(fighters_sword).

%% LOCATIONS IN DEATH MOUNTAIN (DARK)

avail(superbunny_cave___top) :- can_access(dark_world_death_mountain).
avail(superbunny_cave___bottom) :- can_access(dark_world_death_mountain).

avail(hookshot_cave___top_right) :- can_access(dark_world_death_mountain), have(hookshot).
avail(hookshot_cave___top_left) :- can_access(dark_world_death_mountain), have(hookshot).
avail(hookshot_cave___bottom_left) :- can_access(dark_world_death_mountain), have(hookshot).
avail(hookshot_cave___bottom_right) :- can_access(dark_world_death_mountain), (have(hookshot) ; have(pegasus_boots)).

avail(spike_cave) :- can_access(death_mountain), have(hammer), have(power_glove), (have(cape) ; avail(sick_kid) ; have(cane_of_byrna) ; have(half_magic)).

%% LOCATIONS IN DARK WORLD

avail(catfish) :- can_access(dark_world_east), have(power_glove), have(moon_pearl).
avail(pyramid) :- can_access(dark_world_east).

avail(pyramid_fairy___left) :- can_access(dark_world_south), can_access(dark_world_east), have(crystal_5), have(crystal_6), have(moon_pearl), have(hammer).
avail(pyramid_fairy___left) :- can_access(dark_world_south), can_access(dark_world_east), have(crystal_5), have(crystal_6), have(moon_pearl), have(magic_mirror), have(aganhim).
avail(pyramid_fairy___right) :- avail(pyramid_fairy___left).

avail(brewery) :- can_access(dark_world_west).
avail(c_shaped_house) :- can_access(dark_world_west).
avail(chest_game) :- can_access(dark_world_west).

avail(hammer_pegs) :- can_access(dark_world_west), have(hammer), have(titans_mitt).

avail(bumper_cave) :- can_access(dark_world_west), have(cape).
avail(blacksmith) :- can_access(dark_world_west), have(titans_mitt).
avail(purple_chest) :- avail(blacksmith).

avail(hype_cave___top) :- can_access(dark_world_south).
avail(hype_cave___middle_right) :- can_access(dark_world_south).
avail(hype_cave___middle_left) :- can_access(dark_world_south).
avail(hype_cave___bottom) :- can_access(dark_world_south).
avail(stumpy) :- can_access(dark_world_south).
avail(hype_cave___npc) :- can_access(dark_world_south).
avail(digging_game) :- can_access(dark_world_south).

avail(mire_shed___left) :- can_access(dark_world_mire), have(moon_pearl).
avail(mire_shed___right) :- can_access(dark_world_mire), have(moon_pearl).

%% LOCATIONS IN DARK PALACE

avail(palace_of_darkness___shooter_room) :- can_access(palace_of_darkness).
avail(palace_of_darkness___the_arena___ledge) :- can_access(palace_of_darkness), have(bow).
avail(palace_of_darkness___the_arena___bridge) :- can_access(palace_of_darkness), have(key_d1_1).
avail(palace_of_darkness___the_arena___bridge) :- can_access(palace_of_darkness), have(bow), have(hammer).

avail(palace_of_darkness___stalfos_basement) :- avail(palace_of_darkness___the_arena___bridge).
avail(palace_of_darkness___map_chest) :- can_access(palace_of_darkness), have(bow).
avail(palace_of_darkness___big_chest) :- avail(palace_of_darkness___dark_maze___top), have(big_key_d1).
avail(palace_of_darkness___compass_chest) :- can_access(palace_of_darkness), have(key_d1_1), have(key_d1_2).
avail(palace_of_darkness___compass_chest) :- can_access(palace_of_darkness), have(key_d1_1), have(bow), have(hammer).

avail(palace_of_darkness___big_key_chest) :- can_access(palace_of_darkness), have(key_d1_1), have(key_d1_2).
avail(palace_of_darkness___big_key_chest) :- have(key_d1_1), can_access(palace_of_darkness), have(bow), have(hammer).

avail(palace_of_darkness___dark_basement___left) :- avail(palace_of_darkness___compass_chest), have(lamp).
avail(palace_of_darkness___dark_basement___right) :- avail(palace_of_darkness___dark_basement___left).
avail(palace_of_darkness___dark_maze___top) :- can_access(palace_of_darkness), have(key_d1_1), have(key_d1_2), have(key_d1_3), have(lamp).
avail(palace_of_darkness___dark_maze___top) :- can_access(palace_of_darkness), have(key_d1_1), have(key_d1_2), have(bow), have(hammer), have(lamp).
avail(palace_of_darkness___dark_maze___bottom) :- avail(palace_of_darkness___dark_maze___top).

avail(palace_of_darkness___harmless_hellway) :- can_access(palace_of_darkness), have(key_d1_1), have(key_d1_2), have(key_d1_3).
avail(palace_of_darkness___harmless_hellway) :- can_access(palace_of_darkness), have(key_d1_1), have(key_d1_2), have(bow), have(hammer).

avail(palace_of_darkness___boss) :- can_access(palace_of_darkness), have(bow), have(hammer), have(key_d1_1), have(big_key_d1), have(lamp).
avail(palace_of_darkness___prize) :- can_access(palace_of_darkness___boss).

%% LOCATIONS IN SWAMP PALACE

avail(swamp_palace___entrance) :- can_access(swamp_palace).
avail(swamp_palace___big_chest) :- can_access(swamp_palace), have(key_d2), have(hammer), have(big_key_d2).
avail(swamp_palace___big_key_chest) :- can_access(swamp_palace), have(key_d2), have(hammer).
avail(swamp_palace___map_chest) :- can_access(swamp_palace), have(key_d2).
avail(swamp_palace___west_chest) :- can_access(swamp_palace), have(key_d2), have(hammer).
avail(swamp_palace___compass_chest) :- can_access(swamp_palace), have(key_d2), have(hammer).
avail(swamp_palace___flooded_room___left) :- can_access(swamp_palace), have(key_d2), have(hammer), have(hookshot).
avail(swamp_palace___flooded_room___right) :- can_access(swamp_palace), have(key_d2), have(hammer), have(hookshot).
avail(swamp_palace___waterfall_room) :- can_access(swamp_palace), have(key_d2), have(hammer), have(hookshot).
avail(swamp_palace___boss) :- can_access(swamp_palace), have(key_d2), have(hammer), have(hookshot).
avail(swamp_palace___prize) :- avail(swamp_palace___boss).

%% LOCATIONS IN SKULL WOODS

avail(skull_woods___big_chest) :- can_access(skull_woods), have(big_key_d3).
avail(skull_woods___big_key_chest) :- can_access(skull_woods).
avail(skull_woods___compass_chest) :- can_access(skull_woods).
avail(skull_woods___map_chest) :- can_access(skull_woods).
avail(skull_woods___bridge_room) :- can_access(skull_woods), have(fire_rod).
avail(skull_woods___pot_prison) :- can_access(skull_woods).
avail(skull_woods___pinball_room) :- can_access(skull_woods).
avail(skull_woods___boss) :- can_access(skull_woods), have(fire_rod).
avail(skull_woods___prize) :- avail(skull_woods___boss).

%% LOCATIONS IN THIEVES' TOWN

avail(thieves_town___attic) :- can_access(thieves_town), have(big_key_d4).
avail(thieves_town___big_key_chest) :- can_access(thieves_town).
avail(thieves_town___map_chest) :- can_access(thieves_town).
avail(thieves_town___compass_chest) :- can_access(thieves_town).
avail(thieves_town___ambush_chest) :- can_access(thieves_town).
avail(thieves_town___big_chest) :- can_access(thieves_town), have(big_key_d4), have(key_d4), have(hammer).
avail(thieves_town___blinds_cell) :- can_access(thieves_town), have(big_key_d4).
avail(thieves_town___boss) :- can_access(thieves_town), have(big_key_d4).
avail(thieves_town___prize) :- avail(thieves_town___boss).

%% LOCATIONS IN ICE PALACE

avail(ice_palace___big_key_chest) :- can_access(ice_palace), have(hammer), (have(key_d5_1) ; have(hookshot)).
avail(ice_palace___compass_chest) :- can_access(ice_palace).
avail(ice_palace___map_chest) :- can_access(ice_palace), have(hammer), (have(key_d5_1) ; have(hookshot)).
avail(ice_palace___spike_room) :- can_access(ice_palace), (have(key_d5_1) ; have(hookshot)).
avail(ice_palace___freezor_chest) :- can_access(ice_palace).
avail(ice_palace___iced_t_room) :- can_access(ice_palace).
avail(ice_palace___big_chest) :- can_access(ice_palace), have(big_key_d5).
avail(ice_palace___boss) :- can_access(ice_palace), have(hammer), have(big_key_d5), have(key_d5_1), have(key_d5_2).
avail(ice_palace___boss) :- can_access(ice_palace), have(hammer), have(big_key_d5), have(key_d5_1), have(cane_of_somaria).
avail(ice_palace___prize) :- avail(ice_palace___boss).

%% LOCATIONS MISERY MIRE

avail(misery_mire___big_chest) :- can_access(misery_mire), have(big_key_d6).
avail(misery_mire___main_lobby) :- can_access(misery_mire), have(key_d6).
avail(misery_mire___big_key_chest) :- can_access(misery_mire), have(key_d6), (have(lamp) ; have(fire_rod)).
avail(misery_mire___compass_chest) :- can_access(misery_mire), have(key_d6), (have(lamp) ; have(fire_rod)).
avail(misery_mire___bridge_chest) :- can_access(misery_mire).
avail(misery_mire___map_chest) :- can_access(misery_mire).
avail(misery_mire___spike_chest) :- can_access(misery_mire).
avail(misery_mire___boss) :- can_access(misery_mire), have(big_key_d6), have(lamp), have(cane_of_somaria).
avail(misery_mire___prize) :- can_access(misery_mire___boss).

%% LOCATIONS TURTLE ROCK

avail(turtle_rock___chain_chomps) :- can_access(turtle_rock), have(key_d7_1).
avail(turtle_rock___compass_chest) :- can_access(turtle_rock).
avail(turtle_rock___roller_room___left) :- can_access(turtle_rock), have(fire_rod).
avail(turtle_rock___roller_room___right) :- can_access(turtle_rock), have(fire_rod).
avail(turtle_rock___big_chest) :- can_access(turtle_rock), have(key_d7_2), have(big_key_d7).
avail(turtle_rock___big_key_chest) :- can_access(turtle_rock), have(key_d7_2).
avail(turtle_rock___crystaroller_room) :- can_access(turtle_rock), have(key_d7_2), have(big_key_d7).
avail(turtle_rock___eye_bridge___bottom_left) :- can_access(turtle_rock), have(key_d7_3), have(big_key_d7), have(lamp).
avail(turtle_rock___eye_bridge___bottom_right) :- can_access(turtle_rock), have(key_d7_3), have(big_key_d7), have(lamp).
avail(turtle_rock___eye_bridge___top_left) :- can_access(turtle_rock), have(key_d7_3), have(big_key_d7), have(lamp).
avail(turtle_rock___eye_bridge___top_right) :- can_access(turtle_rock), have(key_d7_3), have(big_key_d7), have(lamp).
avail(turtle_rock___boss) :- can_access(turtle_rock), have(key_d7_4), have(big_key_d7), have(lamp), have(fire_rod), have(ice_rod).
avail(turtle_rock___prize) :- avail(turtle_rock___boss).

%% LOCATIONS IN GANON'S CASTLE

avail(ganons_tower___bobs_torch) :- can_access(ganons_tower), have(pegasus_boots).
avail(ganons_tower___dms_room___top_left) :- can_access(ganons_tower), have(hookshot), have(hammer).
avail(ganons_tower___dms_room___top_right) :- can_access(ganons_tower), have(hookshot), have(hammer).
avail(ganons_tower___dms_room___bottom_left) :- can_access(ganons_tower), have(hookshot), have(hammer).
avail(ganons_tower___dms_room___bottom_right) :- can_access(ganons_tower), have(hookshot), have(hammer).
avail(ganons_tower___randomizer_room___top_left) :- can_access(ganons_tower), have(hookshot), have(hammer), have(key_a2_1), have(key_a2_2).
avail(ganons_tower___randomizer_room___top_right) :- can_access(ganons_tower), have(hookshot), have(hammer), have(key_a2_1), have(key_a2_2).
avail(ganons_tower___randomizer_room___bottom_left) :- can_access(ganons_tower), have(hookshot), have(hammer), have(key_a2_1), have(key_a2_2).
avail(ganons_tower___randomizer_room___bottom_right) :- can_access(ganons_tower), have(hookshot), have(hammer), have(key_a2_1), have(key_a2_2).
avail(ganons_tower___firesnake_room) :- can_access(ganons_tower), have(hookshot), have(hammer), have(key_a2_1).
avail(ganons_tower___map_chest) :- can_access(ganons_tower), have(hammer), have(key_a2_1).
avail(ganons_tower___big_chest).
avail(ganons_tower___hope_room___left).
avail(ganons_tower___hope_room___right).
avail(ganons_tower___bobs_chest).
avail(ganons_tower___tile_room).
avail(ganons_tower___compass_room___top_left).
avail(ganons_tower___compass_room___top_right).
avail(ganons_tower___compass_room___bottom_left).
avail(ganons_tower___compass_room___bottom_right).
avail(ganons_tower___big_key_chest).
avail(ganons_tower___big_key_room___left).
avail(ganons_tower___big_key_room___right).
avail(ganons_tower___mini_helmasaur_room___left).
avail(ganons_tower___mini_helmasaur_room___right).
avail(ganons_tower___pre_moldorm_chest).
avail(ganons_tower___moldorm_chest).


%% SECTIONS FROM LIGHT WORLD
can_access(tower_of_hera) :- can_access(death_mountain), have(magic_mirror).
can_access(tower_of_hera) :- can_access(death_mountain), have(hookshot), have(hammer).

can_access(castle_tower) :- have(master_sword).
can_access(castle_tower) :- have(cape).

can_access(death_mountain) :- have(ocarina_inactive).
can_access(death_mountain) :- have(power_glove), have(lamp).

can_access(east_death_mountain) :- can_access(death_mountain), have(hookshot).
can_access(east_death_mountain) :- can_access(death_mountain), have(magic_mirror), have(hammer).

can_access(desert_palace) :- have(book_of_mudora).
can_access(desert_palace) :- can_access(dark_world_mire), have(magic_mirror).

%% SECTIONS FROM DARK WORLD
can_access(dark_world_east) :- have(aganhim).
can_access(dark_world_east) :- have(power_glove), have(hammer).
can_access(dark_world_east) :- have(titans_mitt), have(flippers).

can_access(dark_world_west) :- have(power_glove), have(hammer), have(moon_pearl).
can_access(dark_world_west) :- have(titans_mitt), have(moon_pearl).
can_access(dark_world_west) :- have(aganhim), have(hookshot), (have(flippers) ; have(power_glove) ; have(hammer)), have(moon_pearl).

can_access(dark_world_south) :- have(power_glove), have(hammer), have(moon_pearl).
can_access(dark_world_south) :- have(titans_mitt), have(moon_pearl).
can_access(dark_world_south) :- have(aganhim), have(hammer), have(moon_pearl).
can_access(dark_world_south) :- have(aganhim), have(hookshot), (have(flippers) ; have(power_glove)), have(moon_pearl).

can_access(dark_world_mire) :- have(ocarina_inactive), have(titans_mitt).

can_access(dark_world_death_mountain) :- can_access(east_death_mountain), have(titans_mitt), have(moon_pearl).

can_access(palace_of_darkness) :- can_access(dark_world_east), have(moon_pearl).
can_access(swamp_palace) :- can_access(dark_world_south), have(magic_mirror), have(flippers).
can_access(skull_woods) :- can_access(dark_world_west).
can_access(thieves_town) :- can_access(dark_world_west).

can_access(ice_palace) :- have(flippers), have(titans_mitt), have(moon_pearl), have(bombos).
can_access(ice_palace) :- have(flippers), have(titans_mitt), have(moon_pearl), have(fire_rod).

can_access(misery_mire) :- can_access(dark_world_mire), have(bombos), have(quake), have(ether), have(hookshot), have(moon_pearl).
can_access(misery_mire) :- can_access(dark_world_mire), have(bombos), have(quake), have(ether), have(pegasus_boots), have(moon_pearl).

can_access(turtle_rock) :- can_access(dark_world_death_mountain), have(cane_of_somaria), have(hammer), have(titans_mitt), have(bombos), have(quake), have(ether).

can_access(ganons_tower) :- can_access(dark_world_death_mountain), have(crystal_1), have(crystal_2), have(crystal_3), have(crystal_4), have(crystal_5), have(crystal_6), have(crystal_7).

have(_) :- false.
avail(_) :- false.
can_access(_) :- false.

% Subtracts two lists
subtract([], _, []).
subtract(A, [], A).
subtract([A|XA], B, C) :-
    member(A, B),
    subtract(XA, B, C).

subtract([A|XA], B, [A|C]) :-
    \+ member(A, B),
    subtract(XA, B, C).

% Would be available locations if we had the item
would_be_avail(Item, Unavailable) :-
    findall(X, avail(X), AvailableBefore),
    asserta(have(Item)),
    findall(X, avail(X), AvailableAfter),
    retract(have(Item)),
    subtract(AvailableAfter, AvailableBefore, Unavailable).