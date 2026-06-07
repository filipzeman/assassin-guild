extends CharacterBody2D

@export var move_speed: float = 120.0
@onready var navigation_agent: NavigationAgent2D = $NavigationAgent2D

var facing_direction: Vector2 = Vector2.DOWN
var current_facing := ""


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			navigation_agent.target_position = get_global_mouse_position()
			#print(navigation_agent.target_position)
			
func get_facing_name() -> String:

	var angle := facing_direction.angle()
	var index := int(round(angle / (PI / 4.0))) % 8
	var directions := [
		"e",
		"se",
		"s",
		"sw",
		"w",
		"nw",
		"n",
		"ne"
	]
	return directions[index]

func update_facing(direction: Vector2) -> void:

	if direction.length() < 0.1:
		return
	facing_direction = direction.normalized()
	var facing := get_facing_name()
	if facing != current_facing:
		current_facing = facing
		print("Facing: ", facing)

func _physics_process(_delta: float) -> void:

	if navigation_agent.is_navigation_finished():
		velocity = Vector2.ZERO
		move_and_slide()
		return

	var next_position := navigation_agent.get_next_path_position()

	var direction := global_position.direction_to(next_position)
	
	if direction.length() > 0.1:
		facing_direction = direction.normalized()

	velocity = direction * move_speed
	
	update_facing(direction)

	move_and_slide()
