/obj/item/clothing/neck/roguetown
	name = "necklace"
	desc = ""
	icon = 'icons/roguetown/clothing/neck.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/neck.dmi'
	equip_sound = "rustle"
	pickup_sound = "rustle"
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/gen_drop.ogg'
	bloody_icon_state = "bodyblood"
	resistance_flags = FIRE_PROOF
	sewrepair = FALSE
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/iron


//..................................................................................................................................
/*---------------\
|			 	 |
|  Light Armor	 |
|			 	 |
\---------------*/

/obj/item/clothing/neck/roguetown/coif
	name = "leather coif"
	desc = "A simple coif made of boiled leather, not that good as armor itself but mostly useful as padding for proper helmets."
	icon_state = "coif"
	item_state = "coif"
	flags_inv = HIDEEARS|HIDEHAIR
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HEAD
	blocksound = SOFTHIT
	equip_sound = 'sound/foley/equip/cloak_equip.ogg'
	pickup_sound = 'sound/foley/equip/cloak_take_off.ogg'
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	adjustable = CAN_CADJUST
	toggle_icon_state = TRUE
	sewrepair = TRUE
	anvilrepair = null
	resistance_flags = FLAMMABLE // Made of leather
	smeltresult = /obj/item/ash

	armor = ARMOR_LEATHER
	body_parts_covered = NECK|HAIR|EARS|HEAD
	max_integrity = INTEGRITY_POOR
	prevent_crits = CUT_AND_MINOR_CRITS


/obj/item/clothing/neck/roguetown/coif/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "[initial(icon_state)]_t"
			flags_inv = null
			body_parts_covered = NECK
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_neck()
				H.update_inv_head()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			flags_inv = HIDEEARS|HIDEHAIR
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_neck()
					H.update_inv_head()


//................ Keffiyeh ............... //
/obj/item/clothing/neck/roguetown/keffiyeh
	name = "keffiyeh"
	desc = "An eastern scarf usually worn around the head and neck over a padded coif."
	icon = 'icons/roguetown/clothing/head.dmi'
	icon_state = "shalal"
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/head.dmi'
	dynamic_hair_suffix = ""
	dropshrink = 0.8
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HEAD
	blocksound = SOFTHIT
	equip_sound = 'sound/foley/equip/cloak_equip.ogg'
	pickup_sound = 'sound/foley/equip/cloak_take_off.ogg'
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	flags_inv = HIDEEARS|HIDEHAIR
	body_parts_covered = NECK|HAIR|EARS|HEAD
	adjustable = CAN_CADJUST
	toggle_icon_state = TRUE
	sewrepair = TRUE
	anvilrepair = null
	resistance_flags = FLAMMABLE // Made of leather
	smeltresult = /obj/item/ash

	armor = ARMOR_PADDED
	prevent_crits = MINOR_CRITICALS
	max_integrity = INTEGRITY_WORST

/obj/item/clothing/neck/roguetown/keffiyeh/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "[initial(icon_state)]_t"
			flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
			body_parts_covered = NECK | HEAD | MOUTH | NOSE | EARS | HAIR
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_neck()
				H.update_inv_head()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_neck()
					H.update_inv_head()

/obj/item/clothing/neck/roguetown/keffiyeh/red
	color = CLOTHING_MAROON

/obj/item/clothing/neck/roguetown/keffiyeh/yellow
	color = CLOTHING_PEAR_YELLOW

/obj/item/clothing/neck/roguetown/keffiyeh/orange
	color = CLOTHING_FYRITIUS_DYE

/obj/item/clothing/neck/roguetown/keffiyeh/green
	color = CLOTHING_BOG_GREEN

/obj/item/clothing/neck/roguetown/keffiyeh/blue
	color = CLOTHING_MAGE_BLUE

/obj/item/clothing/neck/roguetown/keffiyeh/purple
	color = CLOTHING_ROYAL_PURPLE

/obj/item/clothing/neck/roguetown/keffiyeh/teal
	color = CLOTHING_ROYAL_TEAL

/obj/item/clothing/neck/roguetown/keffiyeh/black
	color = CLOTHING_ROYAL_RED
//	color = CLOTHING_ROYAL_BLACK

/obj/item/clothing/neck/roguetown/keffiyeh/white
	color = CLOTHING_ASH_GREY

/obj/item/clothing/neck/roguetown/coif/cloth
	name = "padded coif"
	desc = "A simple coif made of cloth. Not very effective armor, but may soften weak blows and keeps the head and neck warm."
	icon_state = "ccoif"
	dropshrink = 0.8
	flags_inv = HIDEEARS|HIDEHAIR
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HEAD
	blocksound = SOFTHIT
	adjustable = CAN_CADJUST
	toggle_icon_state = TRUE

	armor = ARMOR_PADDED
	body_parts_covered = NECK|HAIR|EARS|HEAD
	prevent_crits = MINOR_CRITICALS


//..................................................................................................................................
/*---------------\
|			 	 |
|  Medium Armor	 |
|			 	 |
\---------------*/

/obj/item/clothing/neck/roguetown/chaincoif
	name = "chain coif"
	desc = "A coif made of interwoven steel rings, made to protect against arrows and blades. \
			Generally used as padding, but serviceable enough on its own."
	icon_state = "chaincoif"
	flags_inv = HIDEEARS|HIDEHAIR
	resistance_flags = FIRE_PROOF
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HEAD
	pickup_sound = 'sound/foley/equip/equip_armor_chain.ogg'
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	break_sound = 'sound/foley/breaksound.ogg'
	adjustable = CAN_CADJUST
	toggle_icon_state = TRUE
	blocksound = CHAINHIT
	smeltresult = null
	clothing_flags = CANT_SLEEP_IN

	armor = ARMOR_MAILLE
	body_parts_covered = NECK|HAIR|EARS|HEAD
	max_integrity = INTEGRITY_STRONG
	prevent_crits = ALL_EXCEPT_BLUNT


/obj/item/clothing/neck/roguetown/chaincoif/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "[initial(icon_state)]_t"
			flags_inv = null
			body_parts_covered = NECK
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_neck()
				H.update_inv_head()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			flags_inv = HIDEEARS|HIDEHAIR
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_neck()
					H.update_inv_head()


/obj/item/clothing/neck/roguetown/chaincoif/iron
	icon_state = "ichaincoif"
	name = "iron chain coif"
	desc = "A chain coif made of interwoven iron rings. Affordable protection against arrows and blades, \
			but should be used as padding rather than relied upon as armor."
	smeltresult = null

	armor = ARMOR_MAILLE_IRON
	max_integrity = INTEGRITY_STRONG
	prevent_crits = ALL_EXCEPT_BLUNT_AND_STAB //Non-riveted, iron chain can be broken apart with a powerful thrust.

/obj/item/clothing/neck/roguetown/gorget/copper
	name = "neck protector"
	icon_state = "copperneck"
	desc = "An antique and simple protection for the neck, used more as an accessory by the common folk. But poor protection is still better than nothing."
	smeltresult = /obj/item/ingot/copper

	armor = ARMOR_LEATHER_GOOD
	max_integrity = INTEGRITY_POOR


//..................................................................................................................................
/*---------------\
|			 	 |
|  Heavy Armor	 |
|			 	 |
\---------------*/

/obj/item/clothing/neck/roguetown/bevor
	name = "bevor"
	desc = "A piece of plate armor meant to protect the throat and neck of its wearer against decapitation, extending the protection of armor plates."
	icon_state = "bervor"
	flags_inv = HIDEFACIALHAIR
	smeltresult = /obj/item/ingot/steel
	equip_sound = 'sound/foley/equip/equip_armor.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	break_sound = 'sound/foley/breaksound.ogg'
	slot_flags = ITEM_SLOT_NECK
	blocksound = PLATEHIT
	clothing_flags = CANT_SLEEP_IN

	armor_class = AC_HEAVY
	armor = ARMOR_PLATE
	body_parts_covered = NECK|EARS|MOUTH|NOSE
	max_integrity = INTEGRITY_STRONGER
	prevent_crits = ALL_EXCEPT_STAB

/obj/item/clothing/neck/roguetown/gorget
	name = "gorget"
	icon_state = "gorget"
	desc = "An affordable piece of iron armor meant to protect one's neck against chopping. \
			Fits comfortably beneath chest armor, despite its weight."
	flags_inv = HIDEFACIALHAIR
	resistance_flags = FIRE_PROOF
	slot_flags = ITEM_SLOT_NECK
	blocksound = PLATEHIT
	equip_sound = 'sound/foley/equip/equip_armor.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	break_sound = 'sound/foley/breaksound.ogg'
	smeltresult = /obj/item/ingot/iron
	clothing_flags = CANT_SLEEP_IN

	armor_class = AC_HEAVY
	armor = ARMOR_PLATE_BAD
	body_parts_covered = NECK
	max_integrity = INTEGRITY_STANDARD //Balance consideration, protects more but breaks more easily than a steel chain coif.
	prevent_crits = ALL_EXCEPT_STAB

/obj/item/clothing/neck/roguetown/gorget/hoplite // Better than an iron gorget, not quite as good as a steel bevor
	name = "bronze gorget"
	desc = "A heavy collar of great age, meant to protect the neck."
	icon_state = "aasimarneck"
	smeltresult = null // No bronze ingots yet
	max_integrity = INTEGRITY_STRONGER //Aasimar craftsmanship.




// PSYCROSSES

/obj/item/clothing/neck/roguetown/psycross
	name = "psycross"
	desc = "Let His name be naught but forgot'n."
	icon_state = "psycross_wood"
	//dropshrink = 0.75
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HIP|ITEM_SLOT_WRISTS
	sellprice = 10
	experimental_onhip = TRUE

// SILVER PSYCROSS START

/obj/item/clothing/neck/roguetown/psycross/silver
	name = "silver psycross"
	desc = "Let His name be naught but forgot'n. Let the wicked undead burn at my touch."
	icon_state = "psycross_silver"
	resistance_flags = FIRE_PROOF
	sellprice = 50
	smeltresult = /obj/item/ingot/silver

/obj/item/clothing/neck/roguetown/psycross/silver/pickup(mob/user)
	. = ..()
	var/mob/living/carbon/human/H = user
	var/datum/antagonist/vampirelord/V_lord = H.mind.has_antag_datum(/datum/antagonist/vampirelord/)
	if(H.mind)
		if(H.mind.has_antag_datum(/datum/antagonist/vampirelord/lesser))
			to_chat(H, "<span class='userdanger'>I can't pick up the silver, it is my BANE!</span>")
			H.Knockdown(20)
			H.adjustFireLoss(60)
			H.Paralyze(20)
			H.fire_act(1,5)
		if(V_lord)
			if(V_lord.vamplevel < 4 && !H.mind.has_antag_datum(/datum/antagonist/vampirelord/lesser))
				to_chat(H, "<span class='userdanger'>I can't pick up the silver, it is my BANE!</span>")
				H.Knockdown(10)
				H.Paralyze(10)

/obj/item/clothing/neck/roguetown/psycross/silver/mob_can_equip(mob/living/M, mob/living/equipper, slot, disable_warning = FALSE, bypass_equip_delay_self = FALSE)
	. = ..()
	var/mob/living/carbon/human/H = M
	var/datum/antagonist/vampirelord/V_lord = H.mind?.has_antag_datum(/datum/antagonist/vampirelord/)
	if(H.mind)
		if(H.mind.has_antag_datum(/datum/antagonist/vampirelord/lesser))
			to_chat(H, "<span class='userdanger'>I can't pick up the silver, it is my BANE!</span>")
			H.Knockdown(20)
			H.adjustFireLoss(60)
			H.Paralyze(20)
			H.fire_act(1,5)
		if(V_lord)
			if(V_lord.vamplevel < 4 && !H.mind.has_antag_datum(/datum/antagonist/vampirelord/lesser))
				to_chat(H, "<span class='userdanger'>I can't pick up the silver, it is my BANE!</span>")
				H.Knockdown(10)
				H.Paralyze(10)

// PANTHEON SILVER PSYCROSSES START

/obj/item/clothing/neck/roguetown/psycross/silver/astrata
	name = "amulet of Astrata"
	desc = "Blessed be everything the light of the sun touches, for it is protected by Her grace."
	icon_state = "astrata"
	resistance_flags = FIRE_PROOF

// Only non-refactored psycross because Noc likes vamps. Neeeerd!
/obj/item/clothing/neck/roguetown/psycross/noc
	name = "amulet of Noc"
	desc = "Diligence, study, pursuit of truth and wisdom. Let nothing deter you from it."
	icon_state = "noc"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/neck/roguetown/psycross/silver/dendor
	name = "amulet of Dendor"
	desc = "Nature is a body of which we are but its entrails."
	icon_state = "dendor"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/neck/roguetown/psycross/silver/necra
	name = "amulet of Necra"
	desc = "Where, grave, thy victory? I triumph still while the Undermaiden abides by me."
	icon_state = "necra"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/neck/roguetown/psycross/silver/ravox
	name = "amulet of Ravox"
	desc = "Struggle. Challenge. And rise to struggle again. That is the sword of he who yet lives to fight again."
	icon_state = "ravox"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/neck/roguetown/psycross/silver/eora
	name = "amulet of Eora"
	desc = "And I love thee because thou art love."
	icon_state = "eora"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/neck/roguetown/psycross/silver/pestra
	name = "amulet of Pestra"
	desc = "When pure, alcohol is best used as a cleanser of wounds and a cleanser of the palate."
	icon_state = "pestra"
	resistance_flags = FIRE_PROOF


/obj/item/clothing/neck/roguetown/psycross/silver/malum
	name = "amulet of Malum"
	desc = "Blessed be our works, made in His name."
	icon_state = "malum"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/neck/roguetown/psycross/silver/malum_steel
	name = "amulet of Malum"
	desc = "Let the tools that guide thee be thy hands."
	icon_state = "malum_alt"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/neck/roguetown/psycross/g
	name = "golden psycross"
	desc = "Let His name be naught but forgot'n."
	icon_state = "psycross_gold"
	//dropshrink = 0.75
	resistance_flags = FIRE_PROOF
	sellprice = 100
	smeltresult = /obj/item/ingot/gold

/obj/item/clothing/neck/roguetown/talkstone
	name = "talkstone"
	desc = "A bizarre, enchanted necklace. Allows you to bridge the gap between languages."
	icon_state = "talkstone"
	item_state = "talkstone"
	//dropshrink = 0.75
	resistance_flags = FIRE_PROOF
	sellprice = 98

/obj/item/clothing/neck/roguetown/horus
	name = "eye of horuz"
	desc = ""
	icon_state = "horus"
	//dropshrink = 0.75
	resistance_flags = FIRE_PROOF
	sellprice = 30

/obj/item/clothing/neck/roguetown/shalal
	name = "desert rider medal"
	desc = ""
	icon_state = "shalal"
	//dropshrink = 0.75
	resistance_flags = FIRE_PROOF
	sellprice = 15

/obj/item/clothing/neck/roguetown/shalal/emir
	name = "desert noble medal"

/obj/item/clothing/neck/roguetown/feld
	name = "feldsher's collar"
	desc = "Fits snug."
	icon_state = "feldcollar"
	item_state = "feldcollar"
	sellprice = 15

/obj/item/clothing/neck/roguetown/phys
	name = "physicker's collar"
	desc = "Fits snug."
	icon_state = "surgcollar"
	item_state = "surgcollar"
	sellprice = 15



/obj/item/clothing/neck/roguetown/mercmedal
	name = "mercenary medal"
	desc = "A medal commemorating one's diligent work under the MGE."
	icon_state = "shalal"
	//dropshrink = 0.75
	resistance_flags = FIRE_PROOF
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HIP|ITEM_SLOT_WRISTS
	sellprice = 15

/obj/item/clothing/neck/roguetown/mercmedal/zybatine
	name = "desert rider chain"
	desc = "A small, gilded neck-chain. The desert riders rose from humble beginnings as fight pit slaves. A tale now celebrated in their decorations."
	icon_state = "goldchain"

/obj/item/clothing/neck/roguetown/mercmedal/grenzelhoft
	name = "grenzelhoft gryphon of valor"
	desc = "The fearsome beast of the Black Empire's heraldry, cast in brass. These service awards have lost much of their value since mercenaries started receiving them."
	icon_state = "gryphon"

/obj/item/clothing/neck/roguetown/mercmedal/underdweller
	name = "underdweller compass"
	desc = "A non-functional compass carried by seasoned miners as keepsake. Greed will light the way."
	icon_state = "compass"

/obj/item/clothing/neck/roguetown/mercmedal/blackoak
	name = "black oak seedpouch"
	desc = "A dark acorn resting in a canvas pouch. May your final resting place be the one life you give back to this world."
	icon_state = "seedpouch"

/obj/item/clothing/neck/roguetown/mercmedal/steppesman
	name = "steppe effigy"
	desc = "This straw doll is claimed to be a representation of Astrata. In truth, a homage to the steppe's wild spirits of yore."
	icon_state = "effigy"

/obj/item/clothing/neck/roguetown/mercmedal/boltslinger
	name = "dogmanne medal"
	desc = "Proof of veterancy among the dread Dog-Men sharpshooters. Pilfered, and returned into circulation on the wearer's inevitable passing. Funeral rites are foreign to these scavenger hounds."
	icon_state = "dogmedal"

/obj/item/clothing/neck/roguetown/mercmedal/anthrax
	name = "petrified larvae charm"
	desc = "The husk of a desiccated beespider larva, passed down within the ranks of those whose names have been struck from dark elven history. The old tyranny's uprooting would be their last act of true valor."
	icon_state = "spider"

/obj/item/clothing/neck/roguetown/bogcowl
	name = "bogcowl"
	desc = "An odd cowl made using mud, sticks, and fibers."
	icon_state = "bogcowl"

/obj/item/clothing/neck/roguetown/elfears
	name = "elfear necklace"
	desc = "A grim necklace made to show off the wearer's macabre collection of cut off elf ears."
	icon_state = "elfears"

/obj/item/clothing/neck/roguetown/menears
	name = "menear necklace"
	desc = "A grim necklace made to show off the wearer's macabre collection of cut off humen ears."
	icon_state = "menears"

///////////////////////////////////////////////////////////////////
// Part of Kaizoku project that is still yet to be finished.     //
// The Demo usage is meant for Stonekeep and Warmongers.		 //
// If the usage for other sources is desired, before it finishes,//
// ask monochrome9090 for permission. Respect the artists's will.//
// If you want this quality content, COMMISSION me instead. 	 //
// For this project, requirements are low, and mostly lore-based.//
// I just do not desire for the Abyssariads to be butchered.	 //
///////////////////////////////////////////////////////////////////


/obj/item/clothing/neck/roguetown/chaincoif/karuta_zukin
	name = "karuta zukin"
	desc = "A protective hood composed of rectangular plates sewn onto a fabric backing, offering a more solid \
	defense while remaining flexible."
	icon_state = "karuta_zukin"
	item_state = "karuta_zukin"
	icon = 'icons/roguetown/kaizoku/clothingicon/neck.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/neck.dmi'
	adjustable = CAN_CADJUST

/obj/item/clothing/neck/roguetown/chaincoif/karuta_zukin/random/Initialize()
	color = pick("#a32121", "#8747b1", "#3d3a36", "#414143", "#685542", "#428138", "#264d26", "#537bc6", "#b5b004", "#249589", "#ffffff", "#bd6606", "#962e5c")
	..()

/obj/item/clothing/neck/roguetown/chaincoif/karuta_zukin/military/Initialize()
	color = pick("#3d3a36", "#685542", "#264d26")
	..()

/obj/item/clothing/neck/roguetown/chaincoif/karuta_zukin/kabukimono
	color = "#9b874f"

/obj/item/clothing/neck/roguetown/chaincoif/karuta_zukin/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "[initial(icon_state)]_t"
			flags_inv = null
			body_parts_covered = NECK
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_neck()
				H.update_inv_head()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			flags_inv = HIDEEARS|HIDEHAIR
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_neck()
					H.update_inv_head()

/obj/item/clothing/neck/roguetown/chaincoif/iron/kusari_zukin
	name = "iron kusari zukin"
	desc = "A hood made of riveted iron rings usually worn beneath or alongside a Kabuto. \
	It protects against cuts and slashes - but cannot spread blunt damage as efficiently."
	icon_state = "kusari_zukin"
	icon = 'icons/roguetown/kaizoku/clothingicon/neck.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/neck.dmi'

/obj/item/clothing/neck/roguetown/psycross/silver/abyssanctum
	name = "reformist abyssanctum amulet"
	desc = "Despair thee not at the abyssal depths, for where light doth fade, vessels of might shall be therein carved, as Abyssor and the Weeper guide their own."
	icon = 'icons/roguetown/kaizoku/clothingicon/neck.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/neck.dmi'
	icon_state = "abyssanctum"
	resistance_flags = FIRE_PROOF
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HIP|ITEM_SLOT_WRISTS

/obj/item/clothing/neck/roguetown/mercmedal/toweryakko
	name = "soul compressor"
	desc = "A metallic device of Tower-Yakko legacy used to shackle criminal souls and demons to eternity. The once-feared power ceased when Tower-Yakko's moral decay led to their disgrace in the eyes of the emperor. "
	icon = 'icons/roguetown/kaizoku/clothingicon/neck.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/neck.dmi'
	icon_state = "soul_compressor"

/obj/item/clothing/neck/roguetown/mercmedal/kabukimaru
	name = "hihiirokane beads"
	desc = "Hihiirokane, or 'Mythril', is a luminous, rare metal drawn from the abyssal depths where the pressure is hostile to most life. The Abyssariads holds the key to its mystery, a secret that dwarves would covet at any cost."
	icon = 'icons/roguetown/kaizoku/clothingicon/neck.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/neck.dmi'
	icon_state = "mythrilbeads"
