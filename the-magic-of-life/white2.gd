extends Button


func _on_pressed() -> void:
	var texture_rect1b = $".."
	var mat1b = texture_rect1b.material
	mat1b.set_shader_parameter("color_tint1b", Color(1, 1, 1, 1))
