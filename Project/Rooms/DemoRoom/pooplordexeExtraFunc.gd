extends Node

onready var colors = get_parent() as Polygon2D

func extraFunc():
	colors.texture.gradient.set_colors([Color(1,0,0,0), Color(1,0,0,0.635294)])
	Global.audioNode.set_pitch_scale(0.3)

func _exit_tree() -> void:
	Global.audioNode.set_pitch_scale(1.0)
