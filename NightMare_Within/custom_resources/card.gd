class_name Card
extends Resource

enum Type {ATTACK, SKILL, POWER}
enum Rarity {BASIC, COMMON, RARE, LEGEND}
enum Target {SELF, SINGLE_ENEMY, ALL_ENEMIES, EVERYONE}

const RARITY_COLORS := {
	Card.Rarity.BASIC: Color.WHITE,
	Card.Rarity.COMMON: Color.GREEN,
	Card.Rarity.RARE: Color.CORNFLOWER_BLUE,
	Card.Rarity.LEGEND: Color.GOLD
}

@export_group("Card Atrributes")
@export var id: int
@export var Cardname: String
@export var type: Type
@export var rarity: Rarity 
@export var target: Target
@export var cost: int
@export var description: String
@export var exhausts: bool = false

@export_group("Card Visuals")
@export var icon: Texture
@export_multiline var tooltip_text: String
@export var sound: AudioStream

func is_single_targeted() -> bool:
	return target == Target.SINGLE_ENEMY
	
func _get_targets(targets: Array[Node]) -> Array[Node]:
	if not targets:
		return []
		
	var tree:= targets[0].get_tree()
	
	match target:
		Target.SELF:
			return tree.get_nodes_in_group("player")
		Target.ALL_ENEMIES:
			return tree.get_nodes_in_group("enemies")
		Target.EVERYONE:
			return tree.get_nodes_in_group("player") + tree.get_nodes_in_group("enemies")
		_:
			return []

func play(targets: Array[Node], char_stats: CharacterStats, modifiers: ModifierHandler) -> void:
	Events.card_played.emit(self)
	char_stats.mana -= cost		
	
	if is_single_targeted():
		apply_effects(targets, modifiers)
	else:
		apply_effects(_get_targets(targets), modifiers)
		
func apply_effects(_targets: Array[Node], _modifiers: ModifierHandler) -> void:
	pass

func get_default_tooltip() -> String:
	return tooltip_text

func get_updated_tooltip(_player_modifiers: ModifierHandler, _enemy_modifiers: ModifierHandler) -> String:
	return tooltip_text
	
	
	
	
	
	
	
	
	
	
			
			
