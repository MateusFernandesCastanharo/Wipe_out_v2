extends Area2D

@export var speed = 300

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	position += transform.x * speed * delta


func _on_body_entered(body):
	# função de dano
	# queue_free()
	pass
