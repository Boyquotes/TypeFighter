extends Area2D

@export var speed = 0
var screen_size
var keyboard = preload("res://assets/res/qwerty.tres")
var word = Array()


func _ready():
	screen_size = get_viewport_rect().size
	print(keyboard.key_dir)

# Allow any input.
func _input(event):
	var velocity = Vector2.ZERO
	# Finish word.
	if event.is_action_pressed("ConfirmWord"):
		word.clear()
	# Insert new character. Get character vec.
	elif event.is_action_pressed("NewChar"):
		var char = event.as_text().to_lower()
		var direc_change = keyboard.key_dir.get(char)
		if direc_change:
			print(direc_change)
			print(char)
			word.append(char)
			print(word)
		
