extends Node2D

var rapido = -150

onready var Aspekto = get_node("Aspekto")

func _ready():
	set_process(true)

func _process(d):
	translate(Vector2(rapido*d, 0))
