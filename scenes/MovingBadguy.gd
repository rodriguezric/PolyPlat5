extends Area2D

export (int) var speed = 50
var motion : Vector2
var current_action = 0
export (Array) var actions = ["wait", "left", "wait", "right"]


func next_action():
	current_action = (current_action + 1) % actions.size()


func process_action():
	match actions[current_action]:
		"wait":
			motion = Vector2(0,0)
		"left":
			motion = Vector2(-1,0)
		"right":
			motion = Vector2(1,0)
		"up":
			motion = Vector2(0, -1)
		"down":
			motion = Vector2(0,1)


func _physics_process(delta):
	move_local_x(motion.x * speed * delta)
	move_local_y(motion.y * speed * delta)


func _on_Timer_timeout():
	next_action()
	process_action()
