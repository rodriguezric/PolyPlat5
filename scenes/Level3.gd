extends Node2D

onready var UI = $UI

func showLoseScreen():
	UI.showLoseScreen()


func showWinScreen():
	UI.showWinScreen()
	



func _on_Lava_body_entered(body):
	if body.name == "Player":
		showLoseScreen()


func _on_UI_quit():
	get_tree().quit()
	

func _on_UI_try_again():
	get_tree().reload_current_scene()


func _on_Badguy_body_entered(body):
	if body.name == "Player":
		showLoseScreen()


func _on_Win_body_entered(body):
	if body.name == "Player":
		showWinScreen()
