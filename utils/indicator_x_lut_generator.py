import sys
from asm_writer import write_asm

note_offsets = {
    1: 0,
    2: 0.5,
    3: 1,
    4: 1.5,
    5: 2,
    6: 3,
    7: 3.5,
    8: 4,
    9: 4.5,
    10: 5,
    11: 5.5,
    12: 6
}

if __name__ == "__main__":
    res = [0] * 256
    base = -5*12+8
    for octave in range(10):
        for note in range(1, 13):
            x = int(base + 7*12*octave+note_offsets[note]*12)
            if x < 8 or x >= 640 - 8:
                continue
            print(f'octave = {octave}, note = {note}, x = {x}')
            res[note << 4 | octave] = x
    write_asm(sys.argv[1], res, segment_type=None)
