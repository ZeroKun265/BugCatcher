extends Node2D

var state := 1


# Called when the node enters the scene tree for the first time.
func _ready():
	if get_node("/root/GLOBAL").did_tutorial:
		change_state(7)

func change_state(state):
	for child in get_node("States").get_children():
		if child.name == "State" + str(state):
			child.visible = true
		else:
			child.visible = false
	if state == 7:
		get_node("/root/GLOBAL").did_tutorial = true
		get_tree().get_root().get_node("World/Data").level = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	state += 1
	change_state(state)
