extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_Play_pressed():
	get_node("/root/GLOBAL").n_lights = get_parent().get_node("Difficulty Settings").lights
	get_node("/root/GLOBAL").chance_bugs = get_parent().get_node("Difficulty Settings").bugs
	get_node("/root/GLOBAL").chance_butterfly = get_parent().get_node("Difficulty Settings").butterflies
	get_node("/root/GLOBAL").winning_score = get_parent().get_node("Difficulty Settings").score
	get_tree().change_scene("res://World.tscn")
