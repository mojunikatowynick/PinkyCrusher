extends StaticBody2D

@onready var Sprite = $"../../Sprite2D"

var immune: bool = false
func _ready():
	#print("lm", $"../../Sprite2D".light_mask)
	pass
func collision():
	print(get_parent())
	if immune == false:
		if Sprite.light_mask < 2:
			Sprite.light_mask = 2
			immune = true
			await get_tree().create_timer(0.5).timeout
			immune = false
		#elif 	Sprite.light_mask <= 2:
			#Sprite.light_mask = 4
			#immune = true
			#await get_tree().create_timer(0.5).timeout
			#immune = false
	else:
		pass
