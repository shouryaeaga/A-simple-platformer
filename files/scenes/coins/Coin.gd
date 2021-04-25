extends Area2D

onready var anim_player = get_node("AnimationPlayer")

onready var hp = get_tree().root.get_node("Stage1").get_node("Player")

func _on_coin_body_entered(body: KinematicBody2D) -> void:
	hp.hp += 45
	
	anim_player.play("fade_out")
