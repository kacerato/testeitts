package com.ardor3d.util.screen;

import com.ardor3d.image.ImageDataFormat;
import com.ardor3d.image.ImageDataType;
import com.ardor3d.image.util.ImageUtils;
import com.ardor3d.renderer.Camera;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.util.geom.BufferUtils;
import java.nio.ByteBuffer;

public class ScreenExporter {
    static ByteBuffer _scratch = BufferUtils.createByteBuffer(1);

    public static synchronized void exportCurrentScreen(Renderer renderer, ScreenExportable screenExportable) {
        synchronized (ScreenExporter.class) {
            try {
                ImageDataFormat format = screenExportable.getFormat();
                Camera currentCamera = Camera.getCurrentCamera();
                int width = currentCamera.getWidth();
                int height = currentCamera.getHeight();
                int pixelByteSize = width * height * ImageUtils.getPixelByteSize(format, ImageDataType.UnsignedByte);
                if (_scratch.capacity() < pixelByteSize) {
                    _scratch = BufferUtils.createByteBuffer(pixelByteSize);
                } else {
                    _scratch.limit(pixelByteSize);
                    _scratch.rewind();
                }
                renderer.grabScreenContents(_scratch, format, 0, 0, width, height);
                screenExportable.export(_scratch, width, height);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
