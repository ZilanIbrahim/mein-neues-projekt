extends CSGBox3D

@export var speed := 2.0
@export var rot_speed := 90.0  # Grad pro Sekunde

func _process(delta: float) -> void:
	if Input.is_action_pressed("hoch"):
		position.z -= speed * delta
	if Input.is_action_pressed("runter"):
		position.z += speed * delta

	if Input.is_action_pressed("links drehen"):
		rotation.y += deg_to_rad(rot_speed) * delta
	if Input.is_action_pressed("rechts drehen"):
		rotation.y -= deg_to_rad(rot_speed) * delta
