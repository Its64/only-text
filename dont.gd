extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if body.name == 'player':
		Global.is_can = true
		Global.is_can_remove = false
		Global.removed = 0
		get_tree().reload_current_scene()
