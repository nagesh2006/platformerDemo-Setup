extends CharacterBody2D


const SPEED = 600.0
const JUMP_VELOCITY = -1900.0

@export var run_multiplier = 1



func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	#increases speed of player when you hold shift
	if Input.is_action_just_pressed("run"):
		run_multiplier = 1.5
	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")

	if direction:
		velocity.x = direction * SPEED * run_multiplier
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED * run_multiplier)
	# Handles direction the player faces
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = true
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = false
	#Handles walking or idle animation
	if velocity.x != 0:
		$AnimatedSprite2D.play("walk")
	else:
		$AnimatedSprite2D.play("idle")
	
	move_and_slide()
	
func killPlayer():
	position =%SpawnPoint.position
	$AnimatedSprite2D.flip_h = false
	

<<<<<<< HEAD
func _on_death_area_body_entered(body: Node2D) -> void:
	killPlayer()
	move_and_slide()


func _on_playeroptions_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/scene/options_menu.tscn")
=======
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/scene/options_menu.tscn")


func _on_death_zone_body_entered(body: Node2D) -> void:
	killPlayer()
>>>>>>> 4245f5ecf8dabcdb8f7d2f3f701034cee0001b95
