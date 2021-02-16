// weeks
for (var i = 0; i < global.weeks + 1; ++i) {
	var opacity = 1; if (i != selectedWeek) opacity = 0.5;
	draw_sprite_ext(sWeeks, i, 380, 524 + (i * 120) - yOffset, 1.002488, 1.002488, 0 ,c_white, opacity);
}

// bg
draw_rectangle_color(0, 0, 1280, 120, c_black, c_black, c_black, c_black, false);
draw_sprite(sBackgroundStory, 0, 0, 0);

// text
var curWeekScore = global.weekScoreEasy[selectedWeek];
if (global.currentDif  = 1) curWeekScore = global.weekScoreNormal[selectedWeek];
if (global.currentDif  = 2) curWeekScore = global.weekScoreHard[selectedWeek];
scorDisplay = lerp(scorDisplay, curWeekScore, 0.2);

draw_set_color(c_ltgray);
draw_text_transformed(5, 0, "WEEK SCORE: " + string(round(scorDisplay)), 2, 2, 0);
draw_set_halign(fa_right);
draw_text_transformed(1275, 0, weekName[selectedWeek], 2, 2, 0);
draw_set_halign(fa_left);
draw_set_color(c_white);

// character outlines
if (selectedWeek != 0) draw_sprite_ext(sDaddyOutline, animate, 264, 450, 0.4980007, 0.4980007, 0, c_white, 1);
draw_sprite_ext(sGirlfriendOutline, animate * 2, 753, 16, 0.4980007, 0.4980007, 0, c_white, 1);

var bfSprite = sBoyfriendOutline;
if (selected) bfSprite = sBoyfriendPeaceOutline;
draw_sprite_ext(bfSprite, bfAnimate, 596, 468, 0.8962366, 0.8962366, 0, c_white, 1);

// dif
draw_sprite_ext(sDifArrow, 0, 700, 524, leftArrowScale, leftArrowScale, 0, c_white, 1); // left
draw_sprite(sDifs, global.currentDif, 906, 524 + difOffset); // left
draw_sprite_ext(sDifArrow, 1, 1110, 524, rightArrowScale, rightArrowScale, 0, c_white, 1); // right