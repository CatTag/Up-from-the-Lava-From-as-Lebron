extends Control

@onready var music_checkbox = $settings_box/music/music_checkbox
@onready var audio = $"../AudioStreamPlayer2D"

# Called when the node enters the scene tree for the first time.
func _ready():
	music_checkbox.connect("toggled", music_off)


func music_off(button_pressed):
	if button_pressed:
		audio.stop()
	if !button_pressed:
		audio.play()


func _on_iggames_pressed():
		OS.shell_open("https://www.youtube.com/@Cashigrtro")
