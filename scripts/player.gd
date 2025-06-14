extends CharacterBody2D


const SPEED = 250.0
const RUN_SPEED = 400.0
const JUMP_VELOCITY = -500.0
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		animated_sprite.play("Jump")

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if direction < 0:
		animated_sprite.flip_h = true
	elif direction > 0:
		animated_sprite.flip_h = false
		
	if direction == 0:
		animated_sprite.play("Idle")
	else: 
		animated_sprite.play("Walk")
		
	if Input.is_action_pressed("Run"): 
			velocity.x = direction * RUN_SPEED
			animated_sprite.play("Run")

	move_and_slide()
