extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var box2_scene = preload("res://scene/CSGBox2.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var temp = box2_scene.instance()
	var cam = get_node("../ClippedCamera")
	get_parent().add_child(temp)
	temp.translation = cam.translation
	temp.translation.z -= 40
	temp.translation.x = randi() % 41 - 20

	pass # Replace with function body.
