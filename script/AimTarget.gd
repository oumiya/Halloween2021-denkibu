extends CSGTorus

func _ready():
	pass # Replace with function body.

func _process(delta):
	var width = float(get_viewport().get_size().x)
	var height = float(get_viewport().get_size().y)
	var mouse_x = float(get_viewport().get_mouse_position().x)
	var mouse_y = float(get_viewport().get_mouse_position().y)
	width = mouse_x / width
	height = mouse_y / height
	
	width = min(width, 1.0)
	width = max(width, 0.0)
	height = min(height, 1.0)
	height = max(height, 0.0)
	
	height = 1.0 - height
	
	translation.x = (98 * width) - 49
	translation.y = (62 * height) - 31
	translation.z = $"../Player".translation.z - 40
	
	
