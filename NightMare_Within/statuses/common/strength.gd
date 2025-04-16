class_name StrengthStatus
extends Status



func initialize_status(target: Node) -> void:
	status_changed.connect(_on_status_changed.bind(target))
	_on_status_changed()

func _on_status_changed()->void:
	print("hello.")
