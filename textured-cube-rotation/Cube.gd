extends MeshInstance
export var rotate_speed = 1.0
var rotateX: bool = false
var rotateY: bool = false
var rotateZ: bool = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var original_basis = Basis(transform.basis)

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func _process(delta):
	var b = transform.basis.orthonormalized() #original_basis
	if rotateX:
		self.rotate(b.x, delta * rotate_speed)
	if rotateY:
		self.rotate(b.y, delta * rotate_speed)
	if rotateZ:
		self.rotate(b.z, delta * rotate_speed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_chkX_toggled(button_pressed):
	rotateX = button_pressed


func _on_chkY_toggled(button_pressed):
	rotateY = button_pressed


func _on_chkZ_toggled(button_pressed):
	rotateZ = button_pressed


func _on_Button_pressed():
	transform.basis = Basis()
