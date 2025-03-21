extends Control

@onready var continue_button: Button = %Continue

func _ready() -> void:
	get_tree().paused = false

func _on_continue_pressed() -> void:
	print("continue run")

func _on_new_run_pressed() -> void:
	print("new run")

func _on_game_setting_pressed() -> void:
	print("game setting")

func _on_game_statistics_pressed() -> void:
	print("game statistics")

func _on_story_gallery_pressed() -> void:
	print("story gallery")

func _on_exit_pressed() -> void:
	print("exit")
