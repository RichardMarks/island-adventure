extends Node

export(String) var name
export(String) var description
export(Texture) var icon

var itemType

func _ready():
	itemType = "BASIC_ITEM"