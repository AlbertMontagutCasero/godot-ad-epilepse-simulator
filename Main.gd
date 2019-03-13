extends Control

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
var color_red_modulate : float = 0
var color_green_modulate : float = 0
var color_blue_modulate : float = 0

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
#	_start_changing_color()

func _process(delta: float) -> void:
	color_red_modulate = fmod(color_red_modulate + ( 0.01 * randi()) * delta, 1.0)
	color_green_modulate = fmod(color_green_modulate + ( 0.01 *  randi() * delta), 1.0)
	color_blue_modulate = fmod(color_blue_modulate + ( 0.01 *  randi() * delta), 1.0)

	$ColorRect.color = Color(color_red_modulate, color_green_modulate, color_blue_modulate, 1)
#	_start_changing_color()

#func _start_changing_color():
#	yield(get_tree().create_timer(0.1), "timeout")
#	color_red_modulate = fmod(color_red_modulate + ( 0.01 * randi()), 1.0)
#	color_green_modulate = fmod(color_green_modulate + ( 0.01 *  randi()), 1.0)
#	color_blue_modulate = fmod(color_blue_modulate + ( 0.01 *  randi()), 1.0)
#
#	$ColorRect.color = Color(color_red_modulate, color_green_modulate, color_blue_modulate, 1)
#	_start_changing_color()