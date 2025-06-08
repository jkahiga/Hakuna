extends CanvasLayer

@onready var start_again: Button = $StartAgain
@onready var end_menu: CanvasLayer = $"."

# @export var initial_level = "" # (String, FILE, "*.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	pass

func _on_start_again_pressed():
	var main_scene = load("res://scenes/level_one.tscn")
	get_tree().change_scene_to_file("res://scenes/level_one.tscn")
	end_menu.hide()
	print("Now in main game.")

func _on_quit_pressed():
	get_tree().quit()
