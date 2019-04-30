extends KinematicBody

const BULLET_SCENE = preload("res://Bullet.tscn")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	if Input.is_key_pressed(KEY_F5):
		get_tree().change_scene("res://Main_Scene.tscn")
		call_deferred("queue_free")
	
	if Input.is_action_just_pressed("fire"):
		fire_bullet(Vector3(100, 0, 0))
	elif Input.is_action_just_pressed("fire-alt"):
		fire_bullet(Vector3(60, 0, 0))

func fire_bullet(impulse):
	var bullet = BULLET_SCENE.instance()
	bullet.global_translate(Vector3(2, 1, 0)) # TODO: Calculate this?
	add_child(bullet)
	bullet.fire(impulse)