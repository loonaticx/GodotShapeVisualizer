extends Node

#@onready var SpherePanel = $Panel
#@onready var SphereGeom = $SphereScene/ModSphereGeom
@onready var SphereScene = preload("res://shapes/sphere_scene.tscn").instantiate()
#@onready var SphereScene = $SphereScene

# https://godotshaders.com/shader/wireframe-shader-godot-4-0/

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Ready!")
	add_child(SphereScene)

	#print(SphereGeom.rings)
	pass # Replace with function body.

func changeRingCount(count):
	if count <= 1:
		count = 2

	SphereScene.get_node("ModSphereGeom").rings = count
	#$"/root/GlobalSubViewportContainer/SubViewport/SphereScene/ModSphereGeom".rings = count
	#$SubViewportContainer/SubViewport/SphereScene/ModSphereGeom.rings = count

func changeRadSegCount(count):
	if count <= 1:
		count = 2
	SphereScene.get_node("ModSphereGeom").radial_segments = count


func toggleSmoothShading(option):
	SphereScene.get_node("ModSphereGeom").smooth_faces = option

func changeWireframeDensity(val):
	SphereScene.get_node("ModSphereGeom").material.set_shader_parameter("wire_width", val)
	#$SphereControllerPanel/RingLabel.text = str(SphereScene.get_node("ModSphereGeom").material.get_shader_parameter("wire_width"))
	#$SubViewportContainer/SubViewport/SphereScene/ModSphereGeom.material.shader_parameter.wire_width = val

func changeWireframeSmoothness(val):
	SphereScene.get_node("ModSphereGeom").material.set_shader_parameter("wire_smoothness", val)
	#$SphereControllerPanel/RingLabel.text = str(SphereScene.get_node("ModSphereGeom").material.get_shader_parameter("wire_smoothness"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
