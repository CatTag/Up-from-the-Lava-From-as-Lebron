extends Control

# Thanks to this video (https://youtu.be/84b-43O7vkw) for helping me do this and chat gpt

@onready var game_start_time = Time.get_ticks_msec()
@onready var timer_label = $timer_label

var current_time: float

func get_time():
	var current_time = Time.get_ticks_msec() - game_start_time
	var minutes = int(current_time / 60000)  # 60000 milliseconds in a minute
	var seconds = int((current_time % 60000) / 1000)  # Calculate remaining seconds
	var milliseconds = int(current_time % 1000)  # Calculate milliseconds
	if minutes < 10:
		minutes = "0"+str(minutes)
			
	if seconds < 10:
		seconds = "0"+str(seconds)
	
	if milliseconds:
		if len(str(milliseconds)) <= 2:
			milliseconds = "0"+str(milliseconds)
			
		elif len(str(milliseconds)) <= 1:
			milliseconds = "0"+str(milliseconds)		
	
		
		elif len(str(milliseconds)) <= 0:
			milliseconds = "000"+str(milliseconds)		
	
	return str(minutes) + ":" + str(seconds) + "." + str(milliseconds)

func _process(delta):
	timer_label.text = str(get_time())
