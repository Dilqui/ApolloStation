/mob/living/carbon/monkey/gib()
	..(null,1)

/mob/living/carbon/monkey/dust()
	..("dust-m")

/mob/living/carbon/monkey/death(gibbed)
	statistics.increase_stat("monkey_deaths")

	..(gibbed,"lets out a faint chimper as it collapses and stops moving...")