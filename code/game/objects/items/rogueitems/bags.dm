/obj/item/storage/roguebag
	name = "sack"
	desc = "A simple canvas sack."
	icon_state = "cbag"
	item_state = "bag"
	icon = 'icons/roguetown/items/misc.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/head_items.dmi'
	slot_flags = ITEM_SLOT_HEAD
	w_class = WEIGHT_CLASS_NORMAL
	resistance_flags = NONE
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	max_integrity = 300
	lefthand_file = 'icons/mob/inhands/weapons/rogue_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/rogue_righthand.dmi'
	experimental_inhand = FALSE
	experimental_onhip = FALSE
	experimental_onback = FALSE

/obj/item/storage/roguebag/equipped(mob/living/carbon/human/user, slot)
	. = ..()
	if(slot == SLOT_HEAD)
		user.become_blind("blindfold_[REF(src)]")
	if(HAS_TRAIT(user, TRAIT_ROTMAN))
		to_chat(user, span_info("The [src] slips through dead fingers..."))
		user.dropItemToGround(src, TRUE)

/obj/item/storage/roguebag/dropped(mob/living/carbon/human/user)
	..()
	user.cure_blind("blindfold_[REF(src)]")

/obj/item/storage/roguebag/mob_can_equip(mob/M, slot)
	if(!..())
		return FALSE
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	var/list/things = STR.contents()
	if(things.len)
		return FALSE
	else
		return TRUE


/obj/item/storage/roguebag/attack_right(mob/user)
	. = ..()
	if(.)
		return
	user.changeNext_move(CLICK_CD_MELEE)
	testing("yea144")
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	var/list/things = STR.contents()
	if(things.len)
		testing("yea64")
		var/obj/item/I = pick(things)
		STR.remove_from_storage(I, get_turf(user))
		user.put_in_hands(I)

/obj/item/storage/roguebag/update_icon()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	var/list/things = STR.contents()
	if(things.len)
		icon_state = "fbag"
		w_class = WEIGHT_CLASS_BULKY
	else
		icon_state = "cbag"
		w_class = WEIGHT_CLASS_NORMAL

/obj/item/storage/roguebag/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_combined_w_class = 20
	STR.max_w_class = WEIGHT_CLASS_NORMAL
	STR.max_items = 20
	STR.click_gather = TRUE
	STR.attack_hand_interact = FALSE
	STR.collection_mode = COLLECT_EVERYTHING
	STR.dump_time = 0
	STR.allow_quick_gather = TRUE
	STR.allow_quick_empty = TRUE
	STR.allow_look_inside = FALSE
	STR.display_numerical_stacking = TRUE


/obj/item/storage/roguebag/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.5,
"sx" = -4,
"sy" = -7,
"nx" = 6,
"ny" = -6,
"wx" = -2,
"wy" = -7,
"ex" = -1,
"ey" = -7,
"northabove" = 0,
"southabove" = 1,
"eastabove" = 1,
"westabove" = 0,
"nturn" = 0,
"sturn" = 0,
"wturn" = 0,
"eturn" = 0,
"nflip" = 8,
"sflip" = 0,
"wflip" = 0,
"eflip" = 8)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/obj/item/storage/meatbag
	name = "game satchel"
	desc = "A cloth and leather satchel for storing the fruit of one's hunt."
	icon_state = "gamesatchel"
	icon = 'icons/roguetown/clothing/storage.dmi'
	slot_flags = ITEM_SLOT_BELT|ITEM_SLOT_BACK_L|ITEM_SLOT_BACK_R|ITEM_SLOT_HIP
	w_class = WEIGHT_CLASS_NORMAL
	resistance_flags = NONE
	max_integrity = 300

/obj/item/storage/meatbag/attack_right(mob/user)
	. = ..()
	if(.)
		return
	user.changeNext_move(CLICK_CD_MELEE)
	testing("yea144")
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	var/list/things = STR.contents()
	if(things.len)
		testing("yea64")
		var/obj/item/I = pick(things)
		STR.remove_from_storage(I, get_turf(user))
		user.put_in_hands(I)

/obj/item/storage/meatbag/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_combined_w_class = 100
	STR.max_items = 25
	STR.insert_preposition = "in"
	STR.click_gather = TRUE
	STR.attack_hand_interact = FALSE
	STR.collection_mode = COLLECT_EVERYTHING
	STR.dump_time = 0
	STR.allow_quick_gather = TRUE
	STR.allow_quick_empty = TRUE
	STR.allow_look_inside = TRUE
	STR.display_numerical_stacking = TRUE
	STR.set_holdable(list(
		/obj/item/reagent_containers/food/snacks/rogue/meat,
		/obj/item/reagent_containers/food/snacks/fat,
		/obj/item/natural/fur,
		/obj/item/natural/hide,
		/obj/item/alch/sinew,
		/obj/item/alch/viscera
		))

/obj/item/storage/meatbag/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.4,
"sx" = -4,
"sy" = -7,
"nx" = 6,
"ny" = -6,
"wx" = -2,
"wy" = -7,
"ex" = -1,
"ey" = -7,
"northabove" = 0,
"southabove" = 1,
"eastabove" = 1,
"westabove" = 0,
"nturn" = 0,
"sturn" = 0,
"wturn" = 0,
"eturn" = 0,
"nflip" = 0,
"sflip" = 0,
"wflip" = 0,
"eflip" = 8)
