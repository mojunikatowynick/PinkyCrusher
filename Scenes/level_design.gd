#extends TileMap
#
#const LEFT = preload("res://Scenes/left.tscn")
#const RIGHT = preload("res://Scenes/right.tscn")
#const TOP = preload("res://Scenes/top.tscn")
#const BOTTOM = preload("res://Scenes/bottom.tscn")
#const BOT_LEFT = preload("res://Scenes/bot_left.tscn")
#const TOP_LEFT = preload("res://Scenes/left_up.tscn")
#const RIGHT_DOWN = preload("res://Scenes/right_down.tscn")
#const RIGHT_UP = preload("res://Scenes/right_up.tscn")
#const BOTTOM_EDGE = preload("res://Graphic/BottomEdge.png")
#
#const WALLS = preload("res://Scenes/walls.tscn")
#
#var tiles
#var atlas_cord_tile

#func _ready():
	

	##left
	#var tiles_left = get_used_cells_by_id(0, 0,Vector2i(0,1))
	#for tiles in tiles_left:
		#var map_tiles = map_to_local(tiles)
		#var new_edge = LEFT.instantiate() as Area2D
		#new_edge.position = map_tiles
		#$Drawing.add_child(new_edge)
	##right
	#var tiles_right = get_used_cells_by_id(0, 0,Vector2i(2,1))
	#for tiles in tiles_right:
		#var map_tiles = map_to_local(tiles)
		#var new_edge = RIGHT.instantiate() as Area2D
		#new_edge.position = map_tiles
		#$Drawing.add_child(new_edge)
	##top
	#var tiles_top = get_used_cells_by_id(0, 0,Vector2i(1,0))
	#for tiles in tiles_top:
		#var map_tiles = map_to_local(tiles)
		#var new_edge = TOP.instantiate() as Area2D
		#new_edge.position = map_tiles
		#$Drawing.add_child(new_edge)
	##bot
###################################################################
	#var tiles_bot = get_used_cells_by_id(0, 0,Vector2i(1,2))
	#for tiles in tiles_bot:
		##var map_tiles = map_to_local(tiles)
		##var new_edge = BOTTOM.instantiate() as Area2D
		##new_edge.position = map_tiles
		##$Drawing.add_child(new_edge)
		#print(tiles_bot)
		#if "bot" in tiles_bot:
			#tiles.bot(tiles_bot)
########################################################################
	##left top
	#var tiles_left_top = get_used_cells_by_id(0, 0,Vector2i(0,0))
	#for tiles in tiles_left_top:
		#var map_tiles = map_to_local(tiles)
		#var new_edge = TOP_LEFT.instantiate() as Area2D
		#new_edge.position = map_tiles
		#$Drawing.add_child(new_edge)
	##right top
	#var tiles_right_top = get_used_cells_by_id(0, 0,Vector2i(2,0))
	#for tiles in tiles_right_top:
		#get_child(0).get_child(0).top_wall.call_deferred("set_visible", true)
		
	##right bot
	#var tiles_right_bot = get_used_cells_by_id(0, 0,Vector2i(2,2))
	#for tiles in tiles_right_bot:
		#var map_tiles = map_to_local(tiles)
		#var new_edge = RIGHT_DOWN.instantiate() as Area2D
		#new_edge.position = map_tiles
		#$Drawing.add_child(new_edge)
	##left bot
	#var tiles_left_bot = get_used_cells_by_id(0, 0,Vector2i(0,2))
	#for tiles in tiles_left_bot:
		#var map_tiles = map_to_local(tiles)
		#var new_edge = BOT_LEFT.instantiate() as Area2D
		#new_edge.position = map_tiles
		#$Drawing.add_child(new_edge)
	#
	#tiles = get_used_cells(0)
	#for tile in tiles:
		#var map_tiles = map_to_local(tile)
		#var new_edge = WALLS.instantiate() as StaticBody2D
		#new_edge.position = map_tiles
		#$Drawing.add_child(new_edge)
	#
	##var tiles_top = get_cell_atlas_coords(0,Vector2i(2,0))
	##for tile in tiles_top:
		##get_child(0).get_child(0).top_wall.call_deferred("set_visible", true)
		###
	###print(tiles_top)
	##
	#for tiles in tiles_bot:
		#get_child(0).get_child(0).bottom_wall.call_deferred("set_visible", true)

		#
	#
	#var top_tiles = get_used_cells_by_id(0, 0,Vector2i(2,0))
#
	#var wall_tiles = get_child(0).get_children()
	##print(wall_tiles)
	#for tile in wall_tiles:
		#for tiles in top_tiles:
			#if "top" in tile:
				#tile.top()
	#
#func tile_show(atlas_cord_tile):
	#atlas_cord_tile = get_cell_source_id(0, Vector2i(1, 0))
	
