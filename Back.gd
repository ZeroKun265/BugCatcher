extends Button



func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Back_pressed():
	get_tree().get_root().get_node("MainMenu/Main").visible = true
	get_tree().get_root().get_node("MainMenu/Main/Difficulty Settings").lights = get_parent().lights
	get_tree().get_root().get_node("MainMenu/Main/Difficulty Settings").bugs = get_parent().bugs
	get_tree().get_root().get_node("MainMenu/Main/Difficulty Settings").butterflies = get_parent().butterflies
	get_tree().get_root().get_node("MainMenu/Main/Difficulty Settings").score = get_parent().score
	get_tree().get_root().get_node("MainMenu/DifficultyMenu").queue_free()
