extends Control

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://assests/Menu_scene/StartGame.tscn")
func _on_option_pressed() -> void:
	get_tree().change_scene_to_file("res://assests/Menu_scene/option.tscn")
func _on_exit_game_pressed() -> void:
	get_tree().quit()
