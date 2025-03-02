extends Node2D

@export var player_controller : PlayerController
@export var animation_player : AnimationPlayer
@export var sprite : Sprite2D

func _process(delta: float) -> void:
#handles direction of player
	if player_controller.direction == 1:
		sprite.flip_h = false
	elif player_controller.direction == -1:
		sprite.flip_h = true
#handles waling animation
	if abs(player_controller.velocity.x) > 0.0:
		animation_player.play("walk")
	else:
		animation_player.play("idle")
#handles jump and fall of player
	if player_controller.velocity.y < 0.0:
		animation_player.play("jump")
	elif player_controller.velocity.y > 0.0:
		animation_player.play("fall")
		
