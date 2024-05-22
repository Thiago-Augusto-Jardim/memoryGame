extends TextureButton

class_name Card

var suit
var value
var back
var face

# Called when the node enters the scene tree for the first time.
func _ready():
	set_h_size_flags(3)
	set_v_size_flags(3)
	set_expand(true)
	set_stretch_mode(TextureButton.STRETCH_KEEP_ASPECT_CENTERED)
	
func _init(s, v):
	value = v
	suit = s
	face = load("res://assets/cards/card-"+str(suit)+"-"+str(value)+".png")
	back = GameManager.cardBack
	set_normal_texture(back)
	
func _pressed():
	GameManager.chooseCard(self)

func flip():
	if get_normal_texture() == back:
		set_normal_texture(face)
	else:
		set_normal_texture(back)
