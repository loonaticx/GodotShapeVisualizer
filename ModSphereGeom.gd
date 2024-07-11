extends CSGSphere3D

class_name ModSphere


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello!")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func testPrint():
	print("Test print")


func changeRingCount(count):
	if count <= 0:
		count = 1

	#self.rings = count

