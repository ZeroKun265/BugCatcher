extends Node


func _ready():
	pass # Replace with function body.


func _process(delta):


	if get_tree().get_root().get_node("World/Data").lights_on:
		for lamp in get_children():
			lamp.get_node("Lamp").texture = load("res://Images/Lamp.png")
	elif not get_tree().get_root().get_node("World/Data").lights_on:
		for lamp in get_children():
			lamp.get_node("Lamp").texture = load("res://Images/Lamp_off.png")
	
