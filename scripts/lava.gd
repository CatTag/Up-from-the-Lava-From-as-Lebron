extends Area2D

@onready var timer = $timer
@onready var lava = $"."

@export var move_every := 1.0
@export var move_distance := 200.0
@export var duration := 1.0

var tween



func _ready():
	move_lava()
	timer.wait_time = move_every
	timer.start()
	timer.connect("timeout", move_lava)

func move_lava():

	tween = create_tween()
	tween.tween_property(lava, "position", Vector2(lava.position.x + move_distance, lava.position.y), duration).set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_CUBIC)


