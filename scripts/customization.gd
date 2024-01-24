extends Control

@onready var name_label = $name/name_label
@onready var name_input = $name/name_input
@onready var colour_label = $colour/colour_label
@onready var colour_input = $colour_input
@onready var lebron = $lebron
@onready var play = $"../../buttons/play"
@onready var example_name = $example_name
@onready var colour_button = $colour/colour_button


func name_valid(n: String) -> bool:
    if n.length() >= 3 && n.length() <= 16 && n != "":
        for i in n:
            if i == " ":
                return true
        return false
    return true


func _process(delta):
    lebron.self_modulate = colour_input.color
    example_name.text = name_input.text
    colour_button.add_theme_color_override("theme_override_colors/font_color", colour_input.color)
    if name_valid(name_input.text):
        play.disabled = true
        play.text = "Set a name first!"
    else:
        play.disabled = false
        play.text = "Play"
    
    
func _on_play_pressed():
    global.local_color = colour_input.color
    global.local_name = name_input.text

func _on_colour_button_toggled(button_pressed):
    colour_input.visible = button_pressed
    
