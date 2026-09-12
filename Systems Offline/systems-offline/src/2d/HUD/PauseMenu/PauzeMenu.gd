extends CanvasLayer

@onready var pause_menu: Control = $Control
@onready var options_menu: CanvasLayer = $OptionsMenu
@onready var player = $"../ProtoController"

func _ready() -> void:
	pause_menu.visible = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_menu"):
		toggle_pause()

func toggle_pause() -> void:
	print("Hello")
	var paused := get_tree().paused

	get_tree().paused = not paused
	pause_menu.visible = not paused

	if not paused:
		player.capture_mouse()
	else:
		player.release_mouse()


func _on_resume_button_pressed() -> void:
	get_tree().paused = false
	pause_menu.visible = false
	player.capture_mouse()

func _on_quit_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://src/2d/Scenes/MainMenu.tscn")


func _on_options_button_pressed() -> void:
	options_menu.visible = true
	pause_menu.visible = false
	
	
	
	
	
