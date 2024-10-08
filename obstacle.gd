extends Node2D
signal hit
signal gone
@export var speed = 0
@export var angular_speed = PI


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
	velocity.x = -300

	position += velocity * delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	gone.emit()




func _on_body_entered(body: Node2D):
	print("hit")
	hit.emit()
