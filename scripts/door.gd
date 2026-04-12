extends Area2D

@onready var door: AnimatedSprite2D = $Door

func _on_body_entered(body: Node2D) -> void:
	door.play("open")
	door.animation_finished.connect(next_scene)
	
func next_scene():
	get_tree().change_scene_to_file("res://scenes/level_3.tscn")
