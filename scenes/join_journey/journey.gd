extends Node2D

class_name InviteEveryone

const REPO="https://github.com/svelezw4games/dev_journey.git"
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		$Player.invite_everyone(REPO)
