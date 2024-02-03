extends RigidBody2D

const SPEED = 300.0


func _physics_process(delta):
	var player = get_tree().get_nodes_in_group("player")[0]
	
	look_at(player.position)
	self.rotation_degrees += 90

