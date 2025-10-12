extends Button

func _on_pressed() -> void:
	var music = $AudioStreamPlayer2D
	if music.playing:
		music.stop()
	else:
		music.play()
