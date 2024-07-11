extends Node

#@onready var SpherePanel = $Panel
#@onready var SphereGeom = $TorusScene/ModTorusGeom
@onready var TorusScene = preload("res://shapes/torus_scene.tscn").instantiate()
#@onready var TorusScene = $TorusScene

# https://godotshaders.com/shader/wireframe-shader-godot-4-0/

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Ready!")
	add_child(TorusScene)

func changeInnerRadius(val):
	TorusScene.get_node("ModTorusGeom").inner_radius = val

func changeOuterRadius(val):
	TorusScene.get_node("ModTorusGeom").outer_radius = val

func changeSideCount(val):
	TorusScene.get_node("ModTorusGeom").sides = val

func changeRingSideCount(val):
	TorusScene.get_node("ModTorusGeom").ring_sides = val

func toggleSmoothShading(option):
	TorusScene.get_node("ModTorusGeom").smooth_faces = option

func changeWireframeDensity(val):
	TorusScene.get_node("ModTorusGeom").material.set_shader_parameter("wire_width", val)

func changeWireframeSmoothness(val):
	TorusScene.get_node("ModTorusGeom").material.set_shader_parameter("wire_smoothness", val)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
