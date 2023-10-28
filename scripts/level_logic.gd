extends Node2D

@onready var timer = $ui/timer
@onready var game_over_screen = $ui/game_over

func _on_lava_body_entered(body):
	if body.name == "player":
		game_over()

func game_over():
#	global.score = timer.text
	game_over_screen.visible = true
	get_tree().paused = true

func game_win():
	pass
	
func restart():
	get_tree().change_scene_to_file(get_level())

func get_level():
	return "res://scenes/levels/level" + str(global.current_level) + ".tscn"

func _process(delta):
	if Input.is_action_pressed("restart"):
		restart()
