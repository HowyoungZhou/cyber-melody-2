from sys import argv
from PIL import Image
from coe_writer import write_coe
from image import rgb12_pixel_generator

def main():
    im = Image.open(argv[1])
    pixels = list(rgb12_pixel_generator(im))
    data = [(pixels[i] << 16) | pixels[i + 1] for i in range(0, len(pixels), 2)]
    write_coe(argv[2], 16, data)


if __name__ == "__main__":
    main()
