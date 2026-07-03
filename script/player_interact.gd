extends Node3D

@export var raycast:RayCast3D
@onready var objectInHands = $RemoteTransform3D
@onready var objectRotation = Vector3(90,0,0)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("interact"):
		if raycast.is_colliding():
			var obj = raycast.get_collider()
			if obj.owner is Interactable:
				obj.owner.interact()
			if obj.owner is Pickable:
				obj.owner.collision_disabled(true)
				print(obj.owner.rotation)
				objectInHands.remote_path = obj.owner.get_path()
				obj.owner.rotation = objectRotation
				obj.owner.pick()
				
