extends Label

var timer = Timer.new()
@onready var game_timer = $"."
var time = 0.0
var time_before = 0.0
var start = true
@onready var score = $"../game_over/score"

func _process(delta):
	if start:
		time = (Time.get_ticks_msec()/1000.0) - time_before
		print(time_before)
		game_timer.text = str(time)



func _on_retry_pressed():
	
	
	
	start = true
	


func _on_lava_player_death():
	get_tree().paused = false
	start = false
	time_before = time
	get_tree().paused = true
	score.text = "Score: " + str(time) + "s"
