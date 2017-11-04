extends Node

var KeyItemClass = preload("key-item.gd")

func _on_Area2D_input_event( viewport, event, shape_idx ):
	if (event.type == InputEvent.MOUSE_BUTTON):
		var keyItem = KeyItemClass.new("RED KEY")
		get_node("../../Inventory").add_item(keyItem)
		

