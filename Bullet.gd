extends RigidBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var next_impulse = null

func _ready():
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _integrate_forces(state):
	if next_impulse:
		var impulse = next_impulse
		next_impulse = null
		apply_impulse(Vector3(0, 0, 0), impulse)

func fire(impulse):
	next_impulse = impulse