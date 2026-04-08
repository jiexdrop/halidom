extends Node2D

@onready var mother: Sprite2D = $Mother
@onready var father: Sprite2D = $Father


func _on_area_2d_body_entered(body: Node2D) -> void:
	father.texture = preload("res://images/father/father.png")
	mother.texture = preload("res://images/mother/mother.png")
