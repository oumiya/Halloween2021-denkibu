extends CSGSphere
export var speed = 50

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	translation.z -= delta * speed

func _on_Area_area_entered(area):
	if area.is_in_group("Enemy"):
		area.get_parent().queue_free()
		queue_free()
	pass # Replace with function body.
