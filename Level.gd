extends Node2D

var n_lights
var chance_bugs
var chance_butterfly
var winning_score


# Called when the node enters the scene tree for the first time.
var rng = RandomNumberGenerator.new()
func _ready():
	n_lights = get_node("/root/GLOBAL").n_lights
	chance_bugs = get_node("/root/GLOBAL").chance_bugs
	chance_butterfly = get_node("/root/GLOBAL").chance_butterfly
	winning_score = get_node("/root/GLOBAL").winning_score
	
	for i in range(n_lights):
		var x = load("res://Lamp.tscn").instance()
		rng.randomize()
		x.position.x = rng.randi_range(30, 226)
		rng.randomize()
		x.position.y = rng.randi_range(30,120)
		get_node("Lamps").add_child(x)

func spawn_bug(position):
	rng.randomize()
	var bug_pos = Vector2(rng.randi_range(position.x -15, position.x+15), rng.randi_range(position.y -15, position.y+15))
	var bug = load("res://Bug.tscn").instance()
	bug.global_position = bug_pos
	bug.points = rng.randi_range(1,4)
	get_node("Bugs").add_child(bug)

func spawn_butterfly(position):
	rng.randomize()
	var bug_pos = Vector2(rng.randi_range(position.x -15, position.x+15), rng.randi_range(position.y -15, position.y+15))
	var bug = load("res://Butterfly.tscn").instance()
	bug.global_position = bug_pos
	bug.points = rng.randi_range(1,4)
	get_node("Bugs").add_child(bug)


func _process(delta):
	if get_tree().get_root().get_node("World/Data").game_state == get_tree().get_root().get_node("World/Data").win_state.PLAYING:
		var roll : float
		for child in get_node("Lamps").get_children():
			if get_tree().get_root().get_node("World/Data").lights_on:
				rng.randomize()
				if chance_bugs > 0:
					roll = rng.randf_range(0.0,1.0)
					if roll <= 1.0/chance_bugs:
						spawn_bug(child.position)
				rng.randomize()
				if chance_butterfly > 0:
					roll = rng.randf_range(0.0,1.0)
					if roll <= 1.0/chance_butterfly:
						spawn_butterfly(child.position)
					
	
