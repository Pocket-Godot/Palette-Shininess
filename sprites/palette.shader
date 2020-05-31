shader_type canvas_item;

uniform sampler2D palette;

void fragment(){
	vec4 rgb = texture(TEXTURE, UV);
	vec4 final_color = texture(palette, vec2(rgb.r, rgb.g));
	final_color.a = rgb.b;
	COLOR = final_color;
}