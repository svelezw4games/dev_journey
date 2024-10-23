extends Node2D
class_name BuenosAires

const EVA_LOCATION:Vector2=Vector2(-34.60335952798548, -58.36965939134002)

var PlayerScene = preload("res://scenes/player/Player.tscn")
var player:Player
var start_moving:bool=false

func _ready() -> void:
	player = PlayerScene.instantiate()
	player.position=$start_location.position
	player.set_event_location($godot_con.position)
	add_child(player)

func _physics_process(delta: float) -> void:
	if not player.is_at_event() and start_moving:
		player.move_to_event()
		player.is_near_event()

func _input(event: InputEvent) -> void:
	
	if event.is_action_pressed("ui_accept"):
		start_moving=true
