extends CharacterBody2D
class_name Player
@export var SPEED = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	var direction: Vector2 = Input.get_vector("left", "right", "up", "down")
	
	if direction != Vector2.ZERO:
		velocity = direction * SPEED
	else:
		velocity = Vector2.ZERO
		#velocity = velocity.move_toward(Vector2.ZERO, SPEED *4 * delta) 
		
	move_and_slide()
