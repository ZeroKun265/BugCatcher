extends Node


var lights
var bugs
var butterflies
var score


# Called when the node enters the scene tree for the first time.
func _ready():
	lights = get_node("/root/GLOBAL").n_lights
	bugs = get_node("/root/GLOBAL").chance_bugs
	butterflies = get_node("/root/GLOBAL").chance_butterfly
	score = get_node("/root/GLOBAL").winning_score


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
