package com.jme3.texture.image;

import com.jme3.math.ColorRGBA;
import com.jme3.texture.Image;

public abstract class ImageRaster {
    public static ImageRaster create(Image image, int i10, int i11, boolean z10) {
        return new DefaultImageRaster(image, i10, i11, z10);
    }

    public static boolean isSupported(Image.Format format) {
        return ImageCodec.isSupported(format);
    }

    public abstract int getHeight();

    public ColorRGBA getPixel(int i10, int i11) {
        return getPixel(i10, i11, null);
    }

    public abstract ColorRGBA getPixel(int i10, int i11, ColorRGBA colorRGBA);

    public abstract int getWidth();

    public abstract void setPixel(int i10, int i11, ColorRGBA colorRGBA);

    public static ImageRaster create(Image image, int i10) {
        return create(image, i10, 0, false);
    }

    public static ImageRaster create(Image image) {
        if (image.getData().size() <= 1) {
            return create(image, 0, 0, false);
        }
        throw new IllegalStateException("Use constructor that takes slices argument to read from multislice image");
    }
}
