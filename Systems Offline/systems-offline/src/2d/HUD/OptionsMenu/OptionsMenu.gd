extends CanvasLayer

@onready var options_menu: Control = $Control

func _ready() -> void:
	options_menu.visible = false

func _on_back_button_pressed() -> void:
	options_menu.visible = false
	get_parent().get_node("Control").visible = true
