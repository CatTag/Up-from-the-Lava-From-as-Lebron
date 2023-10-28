extends Control

@onready var name_label = $name/name_label
@onready var name_input = $name/name_input
@onready var colour_label = $colour/colour_label
@onready var colour_input = $colour_input
@onready var lebron = $lebron
@onready var play = $"../../buttons/play"
@onready var example_name = $example_name
@onready var colour_button = $colour/colour_button


func _process(delta):
	lebron.self_modulate = colour_input.color
	example_name.text = name_input.text
	colour_button.add_theme_color_override("theme_override_colors/font_color", colour_input.color)
	
func _on_play_pressed():
	global.local_color = colour_input.color
	global.local_name = name_input.text

func _on_colour_button_toggled(button_pressed):
	colour_input.visible = button_pressed
	
