extends CharacterBody2D
class_name PlayerController

@export var move_speed = 20.0

var direction : Vector2

func _physics_process(delta):
	if Input.is_action_pressed("move_up") and  Input.is_action_pressed("shift"):
		direction.y = -2
	elif Input.is_action_pressed("move_up"):
		direction.y = -1
	elif Input.is_action_pressed("move_down") and Input.is_action_pressed("shift"):
		direction.y = 2
	elif Input.is_action_pressed("move_down"):
		direction.y=1
	else:
		direction.y=0
		
	if Input.is_action_pressed("move_left") and Input.is_action_pressed("shift"):
		direction.x=-2
	elif Input.is_action_pressed("move_left"):
		direction.x = -1
	elif Input.is_action_pressed("move_right") and Input.is_action_pressed("shift"):
		direction.x = 2
	elif Input.is_action_pressed("move_right"):
		direction.x = 1
	else:
		direction.x=0
	
	velocity = direction * move_speed * delta * 200
	move_and_slide()
	
