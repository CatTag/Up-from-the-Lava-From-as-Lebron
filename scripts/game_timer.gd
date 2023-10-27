extends Label

var timer = Timer.new()
@onready var game_timer = $"."
var time = 0.0

func _process(delta):
	game_timer.text = str((Time.get_ticks_msec()/1000).format("%.3f")
