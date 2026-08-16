package com.jme3.texture.plugins;

import com.jme3.texture.Image;
import com.jme3.util.BufferUtils;
import java.nio.ByteBuffer;

public class ImageFlipper {
    private ImageFlipper() {
    }

    public static void flipImage(Image image, int i10) {
        if (image.getFormat().isCompressed()) {
            throw new UnsupportedOperationException("Flipping compressed images is unsupported.");
        }
        int width = image.getWidth();
        int height = image.getHeight() / 2;
        int bitsPerPixel = width * (image.getFormat().getBitsPerPixel() / 8);
        ByteBuffer data = image.getData(i10);
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(bitsPerPixel);
        data.rewind();
        for (int i11 = 0; i11 < height; i11++) {
            data.position(i11 * bitsPerPixel);
            data.limit(data.position() + bitsPerPixel);
            createByteBuffer.rewind();
            createByteBuffer.put(data);
        }
    }
}
