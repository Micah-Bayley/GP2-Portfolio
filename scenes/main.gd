extends Control

var obst_course_description: String = "This was created in September 2026 and was\nsubmitted as my first assignment in\nGame Programming 2. It served as an introduction to\nGodot's 3D engine and how to translate prior\nGodot knowledge from 2D to 3D. It contains four\nbasic platforming levels."
var caldera_description: String = "This was created in October 2026 and was submitted\nas my second assignment in Game Programming 2. It\nserved as an excercise for environmental design,\nasset usage, lighing and proceedual generation. It\ncontains a little volcano island with a cabin and a forest."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_obst_button_pressed() -> void:
	GameDetails.update_selected_game("Obstacle Course","res://assets/obstcourceprev.png",obst_course_description,"res://executables/obst_course.exe")
	get_tree().change_scene_to_file("res://scenes/game_selection.tscn")


func _on_caldera_button_pressed() -> void:
	GameDetails.update_selected_game("Caldera","res://assets/caldera.png",caldera_description,"res://executables/caldera.exe")
	get_tree().change_scene_to_file("res://scenes/game_selection.tscn")
