extends Node2D

func _ready():
	$Casa/Normal.visible = true
	$Casa/Incendiada.visible = false
	$Foc/Foc.emitting = false
	$Foc/Foc2.emitting = false
	$Foc/Foc3.emitting = false
	$Foc/Foc4.emitting = false
	$Foc/Foc5.emitting = false
	$Foc/Foc6.emitting = false
	$Label.visible = true
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		$Label.visible = false
		$Explosio/CPUParticles2D.emitting = true
		$Casa/Normal.visible = false
		$Casa/Incendiada.visible = true
		$Foc/Foc.emitting = true
		$Foc/Foc2.emitting = true
		$Foc/Foc3.emitting = true
		$Foc/Foc4.emitting = true
		$Foc/Foc5.emitting = true
		$Foc/Foc6.emitting = true
		$AudioStreamPlayer2D.play()
