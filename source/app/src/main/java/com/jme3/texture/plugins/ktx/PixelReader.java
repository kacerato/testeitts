package com.jme3.texture.plugins.ktx;

import java.io.DataInput;
import java.io.IOException;
import java.nio.ByteBuffer;

public interface PixelReader {
    int readPixels(int i10, int i11, byte[] bArr, ByteBuffer byteBuffer, DataInput dataInput) throws IOException;
}
