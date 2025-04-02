class_name RunStats
extends Resource

signal gold_changed

const STARTING_GOLD := 100

const BASE_CARD_REWARDS := 3
const BASE_COMMON_WEIGHT := 5.6
const BASE_RARE_WEIGHT := 3.2
const BASE_EPIC_WEIGHT := 1.0
const BASE_LEGEND_WEIGHT := 0.2

@export var gold := STARTING_GOLD : set = set_gold
@export var card_rewards := BASE_CARD_REWARDS
@export_range(0.0, 10.0) var common_weight := BASE_COMMON_WEIGHT
@export_range(0.0, 10.0) var rare_weight := BASE_RARE_WEIGHT
@export_range(0.0, 10.0) var epic_weight := BASE_EPIC_WEIGHT
@export_range(0.0, 10.0) var legend_weight := BASE_LEGEND_WEIGHT

func set_gold(new_amount: int) -> void:
	gold = new_amount
	gold_changed.emit()

func reset_weights() -> void:
	common_weight = BASE_COMMON_WEIGHT
	rare_weight = BASE_RARE_WEIGHT
	epic_weight = BASE_EPIC_WEIGHT
	legend_weight = BASE_LEGEND_WEIGHT
