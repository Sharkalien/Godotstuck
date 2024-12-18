extends Node

export(NodePath) onready var darkness = get_node(darkness) as Polygon2D
export(NodePath) onready var computer_light = get_node(computer_light) as Polygon2D

func extraFunc():
	if darkness.visible:
		darkness.hide()
		computer_light.hide()
