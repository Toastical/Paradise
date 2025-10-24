// debug item for the console
/obj/item/bluespace_miner_console
	name = "bluespace miner console"
	desc = "Placeholder."
	icon = 'icons/obj/toy.dmi'
	icon_state = "toyhammer"
	var/datum/asteroids/asteroids = new()

/datum/asteroids
	var/list/grid
// what's needed here beyond a grid? I'd need to setup the size of the grid somehow, with each square. Each grid square is either empty or has an
// assoc value for an asteroid. Asteroids will be datums. I'll need some sort of system to spread out the asteroids differently. Make each asteroid easily
// addable.

