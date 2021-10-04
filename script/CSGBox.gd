extends CSGBox
export (PackedScene) var bullet

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 16

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		translation.x -= delta * speed
	if Input.is_action_pressed("ui_right"):
		translation.x += delta * speed
	if Input.is_action_just_pressed("shot"):
		var b = bullet.instance()
		b.translation = global_transform.origin
#		b.translation.z = get_parent().translation.z
		get_parent().get_parent().add_child(b)
		print(b.translation)
