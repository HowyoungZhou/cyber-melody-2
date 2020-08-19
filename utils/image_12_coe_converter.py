from sys import argv
from PIL import Image
from coe_writer import write_coe
from image import rgb12_pixel_generator

def main():
    im = Image.open(argv[1])
    write_coe(argv[2], 16, rgb12_pixel_generator(im))


if __name__ == "__main__":
    main()
