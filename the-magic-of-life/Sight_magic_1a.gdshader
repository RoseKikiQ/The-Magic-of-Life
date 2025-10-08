shader_type canvas_item;

uniform vec4 color_tint1a : source_color = vec4(1.0, 1.0, 1.0, 1.0);

void fragment() {
    COLOR = color_tint1a;
}