extends Area2D

signal finish

func _on_body_entered(body):
	if body.name == "player":
		finish.emit()
