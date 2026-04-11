extends CharacterBody2D

@onready var hero: Sprite2D = $Hero

const SPEED = 50
signal on_move()

var once : bool = false

func _physics_process(delta: float) -> void:
	var dir_x = Input.get_axis("ui_left", "ui_right")
	var dir_y = Input.get_axis("ui_up", "ui_down")
	var direction = Vector2(dir_x, dir_y)

	if direction != Vector2.ZERO:
		if not once:
			on_move.emit()
			hero.visible = true
			once = true
		
		direction = direction.normalized()
		velocity = direction * SPEED
	else:
		velocity = velocity.move_toward(Vector2.ZERO, SPEED)

	move_and_slide()
