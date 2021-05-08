extends Node
# value: int/float
#	Player speed


func main(value: Dictionary) -> void:
	Global.player_speed = value["value"]
