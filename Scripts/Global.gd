extends Node

var piece_handler
var level_screen

var level_moves: int
var level_index: int = 1
var set_index: int = 0
var match_colors: Array

var level1_1: Array = [1, 2, 1,
					   2, 0, 0, 
					   0, 1, 2]
					
var level1_2: Array = [1, 2, 1,
					   2, 0, 0, 
					   0, 1, 2]
					
var level1_3: Array = [1, 2, 1,
					   2, 0, 0, 
					   0, 1, 2]
					
var level1_4: Array = [1, 2, 1,
					   2, 0, 0, 
					   0, 1, 2]
					
var level1_5: Array = [1, 2, 1,
					   2, 0, 0, 
					   0, 1, 2]


var level2_1: Array = [0, 0, 0, 0, 0,  
					   1, 1, 1, 1, 1,
					   2, 2, 2, 2, 2,
					   3, 3, 3, 3, 3,
					   4, 4, 4, 4, 4]

func load_level(level_i: int, set_i: int):
	level_index = level_i
	set_index = set_i
	get_tree().change_scene_to_file(Global.get_set())

func get_level_set():
	
	match level_index:
		1:
			level_moves = 3
			match_colors = [2, 4, 0]
			return level1_1
		2:
			level_moves = 4
			match_colors = [1, 2, 0]
			return level1_2
		3: 
			level_moves = 5
			match_colors = [1, 2, 0]
			return level1_3
		4:
			level_moves = 6
			match_colors = [1, 2, 0]
			return level1_4
		5:
			level_moves = 6
			match_colors = [1, 2, 0]
			return level1_5
		6:
			level_moves = 1
			match_colors = [0, 1, 2, 3, 4]
			return level2_1

func get_set():
	match set_index: 
		0: 
			return "res://Levels/Set3x3.tscn"
		1: 
			return "res://Levels/Set4x4.tscn"
		2: 
			return "res://Levels/Set5x5.tscn"
			

