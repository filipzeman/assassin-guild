extends CharacterBody2D

@export var move_speed := 80.0

@export var patrol_a: Marker2D
@export var patrol_b: Marker2D

@onready var agent: NavigationAgent2D = $NavigationAgent2D

var moving_to_a := false

func _ready() -> void:
	agent.target_position = patrol_b.global_position
	
func _physics_process(_delta: float) -> void:

	if agent.is_navigation_finished():

		if moving_to_a:
			agent.target_position = patrol_b.global_position
		else:
			agent.target_position = patrol_a.global_position

		moving_to_a = !moving_to_a

	var next_position := agent.get_next_path_position()

	var direction := global_position.direction_to(next_position)

	velocity = direction * move_speed

	move_and_slide()
