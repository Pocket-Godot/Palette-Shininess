extends Sprite

export (Resource) var normal
export (Resource) var shiny

func _on_CheckButton_toggled(button_pressed):
	var palette = shiny if button_pressed else normal
	get_material().set_shader_param("palette", palette)
	pass
