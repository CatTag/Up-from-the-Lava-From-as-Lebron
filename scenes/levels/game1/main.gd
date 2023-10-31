extends Node2D



func _on_button_toggled(button_pressed):
	if button_pressed:
		get_tree().paused = true
		$"pause menu/AnimationPlayer".play("in")
	elif  button_pressed == false:
		get_tree().paused = false
		$"pause menu/AnimationPlayer".play("out")
func _process(delta):
	
	$StaticBody2D.position += Vector2(randf_range(-10,10),randf_range(-10,10))
