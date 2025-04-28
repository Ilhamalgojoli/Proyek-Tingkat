extends Control

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://assests/Menu_scene/StartGame.tscn")
