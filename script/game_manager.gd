extends Node

var coins = 0
var score = 0

@onready var CoinValue = $GUI/coinValue

func _process(delta: float) -> void:
	CoinValue.text = str(coins)
	
