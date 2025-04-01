extends Card

func apply_effects(targets: Array[Node]) -> void:

	var damage_effect := DamageEffect.new()
	damage_effect.amount = 8
	damage_effect.sound = sound
	damage_effect.execute(targets)
	print("the card will apply expose to enemy.")
