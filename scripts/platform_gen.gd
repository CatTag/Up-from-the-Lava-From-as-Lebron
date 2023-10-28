extends Node2D

var platform = preload("res://scenes/platform.tscn")
@onready var platforms = $"."
@onready var player = $"../player"

func _process(delta):
	var pf = platform.instantiate()
	
	pf.position = Vector2(
		randf_range(player.position.x + 50, player.position.x + 60),
		randf_range(player.position.y + 100, player.position.y + 100)
	)
	
	platforms.add_child(pf)
