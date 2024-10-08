extends Node2D


var speed = 20


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	speed += delta*40*(800-speed)/800
	position.x -= speed*delta
	while (position.x < -1000):
		position.x += 1000
