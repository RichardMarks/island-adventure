extends "res://inventory/item-base.gd"

export(String) var key
export(bool) var destroyAfterUse = true

func _ready():
	print("name ", name)
	itemType = "KEY_ITEM"