extends Control

# You can use 'grab_focus()' to focus on the first element of the menu
func _ready() -> void:
	get_tree().paused = true


func _on_Close_pressed() -> void:
	get_tree().paused = false
	queue_free()
