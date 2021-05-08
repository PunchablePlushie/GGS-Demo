extends Sprite


var menu_exists: bool = false

onready var nGui: CanvasLayer = get_node("../Gui")
onready var rOptionsMenu: PackedScene = preload("res://src/options_menu/OptionsMenu.tscn")


func _process(delta: float) -> void:
	# Movement
	var dir: Vector2 = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	).normalized()
	
	position += dir * Global.player_speed * delta
	
	# Menu
	if Input.is_action_just_pressed("ui_cancel"):
		if menu_exists == false:
			var iOptionsMenu: Control = rOptionsMenu.instance()
			nGui.add_child(iOptionsMenu)
			iOptionsMenu.connect("tree_exited", self, "_on_menu_tree_exited")
			
			menu_exists = true


func _on_menu_tree_exited() -> void:
	menu_exists = false
