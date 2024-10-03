extends Node2D
class_name Berlin

const GODOT_CON_LOCATION:Vector2=Vector2(52.54620023566117, 13.366516357670347)

var PlayerScene = preload("res://Godot_con/Player.tscn")
var player:Player
var start_moving:bool=false

func _ready() -> void:
	player = PlayerScene.instantiate()
	player.position=$start_location.position
	player.set_godot_con_location(GODOT_CON_LOCATION)
	add_child(player)

func _physics_process(delta: float) -> void:
	if not player.is_at_godot_con():
		player.move_to_godot_con()
		player.is_near_godot_con()
