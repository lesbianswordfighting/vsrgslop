extends Area2D

@export var key_name: String = ""

#checking for if notecollision is in perfect_window
func _ready() -> void:
	monitoring = true

func _process(delta: float) -> void:
	if Input.is_action_just_pressed(key_name):
		#check if notecollision is in perfect_window
		var overlapping_bodies = get_overlapping_bodies()
		
		if overlapping_bodies.size() > 0:
			print("overlapping with:", overlapping_bodies)
		else:
			print("not overlapping with anything")
			
	
