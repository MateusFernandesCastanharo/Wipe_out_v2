extends Node2D

func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://cenas/mapa.tscn")
	

func _on_quit_pressed():
	get_tree().quit()
