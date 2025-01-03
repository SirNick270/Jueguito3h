extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var game_controller: Node = $"../../GameController"
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _ready() -> void:
	animated_sprite_2d.play("default")

func _on_body_entered(body: Node2D) -> void:
	animated_sprite_2d.play("pickup")
	audio_stream_player_2d.playing = true
	await (animated_sprite_2d.animation_finished)
	game_controller.point()
	queue_free()
