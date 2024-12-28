extends Node

export(NodePath) onready var darkness = get_node(darkness) as Polygon2D
onready var computer_light = get_parent() as Polygon2D

func extraFunc():
	computer_light.texture.gradient.set_colors([Color(1,0,0,0), Color(1,0,0,0.635294)])
	Global.audioNode.set_pitch_scale(0.3)
	
	if !computer_light.visible:
		computer_light.show()
	if !darkness.visible:
		darkness.show()
	if !Global.audioNode.playing:
		Global.audioNode.play()

func _exit_tree() -> void:
	Global.audioNode.set_pitch_scale(1.0)
