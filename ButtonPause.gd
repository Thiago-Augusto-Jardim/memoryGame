extends TextureButton

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _pressed():
	if !get_tree().is_paused():
		get_tree().set_pause(true)
		set_normal_texture(load("res://assets/ui/play.png"))
	elif get_tree().is_paused():
		get_tree().set_pause(false)
		set_normal_texture(load("res://assets/ui/pause.png"))
