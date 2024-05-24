extends StaticBody2D

@onready var bottom_wall = $BottomWall
@onready var top_wall = $TopWall
@onready var left_wall = $LeftWall
@onready var right_wall = $RightWall
@onready var left_top_wall = $LeftTopWall
@onready var left_bot_wall = $LeftBotWall
@onready var right_top_wall = $RightTopWall
@onready var right_bot_wall = $RightBotWall

#

#func bot(tiles_bot):
	#print(tiles_bot)


	#
	#var tiles_top = get_parent().get_parent().get_used_cells_by_id(0, 0,Vector2i(1,0))
	#print(tiles_top)
	#for tiles_t in tiles_top:
		#top_wall.call_deferred("set_visible", true)

#func top():
	#print("yes")
	#top_wall.call_deferred("set_visible", true)
	
