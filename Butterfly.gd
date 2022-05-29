extends Node2D

var points: int

func _ready():
	var path := "Butterfly" + str(points)+".png"
	$Sprite.texture = load("res://Images/"+path)


func _process(delta):
	if not get_tree().get_root().get_node("World/Data").lights_on:
		queue_free()



func _on_Button_button_down():
	var data = get_tree().get_root().get_node("World/Data")
	data.score -= points
	get_node("/root/BadSound").play()
	queue_free()
