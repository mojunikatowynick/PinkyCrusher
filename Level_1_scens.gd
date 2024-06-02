extends Node2D

@onready var Scene_level_des = $SceneLevelDes
@onready var joe_spawn_point = $Start.global_position

func _ready():
	Scene_level_des.add_to_group("walls")
	
