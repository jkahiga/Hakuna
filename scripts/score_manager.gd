extends Node

var score = 0

@onready var soul_score: Label = $SoulScore

func add_point():
	score += 1
	soul_score.text = str(score) + " Soul Collected! He releases you!"
	
	
