extends Node2D

const in_editor: bool = false
var song_name = "OVERJOY OVERDOSE"

var song_info = {
	"OVERJOY OVERDOSE" = {
		"note_spawn_times": "[[1],[2],[3],[4]]"
	}
}

func _ready():
	if in_editor:
		Global.NoteReceptorPress.connect(NoteReceptorPress)
	else:
		var note_spawn_times = song_info.get(song_name).get("note_spawn_times")
		var note_spawn_times_arr = str_to_var(note_spawn_times)
		print(note_spawn_times_arr[0])
		
		var counter: int = 0
		for key in note_spawn_times_arr:
			
			var button_name: String = ""
			match counter:
				0:
					button_name = "key_d"
				1:
					button_name = "key_f" 
				2:
					button_name = "key_j" 
				3:
					button_name = "key_k" 
			
			for delay in key:
				SpawnNote(button_name, delay)
				
			counter += 1

func NoteReceptorPress(button_name: String, array_num: int):
	pass

func SpawnNote(button_name: String, delay: float):
	await get_tree().create_timer(delay).timeout
	Global.CreateNote.emit(button_name)
