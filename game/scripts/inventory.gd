extends Node

var items = []

func _ready():
	pass

func has_item(id):
	return items.find(id) != -1

func add_item(item):
	items[item.get_item_id()] = item

func remove_item(item):
	items.erase(item.get_item_id())