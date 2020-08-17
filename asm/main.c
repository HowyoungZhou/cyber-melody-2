int keycode_octave_lut[256];
int lenoc_score[];
int indicator_x_lut[256];
int colors[8];

void draw_rect(int x0, int y0, int x1, int y1, int color);

void draw_indicator(int note_octave, int y, int length, int color)
{
    int x0 = indicator_x_lut[note_octave];
    int x1 = x0 + 12;
    int y1 = y;
    int y0 = y - length;
    draw_rect(0, y0, x0 - 1, y1, color);
    draw_rect(x0, y0, x1, y1, color);
    draw_rect(x1 + 1, y0, 639, y1, color);
}

int main()
{
    int cur_octave = 4;     // s0
    int last_key_ready = 0; // s1
    int last_key_code = 0;  // s2
    int note_pointer = 0;   // s3

    for (;;)
    {
        {
            int ps2_data = *(int *)0xD0000000;     // t0
            int key_ready = ps2_data & 0x80000000; // t1
            int key_code = ps2_data & 0x000000FF;  // t2
            int pitch_gen_output = 0;              // t3

            if (key_ready)
            {
                pitch_gen_output = keycode_octave_lut[key_code] + cur_octave;
            }
            else if (last_key_ready) // L1
            {
                if (last_key_code == 0x5A)
                {
                    cur_octave = (cur_octave + 1) % 8;
                } // L2
                else if (last_key_code == 0x59)
                {
                    cur_octave = (cur_octave + 7) % 8;
                }
            } // L3
            last_key_ready = key_ready;
            last_key_code = key_code;

            *(int *)0x20000000 = pitch_gen_output;
        }

        int cur_length = *(int *)0x30000000; // t0
        if (cur_length == 0)
        {
            note_pointer++;
            *(int *)0x30000000 = lenoc_score[note_pointer] >> 8;
        }
        else
        {
            int cur_y = 411; // s4
            int length = cur_length / 4;
            draw_indicator(lenoc_score[note_pointer] & 0xFF, cur_y, length, 0x0);
            cur_y -= length;
            int note_cursor = note_pointer + 1; // s5
            while (cur_y > 0)
            {
                int lenoc = lenoc_score[note_cursor];
                int length = (lenoc >> 8) / 4;
                draw_indicator(lenoc & 0xFF, cur_y, length, 0x0);
                cur_y -= length;
                note_cursor++;
            }
        }
    }
}
