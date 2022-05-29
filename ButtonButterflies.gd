extends Button


func _ready():
	pass # Replace with function body.


var tick = 0
func _process(delta):
	if pressed and tick == 0:
		tick = 20
		get_tree().get_root().get_node("MainMenu/DifficultyMenu").butterflies += int(text)
	if tick >0:
		tick -= 1
