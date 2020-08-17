from sys import argv
from asm_writer import write_asm


rest = 0
C = 1
CS = 2
D = 3
DS = 4
E = 5
F = 6
FS = 7
G = 8
GS = 9
A = 10
AS = 11
B = 12

lut = {
    0x0D: (C, 0),
    0x16: (CS, 0),

    0x15: (D, 0),
    0x1E: (DS, 0),

    0x1D: (E, 0),
    0x24: (F, 0),
    0x25: (FS, 0),

    0x2D: (G, 0),
    0x2E: (GS, 0),

    0x2C: (A, 0),
    0x36: (AS, 0),
    0x35: (B, 0),

    0x3C: (C, 1),
    0x3E: (CS, 1),

    0x43: (D, 1),
    0x46: (DS, 1),

    0x44: (E, 1),
    0x4D: (F, 1),
    0x4E: (FS, 1),

    0x54: (G, 1),
    0x55: (GS, 1),

    0x5B: (A, 1),
    0x66: (AS, 1),
    0x5D: (B, 1),
}


def lut_generator():
    for i in range(256):
        note, base_octave = lut.get(i, (0, 0))
        yield note << 4 | base_octave


if __name__ == "__main__":
    write_asm(argv[1], list(lut_generator()), segment_type=None)
