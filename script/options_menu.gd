extends Control

var save_path = "res://val.save"
@onready var CoinValue = $GUI/Coinvalue

func _on_save_pressed() -> void:
	print("Save Pressed")
	save()

func _on_load_pressed() -> void:
	print("Load Pressed")
	load_data()

func _on_back_pressed() -> void:
	print("Back Pressed")
	get_tree().change_scene_to_file("res://Assets/scene/menu.tscn")

func save():
	var file = FileAccess.open(save_path,FileAccess.WRITE)
	file.store_var(CoinValue)
	print("save Pressed")
	
func load_data():
	print("load Pressed")
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path ,FileAccess.READ)
		CoinValue = file.getvar(CoinValue)
	else:
		print("No Data Saved...")
