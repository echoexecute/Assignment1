extends Node

var delay = 0
var random_number = 1
var old_random_number = 2
var boxes = 0

const BOX = preload("res://scenes/box.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if boxes <= 3 && random_number != old_random_number:
		random_number = randi_range(5,15)
		old_random_number = random_number
	if delay == random_number:
		var box = BOX.instantiate()
		self.add_child(box)
		old_random_number = 99
	


func _on_timer_timeout():
	print(delay)
	print(random_number)
	delay += 1
	if delay >= 15:
		delay = 0
