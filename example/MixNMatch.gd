extends "res://example/Shininess.gd"

export (Resource) var type_normal
export (Resource) var type_fighting
export (Resource) var type_flying
export (Resource) var type_poison
export (Resource) var type_ground
export (Resource) var type_rock
export (Resource) var type_bug
export (Resource) var type_ghost
export (Resource) var type_steel
export (Resource) var type_fire
export (Resource) var type_water
export (Resource) var type_grass
export (Resource) var type_electric
export (Resource) var type_ice
export (Resource) var type_psychic
export (Resource) var type_dragon
export (Resource) var type_dark
export (Resource) var type_fairy
var types = []

var cur_shininess
var cur_type

var final_palette:LargeTexture

func _ready():
	types = [type_normal, type_fighting, type_flying, type_poison, type_ground, type_rock, type_bug, type_ghost, type_steel, type_fire, type_water, type_grass, type_electric, type_ice, type_psychic, type_dragon, type_dark, type_fairy]
	
	cur_shininess = normal
	cur_type = types[0]
	set_shader_combo()
	pass

func _on_CheckButton_toggled(button_pressed):
	cur_shininess = shiny if button_pressed else normal
	#set_shader_combo()
	get_material().set_shader_param("palette_shininess", cur_shininess)
	pass

func _on_typeBtn_pressed(type_i):
	cur_type = types[type_i]
	#set_shader_combo()
	get_material().set_shader_param("palette_type", cur_type)
	pass

func set_shader_combo():
	#final_palette = cur_shininess * cur_type
	#final_palette.add_piece(Vector2(), cur_shininess)
	#final_palette.add_piece(Vector2(0, 1), cur_type)
	get_material().set_shader_param("palette_shininess", cur_shininess)
	pass
