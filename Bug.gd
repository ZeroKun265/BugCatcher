extends Node2D

var points: int

func _ready():
	var path := "Bug" + str(points)+".png"
	$Sprite.texture = load("res://Images/"+path)


func _process(delta):
	if not get_tree().get_root().get_node("World/Data").lights_on:
		get_tree().get_root().get_node("World/Data").game_state = get_tree().get_root().get_node("World/Data").win_state.LOST



func _on_Button_button_down():
	var data = get_tree().get_root().get_node("World/Data")
	data.score += points
	queue_free()
