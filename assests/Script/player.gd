extends CharacterBody2D

const SPEED = 500.0
const JUMP_VELOCITY = -500.0

var animation_player : AnimatedSprite2D

func _ready():
	# Initialize stuff, if needed.
	animation_player = $AnimatedSprite2D
	
func _physics_process(delta: float) -> void:
	# Apply gravity if not on the floor.
	if not is_on_floor():
		velocity += get_gravity() * delta
	# Handle jump di game 'jump'.
	if Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_VELOCITY
		animation_player.play("Jump")
		
	# Handle movement character
	var direction_run := 0.0
	
	if Input.is_action_pressed("left"):
		direction_run -= 1
		
	if Input.is_action_pressed("right"):
		direction_run += 1
		
	# Handle state animasii apakah idle atau sedang lari 
	if direction_run != 0:
		velocity.x = direction_run * SPEED
		animation_player.play("Run")
		animation_player.scale.x = direction_run
	else:
		velocity.x = move_toward(velocity.x, 0 ,SPEED)
		animation_player.play("Idle")
		
	move_and_slide()
