extends KinematicBody2D

const GRAVITY = 500
const SPEED = 150
const JUMP_FORCE = -200
const FRICTION = 0.5

var motion : Vector2

func _left():
	return Input.is_action_pressed("left")
	

func _right():
	return Input.is_action_pressed("right")


func _input(event):
	if event.is_action_pressed("jump"):
		if is_on_floor():
			motion.y = JUMP_FORCE
	
	if event.is_action_pressed("left"):
		motion.x = -SPEED
	
	if event.is_action_pressed("right"):
		motion.x = SPEED


func apply_gravity(delta):
	motion.y += GRAVITY * delta
	
	if is_on_floor():
		motion.y = min(motion.y, 5)
	
	if motion.y > 0:
		motion.y = min(motion.y, - JUMP_FORCE * 1.5)
	
	
func apply_friction():
	if not _left() and not _right():
		motion.x = lerp(motion.x, 0, FRICTION)


func _physics_process(delta):
	apply_gravity(delta)
	apply_friction()
	move_and_slide(motion, Vector2.UP)
