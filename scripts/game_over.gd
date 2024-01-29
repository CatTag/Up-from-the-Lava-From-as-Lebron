extends Control

@onready var score = $score

func _process(delta):
    score.text = "Score: " + str(global.score)

func _on_retry_pressed():
    get_tree().paused = true
    get_tree().change_scene_to_file("res://scenes/levels/level"+str(global.current_level)+".tscn")
    get_tree().paused = false

func _on_main_menu_pressed():
    # get_tree().paused = true
    get_tree().change_scene_to_file("res://scenes/menu.tscn")
    # get_tree().paused = fals

func _on_quit_pressed():
    get_tree().quit()
    
