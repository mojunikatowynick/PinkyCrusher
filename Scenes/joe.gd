extends CharacterBody2D

@export var joe_speed: int = 100 
@export var joe_turn_speed: int = 1
var rotation_direction = 0
var strafe = 0
var move_forward = 0
@onready var light_layer_1 = $LightChangeLeyer2
@onready var light_layer_2 = $LightChangeLeyer3
var bounce: bool = false

func _ready():
	set_light_mask(1)
	
func _physics_process(delta):
	

	
	if Global.cinematic:
		pass
	else:
		if bounce:
			pass
		else:
			movement(delta)
			move_and_slide()
	
	collider()
	
func movement(delta):

		rotation_direction = Input.get_axis("TurnL", "TurnR")
		var tran_x = transform.x * Input.get_axis("StrafeL", "StrafeR")
		var tran_y = transform.y * Input.get_axis("Forward", "Back")
		var tran = tran_x + tran_y
		velocity = tran.normalized() * joe_speed 
		rotation += rotation_direction * joe_turn_speed * delta

func collider():
	
	if get_slide_collision_count() > 0:

		bounce = true
		var collision = get_slide_collision(0)
		if collision != null:
			move_and_collide(velocity.bounce(collision.get_normal()).normalized())
			await get_tree().create_timer(0.5).timeout
			bounce = false





