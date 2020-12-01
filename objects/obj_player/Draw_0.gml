draw_self()


draw_set_font(fnt_score)
draw_text(room_width - 75, (room_height/2) - 170, "Score")

if(Score < 100 && Score >= 10) {
	draw_text(room_width - 57, (room_height/2) - 140, Score)	
} else if(Score >= 100 && Score < 1000) {
	draw_text(room_width - 63, (room_height/2) - 140, Score)	
} else if(Score >= 1000) {
	draw_text(room_width - 71, (room_height/2) - 140, Score)	
} else if(Score < 10) {
	draw_text(room_width - 52, (room_height/2) - 140, Score)
}
