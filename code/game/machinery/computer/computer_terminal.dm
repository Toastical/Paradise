#define TERM_LOGS 1		// Logs list
#define TERM_EDITOR 2	// Editor view
#define LOG_TITLE_MAX_LENGTH 128
#define LOG_BODY_MAX_LENGTH 1024

/obj/machinery/computer/computer_terminal
	name = "computer terminal"
	desc = "Used for entering and manipulating text."
	icon = 'icons/obj/computer.dmi'
	icon_state = "computer"
	circuit = /obj/item/circuitboard/computer_terminal
	var/current_page = TERM_LOGS
	var/current_log = null
	var/printing = FALSE

/obj/machinery/computer/computer_terminal/Initialize(mapload)
	. = ..()

/obj/machinery/computer/computer_terminal/Destroy()
	current_log = null
	return ..()

/obj/machinery/computer/computer_terminal/attackby(obj/item/O, mob/user, params)
	return ..()

/obj/machinery/computer/computer_terminal/attack_hand(mob/user)
	if(..())
		return
	add_fingerprint(user)
	ui_interact(user)
	
/obj/machinery/computer/computer_terminal/ui_state(mob/user)
	return GLOB.default_state

/obj/machinery/computer/computer_terminal/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "ComputerTerminal", "Computer Terminal")
		ui.open()
		ui.set_autoupdate(FALSE)

#undef TERM_LOGS
#undef TERM_EDITOR
#undef LOG_TITLE_MAX_LENGTH
#undef LOG_BODY_MAX_LENGTH