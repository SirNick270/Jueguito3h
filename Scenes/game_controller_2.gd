extends Node

var pineapples = 7

func _process(delta: float) -> void:
	if pineapples == 0:
		get_tree().change_scene_to_file("res://Scenes/nivel_3.tscn")
		
func point():
	pineapples -= 1
