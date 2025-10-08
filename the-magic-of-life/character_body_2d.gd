extends CharacterBody2D

@export var is_final = false
var triggered = false
const b = 24

func _physics_process(_delta: float) -> void:
	var input_dir = Input.("left", "right")
	if not triggered:
		velocity = input_dir * 300
	else:
		velocity = Vector2(0,0)
	if is_final:
		velocity.y = 0
	move_and_slide()

	if position.x < b:
		position.x = b
	if position.y < b and not is_final:
		position.y = b
	if position.y > 624 and not is_final:
		position.y = 624
	if position.x > 1124:
		position.x = 1124
