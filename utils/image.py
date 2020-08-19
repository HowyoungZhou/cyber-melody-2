import math

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