extends Node2D



func _ready():
	pass # Replace with function body.



func _process(delta):

	if not get_node("Data").level == 0:
		if not get_node("Level") == null:
			get_node("Label/Label").text = str(get_node("Data").score)
			if get_node("Data").score >= get_node("Level").winning_score:
				get_node("Data").game_state = get_node("Data").win_state.WON
			elif get_node("Data").score < 0:
				get_node("Data").game_state = get_node("Data").win_state.LOST
		else:
			get_node("Tutorial").queue_free()
			var l = load("res://TestLevel.tscn").instance()
			l.name = "Level"
			add_child(l)
	if get_node("Data").game_state == get_node("Data").win_state.WON:
		print("WON")
		get_tree().change_scene("res://Win.tscn")
	elif get_node("Data").game_state == get_node("Data").win_state.LOST:
		print("LOST")
		get_tree().change_scene("res://Lose.tscn")
	
		
