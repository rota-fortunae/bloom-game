extends Area2D

@export var teleportLocation :Vector2= Vector2(474, 447)
@export var current_player :Player = null
@export var new_player :Player = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		current_player.active = false
		new_player.active = true
		new_player.position = teleportLocation
		print("new player")
		print(new_player.position)
		
