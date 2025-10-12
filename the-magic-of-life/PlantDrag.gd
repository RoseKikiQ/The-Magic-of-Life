extends Area2D

@export var item_id: String = "Plant"

var mouse_over: bool = false
var mouse_pos: Vector2 = Vector2.ZERO
var difference: Vector2 = Vector2.ZERO
var dragging: bool = false

func _on_mouse_entered() -> void:
	mouse_over = true

func _on_mouse_exited() -> void:
	mouse_over = false

func _physics_process(_delta: float) -> void:
	difference = get_global_mouse_position() - mouse_pos

	if Input.is_action_pressed("Click") and mouse_over:
		if difference != Vector2.ZERO:
			global_position += difference
			dragging = true
	elif dragging and Input.is_action_just_released("Click"):
		dragging = false

	mouse_pos = get_global_mouse_position()

func _on_water_area_entered(area: Area2D) -> void:
	print("Touched:", area.name)
	if area.name == "Plant":
		print("Hit Plant!")
		$"../Water/UntitledArtwork(6)".hide()
		$"UntitledArtwork(12)".hide()
		area.get_node("UntitledArtwork(17)").show()


func _on_metal_area_entered(area: Area2D) -> void:
	print("Touched:", area.name)
	if area.name == "Plant":
		print("Hit Plant!")
		$"../Metal/UntitledArtwork(10)".hide()
		$"UntitledArtwork(12)".hide()
		area.get_node("UntitledArtwork(5)").show()
