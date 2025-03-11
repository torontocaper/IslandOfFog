extends GPUParticlesCollisionSphere3D

const SPEED : float = 0.01
var is_moving : bool = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("shoot"):
		is_moving = true

func _physics_process(delta: float) -> void:
	if is_moving:
		translate(Vector3(1, 0, 0) * SPEED)
