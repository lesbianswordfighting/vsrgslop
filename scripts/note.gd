extends Sprite2D

@onready var cleartimer: Timer = $cleartimer

#note scroll speed
@export var scroll_speed: float = 4

# spawn position
var init_y_pos: float = -360

func _init():
	set_process(false)

# note scroll physics
func _process(delta):
	global_position += Vector2(0, scroll_speed)

func Setup(target_x: float, target_frame: int):
	global_position = Vector2(target_x, init_y_pos)
	frame = target_frame
	
	
	set_process(true)


func _on_cleartimer_timeout():
	queue_free()
