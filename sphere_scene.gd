extends Node

@onready var SpherePanel = $Panel
@onready var SphereGeom = $SphereScene/ModSphereGeom


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Ready!")
	print(SphereGeom.rings)
	pass # Replace with function body.

func changeRingCount(count):
	if count <= 0:
		count = 1

	SphereGeom.rings = count


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
