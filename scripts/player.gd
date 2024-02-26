extends CharacterBody2D

const GRAVITY: float = 50.0
const jump_force: float = 70.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# apply gravity
	velocity.y += GRAVITY * delta
	if is_on_floor():
		$AnimatedSprite2D.play("run")
	else:
		$AnimatedSprite2D.play("jump")
	
	# jump
	if(Input.is_action_just_pressed("ui_up") && is_on_floor()):
		velocity.y += -jump_force
	
	move_and_slide()
