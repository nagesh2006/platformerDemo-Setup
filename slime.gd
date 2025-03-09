extends Node2D
@export var SPEED = 300 
var direction = -1
@onready var ray_right = $RayCastRight 
@onready var ray_left = $RayCastLeft
@onready var anim = $AnimatedSprite2D
@onready var body = $"../player"
func _process(delta: float) -> void:
	if ray_left.is_colliding():
		if ray_left.get_collider("body"):
			body.killPlayer()
		direction = -1
	if ray_right.is_colliding():
		direction = 1
	position.x += direction * SPEED * delta
	
