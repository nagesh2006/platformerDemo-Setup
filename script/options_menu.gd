extends Control


func _on_save_pressed() -> void:
	print("Save Pressed")


func _on_load_pressed() -> void:
	print("Load Pressed")


func _on_back_pressed() -> void:
	print("Back Pressed")
	get_tree().change_scene_to_file("res://Assets/scene/menu.tscn")
