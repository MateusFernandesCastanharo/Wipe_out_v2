extends Area2D

@export var speed = 300
var velocity = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	position += transform.x * speed * delta
	#position += velocity.normalized() * speed * delta


func _on_body_entered(body):
	# função de dano
	# queue_free()
	pass
