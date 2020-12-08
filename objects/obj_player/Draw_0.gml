draw_self()
var yy = 120

draw_set_color(c_white)
draw_set_font(fnt_score)
draw_text(room_width - 103, (room_height/2) - 150, "Score")

if(Score < 100 && Score >= 10) {
	draw_text(room_width - 78, (room_height/2) - yy, Score)		
} else if(Score < 10) {
	draw_text(room_width - 70, (room_height/2) - yy, Score)
}
