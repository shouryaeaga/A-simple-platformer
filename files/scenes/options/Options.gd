extends Node2D

onready var audio = get_node("HSlider/AudioStreamPlayer2D")
onready var audio2 = get_node("HSlider2/AudioStreamPlayer2D")
onready var audio3 = get_node("HSlider2/AudioStreamPlayer2D")
onready var anim = get_node("AnimationPlayer")
onready var slider1 = get_node("HSlider")
onready var slider2 = get_node("HSlider2")

func _ready() -> void:
	pass 





func _on_BackButton_pressed() -> void:
	$Timer.start()
	anim.play("fade_out")


func _on_Timer_timeout() -> void:
	get_tree().change_scene("res://files/scenes/Menu/Main Menu.tscn")


func _on_HSlider_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), value)
	audio.play()


func _on_HSlider2_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), value)
	audio2.play()


func _on_HSlider3_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)
	audio3.play()
