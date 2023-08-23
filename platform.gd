extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_remove_pressed():
	if Global.is_can_remove == true:
		Global.is_can_remove = false
		$"../../player/sound".play()
		Global.removed += 1
		queue_free()
