class_name control_settings extends Control

@export var CONTROLLIST : VBoxContainer
@export var TEMPLATE : control_row
@export var SAVEBUTTON : Button
@export var STATUS : RichTextLabel
@export var STATUSUNSAVED : String = "Warning: Changes unsaved!"
@export var STATUSSAVED : String = "Changes saved!"
var controls : Array[StringName]
var controlRows : Array[control_row]
var controls_changed : bool = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_controls()
	populate_menu()
	STATUS.visible = false
	CONTROLLIST.move_child(SAVEBUTTON,CONTROLLIST.get_child_count())
	self.process_mode = Node.PROCESS_MODE_ALWAYS


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func get_controls() -> void:
	for action: String in InputMap.get_actions():
		if not action.contains("ui_"):
			controls.append(action)


func populate_menu() -> void:
	for row: String in controls:
		var newRow = TEMPLATE.duplicate()
		newRow.name = row
		CONTROLLIST.add_child(newRow)
		controlRows.append(newRow)
	TEMPLATE.visible = false


func disable_controls() -> void:
	STATUS.visible = false
	self.visible = false
	self.process_mode = Node.PROCESS_MODE_DISABLED
	


func enable_controls() -> void:
	self.visible = true
	self.process_mode = Node.PROCESS_MODE_ALWAYS
	update_row_text()


func save_new_controls() -> void:
	for row: control_row in controlRows:
		row.update_InputMap()


func update_row_text() -> void:
	for row: control_row in controlRows:
		row.label_buttons()


func update_status(status_msg : String) -> void:
	STATUS.text = status_msg
	STATUS.visible = true


func _on_save_pressed() -> void:
	if controls_changed :
		update_status(STATUSSAVED)
		save_new_controls()


func _on_row_key_changed() -> void:
	update_status(STATUSUNSAVED)
	controls_changed = true
