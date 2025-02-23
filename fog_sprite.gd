extends Sprite2D

@export var speed : float = 10.0
@export var fog_seed : int

func _ready() -> void:
	texture.noise.seed = fog_seed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	texture.noise.offset.x += delta * speed
