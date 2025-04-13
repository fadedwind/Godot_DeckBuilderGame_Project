class_name Restsite
extends Control

@export var char_stats: CharacterStats


func _on_rest_button_pressed() -> void:
	char_stats.heal(ceili(char_stats.max_health * 0.3))
	Events.restsite_exited.emit()
