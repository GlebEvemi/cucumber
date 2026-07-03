extends Pickable

@onready var parent:MeshInstance3D = $"."
@onready var colShape:CollisionShape3D = $StaticBody3D/CollisionShape3D

func pick() -> Object:
	print("picked up")
	return self

func collision_disabled(flag: bool) -> void:
	colShape.disabled = flag;
	
