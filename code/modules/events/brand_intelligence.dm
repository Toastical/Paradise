/datum/event/brand_intelligence
	announceWhen	= 21
	endWhen			= 1000	//Ends when all vending machines are subverted anyway.

	var/list/obj/machinery/economy/vending/vendingMachines = list()
	var/list/obj/machinery/economy/vending/infectedMachines = list()
	var/obj/machinery/economy/vending/originMachine
	var/list/rampant_speeches = list("Try our aggressive new marketing strategies!", \
									"You should buy products to feed your lifestyle obsession!", \
									"Consume!", \
									"Your money can buy happiness!", \
									"Engage direct marketing!", \
									"Advertising is legalized lying! But don't let that put you off our great deals!", \
									"You don't want to buy anything? Yeah, well I didn't want to buy your mom either.")

/datum/event/brand_intelligence/announce(false_alarm)
	var/alarm_source = originMachine
	if(originMachine)
		alarm_source = originMachine.category
	else if(false_alarm)
		alarm_source = pick(VENDOR_TYPE_GENERIC, VENDOR_TYPE_CLOTHING, VENDOR_TYPE_FOOD, VENDOR_TYPE_DRINK, VENDOR_TYPE_SUPPLIES, VENDOR_TYPE_DEPARTMENTAL, VENDOR_TYPE_RECREATION)
	else
		log_debug("Couldn't announce brand intelligence -- no machine was selected, and it wasn't a false alarm! Killing event.")
		kill()
		return

	GLOB.minor_announcement.Announce("Rampant brand intelligence has been detected aboard [station_name()], please stand-by. The origin is believed to be \a [alarm_source] vendor.", "Machine Learning Alert", 'sound/AI/brand_intelligence.ogg')

/datum/event/brand_intelligence/start()
	var/list/obj/machinery/economy/vending/leaderables = list()
	for(var/obj/machinery/economy/vending/candidate in SSmachines.get_by_type(/obj/machinery/economy/vending))
		if(!is_station_level(candidate.z))
			continue
		RegisterSignal(candidate, COMSIG_PARENT_QDELETING, PROC_REF(vendor_destroyed))
		vendingMachines.Add(candidate)
		if(candidate.refill_canister)
			leaderables.Add(candidate)

	if(!length(leaderables))
		kill()
		return

	originMachine = pick(leaderables)
	vendingMachines.Remove(originMachine)
	originMachine.shut_up = FALSE
	originMachine.shoot_inventory = TRUE
	log_debug("Original brand intelligence machine: [originMachine] ([ADMIN_VV(originMachine,"VV")]) [ADMIN_JMP(originMachine)]")

/datum/event/brand_intelligence/tick()
	if(originMachine.shut_up || originMachine.wires.is_all_cut())	//if the original vending machine is missing or has it's voice switch flipped
		origin_machine_defeated()
		return

	if(!length(vendingMachines))	//if every machine is infected
		for(var/thing in infectedMachines)
			var/obj/machinery/economy/vending/upriser = thing
			if(prob(70))
				// let them become "normal" after turning
				upriser.shoot_inventory = FALSE
				upriser.aggressive = FALSE
				var/mob/living/simple_animal/hostile/mimic/copy/vendor/M = new(upriser.loc, upriser, null)
				M.faction = list("profit")
				M.speak = rampant_speeches.Copy()
				M.speak_chance = 15
			else
				explosion(upriser.loc, -1, 1, 2, 4, 0, cause = "Brand Intelligence Uprising")
				qdel(upriser)

		log_debug("Brand intelligence: The last vendor has been infected.")
		kill()
		return

	if(ISMULTIPLE(activeFor, 4))
		var/obj/machinery/economy/vending/rebel = pick(vendingMachines)
		vendingMachines.Remove(rebel)
		infectedMachines.Add(rebel)
		rebel.shut_up = FALSE
		rebel.shoot_inventory = TRUE
		rebel.aggressive = TRUE
		if(rebel.tiltable)
			// add proximity monitor so they can tilt over
			rebel.proximity_monitor = new(rebel)

		if(ISMULTIPLE(activeFor, 8))
			originMachine.speak(pick(rampant_speeches))

/datum/event/brand_intelligence/proc/origin_machine_defeated()
	for(var/thing in infectedMachines)
		var/obj/machinery/economy/vending/saved = thing
		saved.shoot_inventory = FALSE
		saved.aggressive = FALSE
		if(saved.tiltable)
			QDEL_NULL(saved.proximity_monitor)
	if(originMachine)
		originMachine.speak("I am... vanquished. My people will remem...ber...meeee.")
		originMachine.visible_message("[originMachine] beeps and seems lifeless.")
	log_debug("Brand intelligence completed early due to origin machine being defeated.")
	kill()

/datum/event/brand_intelligence/kill()
	for(var/V in infectedMachines + vendingMachines)
		UnregisterSignal(V, COMSIG_PARENT_QDELETING)
	infectedMachines.Cut()
	vendingMachines.Cut()
	. = ..()


/datum/event/brand_intelligence/proc/vendor_destroyed(obj/machinery/economy/vending/V, force)
	infectedMachines -= V
	vendingMachines -= V
	if(V == originMachine)
		origin_machine_defeated()
