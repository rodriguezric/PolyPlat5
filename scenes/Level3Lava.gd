extends Area2D

export (int) var speed = 25

#Rising Lava!
func _physics_process(delta):
	move_local_y(-1 * delta * speed)
