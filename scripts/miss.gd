extends Area2D


func _on_body_entered(body: Node2D) -> void:
	var overlapping_bodies = get_overlapping_bodies()
	var myparent = overlapping_bodies[0].get_parent()
	myparent.queue_free()
	print("miss!")
	#delete note when enters this body
