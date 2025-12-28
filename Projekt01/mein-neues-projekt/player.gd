extends MeshInstance3D

@export var speed = 0.5
@export_range(0, 180, 1, "radius_as_degrees") var rot_speed = 1


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Grüße aus der _ready() Funktion")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	
	if Input.is_action_pressed("hoch"):
		position.z += speed * delta * sin(rotation.y)
		position.z += speed * delta * cos(rotation.y)

	if Input.is_action_pressed("runter"):
		position.z += speed * delta * sin(rotation.y)
		position.z += speed * delta * cos(rotation.y)
	if Input.is_action_pressed("links"):
		position.x += speed * delta
	if Input.is_action_pressed("rechts"):
		position.x += speed * delta
	if Input.is_action_pressed("links drehen"):
		rotation.y += rot_speed * (3.141592 / 180) * delta
	if Input.is_action_pressed("rechts drehen"):
		rotation.y += rot_speed * (3.141592 / 180) * delta

	print(Input.get_last_mouse_screen_velocity())
	
