# Funcția butoanelor
extends Control
func _on_button_1_pressed() -> void:
	get_tree().change_scene_to_file("res://UI/level_select.tscn.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://UI/control(keyboard).tscn")
	


func _on_button_3_pressed() -> void:
	get_tree().quit()
