extends StaticBody2D



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	var players_collision
	if body.name == "player":
		for child in body.get_children():
			if child.name == "CollisionShape2D2":
				players_collision = child
				child.disabled = true
		
		var tween = create_tween()
		tween.tween_property(body, "position", Vector2(body.position.x, body.position.y + 500), 1)
		await tween.finished
		players_collision.disabled = false

