extends RichTextLabel


func _process(delta: float) -> void:
	var text = str(Global.combo)
	self.text = (text)
