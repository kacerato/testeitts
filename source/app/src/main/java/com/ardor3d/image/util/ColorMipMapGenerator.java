package com.ardor3d.image.util;

import com.ardor3d.image.Image;
import com.ardor3d.image.ImageDataFormat;
import com.ardor3d.image.ImageDataType;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.MathUtils;
import com.ardor3d.util.Ardor3dException;
import com.ardor3d.util.geom.BufferUtils;
import java.nio.ByteBuffer;

public abstract class ColorMipMapGenerator {
    public static Image generateColorMipMap(int i10, ColorRGBA[] colorRGBAArr, ColorRGBA colorRGBA) {
        if (!MathUtils.isPowerOfTwo(i10)) {
            throw new Ardor3dException("size must be power of two!");
        }
        int log = ((int) MathUtils.log(i10, 2.0d)) + 1;
        int i11 = i10 * i10 * 4;
        int[] iArr = new int[log];
        iArr[0] = i11;
        for (int i12 = 1; i12 < log; i12++) {
            int i13 = iArr[i12 - 1] >> 1;
            iArr[i12] = i13;
            i11 += i13;
        }
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i11);
        int[] iArr2 = {(int) (colorRGBA.getRed() * 255.0f), (int) (colorRGBA.getGreen() * 255.0f), (int) (colorRGBA.getBlue() * 255.0f)};
        for (int i14 = 0; i14 < log; i14++) {
            int i15 = iArr[i14] >> 2;
            float length = ((log - i14) + colorRGBAArr.length) / log;
            for (int i16 = 0; i16 < i15; i16++) {
                if (i14 >= colorRGBAArr.length) {
                    createByteBuffer.put((byte) (iArr2[0] * length));
                    createByteBuffer.put((byte) (iArr2[1] * length));
                    createByteBuffer.put((byte) (iArr2[2] * length));
                } else {
                    createByteBuffer.put((byte) (colorRGBAArr[i14].getRed() * 255.0f));
                    createByteBuffer.put((byte) (colorRGBAArr[i14].getGreen() * 255.0f));
                    createByteBuffer.put((byte) (colorRGBAArr[i14].getBlue() * 255.0f));
                }
                createByteBuffer.put((byte) -1);
            }
        }
        createByteBuffer.rewind();
        return new Image(ImageDataFormat.RGBA, ImageDataType.UnsignedByte, i10, i10, createByteBuffer, iArr);
    }
}
