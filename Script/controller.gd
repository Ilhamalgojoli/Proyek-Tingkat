extends Node

var coin: int = 0
signal my_coin(coin: int)

func count_coin() -> void:
	coin += 1
	emit_signal("my_coin", coin)
