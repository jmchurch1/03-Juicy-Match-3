extends Control


# score = 0
# time = level1_default
# level = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "Thanks for playing\n\nYour level 1 score was " + str(Global.level1_score) + "\n\nYour level 2 time was " + str(Global.level2_time)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Quit_pressed():
	get_tree().quit()


func _on_Play_pressed():
	Global.score = 0
	Global.time = Global.level1_default
	Global.level = 1
	Global.level1_score = 0
	Global.level2_time = 0
	get_tree().change_scene("res://Game.tscn")
