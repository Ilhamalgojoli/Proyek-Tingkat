extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Controller.connect("my_coin", get_coin)

func get_coin(coin: int) -> void:
	text = "Coin : " + str(coin)
