extends Control

var globalized_game_path

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VBoxContainer/Label.text = GameDetails.game_title
	$VBoxContainer/HBoxContainer/TextureRect.texture = load(GameDetails.game_image)
	$VBoxContainer/HBoxContainer/Label.text = GameDetails.game_description
	globalized_game_path = ProjectSettings.globalize_path(GameDetails.game_path)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_launch_button_pressed() -> void:
	OS.execute(globalized_game_path, [])


func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
