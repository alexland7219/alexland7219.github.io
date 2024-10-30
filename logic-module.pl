:- use_module(library(lists)).
:- dynamic(have/1).

avail(equipment_slot_1).
avail(equipment_slot_2).
avail(equipment_slot_3).

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

%% avail(kings_tomb) :- (have(titans_mitt); have(mirror)), have(pegasus_boots).

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

%%location(magic_bat).

avail(sick_kid) :- have(bottle).
avail(sick_kid) :- have(bottle_with_gold_bee).
avail(sick_kid) :- have(bottle_with_blue_potion).
avail(sick_kid) :- have(bottle_with_green_potion).
avail(sick_kid) :- have(bottle_with_red_potion).

avail(lost_woods_hideout).

%%location(lumberjack_tree).
%%location(graveyard_ledge).

avail(mushroom).

avail(floodgate_chest).
avail(links_house).
avail(aginahs_cave).
avail(mini_moldorm_cave___far_left).
avail(mini_moldorm_cave___left).
avail(mini_moldorm_cave___right).
avail(mini_moldorm_cave___far_right).
avail(ice_rod_cave).

avail(hobo) :- have(flippers).

%%location(bombos_tablet).
%%location(cave_45).
%%location(checkerboard_cave).
avail(mini_moldorm_cave___npc).
avail(library) :- have(pegasus_boots).
%%location(maze_race).
%%location(desert_ledge).
%%location(lake_hylia_island).
avail(sunken_treasure).
%%location(flute_spot).
%%location(sanctuary).
%%location(sewers___secret_room___left).
%%location(sewers___secret_room___middle).
%%location(sewers___secret_room___right).
%%location(sewers___dark_cross).
%%location(hyrule_castle___boomerang_chest).
%%location(hyrule_castle___map_chest).
%%location(hyrule_castle___zeldas_cell).
%%location(links_uncle).
%%location(secret_passage).
%%location(eastern_palace___compass_chest).
%%location(eastern_palace___big_chest).
%%location(eastern_palace___cannonball_chest).
%%location(eastern_palace___big_key_chest).
%%location(eastern_palace___map_chest).
%%location(eastern_palace___boss).
%%location(eastern_palace___prize).
%%location(desert_palace___big_chest).
%%location(desert_palace___map_chest).
%%location(desert_palace___torch).
%%location(desert_palace___big_key_chest).
%%location(desert_palace___compass_chest).
%%location(desert_palace___boss).
%%location(desert_palace___prize).
%%location(old_man).
%%location(spectacle_rock_cave).
%%location(ether_tablet).
%%location(spectacle_rock).
%%location(spiral_cave).
%%location(mimic_cave).
%%location(paradox_cave_lower___far_left).
%%location(paradox_cave_lower___left).
%%location(paradox_cave_lower___right).
%%location(paradox_cave_lower___far_right).
%%location(paradox_cave_lower___middle).
%%location(paradox_cave_upper___left).
%%location(paradox_cave_upper___right).
%%location(floating_island).
%%location(tower_of_hera___big_key_chest).
%%location(tower_of_hera___basement_cage).
%%location(tower_of_hera___map_chest).
%%location(tower_of_hera___compass_chest).
%%location(tower_of_hera___big_chest).
%%location(tower_of_hera___boss).
%%location(tower_of_hera___prize).
%%location(castle_tower___room_03).
%%location(castle_tower___dark_maze).
%%location(superbunny_cave___top).
%%location(superbunny_cave___bottom).
%%location(hookshot_cave___top_right).
%%location(hookshot_cave___top_left).
%%location(hookshot_cave___bottom_left).
%%location(hookshot_cave___bottom_right).
%%location(spike_cave).
%%location(catfish).
%%location(pyramid).
%%location(pyramid_fairy___left).
%%location(pyramid_fairy___right).
%%location(brewery).
%%location(c_shaped_house).
%%location(chest_game).
%%location(hammer_pegs).
%%location(bumper_cave).
%%location(blacksmith).
%%location(purple_chest).
%%location(hype_cave___top).
%%location(hype_cave___middle_right).
%%location(hype_cave___middle_left).
%%location(hype_cave___bottom).
%%location(stumpy).
%%location(hype_cave___npc).
%%location(digging_game).
%%location(mire_shed___left).
%%location(mire_shed___right).
%%location(palace_of_darkness___shooter_room).
%%location(palace_of_darkness___big_key_chest).
%%location(palace_of_darkness___the_arena___ledge).
%%location(palace_of_darkness___the_arena___bridge).
%%location(palace_of_darkness___stalfos_basement).
%%location(palace_of_darkness___map_chest).
%%location(palace_of_darkness___big_chest).
%%location(palace_of_darkness___compass_chest).
%%location(palace_of_darkness___harmless_hellway).
%%location(palace_of_darkness___dark_basement___left).
%%location(palace_of_darkness___dark_basement___right).
%%location(palace_of_darkness___dark_maze___top).
%%location(palace_of_darkness___dark_maze___bottom).
%%location(palace_of_darkness___boss).
%%location(palace_of_darkness___prize).
%%location(swamp_palace___entrance).
%%location(swamp_palace___big_chest).
%%location(swamp_palace___big_key_chest).
%%location(swamp_palace___map_chest).
%%location(swamp_palace___west_chest).
%%location(swamp_palace___compass_chest).
%%location(swamp_palace___flooded_room___left).
%%location(swamp_palace___flooded_room___right).
%%location(swamp_palace___waterfall_room).
%%location(swamp_palace___boss).
%%location(swamp_palace___prize).
%%location(skull_woods___big_chest).
%%location(skull_woods___big_key_chest).
%%location(skull_woods___compass_chest).
%%location(skull_woods___map_chest).
%%location(skull_woods___bridge_room).
%%location(skull_woods___pot_prison).
%%location(skull_woods___pinball_room).
%%location(skull_woods___boss).
%%location(skull_woods___prize).
%%location(thieves_town___attic).
%%location(thieves_town___big_key_chest).
%%location(thieves_town___map_chest).
%%location(thieves_town___compass_chest).
%%location(thieves_town___ambush_chest).
%%location(thieves_town___big_chest).
%%location(thieves_town___blinds_cell).
%%location(thieves_town___boss).
%%location(thieves_town___prize).
%%location(ice_palace___big_key_chest).
%%location(ice_palace___compass_chest).
%%location(ice_palace___map_chest).
%%location(ice_palace___spike_room).
%%location(ice_palace___freezor_chest).
%%location(ice_palace___iced_t_room).
%%location(ice_palace___big_chest).
%%location(ice_palace___boss).
%%location(ice_palace___prize).
%%location(misery_mire___big_chest).
%%location(misery_mire___main_lobby).
%%location(misery_mire___big_key_chest).
%%location(misery_mire___compass_chest).
%%location(misery_mire___bridge_chest).
%%location(misery_mire___map_chest).
%%location(misery_mire___spike_chest).
%%location(misery_mire___boss).
%%location(misery_mire___prize).
%%location(turtle_rock___chain_chomps).
%%location(turtle_rock___compass_chest).
%%location(turtle_rock___roller_room___left).
%%location(turtle_rock___roller_room___right).
%%location(turtle_rock___big_chest).
%%location(turtle_rock___big_key_chest).
%%location(turtle_rock___crystaroller_room).
%%location(turtle_rock___eye_bridge___bottom_left).
%%location(turtle_rock___eye_bridge___bottom_right).
%%location(turtle_rock___eye_bridge___top_left).
%%location(turtle_rock___eye_bridge___top_right).
%%location(turtle_rock___boss).
%%location(turtle_rock___prize).
%%location(ganons_tower___bobs_torch).
%%location(ganons_tower___dms_room___top_left).
%%location(ganons_tower___dms_room___top_right).
%%location(ganons_tower___dms_room___bottom_left).
%%location(ganons_tower___dms_room___bottom_right).
%%location(ganons_tower___randomizer_room___top_left).
%%location(ganons_tower___randomizer_room___top_right).
%%location(ganons_tower___randomizer_room___bottom_left).
%%location(ganons_tower___randomizer_room___bottom_right).
%%location(ganons_tower___firesnake_room).
%%location(ganons_tower___map_chest).
%%location(ganons_tower___big_chest).
%%location(ganons_tower___hope_room___left).
%%location(ganons_tower___hope_room___right).
%%location(ganons_tower___bobs_chest).
%%location(ganons_tower___tile_room).
%%location(ganons_tower___compass_room___top_left).
%%location(ganons_tower___compass_room___top_right).
%%location(ganons_tower___compass_room___bottom_left).
%%location(ganons_tower___compass_room___bottom_right).
%%location(ganons_tower___big_key_chest).
%%location(ganons_tower___big_key_room___left).
%%location(ganons_tower___big_key_room___right).
%%location(ganons_tower___mini_helmasaur_room___left).
%%location(ganons_tower___mini_helmasaur_room___right).
%%location(ganons_tower___pre_moldorm_chest).
%%location(ganons_tower___moldorm_chest).
%%location(turtle_rock_medallion).
%%location(misery_mire_medallion).
%%location(waterfall_bottle).
%%location(pyramid_bottle).

have(_) :- false.
avail(_) :- false.

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