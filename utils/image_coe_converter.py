import math
from sys import argv
from PIL import Image
from coe_writer import write_coe


def main():
    im = Image.open(argv[1])
    pixels = list(rgb12_pixel_generator(im))
    data = [(pixels[i] << 16) | pixels[i + 1] for i in range(0, len(pixels), 2)]
    write_coe(argv[2], 16, data)


def rgb12_pixel_generator(im):
    print(f'Image size = {im.width} x {im.height}, bands = {im.getbands()}')
    for y in range(0, im.height):
        for x in range(0, im.width):
            pixel = im.getpixel((x, y))
            rgb12_pixel = 0  # format = 0000rrrr ggggbbbb
            for i in range(0, 3):
                rgb12_pixel = rgb12_pixel | math.floor(
                    pixel[i] / 255 * 15) << 4 * (2 - i)
            yield rgb12_pixel


if __name__ == "__main__":
    main()
