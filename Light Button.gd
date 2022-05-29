extends Button


func _ready():
	pass # Replace with function body.



func _process(delta):
	if pressed:
		get_tree().get_root().get_node("MainMenu/DifficultyMenu").lights = int(text)
