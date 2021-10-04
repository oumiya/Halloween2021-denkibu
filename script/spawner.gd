extends Node

var box2_scene = preload("res://scene/CSGBox2.tscn")
var rng = RandomNumberGenerator.new()
func _ready():
	rng.randomize()

func _on_Timer_timeout():
	var temp = box2_scene.instance()
	var cam = get_node("../Player")
	get_parent().add_child(temp)
	temp.translation = cam.translation
	temp.translation.x += rng.randf_range(-6.4, 6.4)
	temp.translation.y = 0
	temp.translation.z -= 40
