extends Node
@export var obstical_scene: PackedScene
var score = 0
func _ready():
	$EnemyTimer.start()
	pass
func _on_enemy_timer_timeout():

	# Create a new instance of the Mob scene.
	var obstical = obstical_scene.instantiate()
	
	var enemy_spawn_location = $EnemyPath/EnemySpawnLocation
	enemy_spawn_location.progress_ratio = randf()

	# Set the mob's direction perpendicular to the path direction.
	var direction = enemy_spawn_location.rotation + PI / 2

	# Set the mob's position to a random location.
	obstical.position = enemy_spawn_location.position

	obstical.connect("hit", self.gameover)

	# Spawn the mob by adding it to the Main scene.
	add_child(obstical)
func leftscreen():
	score += 1
	print(score)
	
func gameover():
	$player/PlayerSprite.hide()
	$EnemyTimer.stop()
