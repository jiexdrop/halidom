extends Node2D

@onready var hero_sit: Sprite2D = $HeroSit

func _on_player_on_move() -> void:
	hero_sit.visible = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("restart"):
		get_tree().reload_current_scene()
