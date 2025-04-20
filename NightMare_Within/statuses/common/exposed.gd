class_name ExposedStatus
extends Status

const MODIFIER := 0.5

func apply_status(target: Node) -> void:
	print("It does %s something" % [target, MODIFIER * 100])
	
	var damage_effect := DamageEffect.new()
	damage_effect.amount = 6
	damage_effect.execute([target])

	status_applied.emit(self)
