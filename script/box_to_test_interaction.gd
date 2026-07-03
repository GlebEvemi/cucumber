extends Interactable

@onready var mesh = $".."

var spin := false;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(spin):
		rotate_z(600)

func interact():
	print("interact")
	spin = !spin
