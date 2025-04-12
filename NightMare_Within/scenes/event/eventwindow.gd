extends Control

func _on_button_pressed() -> void:
	Events.event_exited.emit()
