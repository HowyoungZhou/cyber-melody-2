import sys
import pathlib
from coe_writer import write_coe

if __name__ == "__main__":
    res = []
    for child in pathlib.Path(sys.argv[1]).iterdir():
        if child.suffix != '.hex':
            continue
        addr = int(child.stem, base=16) // 4
        vectors = child.read_text().splitlines(False)
        if len(res) < addr:
            res.extend(['00000000'] * (addr - len(res)))
        res[addr:addr+len(vectors)] = vectors
    write_coe(sys.argv[2], 16, [int(x, base=16) for x in res])
