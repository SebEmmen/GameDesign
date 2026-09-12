extends CanvasLayer

@onready var player = $"../ProtoController"

var is_open = false

func _ready() -> void:
	close()


func _process(delta: float):
	if Input.is_action_just_pressed("inventory_open"):
		if is_open:
			close()
			player.release_mouse()
		else:
			open()
			player.capture_mouse()

func open():
	visible = true
	is_open = true
	
func close():
	visible = false
	is_open = false
