extends Area2D

onready var anim = get_node("AnimationPlayer")
onready var coinage = get_parent().get_node("Player/Control2/Coins")

func _ready() -> void:
	pass 





func _on_coin_body_entered(body: Node) -> void:
	coinage.coin += 1
	
	anim.play("fade_out")
