extends Node

var current_experience = 0


func _ready():
	GameEvents.experience_orb_collected.connect(on_experience_orb_collected)


func increment_experience(number: float):
	current_experience += number
	print(current_experience)


func on_experience_orb_collected(number: float):
	increment_experience(number)
