extends Node2D

func _on_lava_body_entered(body):
	pass # Replace with function body.



func game_over():
	pass

func game_win():
	pass
	
func restart():
	get_tree().change_scene_to_file(get_level())

func get_level():
	return "res://scenes/levels/level" + str(global.current_level) + ".tscn"

func _process(delta):
	if Input.is_action_pressed("restart"):
		restart()
