extends Area2D

@onready var anim = $AnimatedSprite2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		var tween = create_tween()
		tween.tween_property(self, "position", Vector2(0, -35), 0.5)
		tween.tween_property(self, "modulate:a", 0.0, 0.5)
		GameManager.coins += 10
		
		tween.tween_callback(self.queue_free)
		
		
		
