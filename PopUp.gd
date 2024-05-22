extends Control

var playButton

# Called when the node enters the scene tree for the first time.
func _ready():
	playButton = get_node('CenterContainer/Panel/VBoxContainer/Button')
	playButton.connect("pressed", Callable(self, "newGame"))
	get_tree().set_pause(true)

func newGame():
	get_tree().set_pause(false)
	GameManager.resetGame()
	queue_free()

func win():
	$CenterContainer/Panel/VBoxContainer/TextureRect.set_texture(load("res://assets/ui/complete.png"))
	$CenterContainer/Panel/VBoxContainer/Label.text = "PARABÉNS, VOCÊ ENCONTROU TODOS OS PARES EM " + str(GameManager.seconds) + " SEGUNDOS E COM " + str(GameManager.moves) + " TENTATIVAS"
	$CenterContainer/Panel/VBoxContainer/Button.text = "JOGAR NOVAMENTE"
