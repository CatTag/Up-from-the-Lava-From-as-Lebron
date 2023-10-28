extends Area2D

@export var camera_node: Node
@export var new_x_adjustment: float
@export var new_y_adjustment: float
@export var duration: float
@export var allow_multiple_executions: bool = false
var tween
var new_camera_position
var transition_happened = false


func _on_body_entered(body):
	
	new_camera_position = Vector2(
		new_x_adjustment + camera_node.position.x,
		0 + camera_node.position.y
		)
	if transition_happened == false or allow_multiple_executions:
		if body.name == "player":
			tween = create_tween()
			get_tree().paused = true
			tween.tween_property(camera_node, "position", new_camera_position, duration).set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_CUBIC)
			await tween.finished
			get_tree().paused = false
			transition_happened = true
