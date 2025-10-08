extends Button


func _on_pressed() -> void:
	var texture_rect = $"../Half_White"
	var mat = texture_rect.material
	var texture_rect2 = $"../Half_Black"
	var mat2 = texture_rect2.material
	mat.set_shader_parameter("color_tint1a", Color(1, 1, 1, 1))
	mat2.set_shader_parameter("color_tint1b", Color(0, 0, 0, 1))
	get_tree().change_scene_to_file("res://Sight_magic_1.tscn")
