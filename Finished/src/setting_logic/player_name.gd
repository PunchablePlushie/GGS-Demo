extends Node
# value: String
#	Player's name


func main(value: Dictionary) -> void:
	Global.player_name = value["value"]
