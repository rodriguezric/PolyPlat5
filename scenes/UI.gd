extends Control

signal try_again
signal quit

onready var win_screen = $CanvasLayer/WinScreen
onready var lose_screen = $CanvasLayer/LoseScreen


func _on_TryButton_pressed():
	emit_signal("try_again")


func _on_QuitButton_pressed():
	emit_signal("quit")


func showWinScreen():
	win_screen.visible = true


func hideWinScreen():
	win_screen.visible = false
	

func showLoseScreen():
	lose_screen.visible = true
	
	
func hideLoseScreen():
	lose_screen.visible = false


func hideAllScreens():
	hideWinScreen()
	hideLoseScreen()
