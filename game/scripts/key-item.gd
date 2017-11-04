extends "res://scripts/item.gd"

func _init(keyId):
	itemId = keyId

func _ready():
	print(get_item_id(), " Ready")
