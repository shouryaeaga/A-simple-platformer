extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_VolumeSFXUp_pressed() -> void:
	Input.action_press("ui_accept")
func _on_VolumeSFXUp_released() -> void:
	Input.action_release("ui_accept")


func _on_VolumeSFXDown_pressed() -> void:
	Input.action_press("ui_cancel")
func _on_VolumeSFXDown_released() -> void:
	Input.action_release("ui_cancel")
