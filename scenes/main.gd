extends Node2D

@onready var mother: Sprite2D = $Mother
@onready var father: Sprite2D = $Father
@onready var load_scene_timer: Timer = $LoadSceneTimer


func _on_area_2d_body_entered(body: Node2D) -> void:
	father.texture = preload("res://images/father/father.png")
	mother.texture = preload("res://images/mother/mother.png")
	load_scene_timer.start()

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")
