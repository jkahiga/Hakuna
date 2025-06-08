extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body):
	Engine.time_scale = 0.5
	timer.start()
	get_tree().change_scene_to_file("res://scenes/end_menu.tscn")

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://scenes/level_one.tscn")
