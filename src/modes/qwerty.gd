extends Resource

var key_dir = build_key_dir()

const KEYBOARD = [
	["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"],
	["a", "s", "d", "f", "g", "h", "j", "k", "l"],
	["z", "x", "c", "v", "b", "n", "m"]
]

func build_key_dir():
	var directions = Dictionary()
	for row_n in KEYBOARD.size():
		var row = KEYBOARD[row_n]
		# Change in x axis.
		var dx = len(row) / 2
		for key in row:
			directions[key] = Vector2(dx, row_n)
			dx -= 1
	return directions
	
