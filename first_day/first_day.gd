extends Node2D

class_name Event

func _ready() -> void:
	$label.visible=false
	$DayCycle.play("first_day")
	

func _DayCycle_ended(anim_name: StringName) -> void:
	if anim_name=="first_day":
		$label.visible=true
