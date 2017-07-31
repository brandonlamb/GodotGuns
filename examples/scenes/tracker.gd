extends Node2D

onready var enemy_ship = get_node("../enemy_ship")

func _ready():
	get_node("Gun").connect("volley_fired", self, "set_targets")
	set_process(true)
	pass

func set_targets(bullets):
	for bullet in bullets:
		bullet.set_target(enemy_ship)
