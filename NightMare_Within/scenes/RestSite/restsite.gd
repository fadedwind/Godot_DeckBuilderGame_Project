extends Control

func _on_button_pressed() -> void:
	Events.restsite_exited.emit()
