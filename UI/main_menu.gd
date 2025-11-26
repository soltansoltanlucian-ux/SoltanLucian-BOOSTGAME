# Funcția butonului Exit
extends Control

func _on_exit_pressed():
	get_tree().quit()


func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://UI/level_select.tscn.tscn")
	


func _on_controls_pressed() -> void:
	get_tree().change_scene_to_file("res://UI/control(keyboard).tscn")
	
