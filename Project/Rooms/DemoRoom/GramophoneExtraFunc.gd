extends Node


func extraFunc():
	if Global.audioNode.is_playing():
		Global.audioNode.stop()

func _exit_tree() -> void:
	if !Global.audioNode.is_playing():
		Global.audioNode.play()
