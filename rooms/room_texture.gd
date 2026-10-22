extends Node2D
@export var tile_image :CompressedTexture2D = load("res://assets/tileset_stage_one.png")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var new_texture = tile_image
	var source = $TileMapLayer.tile_set.get_source(0) 
	source.texture = new_texture
