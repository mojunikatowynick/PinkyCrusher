extends CanvasLayer

@onready var hp_bar = $MarginContainer/HPBar

func _process(_delta):
	hp_bar.value = Global.joe_life
	
	if Global.joe_life > 70:
		hp_bar.call_deferred("set_modulate", Color(0.043, 0.553, 0.157))
	elif Global.joe_life <= 70 and Global.joe_life > 30:
		hp_bar.call_deferred("set_modulate", Color(0.566, 0.438, 0.005))
	else:
		hp_bar.call_deferred("set_modulate", Color(0.988, 0.075, 0))
