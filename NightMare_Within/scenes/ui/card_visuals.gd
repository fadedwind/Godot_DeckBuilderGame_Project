class_name CardVisuals
extends Control

@export var card: Card : set = _set_card
@onready var panel: Panel = $Panel
@onready var Cardname: Label = $Cardname
@onready var cost: Label = $Cost
@onready var icon: TextureRect = $Icon
@onready var description: Label = $Description
@onready var rarity: TextureRect = $Rarity

func _set_card(value: Card) -> void:
	if not is_node_ready():
		await ready
	card = value
	cost.text = str(card.cost)
	Cardname.text = card.Cardname
	description.text = card.description
	icon.texture = card.icon
	rarity.modulate = Card.RARITY_COLORS[card.rarity]
