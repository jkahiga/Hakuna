extends Area2D

@onready var score_manager: Node = %ScoreManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body):
	score_manager.add_point()
	animation_player.play("pick")
