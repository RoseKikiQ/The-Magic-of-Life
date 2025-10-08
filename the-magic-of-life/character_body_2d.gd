extends CharacterBody2D

@export var is_final = false
var triggered = false
const b = -260

func _physics_process(_delta: float) -> void:
	var input_dir = Input.get_vector("left", "right", "up", "down")
	if not triggered:
		velocity = input_dir * 500
	else:
		velocity = Vector2(0,0)
	if is_final:
		velocity.y = 0
	move_and_slide()

	if position.x < b:
		position.x = b
	if position.y < -225 and not is_final:
		position.y = -225
	if position.y > 213 and not is_final:
		position.y = 213
	if position.x > 260:
		position.x = 260
