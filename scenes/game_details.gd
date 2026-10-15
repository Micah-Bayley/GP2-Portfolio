extends Node

var game_path: String
var game_image
var game_title: String
var game_description: String

func update_selected_game(title, image, description, path):
	game_title = title
	game_image = image
	game_description = description
	game_path = path
