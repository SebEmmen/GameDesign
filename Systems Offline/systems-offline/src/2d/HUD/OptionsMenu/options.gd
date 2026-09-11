extends CanvasLayer

@onready var pause_menu: Control = $Control
#@onready var options_menu: Control = $Control

func _ready() -> void:
	pause_menu.visible = false
	#options_menu.visible = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		toggle_pause()

func toggle_pause() -> void:
	var paused := not get_tree().paused

	get_tree().paused = paused
	pause_menu.visible = paused

	if paused:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _on_resume_button_pressed() -> void:
	get_tree().paused = false
	pause_menu.visible = false
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _on_back_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://src/2d/Scenes/MainMenu.tscn")


func _on_options_button_pressed() -> void:
	pause_menu.visible = false
	#options_menu.visible = true
	
	
	
	
	
