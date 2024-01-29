extends CharacterBody2D

@export var SPEED = 300.0


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	var directionX = Input.get_axis("ui_left", "ui_right")
	var directionY = Input.get_axis("ui_up", "ui_down")
	
	if directionX:
		velocity.x = directionX * SPEED
		if directionX == 1:
			$AnimatedSprite2D.play("move")
			$AnimatedSprite2D.flip_h = false
		if directionX == -1:
			$AnimatedSprite2D.play("move")
			$AnimatedSprite2D.flip_h = true
	else:
		velocity.x = 0
		$AnimatedSprite2D.stop()
		
	if directionY:
		velocity.y = directionY * SPEED
	else:
		velocity.y = 0
	move_and_slide()
