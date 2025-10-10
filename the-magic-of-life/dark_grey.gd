extends Button

func _on_pressed() -> void:
	var texture_rect1a = $".."
	var mat1a = texture_rect1a.material
	mat1a.set_shader_parameter("color_tint1a", Color(0, 0, 0, 0.7))
