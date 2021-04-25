extends Node2D

onready var timer = get_parent().get_node("Play")
onready var timer2 = get_parent().get_node("Options")
onready var anim = get_parent().get_node("AnimationPlayer")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.





func _on_Play_pressed() -> void:
	timer.start()
	anim.play("fade_out")


func _on_Play_timeout() -> void:
	get_tree().change_scene("res://files/scenes/Stages/Stage1.tscn")


func _on_Options_pressed() -> void:
	timer2.start()
	anim.play("fade_out")


func _on_Options_timeout() -> void:
	get_tree().change_scene("res://files/scenes/options/Options.tscn")
