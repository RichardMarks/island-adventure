# Script: escape-to-quit.gd
# Description: Quit game when ESC is pressed
# Depends:
#   input action "ui_cancel" is mapped to the escape key
extends Node

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
