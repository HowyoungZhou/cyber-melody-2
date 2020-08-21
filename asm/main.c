int keycode_octave_lut[256];
int score[];
int indicator_x_lut[256];
int colors[12];

void draw(int mode, int tl, int rd, int color);

void draw_rect(int x0, int y0, int x1, int y1, int color);

void draw_image(int x0, int y0, int x1, int y1, int address);

void draw_indicator(int note_octave, int y, int length)
{
    int x0 = indicator_x_lut[note_octave];       // s0
    if(x0 == 0) return;
    int y0 = y - length + 1;                     // s1
    if(y0 < 0) y0 = 0;
    // L9
    int x1 = x0 + 11;                            // s2
    int y1 = y;                                  // s3
    int color = colors[note_octave >> 4 && 0xf]; // s4
    draw_rect(0, y0, x0 - 1, y1, 0xfff);
    draw_rect(x0, y0, x1, y1, color);
    draw_rect(x1 + 1, y0, 639, y1, 0xfff);
}

int main()
{
    while (*(int *)0xD0000000 & 0x80000000 == 0)
        ;

    draw_rect(0, 0, 639, 479, 0xfff);
    draw_image(8, 412, 631, 479, 0);

    int cur_octave = 4;     // s0
    int last_key_ready = 0; // s1
    int last_key_code = 0;  // s2
    int note_pointer = 0;   // s3

    *(int *)0x30000000 = score[note_pointer] >> 8;

    for (;;)
    {
        int cur_length = *(int *)0x30000000; // t0
        if (cur_length == 0)
        {
            note_pointer++;
            cur_length = score[note_pointer] >> 8;
            *(int *)0x30000000 = cur_length;
        } // L4

        int cur_lenoc = score[note_pointer] & 0xFF; // s4
        int cur_y = 411;                            // s5
        int length = cur_length / 4;                // a2
        draw_indicator(cur_lenoc, cur_y, length);
        cur_y -= length;

        int note_cursor = note_pointer + 1; // s6
        while (cur_y > 0)                   // L5
        {
            int lenoc = score[note_cursor]; // t0
            int length = (lenoc >> 8) / 4;  // a2
            draw_indicator(lenoc & 0xFF, cur_y, length);
            cur_y -= length;
            note_cursor++;
        } // L6

        int pitch_gen_output = 0;        // t3
        if (*(int *)0xf0000000 & 1 == 1) // t4
        {
            pitch_gen_output = cur_lenoc;
        }
        else // L7
        {
            int ps2_data = *(int *)0xD0000000;     // t0
            int key_ready = ps2_data & 0x80000000; // t1
            int key_code = ps2_data & 0x000000FF;  // t2

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
        } // L8
        *(int *)0x20000000 = pitch_gen_output;
    }
}
