extends Node

var coins = 0
var score = 0
var total_coins = 0
var death = false
@onready var CoinValue = $GUI/coinValue

func _process(delta: float) -> void:
	CoinValue.text = str(coins)
