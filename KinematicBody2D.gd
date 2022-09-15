extends KinematicBody2D

var velocity = Vector2.ZERO 
var speed = 500
var damage = 1

func _ready():
	velocity = Vector2(0, -speed)
	
func _physics_process(delta):
	position = position + velocity
	position.x = wrapf(position.x, 0, 1024)
	position.y = wrapf(position.y, 0, 600)
