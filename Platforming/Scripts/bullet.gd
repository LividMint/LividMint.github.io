extends Area3D

@onready var despawntimer = $Despawn
var dir = Vector3()

func _ready():
	set_as_top_level(true)


func _process(delta):
	position += transform.basis.x * 60 * delta


func _on_despawn_timeout():
	queue_free()


func _on_body_entered(_body):
	queue_free()