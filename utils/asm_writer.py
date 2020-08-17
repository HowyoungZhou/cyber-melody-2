import math

def split_chunks(iter, size):
    for i in range(0, len(iter), size):
        yield iter[i:i+size]


def write_asm(path, vectors, vector_length=32, radix=16, segment_type='.data', segment_addr=0x2000, segment_size=0x1000):
    formatter = {10: '%d', 16: '%#x'}[radix]
    pesudo_op = {8: '.byte', 16: '.half', 32: '.word'}[vector_length]    
    with open(path, 'w') as f:
        segments = split_chunks(vectors,math.floor(segment_size/vector_length))
        for segment in segments:
            print('writing segment %#x' % segment_addr)
            if segment_type != None:
                f.write('%s %#x\n' % (segment_type, segment_addr))
            f.writelines([f'{pesudo_op} {formatter}\n' % v for v in segment])
            segment_addr += segment_size
