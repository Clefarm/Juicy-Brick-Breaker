extends Control

func _ready():
	get_tree().paused = true
	
func set_instructions(n,i):
	$Name.text = n
	$Instructions.text = i

func _on_Timer_timeout():
	Global.WHO_DEY_on -= 1
	$Starting.text = "WHO DEY " + str(Global.WHO_DEY_on)
	if Global.WHO_DEY_on <= 0:
		var HUD = get_node_or_null("/root/Game/UI/HUD")
		if HUD != null:
			HUD.show()
		get_tree().paused = false
		queue_free()
