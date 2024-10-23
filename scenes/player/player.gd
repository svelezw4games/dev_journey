extends CharacterBody2D

class_name Player

@export var speed = 400

var EVENT_LOCATION:Vector2=Vector2.ZERO

func _ready() -> void:
	$Label.visible=false
	$codingLabel.visible=false

func set_event_location(target:Vector2):
	EVENT_LOCATION=target

func move_to_event():
	velocity = position.direction_to(EVENT_LOCATION) * speed
	move_and_slide()

func is_at_event():
	var distance = position.distance_to(EVENT_LOCATION)
	return distance < 1.0

func is_near_event():
	var distance = position.distance_to(EVENT_LOCATION)
	
	if distance < 20:
		speed *=0.10

func have_any_questions():
	$Label.visible=true
	$AnimationPlayer.play("have_questions")

func invite_everyone(repo_name):
	$codingLabel.visible=true
	$codingLabel.text="git clone "+ repo_name
	$AnimationPlayer.play("Invite")
	
