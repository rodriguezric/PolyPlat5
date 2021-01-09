extends Node2D

onready var UI = $UI


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Goal_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://scenes/Level2.tscn")


func _on_Lava_body_entered(body):
	if body.name == "Player":
		UI.showLoseScreen()


func _on_UI_try_again():
	get_tree().reload_current_scene()
	

func _on_UI_quit():
	get_tree().quit()
