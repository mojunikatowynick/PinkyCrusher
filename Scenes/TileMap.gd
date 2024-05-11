extends TileMap

@onready var tiles_up
@onready var tiles_down
@onready var tiles_left
@onready var tiles_right


func collision():
	light_mask = 2

func _ready():
	pass
	tiles_up = get_used_cells(0)
	for tiles in tiles_up:
		var map_tiles = map_to_local(tiles)
		var ligh = WALL_LIGHT.instantiate() as PointLight2D
		ligh.position = map_tiles
		$"../Lights".add_child(ligh)
