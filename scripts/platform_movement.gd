extends StaticBody2D

@onready var me = $"."
@onready var from := position.x
@export var to_add: float = 100
var to = position.x - to_add

@export var duration := 1.0

func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var tween = create_tween()
	tween.tween_property(me, "position", Vector2(to, me.position.y), duration)
	await tween.finished
	
	
	
	var tween2 = create_tween()
	tween2.tween_property(me, "position", Vector2(from, me.position.y), duration)
	await tween2.finished

