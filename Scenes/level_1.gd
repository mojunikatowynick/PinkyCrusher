extends Node2D

@onready var level_design = $LevelDesign
@onready var level_design_shadow = $LevelDesignShadow
@onready var Scene_level_des = $SceneLevelDes

@onready var joe_spawn_point = $Start.global_position
var all_tiles = []
var tile
 
func _ready(): 
	
	level_design.add_to_group("walls")
	level_design_shadow.add_to_group("walls")
	Scene_level_des.add_to_group("walls")
	all_tiles = level_design.get_used_cells(0)
	print(all_tiles)
		
	
func _on_main_collided(collider):
	
	#print(collider)
	if collider.get_collider() is TileMap:
		var tile_collided = collider.get_collider().local_to_map(Global.joe_pos)
		#print(tile_collided)
		var tile_relative_pos = Vector2i(collider.get_normal())  
		#print(tile_relative_pos)
		tile = tile_collided - tile_relative_pos							###tile###
		
		level_design.set_cell(0, tile, 0, tile, 0)
