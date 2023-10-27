extends Node2D

#@onready var cam = $game_camera
#var screen_height = ProjectSettings.get_setting("display/window/size/viewport_height")
#@onready var new_camera_position = -screen_height+cam.position.y
#var new_camera_position_bias = 400
#
#func _on_camera_movement_trigger_body_entered(body):
#	new_camera_position += new_camera_position_bias
#	var tween = create_tween()
#	get_tree().paused = true
#	tween.tween_property(cam, "position", Vector2(0, new_camera_position), 1).set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_CUBIC)
#	await tween.finished
#	get_tree().paused = false
