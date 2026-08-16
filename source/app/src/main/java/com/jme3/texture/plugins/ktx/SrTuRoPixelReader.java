package com.jme3.texture.plugins.ktx;

import java.io.DataInput;
import java.io.IOException;
import java.nio.ByteBuffer;

public class SrTuRoPixelReader implements PixelReader {
    @Override
    public int readPixels(int i10, int i11, byte[] bArr, ByteBuffer byteBuffer, DataInput dataInput) throws IOException {
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            for (int i14 = 0; i14 < i10; i14++) {
                dataInput.readFully(bArr);
                byteBuffer.put(bArr);
                i12 += bArr.length;
            }
        }
        return i12;
    }
}
