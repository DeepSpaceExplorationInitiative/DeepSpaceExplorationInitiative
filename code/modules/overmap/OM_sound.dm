/obj/effect/overmap/visitable/sector/Crossed(var/obj/effect/overmap/visitable/ship/enterer)
	. = ..()
	if(istype(enterer))
		for(var/mob/potential_mob as anything in player_list)
			if(potential_mob.z in enterer.map_z)
				SEND_SOUND(potential_mob, 'sound/ambience/approaching_planet.ogg')