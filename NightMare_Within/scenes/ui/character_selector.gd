extends Control

const RANGER_STATS := preload("res://characters/Ranger/ranger.tres")
const WARRIOR_STATS := preload("res://characters/Warrior/warrior.tres")
const WIZARD_STATS := preload("res://characters/Wizard/wizard.tres")

@onready var title: Label = %Title
@onready var description: Label = %Description
@onready var character_potrait: TextureRect = %CharacterPortrait

var current_character: CharacterStats : set = set_current_character

func _ready() -> void:
	set_current_character(RANGER_STATS)
	
func set_current_character(new_character: CharacterStats) -> void:
	current_character = new_character
	title.text = current_character.character_name
	description.text = current_character.description
	character_potrait.texture = current_character.portrait
	
func _on_start_button_pressed() -> void:
	print("started")

func _on_ranger_button_pressed() -> void:
	current_character = RANGER_STATS

func _on_wizard_button_pressed() -> void:
	current_character = WIZARD_STATS

func _on_warrior_button_pressed() -> void:
	current_character = WARRIOR_STATS
