/obj/item/storage/bag/garment
	name = "garment bag"
	desc = "A bag for storing extra clothes and shoes."
	icon_state = "garment_bag"
	slot_flags = NONE
	w_class = WEIGHT_CLASS_BULKY
	max_w_class = WEIGHT_CLASS_NORMAL
	display_contents_with_number = FALSE
	max_combined_w_class = 200
	storage_slots = 0
	resistance_flags = FLAMMABLE
	can_hold = list(/obj/item/clothing)
	cant_hold = list(
		/obj/item/storage,
		/obj/item/clothing/suit/space,
		/obj/item/clothing/mask/cigarette,
		/obj/item/clothing/mask/facehugger, //Why would you do this
		/obj/item/clothing/accessory/medal,
		/obj/item/clothing/suit/armor/riot,
		/obj/item/clothing/suit/armor/reactive,
		/obj/item/clothing/suit/armor/laserproof,
		/obj/item/clothing/suit/hooded/ablative,
		/obj/item/clothing/gloves/color/black/krav_maga,
	)

/obj/item/storage/bag/garment/proc/add_item(path)
	if(!ispath(path))
		return
	storage_slots++
	new path(src)

/obj/item/storage/bag/garment/head_of_personnel
	name = "head of personnel's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the head of personnel."

/obj/item/storage/bag/garment/head_of_personnel/populate_contents()
	add_item(/obj/item/clothing/head/hop)
	add_item(/obj/item/clothing/head/beret/hop)
	add_item(/obj/item/clothing/head/cowboyhat/command)
	add_item(/obj/item/clothing/neck/cloak/head_of_personnel)
	add_item(/obj/item/clothing/neck/cloak/hop_mantle)
	add_item(/obj/item/clothing/suit/armor/vest)
	add_item(/obj/item/clothing/suit/hopcoat)
	add_item(/obj/item/clothing/suit/hooded/wintercoat/hop)
	add_item(/obj/item/clothing/under/rank/civilian/hop)
	add_item(/obj/item/clothing/under/rank/civilian/hop/skirt)
	add_item(/obj/item/clothing/under/rank/civilian/hop/dress)
	add_item(/obj/item/clothing/under/rank/civilian/hop/formal)
	add_item(/obj/item/clothing/under/rank/civilian/hop/oldman)
	add_item(/obj/item/clothing/under/suit/female)
	add_item(/obj/item/clothing/under/rank/civilian/hop/turtleneck)
	add_item(/obj/item/clothing/shoes/brown)
	add_item(/obj/item/clothing/shoes/black)
	add_item(/obj/item/clothing/shoes/leather)
	add_item(/obj/item/clothing/shoes/white)
	add_item(/obj/item/clothing/glasses/sunglasses)
	add_item(/obj/item/clothing/glasses/hud/skills/sunglasses)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/hop)
	add_item(/obj/item/clothing/under/plasmaman/hop)

/obj/item/storage/bag/garment/head_of_security
	name = "head of security's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the head of security."

/obj/item/storage/bag/garment/head_of_security/populate_contents()
	add_item(/obj/item/clothing/head/hos)
	add_item(/obj/item/clothing/head/beret/hos)
	add_item(/obj/item/clothing/neck/cloak/head_of_security)
	add_item(/obj/item/clothing/suit/armor/hos)
	add_item(/obj/item/clothing/suit/armor/hos/alt)
	add_item(/obj/item/clothing/neck/cloak/hos_mantle)
	add_item(/obj/item/clothing/under/rank/security/head_of_security)
	add_item(/obj/item/clothing/under/rank/security/formal/head_of_security)
	add_item(/obj/item/clothing/under/rank/security/head_of_security/corporate)
	add_item(/obj/item/clothing/under/rank/security/head_of_security/skirt)
	add_item(/obj/item/clothing/under/rank/security/head_of_security/skirt/corporate)
	add_item(/obj/item/clothing/under/rank/security/head_of_security/turtleneck)
	add_item(/obj/item/clothing/glasses/hud/security/sunglasses)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/security/hos)
	add_item(/obj/item/clothing/under/plasmaman/security/hos)
	add_item(/obj/item/clothing/suit/hooded/highinquis)
	add_item(/obj/item/clothing/mask/highinquis)

/obj/item/storage/bag/garment/research_director
	name = "research director's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the research director."

/obj/item/storage/bag/garment/research_director/populate_contents()
	add_item(/obj/item/clothing/head/rd)
	add_item(/obj/item/clothing/head/beret/rd)
	add_item(/obj/item/clothing/head/cowboyhat/research)
	add_item(/obj/item/clothing/neck/cloak/research_director)
	add_item(/obj/item/clothing/under/rank/rnd/rd)
	add_item(/obj/item/clothing/under/rank/rnd/rd/skirt)
	add_item(/obj/item/clothing/under/rank/rnd/rd/turtleneck)
	add_item(/obj/item/clothing/under/rank/rnd/rd/whimsy)
	add_item(/obj/item/clothing/under/rank/rnd/rd/skirt/whimsy)
	add_item(/obj/item/clothing/suit/storage/labcoat/rd)
	add_item(/obj/item/clothing/neck/cloak/rd_mantle)
	add_item(/obj/item/clothing/suit/storage/labcoat)
	add_item(/obj/item/clothing/shoes/white)
	add_item(/obj/item/clothing/gloves/color/latex)
	add_item(/obj/item/clothing/glasses/science)
	add_item(/obj/item/clothing/glasses/welding/superior)
	add_item(/obj/item/clothing/glasses/hud/diagnostic/sunglasses)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/rd)
	add_item(/obj/item/clothing/under/plasmaman/rd)


/obj/item/storage/bag/garment/chief_medical_officer
	name = "chief medical officer's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the chief medical officer."

/obj/item/storage/bag/garment/chief_medical_officer/populate_contents()
	add_item(/obj/item/clothing/head/cmo)
	add_item(/obj/item/clothing/head/beret/cmo)
	add_item(/obj/item/clothing/head/surgery/blue)
	add_item(/obj/item/clothing/head/surgery/green)
	add_item(/obj/item/clothing/head/surgery/purple)
	add_item(/obj/item/clothing/head/cowboyhat/med)
	add_item(/obj/item/clothing/neck/cloak/chief_medical_officer)
	add_item(/obj/item/clothing/under/rank/medical/cmo)
	add_item(/obj/item/clothing/under/rank/medical/cmo/skirt)
	add_item(/obj/item/clothing/under/rank/medical/cmo/turtleneck)
	add_item(/obj/item/clothing/under/rank/medical/scrubs)
	add_item(/obj/item/clothing/under/rank/medical/scrubs/green)
	add_item(/obj/item/clothing/under/rank/medical/scrubs/purple)
	add_item(/obj/item/clothing/suit/storage/labcoat/cmo)
	add_item(/obj/item/clothing/neck/cloak/cmo_mantle)
	add_item(/obj/item/clothing/shoes/white)
	add_item(/obj/item/clothing/shoes/brown	)
	add_item(/obj/item/clothing/gloves/color/latex/nitrile)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/cmo)
	add_item(/obj/item/clothing/under/plasmaman/cmo)

/obj/item/storage/bag/garment/chief_engineer
	name = "chief engineer's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the chief engineer."

/obj/item/storage/bag/garment/chief_engineer/populate_contents()
	add_item(/obj/item/clothing/head/hardhat/white)
	add_item(/obj/item/clothing/head/beret/ce)
	add_item(/obj/item/clothing/head/beret/eng)
	add_item(/obj/item/clothing/head/cowboyhat/engie)
	add_item(/obj/item/clothing/neck/cloak/chief_engineer)
	add_item(/obj/item/clothing/under/rank/engineering/chief_engineer)
	add_item(/obj/item/clothing/under/rank/engineering/chief_engineer/skirt)
	add_item(/obj/item/clothing/under/rank/engineering/chief_engineer/turtleneck)
	add_item(/obj/item/clothing/neck/cloak/ce_mantle)
	add_item(/obj/item/clothing/suit/storage/hazardvest/ce)
	add_item(/obj/item/clothing/shoes/brown)
	add_item(/obj/item/clothing/glasses/welding/superior)
	add_item(/obj/item/clothing/glasses/meson/sunglasses)
	add_item(/obj/item/clothing/gloves/color/yellow)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/engineering/ce)
	add_item(/obj/item/clothing/under/plasmaman/engineering/ce)

/obj/item/storage/bag/garment/nanotrasen_representative
	name = "\improper Nanotrasen representative's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the Nanotrasen representative."

/obj/item/storage/bag/garment/nanotrasen_representative/populate_contents()
	add_item(/obj/item/clothing/head/ntrep)
	add_item(/obj/item/clothing/head/cowboyhat/command)
	add_item(/obj/item/clothing/under/rank/procedure/representative)
	add_item(/obj/item/clothing/under/rank/procedure/representative/skirt)
	add_item(/obj/item/clothing/under/rank/procedure/representative/formal)
	add_item(/obj/item/clothing/under/suit/female)
	add_item(/obj/item/clothing/shoes/centcom)
	add_item(/obj/item/clothing/shoes/sandal/fancy)
	add_item(/obj/item/clothing/glasses/hud/skills/sunglasses)
	add_item(/obj/item/clothing/glasses/sunglasses)
	add_item(/obj/item/clothing/gloves/color/white)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/white)
	add_item(/obj/item/clothing/under/plasmaman/enviroslacks)

/obj/item/storage/bag/garment/magistrate
	name = "magistrate's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the magistrate."

/obj/item/storage/bag/garment/magistrate/populate_contents()
	add_item(/obj/item/clothing/head/justice_wig)
	add_item(/obj/item/clothing/head/powdered_wig)
	add_item(/obj/item/clothing/head/cowboyhat/command)
	add_item(/obj/item/clothing/under/rank/procedure/magistrate)
	add_item(/obj/item/clothing/under/rank/procedure/magistrate/skirt)
	add_item(/obj/item/clothing/under/rank/procedure/magistrate/formal)
	add_item(/obj/item/clothing/suit/magirobe)
	add_item(/obj/item/clothing/shoes/centcom)
	add_item(/obj/item/clothing/glasses/sunglasses)
	add_item(/obj/item/clothing/gloves/color/white)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/white)
	add_item(/obj/item/clothing/under/plasmaman/enviroslacks)

/obj/item/storage/bag/garment/blueshield
	name = "blueshield's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the blueshield."

/obj/item/storage/bag/garment/blueshield/populate_contents()
	add_item(/obj/item/clothing/head/beret/centcom/officer)
	add_item(/obj/item/clothing/head/beret/centcom/officer/navy)
	add_item(/obj/item/clothing/head/cowboyhat/command)
	add_item(/obj/item/clothing/under/rank/procedure/blueshield)
	add_item(/obj/item/clothing/under/rank/procedure/blueshield/skirt)
	add_item(/obj/item/clothing/under/rank/procedure/blueshield/formal)
	add_item(/obj/item/clothing/under/rank/procedure/blueshield/turtleneck)
	add_item(/obj/item/clothing/suit/armor/vest/blueshield)
	add_item(/obj/item/clothing/suit/storage/blueshield)
	add_item(/obj/item/clothing/shoes/centcom)
	add_item(/obj/item/clothing/shoes/jackboots/jacksandals)
	add_item(/obj/item/clothing/mask/gas/sechailer)
	add_item(/obj/item/clothing/glasses/sunglasses)
	add_item(/obj/item/clothing/glasses/hud/security/sunglasses)
	add_item(/obj/item/clothing/glasses/hud/health/sunglasses)
	add_item(/obj/item/clothing/glasses/hud/skills/sunglasses)
	add_item(/obj/item/clothing/neck/tie/blue)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/blueshield)
	add_item(/obj/item/clothing/under/plasmaman/blueshield)

/obj/item/storage/bag/garment/quartermaster
	name = "quartermaster's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the quartermaster."

/obj/item/storage/bag/garment/quartermaster/populate_contents()
	add_item(/obj/item/clothing/under/rank/cargo/qm)
	add_item(/obj/item/clothing/under/rank/cargo/qm/skirt)
	add_item(/obj/item/clothing/under/rank/cargo/qm/dress)
	add_item(/obj/item/clothing/under/rank/cargo/qm/formal)
	add_item(/obj/item/clothing/under/rank/cargo/qm/whimsy)
	add_item(/obj/item/clothing/under/rank/cargo/qm/turtleneck)
	add_item(/obj/item/clothing/shoes/brown)
	add_item(/obj/item/clothing/head/qm)
	add_item(/obj/item/clothing/head/beret/qm)
	add_item(/obj/item/clothing/head/cowboyhat/supply)
	add_item(/obj/item/clothing/neck/cloak/quartermaster)
	add_item(/obj/item/clothing/head/hardhat/orange)
	add_item(/obj/item/clothing/suit/qmcoat)
	add_item(/obj/item/clothing/neck/cloak/qm_mantle)
	add_item(/obj/item/clothing/suit/storage/hazardvest/qm)
	add_item(/obj/item/clothing/gloves/color/black)
	add_item(/obj/item/tank/internals/emergency_oxygen/double)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/cargo)
	add_item(/obj/item/clothing/under/plasmaman/cargo)

/obj/item/storage/bag/garment/warden
	name = "warden's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the warden."

/obj/item/storage/bag/garment/warden/populate_contents()
	add_item(/obj/item/clothing/suit/armor/vest/warden)
	add_item(/obj/item/clothing/head/warden)
	add_item(/obj/item/clothing/suit/armor/vest/warden/alt)
	add_item(/obj/item/clothing/head/beret/warden)
	add_item(/obj/item/clothing/under/rank/security/warden)
	add_item(/obj/item/clothing/under/rank/security/formal/warden)
	add_item(/obj/item/clothing/under/rank/security/warden/corporate)
	add_item(/obj/item/clothing/under/rank/security/warden/skirt)
	add_item(/obj/item/clothing/under/rank/security/warden/skirt/corporate)
	add_item(/obj/item/clothing/under/rank/security/warden/turtleneck)
	add_item(/obj/item/clothing/mask/gas/sechailer/swat/warden)
	add_item(/obj/item/clothing/glasses/hud/security/sunglasses)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/security/warden)
	add_item(/obj/item/clothing/under/plasmaman/security/warden)

/obj/item/storage/bag/garment/detective
	name = "detective's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the detective."

/obj/item/storage/bag/garment/detective/populate_contents()
	add_item(/obj/item/clothing/under/rank/security/detective)
	add_item(/obj/item/clothing/suit/storage/det_suit)
	add_item(/obj/item/clothing/suit/storage/det_suit/forensics/blue)
	add_item(/obj/item/clothing/suit/storage/det_suit/forensics/red)
	add_item(/obj/item/clothing/gloves/color/black/forensics)
	add_item(/obj/item/clothing/head/det_hat)
	add_item(/obj/item/clothing/shoes/brown)
	add_item(/obj/item/clothing/suit/armor/vest/det_suit)
	add_item(/obj/item/clothing/neck/tie/black)
	add_item(/obj/item/clothing/accessory/holster/armpit)
	add_item(/obj/item/clothing/glasses/sunglasses/yeah)

/obj/item/storage/bag/garment/chaplain
	name = "chaplain's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the chaplain."

/obj/item/storage/bag/garment/chaplain/populate_contents()
	add_item(/obj/item/clothing/suit/hooded/dark_robes)
	add_item(/obj/item/clothing/head/helmet/riot/knight/templar)
	add_item(/obj/item/clothing/suit/armor/riot/knight/templar)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/chaplain/green)
	add_item(/obj/item/clothing/under/plasmaman/chaplain/green)

/obj/item/storage/bag/garment/librarian
	name = "librarian's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the librarian."

/obj/item/storage/bag/garment/librarian/populate_contents()
	add_item(/obj/item/clothing/under/rank/civilian/librarian)
	add_item(/obj/item/clothing/shoes/black)
	add_item(/obj/item/clothing/suit/librarian)
	add_item(/obj/item/clothing/suit/librarian/argyle)
	add_item(/obj/item/clothing/suit/armor/vest/press)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/librarian)
	add_item(/obj/item/clothing/under/plasmaman/librarian)

/obj/item/storage/bag/garment/psychologist
	name = "psychologist's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the psychologist."

/obj/item/storage/bag/garment/psychologist/populate_contents()
	add_item(/obj/item/clothing/under/rank/medical/psych)
	add_item(/obj/item/clothing/under/rank/medical/psych/turtleneck)
	add_item(/obj/item/clothing/under/rank/medical/doctor)
	add_item(/obj/item/clothing/under/rank/medical/doctor/skirt)
	add_item(/obj/item/clothing/suit/storage/labcoat/psych)
	add_item(/obj/item/clothing/shoes/laceup)
	add_item(/obj/item/clothing/glasses/hud/health)
	add_item(/obj/item/clothing/glasses/hud/skills)
	add_item(/obj/item/clothing/neck/tie/blue)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman)
	add_item(/obj/item/clothing/under/plasmaman)

/obj/item/storage/bag/garment/paramedic
	name = "paramedic's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the paramedic."

/obj/item/storage/bag/garment/paramedic/populate_contents()
	add_item(/obj/item/clothing/under/rank/medical/paramedic)
	add_item(/obj/item/clothing/under/rank/medical/paramedic/skirt)
	add_item(/obj/item/clothing/head/soft/paramedic)
	add_item(/obj/item/clothing/head/beret/paramedic)
	add_item(/obj/item/clothing/suit/storage/labcoat/emt)
	add_item(/obj/item/clothing/suit/storage/hazardvest/paramedic)
	add_item(/obj/item/clothing/suit/hooded/wintercoat/medical/paramedic)
	add_item(/obj/item/clothing/glasses/hud/health/sunglasses)
	add_item(/obj/item/clothing/gloves/color/latex)
	add_item(/obj/item/clothing/gloves/color/latex/nitrile)
	add_item(/obj/item/clothing/shoes/black)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/medical)
	add_item(/obj/item/clothing/under/plasmaman/medical)

/obj/item/storage/bag/garment/explorer
	name = "explorer's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the explorer."

/obj/item/storage/bag/garment/explorer/populate_contents()
	add_item(/obj/item/clothing/under/rank/cargo/expedition)
	add_item(/obj/item/clothing/under/rank/cargo/expedition/overalls)
	add_item(/obj/item/clothing/head/soft/expedition)
	add_item(/obj/item/clothing/head/beret/expedition)
	add_item(/obj/item/clothing/gloves/color/black)
	add_item(/obj/item/clothing/shoes/jackboots)
	add_item(/obj/item/clothing/mask/gas/explorer)

/obj/item/storage/bag/garment/smith
	name = "smith's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the smith."

/obj/item/storage/bag/garment/smith/populate_contents()
	add_item(/obj/item/clothing/under/rank/cargo/smith)
	add_item(/obj/item/clothing/under/rank/cargo/smith/skirt)
	add_item(/obj/item/clothing/under/rank/cargo/smith/overalls)
	add_item(/obj/item/clothing/suit/apron/smith)
	add_item(/obj/item/clothing/suit/jacket/bomber/smith)
	add_item(/obj/item/clothing/head/soft/smith)
	add_item(/obj/item/clothing/head/beret/smith)
	add_item(/obj/item/clothing/gloves/smithing)
	add_item(/obj/item/clothing/shoes/workboots/smithing)
	add_item(/obj/item/clothing/under/plasmaman/smith)
	add_item(/obj/item/clothing/head/helmet/space/plasmaman/smith)

/obj/item/storage/bag/garment/syndie
	name = "suspicious garment bag"
	icon_state = "garment_bag_syndie"
	desc = "A bag for storing extra clothes and shoes. Judging by the colors, this one belongs to someone with malicious intent."

/obj/item/storage/bag/garment/syndie/populate_contents()
	add_item(/obj/item/clothing/under/syndicate/tacticool)
	add_item(/obj/item/clothing/under/syndicate)
	add_item(/obj/item/clothing/under/syndicate/combat)
	add_item(/obj/item/clothing/under/syndicate/greyman)
	add_item(/obj/item/clothing/under/syndicate/sniper)
	add_item(/obj/item/clothing/mask/gas/syndicate)
	add_item(/obj/item/clothing/mask/balaclava)
	add_item(/obj/item/clothing/suit/storage/iaa/blackjacket)
	add_item(/obj/item/clothing/suit/blacktrenchcoat)
	add_item(/obj/item/clothing/suit/hooded/wintercoat/syndicate)
	add_item(/obj/item/clothing/head/beret/syndicate)
	add_item(/obj/item/clothing/glasses/syndie)
	add_item(/obj/item/clothing/neck/cloak/syndicate)
	add_item(/obj/item/clothing/gloves/color/black)
	add_item(/obj/item/clothing/gloves/fingerless)
	add_item(/obj/item/clothing/shoes/combat)
	add_item(/obj/item/clothing/shoes/laceup)
