extends ScrollContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_block_pressed():
	global.selected_tile = 0

func _on_triangle_pressed():
	global.selected_tile = 1
