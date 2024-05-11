extends Node2D

var joe_spawn = Vector2.ZERO
@export var camera_zoom: float = 1
@onready var levels = $Levels
@onready var joe = $Joe
@onready var player_camera = $PlayerCamera
var game_cinematic: bool = true


func _ready():
	
	#placing player in start position of each new lvl - shouold always by code spawn level in levels folder to get set map
	joe_spawn = levels.get_child(0).joe_spawn_point
	joe.global_position = joe_spawn
	$AnimationPlayer.play("Flash")
	Global.camera_pos = $IdleCamera.global_position
	
func _physics_process(delta):

		camera_control()
		collision_control()

func cinematic_end():
	Global.cinematic = false

func camera_control():
	
	Global.camera_pos = joe.global_position
	Global.canera_rot = joe.rotation_degrees
	player_camera.global_rotation_degrees = joe.rotation_degrees
	$Lights/LightLayer1.position = joe.global_position
	$Lights/LightLayer1.global_rotation_degrees = joe.rotation_degrees
	$Lights/LightLayer2.position = joe.global_position
	$Lights/LightLayer2.global_rotation_degrees = joe.rotation_degrees

	var tween = get_tree().create_tween()
	tween.set_parallel(true)
	tween.tween_property(player_camera, "zoom", Vector2(camera_zoom, camera_zoom), 0.3)
	tween.tween_property(player_camera, "position", Global.camera_pos, 0.3)


func collision_control():
	
	var collider = joe.get_last_slide_collision()
	
	if collider == null:
		pass
	else:
		
		var collision_delta = joe.get_position_delta()
		var collision_r_vel = joe.get_real_velocity()
		#print(collider)
		#joe.collision_dmg(collision_delta)
		var col = collider.get_collider()
		if "collision" in col:
			col.collision()
		var col_pos = collider.get_position()


