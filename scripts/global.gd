extends Node


var high_score = 0 
var current_score: int
var previous_score: int
var combo: int
var recent_judgement: String

signal CreateNote(button_name: String)
signal NoteReceptorPress(button_name: String, array_num: int)
