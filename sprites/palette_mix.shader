shader_type canvas_item;

uniform sampler2D palette_shininess;
uniform sampler2D palette_type;

void fragment(){
	vec4 rgb = texture(TEXTURE, UV);
	vec4 final_color = texture(palette_shininess, vec2(rgb.r, rgb.g)) * texture(palette_type, vec2(rgb.r, rgb.g));
	final_color.a = rgb.b;
	COLOR = final_color;
}