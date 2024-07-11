extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$ShapeControllers/TorusController.hide()
	$ShapeControllers/TorusController.TorusScene.hide()

func useSphereMenu():
	$ShapeControllers/SphereController.show()
	$ShapeControllers/SphereController.SphereScene.show()

	$ShapeControllers/TorusController.hide()
	$ShapeControllers/TorusController.TorusScene.hide()

func useTorusMenu():
	$ShapeControllers/TorusController.show()
	$ShapeControllers/TorusController.TorusScene.show()

	$ShapeControllers/SphereController.hide()
	$ShapeControllers/SphereController.SphereScene.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
