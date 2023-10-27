extends Node2D

@onready var player = $player
@onready var game_finish = $ui/game_finish

func _process(delta):
	if Input.is_action_pressed("restart"):
		get_tree().change_scene_to_file("res://scenes/main.tscn")



func _on_finish_line_finish():
	game_finish.visible = true
	get_tree().paused = true
	
