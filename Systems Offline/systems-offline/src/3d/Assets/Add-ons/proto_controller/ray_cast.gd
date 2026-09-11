extends RayCast3D

@onready var interaction_label: Label = get_tree().current_scene.get_node("HUD/InteractionLabel")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if is_colliding():
		var hitObj = get_collider()

		if hitObj.has_method("interact"):
			interaction_label.visible = true

			if Input.is_action_just_pressed("interact"):
				hitObj.interact()
		else:
			interaction_label.visible = false
	else:
		interaction_label.visible = false
