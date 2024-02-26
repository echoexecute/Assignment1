extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.position.x = 150
	self.position.y = 150


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x -= 50 * delta
	if self.position.x <= -30:
		queue_free()





	





func _on_area_2d_area_entered(area):
	if area.get_parent().name == "Player":
		area.get_parent().queue_free()
