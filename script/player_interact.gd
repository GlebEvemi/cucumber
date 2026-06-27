extends Node3D

@export var raycast:RayCast3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("interact"):
		if raycast.is_colliding():
			var obj = raycast.get_collider()
			if obj.has_method("interact"):
				obj.interact()
