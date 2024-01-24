extends Sprite2D

@onready var lava = $".."
@onready var timer = $"../../Timer"
@onready var game_over = $"../../ui/game_over"

signal player_death

# Called when the node enters the scene tree for the first time.
func _ready():
    move_lava()
    timer.connect("timeout", move_lava)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass

func move_lava():
    var tween = create_tween()
    tween.tween_property(lava, "position", Vector2(lava.position.x, lava.position.y-50), 1).set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_CUBIC)
    await tween.finished

    

func _on_area_2d_body_entered(body):
    if body.name == "player":
        game_over.visible = true
        player_death.emit()
        get_tree().paused = true
    
