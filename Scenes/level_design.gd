extends TileMap

const LEFT = preload("res://Scenes/left.tscn")
const RIGHT = preload("res://Scenes/right.tscn")
const TOP = preload("res://Scenes/top.tscn")
const BOTTOM = preload("res://Scenes/bottom.tscn")
const BOT_LEFT = preload("res://Scenes/bot_left.tscn")
const TOP_LEFT = preload("res://Scenes/left_up.tscn")
const RIGHT_DOWN = preload("res://Scenes/right_down.tscn")
const RIGHT_UP = preload("res://Scenes/right_up.tscn")

func _ready():
	
	#left
	var tiles_left = get_used_cells_by_id(0, 0,Vector2i(0,1))
	for tiles in tiles_left:
		var map_tiles = map_to_local(tiles)
		var new_edge = LEFT.instantiate() as Area2D
		new_edge.position = map_tiles
		$Drawing.add_child(new_edge)
	#right
	var tiles_right = get_used_cells_by_id(0, 0,Vector2i(2,1))
	for tiles in tiles_right:
		var map_tiles = map_to_local(tiles)
		var new_edge = RIGHT.instantiate() as Area2D
		new_edge.position = map_tiles
		$Drawing.add_child(new_edge)
	#top
	var tiles_top = get_used_cells_by_id(0, 0,Vector2i(1,0))
	for tiles in tiles_top:
		var map_tiles = map_to_local(tiles)
		var new_edge = TOP.instantiate() as Area2D
		new_edge.position = map_tiles
		$Drawing.add_child(new_edge)
	#bot
	var tiles_bot = get_used_cells_by_id(0, 0,Vector2i(1,2))
	for tiles in tiles_bot:
		var map_tiles = map_to_local(tiles)
		var new_edge = BOTTOM.instantiate() as Area2D
		new_edge.position = map_tiles
		$Drawing.add_child(new_edge)
	#left top
	var tiles_left_top = get_used_cells_by_id(0, 0,Vector2i(0,0))
	for tiles in tiles_left_top:
		var map_tiles = map_to_local(tiles)
		var new_edge = TOP_LEFT.instantiate() as Area2D
		new_edge.position = map_tiles
		$Drawing.add_child(new_edge)
	#right top
	var tiles_right_top = get_used_cells_by_id(0, 0,Vector2i(2,0))
	for tiles in tiles_right_top:
		var map_tiles = map_to_local(tiles)
		var new_edge = RIGHT_UP.instantiate() as Area2D
		new_edge.position = map_tiles
		$Drawing.add_child(new_edge)
	#right bot
	var tiles_right_bot = get_used_cells_by_id(0, 0,Vector2i(2,2))
	for tiles in tiles_right_bot:
		var map_tiles = map_to_local(tiles)
		var new_edge = RIGHT_DOWN.instantiate() as Area2D
		new_edge.position = map_tiles
		$Drawing.add_child(new_edge)
	#left bot
	var tiles_left_bot = get_used_cells_by_id(0, 0,Vector2i(0,2))
	for tiles in tiles_left_bot:
		var map_tiles = map_to_local(tiles)
		var new_edge = BOT_LEFT.instantiate() as Area2D
		new_edge.position = map_tiles
		$Drawing.add_child(new_edge)


