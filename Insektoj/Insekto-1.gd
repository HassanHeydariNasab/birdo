extends Node2D

func _ready():
	pass


func _on_Areo_body_enter( korpo ):
	if T.get_layer_bit(korpo, 1):
		queue_free()
