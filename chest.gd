extends Interactable

@export var anim: AnimationPlayer
var isOpen: bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func interact():
	if !isOpen:
		print("playing animation")
		anim.play("ArmatureAction")
		isOpen = !isOpen
