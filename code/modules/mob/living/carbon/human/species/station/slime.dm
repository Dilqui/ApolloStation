/datum/species/slime
	name = "Slime"
	name_plural = "slimes"
	is_small = 1

	icobase = 'icons/mob/human_races/r_slime.dmi'
	deform = 'icons/mob/human_races/r_slime.dmi'

	language = "Sol Common" //todo?
	unarmed_types = list(/datum/unarmed_attack/slime_glomp)
	flags = NO_BLOOD | NO_SCAN | NO_SLIP | NO_BREATHE
	siemens_coefficient = 3
	darksight = 3

	blood_color = "#05FF9B"
	flesh_color = "#05FFFB"

	remains_type = /obj/effect/decal/cleanable/ash
	death_message = "rapidly loses cohesion, splattering across the ground..."

	has_organ = list(
		"brain" = /datum/organ/internal/brain/slime
		)

	breath_type = null
	poison_type = null

/datum/species/slime/handle_death(var/mob/living/carbon/human/H)
	spawn(1)
		if(H)
			H.character.species = "Human" // CC don't have slime DNA on hand so you turn back into a human.
			H << "<span class='ooc_notice'>Since you died as a slime-person, your character will be re-cloned as a normal human the next time you play as them.</span>"
			H.gib()
