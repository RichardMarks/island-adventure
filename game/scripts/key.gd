extends Sprite

var keyId

func _ready():
	pass

func action(inventory):
	pass

func _on_Area2D_input_event( viewport, event, shape_idx ):
	if (event.type == InputEvent.MOUSE_BUTTON):
		var KeyItemClass = load("key-item.gd")
		var keyItem = KeyItemClass.new("RED KEY")
		
		get_node("../Inventory").add_item(keyItem)
		hide()
