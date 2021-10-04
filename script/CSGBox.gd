extends CSGBox
export (PackedScene) var bullet

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 16

const _x_limit = 6.4

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		translation.x -= delta * speed
		if translation.x < _x_limit * -1:
			translation.x = _x_limit * -1
	if Input.is_action_pressed("ui_right"):
		translation.x += delta * speed
		if translation.x > _x_limit:
			translation.x = _x_limit
	if Input.is_action_just_pressed("shot"):
		var b = bullet.instance()
		get_node("../../").add_child(b)
		b.translation = translation
		b.translation.y = 0
		b.translation.z = get_parent().translation.z
		b.translation.z += translation.z
		b.translation.z -= 0.5
		b.set_target(get_node("../../AimTarget"))
