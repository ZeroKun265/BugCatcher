extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	if pressed:
		get_parent().get_parent().get_node("DifficultyMenu").visible = true
		get_parent().queue_free()
