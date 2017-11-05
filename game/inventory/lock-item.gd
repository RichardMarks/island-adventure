extends "res://inventory/item-base.gd"

export(String) var lock

var unlocked setget , is_unlocked

func _ready():
	itemType = "LOCK_ITEM"
	
func unlock(key):
	if key == lock:
		unlocked = true

func is_unlocked():
	return unlocked == true
