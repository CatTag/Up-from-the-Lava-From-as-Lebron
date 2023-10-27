extends Control

@onready var gravity = $VBoxContainer/gravity
@onready var jump_label = $VBoxContainer/jump_label
@onready var jump = $VBoxContainer/jump
@onready var gravity_label = $VBoxContainer/gravity_label
@onready var debug = $"."


func _ready():
	if global.debug_mode:
		debug.visible = true
		

func _on_gravity_drag_ended(value_changed):

	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_gravity_value_changed(value):
	global.gravity = gravity.value
	gravity_label.text = "gravity: " + str(global.gravity) + "/" + str(gravity.max_value)
