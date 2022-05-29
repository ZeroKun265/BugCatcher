extends Node


var n_lights := 1
var chance_bugs := 135
var chance_butterfly := 170
var winning_score := 15

var did_tutorial := false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _process(delta):
	if Input.is_action_just_pressed("ui_cancel") and OS.get_name() != "HTML5":
		get_tree().quit()
