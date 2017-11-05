extends "res://room-base.gd"

var loadedRoomNode

func _ready():
	var currentRoomNode = get_tree().get_root().get_node("Master/CurrentRoom")
	loadedRoomNode = currentRoomNode.find_node("*Room")
	loadedRoomNode.connect("room_ready", self, "_on_room_ready_signal")

func _on_room_ready_signal(room):
	var masterNode = get_tree().get_root().get_node("Master")
	print("Room ", room.name, " ready")
	for connection in room.connections:
#		print(
#			"Connecting ", connection.signalName, " of ",
#			connection.sourceNode, " to ",
#			connection.methodName, " of ",
#			connection.targetNode)
		
		var sourceNode = loadedRoomNode.get_node(connection.sourceNode)
		var targetNode = masterNode.find_node(connection.targetNode)
		
		if connection.bindSource:
			sourceNode.connect(connection.signalName, targetNode, connection.methodName, [sourceNode])
		else:
			sourceNode.connect(connection.signalName, targetNode, connection.methodName)
