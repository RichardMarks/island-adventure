extends "res://room-base.gd"

var room = {
	"name": "Treasure Room",
	"connections": [
		{
			"sourceNode": "SpearSprite/Area2D",
			"signalName": "mouse_enter",
			"targetNode": "Pointer",
			"methodName": "_on_Area2D_mouse_enter",
			"bindSource": false
		},
		{
			"sourceNode": "SpearSprite/Area2D",
			"signalName": "mouse_exit",
			"targetNode": "Pointer",
			"methodName": "_on_Area2D_mouse_exit",
			"bindSource": false
		},
		{
			"sourceNode": "SpearSprite/Area2D",
			"signalName": "input_event",
			"targetNode": "Inventory",
			"methodName": "_on_Area2D_input_event",
			"bindSource": true
		}
	]
}

func _ready():
	emit_signal("room_ready", room)