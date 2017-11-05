extends Node

var items = {}

func createItemModel(type, name, texture):
	var model = {
		"id": items.keys().size(),
		"type": type,
		"name": name,
		"texture": texture
	}
	
	return model

func has_item(id):
	return items.has(id)

func add_item(id, item):
	items[id] = item
	print_inventory()

func print_inventory():
	print("----------")
	for key in items:
		print("Item ", key, " = ", items[key])
	print("----------")

func remove_item(id):
	items.erase(id)

func _on_Area2D_input_event(viewport, event, shape_idx, node):
#	print("on item input", viewport, event, shape_idx, node)
	if event.type == InputEvent.MOUSE_BUTTON:
		if event.pressed:
			var spriteNode = node.get_parent()
			var itemNode = spriteNode.get_node("Item")
			var item = createItemModel(itemNode.itemType, itemNode.name, itemNode.icon)
			
			add_item(item.id, item)
			spriteNode.hide()
			
#			print(itemNode.name, itemNode.description, itemNode.itemType)
#			print("on item click", spriteNode)
			