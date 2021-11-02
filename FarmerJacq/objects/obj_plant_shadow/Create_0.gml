/// @description Check if growable
hp = 100
shooting = false;
range = 225;

alarm[1] = 10;

x_pos = floor(x / global.cell_size);
y_pos = floor(y / global.cell_size);

global.cell[x_pos, y_pos] = id;

is_growable=true;
global.purification += 1;

//check neighbouring cells
var is_filled = true;
for (var i = -1; i <= 1; i++) {
	for (var j = -1; j <= 1; j++) {
		var can = true;
		if (x_pos == 0 && i == -1) {
			can = false;
		} else if (x_pos == global.full_w && i == 1) {
			can = false;
		}
				
		if (y_pos == 0 && j == -1) {
			can = false;
		} else if (y_pos == global.full_h && j == 1) {
			can = false;
		}
		
		if (can && global.cell[x_pos + i, y_pos + j] == noone) {
			is_filled = false;
		}
	}
}

if (is_filled) {
	is_growable = false;
}

if (is_growable) {
	alarm[0] = 120;
}
alarm[2] = 300;

audio_play_sound(snd_stab,2,0)
audio_play_sound(snd_shadow_2,1,0)

