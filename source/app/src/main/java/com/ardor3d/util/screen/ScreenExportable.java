package com.ardor3d.util.screen;

import com.ardor3d.image.ImageDataFormat;
import java.nio.ByteBuffer;

public interface ScreenExportable {
    void export(ByteBuffer byteBuffer, int i10, int i11);

    ImageDataFormat getFormat();
}
