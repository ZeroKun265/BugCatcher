extends Node


export var level := 0
var score := 0
enum win_state {
	PLAYING,
	WON,
	LOST
}
var lights_on := true

var game_state = win_state.PLAYING

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
