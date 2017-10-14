extends Node2D

onready var Birdo = get_node("Birdo")
onready var Kamero = get_node("Kamero")
onready var Homoj = get_node("Homoj").get_children()


func _ready():
	for Homo in Homoj:
		randomize()
		if int(rand_range(0,2)) == 1:
			Homo.Aspekto.set_animation("ricxulo")
		if int(rand_range(0,2)) == 1:
			Homo.Aspekto.set_flip_h(true)
			Homo.rapido = -Homo.rapido
		randomize()
	set_process(true)

func _process(delta):
	Kamero.set_offset(Vector2(Birdo.get_global_pos().x+200,0))
