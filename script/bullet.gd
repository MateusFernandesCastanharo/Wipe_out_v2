extends Area2D

@export var speed = 150

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("default")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	position += transform.x * speed * delta

func _on_body_entered(body):
	# função de dano
	# queue_free()
	pass
