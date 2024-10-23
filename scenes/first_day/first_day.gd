extends Node2D

class_name Event

@export_dir var location

@onready var event_address=$event_location

@export_enum("es", "en") var language: String

@export_enum("DAY_1","DAY_2","DAY_3","DAY_4") var day: String

func _ready() -> void:
	TranslationServer.set_locale(language)
	$map.texture=load(location)
	$label.visible=false
	$label.text=day
	$Player.position=event_address.position

func _DayCycle_ended(anim_name: StringName) -> void:
	if anim_name=="fourth_day":
		$label.visible=true

func _input(event: InputEvent) -> void:

	if event.is_action_pressed("ui_accept"):
		$DayCycle.play("fourth_day")
