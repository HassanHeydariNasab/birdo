extends KinematicBody2D

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	move(Vector2(4,0))
	if Input.is_action_pressed("supre"):
		move(Vector2(0,-2))
		set_rotd(30)
	elif Input.is_action_pressed("malsupre"):
		move(Vector2(0,2))
		set_rotd(-30)
	else:
		set_rotd(0)