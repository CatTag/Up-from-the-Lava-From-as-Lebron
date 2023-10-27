extends CharacterBody2D

@onready var sprite = $sprite
var SPEED = 300.0
var JUMP_VELOCITY = 400

# Get the gravity from the project settings to be synced with RigidBody nodes.
#defailt gravity is 980
var gravity = 700


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		sprite.frame = 0
	else:
		sprite.frame = 1
	

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
		

		
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
