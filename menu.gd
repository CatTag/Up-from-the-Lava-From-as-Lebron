extends Control

@onready var title_splash := $title_splash
@onready var animation_player = $title_splash/AnimationPlayer
@onready var audio = $AudioStreamPlayer2D
var volume
@onready var background_colour = $background_colour
@onready var version = $version



func _ready():
	audio.play(7)
	version.text = "Version: " + str(global.version)


func _process(delta):
	animation_player.play("tilting")
	await animation_player.animation_finished
	volume = AudioServer.get_bus_volume_db(0)
	print(volume)
func _on_audio_finished():
	audio.play(7)


func _on_play_pressed():
	var tween = create_tween().set_parallel(true)
	var count := 0
	var transition_time = 2
	
	for child in get_children():
		if child.name == background_colour.name:
			count += 1
		else:	
			tween.tween_property(child, "modulate", Color(0,0,0,0), transition_time)
			tween.tween_property(audio, "volume_db", -10, transition_time)
			count += 1
			
	await tween.finished
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_version_gui_input(event):
	global.debug_mode = true
	print(event)




func _on_download_pressed():
	OS.shell_open("https://github.com/Cashigtro/Up-from-the-Lava-From-as-Lebron")
