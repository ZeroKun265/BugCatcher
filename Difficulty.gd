extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Difficulty_pressed():
	get_tree().get_root().get_node("MainMenu/Main").visible = false
	var x = load("res://DifficultyMenu.tscn").instance()
	get_tree().get_root().get_node("MainMenu").add_child(x)
	
