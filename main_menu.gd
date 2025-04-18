extends Control

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://StartGame.tscn")
func _on_option_pressed() -> void:
	get_tree().change_scene_to_file("res://option.tscn")
func _on_exit_button_pressed() -> void:
	get_tree().quit()
