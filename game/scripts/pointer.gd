extends Node2D

signal enable_pointer_highlight
signal disable_pointer_highlight

func _ready():
	var pointerTexture = load("res://textures/pointer.tex")
	var pointerSize = pointerTexture.get_size()
	var hotspot = pointerSize * 0.5
	Input.set_custom_mouse_cursor(pointerTexture, hotspot)
	connect("enable_pointer_highlight", self, "enable_pointer_highlight")
	connect("disable_pointer_highlight", self, "disable_pointer_highlight")
	get_viewport().warp_mouse(get_viewport_rect().size * 0.5)

func _process(delta):
	var pos = get_local_mouse_pos()
	get_node("PointerHighlightSprite").set_pos(pos)

func _on_Area2D_mouse_enter():
	emit_signal("enable_pointer_highlight")

func _on_Area2D_mouse_exit():
	emit_signal("disable_pointer_highlight")

func enable_pointer_highlight():
	# print("enable pointer highlight")
	set_process(true)
	get_node("PointerHighlightSprite").show()

func disable_pointer_highlight():
	# print("disable pointer highlight")
	set_process(false)
	get_node("PointerHighlightSprite").hide()
