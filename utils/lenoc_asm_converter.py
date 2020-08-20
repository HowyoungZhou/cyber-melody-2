import sys
from lenoc_parser import parse_lenoc
from asm_writer import write_asm

if __name__ == "__main__":
    res = []
    for file in sys.argv[2:]:
        print(file)
        res.extend(parse_lenoc(file))
    write_asm(sys.argv[1], res, segment_type=None)
    