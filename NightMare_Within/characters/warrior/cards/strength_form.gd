extends Card

const TRUE_STRENGTH_FORM_STATUS = preload("res://statuses/strength_form.tres")
	
func apply_effects(targets: Array[Node], modifiers: ModifierHandler) -> void:
	var status_effect := StatusEffect.new()
	var strength_form := TRUE_STRENGTH_FORM_STATUS.duplicate()
	status_effect.status = strength_form
	status_effect.execute(targets)
