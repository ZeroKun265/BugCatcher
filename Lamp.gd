extends Node


func _ready():
	pass # Replace with function body.


func _process(delta):

	if Input.is_action_just_pressed("ui_accept"):
		if get_tree().get_root().get_node("World/Data").lights_on:
			for lamp in get_children():
				lamp.get_node("Lamp").texture = load("res://Images/Lamp_off.png")
		elif not get_tree().get_root().get_node("World/Data").lights_on:
			for lamp in get_children():
				lamp.get_node("Lamp").texture = load("res://Images/Lamp.png")
		get_tree().get_root().get_node("World/Data").lights_on = not get_tree().get_root().get_node("World/Data").lights_on
