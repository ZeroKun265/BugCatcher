extends Node2D

var lights := 1
var bugs := 135
var butterflies := 170
var score := 15

# Called when the node enters the scene tree for the first time.
func _ready():
	
	bugs = get_tree().get_root().get_node("MainMenu/Main/Difficulty Settings").bugs
	lights = get_tree().get_root().get_node("MainMenu/Main/Difficulty Settings").lights
	butterflies = get_tree().get_root().get_node("MainMenu/Main/Difficulty Settings").butterflies
	score = get_tree().get_root().get_node("MainMenu/Main/Difficulty Settings").score
	
	



func _process(delta):
	$"Current Bugs".text = str(bugs)
	$"Current Lights".text = str(lights)
	$"Current Butterflies".text = str(butterflies)
	$"Current Score".text = str(score)
	
	if lights < 1:
		lights = 1
	if bugs < 1:
		bugs = 1
	if score < 1:
		score = 1
	if butterflies < 1:
		butterflies = 1


func _on_Help_pressed():
	get_tree().get_root().get_node("MainMenu").add_child(load("res://SettingsHelp.tscn").instance())
