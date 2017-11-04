extends "res://scripts/item.gd"

var lockId
var keySlotId

func _ready():
	pass

func action(inventory):
	if (inventory.find(keySlotId) != -1):
		print("Unlocked", lockId)