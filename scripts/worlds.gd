extends ScrollContainer

@onready var grid = $GridContainer
var levels = "res://scenes/levels/"
signal test

func _ready():
	for file in DirAccess.get_files_at(levels):
		var button = Button.new()
		button.text = file.split(".")[0]
		button.pressed.connect(open_scene(levels + file))
		grid.add_child(button)

func open_scene(scene: String):
	get_tree().change_scene_to_file(scene)
