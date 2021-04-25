extends Area2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.




	var hp = get_tree().root.get_node("Stage1").get_node("Player").hp 
	
	if hp < 100:
		hp = hp + 10
