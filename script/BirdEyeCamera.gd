extends ClippedCamera

func _process(delta):
	if Input.is_key_pressed(KEY_C):
		if get_parent().current == true:
			get_parent().current = false
			current = true
