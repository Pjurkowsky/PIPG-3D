extends Label

var coins = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	text = str(coins)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_coin_coin_collected():
	coins += 1
	_ready()
	if coins == 5:
		get_tree().change_scene_to_file("res://assets/menu.tscn")
