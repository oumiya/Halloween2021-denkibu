extends CSGSphere
export var speed = 50

var _target
var _vel = Vector3()

func set_target(n):
	_target = n
	var rad = atan2(_target.translation.z - translation.z, _target.translation.x - translation.x)
	_vel.x = cos(rad)
	_vel.z = sin(rad)
	var rad2 = atan2(_target.translation.y - translation.y, _target.translation.z - translation.z)
	_vel.y = sin(rad2)

func _physics_process(delta):
	translation += _vel * delta * speed

func _on_Area_area_entered(area):
	if area.is_in_group("Enemy"):
		area.get_parent().queue_free()
		queue_free()
