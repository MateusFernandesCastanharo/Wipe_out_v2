extends CharacterBody2D

@export var SPEED = 200.0

@export var BULLET : PackedScene


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	var directionX = Input.get_axis("ui_left", "ui_right")
	var directionY = Input.get_axis("ui_up", "ui_down")
	
	if directionX:
		velocity.x = directionX * SPEED
	else:
		if not velocity.x == 0:
			velocity.x = velocity.x / 1.1
		else:
			velocity.x = 0
		
	if directionY:
		velocity.y = directionY * SPEED
	else:
		if not velocity.y == 0:
			velocity.y /= 1.1
		else:
			velocity.y = 0
	
	$Spaceship.look_at(get_global_mouse_position())
	$Spaceship.rotation_degrees -= -90
	
	move_and_slide()

func _on_attack_speed_t_imer_timeout():
	var bullet1 = BULLET.instantiate()
	var bullet2 = BULLET.instantiate()
	owner.add_child(bullet1)
	owner.add_child(bullet2)
	bullet1.position = $canhao1.position
	bullet2.position = $canhao2.position
	get_global_mouse_position()
