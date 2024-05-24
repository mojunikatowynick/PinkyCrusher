extends Node2D

var joe_spawn = Vector2.ZERO
@export var camera_zoom: float = 1
@onready var levels = $Levels
@onready var joe = $Joe
@onready var player_camera = $PlayerCamera
@onready var half_light_layer = $Lights/HalfLightLayer

var game_cinematic: bool = true
var immune: bool = false

signal collided(cllider)

func _ready():
	#cinematic_end() #####comment out this line ##########################
	#placing player in start position of each new lvl - shouold always by code spawn level in levels folder to get set map
	####################### commented to speed up #######################
	joe_spawn = levels.get_child(0).joe_spawn_point
	joe.global_position = joe_spawn
	$AnimationPlayer.play("Flash")
	Global.camera_pos = $IdleCamera.global_position
	####################################################################
func _physics_process(_delta):

	Global.joe_pos = joe.global_position
	camera_control()
	collision_control()

func cinematic_end():
	Global.cinematic = false

func camera_control():
	
	Global.camera_pos = joe.global_position
	Global.canera_rot = joe.rotation_degrees
	player_camera.global_rotation_degrees = joe.rotation_degrees
	half_light_layer.position = joe.global_position
	half_light_layer.global_rotation_degrees = joe.rotation_degrees

	var tween = get_tree().create_tween()
	tween.set_parallel(true)
	tween.tween_property(player_camera, "zoom", Vector2(camera_zoom, camera_zoom), 0.3)
	tween.tween_property(player_camera, "position", Global.camera_pos, 0.3)


func collision_control():
	
	var collider = joe.get_last_slide_collision()

	if collider == null:
		pass
	else:
		
		var col = collider.get_collider()
		if "collision" in col:
			col.collision()
		#var col_pos = collider.get_position()
		if col.is_in_group("walls"):
			damage()
		
		collided.emit(collider)

func damage():
	if immune == false:
		Global.joe_life -= 10
		immune = true
		await get_tree().create_timer(0.5).timeout
		immune = false

