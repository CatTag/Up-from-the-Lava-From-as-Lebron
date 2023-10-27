extends Node2D

@onready var player = $player

func _process(delta):
	if Input.is_action_pressed("restart"):
		get_tree().change_scene_to_file("res://scenes/main.tscn")

