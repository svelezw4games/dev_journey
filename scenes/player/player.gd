extends CharacterBody2D

class_name Player

@export var speed = 400

const GODOT_CON_LOCATION:Vector2=Vector2(1678, 520)

func _ready() -> void:
	$Label.visible=false
	$codingLabel.visible=false

func set_godot_con_location(direction:Vector2):
	pass

func move_to_godot_con():
	velocity = position.direction_to(GODOT_CON_LOCATION) * speed
	move_and_slide()

func is_at_godot_con():
	var distance = position.distance_to(GODOT_CON_LOCATION)
	return distance < 1.0

func is_near_godot_con():
	var distance = position.distance_to(GODOT_CON_LOCATION)
	
	if distance < 20:
		speed *=0.10

func have_any_questions():
	$Label.visible=true
	$AnimationPlayer.play("have_questions")

func invite_everyone(repo_name):
	$codingLabel.visible=true
	$codingLabel.text="git clone "+ repo_name
	$AnimationPlayer.play("Invite")
	
