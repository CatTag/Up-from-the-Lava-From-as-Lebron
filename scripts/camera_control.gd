extends Camera2D

@onready var player = $"../player"
@onready var camera = $"."
var camera_position
var camera_boundaries := Vector2(0,0)
@onready var lava = $"../lava"

func _physics_process(delta):
    camera_boundaries[0] = lava.position.x + (lava.position.x/2)
    
    camera_position = player.position.x
    print(camera_position, camera_boundaries)
    if camera_position > camera_boundaries[0]:
        camera.position.x = camera_position
 

