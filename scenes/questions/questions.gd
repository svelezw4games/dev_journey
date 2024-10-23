extends Node2D

class_name QuestionsAndComments


func _input(event: InputEvent) -> void:
	# TODO: Leave us your questions?? and comments /**/
	if event.is_action_pressed("ui_accept"):
		$Player.have_any_questions()
