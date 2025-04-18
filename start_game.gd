extends Control

func _on_start_play_game_pressed() -> void:
	get_tree().change_scene_to_file("res://ChooseLevel.tscn")
func _on_ar_pressed() -> void:
	get_tree().change_scene_to_file("res://ar_mode.tscn")
func _on_back_to_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://MainMenu.tscn")
