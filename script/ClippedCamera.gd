extends ClippedCamera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var cam_speed = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _physics_process(delta):
	translation.z -= delta * cam_speed
	pass
