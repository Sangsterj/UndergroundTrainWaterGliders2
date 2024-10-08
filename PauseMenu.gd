extends Control

func _ready():
	# Connect button signals
	$ResumeButton.connect("pressed", self, "_on_ResumeButton_pressed")
	$ExitButton.connect("pressed", self, "_on_ExitButton_pressed")

func _on_ResumeButton_pressed():
	get_tree().paused = false  # Resume the game
	queue_free()  # Remove the pause menu

func _on_ExitButton_pressed():
	# Logic to go to main menu (replace with your own logic)
	get_tree().change_scene("res://path/to/MainMenu.tscn")  # Change this to your main menu scene path




func _on_resume_button_pressed():
	pass # Replace with function body.


func _on_exsit_button_pressed():
	pass # Replace with function body.
