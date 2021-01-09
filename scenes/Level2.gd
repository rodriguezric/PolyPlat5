extends Node2D

onready var UI = $UI


func _on_Victory_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://scenes/Level3.tscn")


func _on_Badguy_body_entered(body):
	if body.name == "Player":
		UI.showLoseScreen()

func _on_UI_try_again():
	get_tree().reload_current_scene()
	

func _on_UI_quit():
	get_tree().quit()
