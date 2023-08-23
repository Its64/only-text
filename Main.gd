extends Node2D

var platform = preload("res://platform.tscn")
@onready var platform2 = $Fakedd
var plus = false
var remove = false
@onready var group = get_node("Platforms").get_children()

func _ready():
	pass

func _process(delta):
	if plus == true:
		platform2.visible = true
		platform2.position = get_global_mouse_position()
	else:
		platform2.visible = false

func _on_plus_pressed():
	if Global.removed >= 1:
		plus = true
		Global.is_can_remove = false

func _input(event):
	if plus == true:
		if Global.is_can == true:
			if event.is_action_pressed("click"):
				Global.removed -= 1
				var platform_scene = platform.instantiate()
				platform_scene.position = get_global_mouse_position()
				$player/sound.play()
				$Platforms.add_child(platform_scene)
				plus = false

func _on_remove_pressed():
	Global.is_can_remove = true


func _on_win_body_entered(body):
	Global.is_can = true
	Global.is_can_remove = false
	Global.removed = 0
	Global.current += 1
	get_tree().change_scene_to_file("res://level_"+ str(Global.current) + ".tscn")
