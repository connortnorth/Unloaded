extends CharacterBody2D


const SPEED = 120.0


func _physics_process(delta: float) -> void:
	# TODO remember to change the movement to top down
	
	var direction := Vector2.ZERO
	
	direction.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	direction.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	
	velocity = direction * SPEED

	move_and_slide()
