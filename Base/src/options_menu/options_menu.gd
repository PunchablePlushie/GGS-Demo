extends Control


func _ready() -> void:
	get_tree().paused = true


func _on_Close_pressed() -> void:
	get_tree().paused = false
	queue_free()
