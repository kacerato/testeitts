package com.ardor3d.image.util;

import com.ardor3d.image.Image;
import com.ardor3d.image.ImageDataFormat;
import com.ardor3d.image.ImageDataType;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.MathUtils;
import com.ardor3d.math.functions.Function3D;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.util.geom.BufferUtils;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public abstract class GeneratedImageFactory {
    static final boolean $assertionsDisabled = false;

    public static Image create1DColorImage(boolean z10, ReadOnlyColorRGBA... readOnlyColorRGBAArr) {
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(readOnlyColorRGBAArr.length * (z10 ? 4 : 3));
        for (ReadOnlyColorRGBA readOnlyColorRGBA : readOnlyColorRGBAArr) {
            createByteBuffer.put((byte) (readOnlyColorRGBA.getRed() * 255.0f));
            createByteBuffer.put((byte) (readOnlyColorRGBA.getGreen() * 255.0f));
            createByteBuffer.put((byte) (readOnlyColorRGBA.getBlue() * 255.0f));
            if (z10) {
                createByteBuffer.put((byte) (readOnlyColorRGBA.getAlpha() * 255.0f));
            }
        }
        createByteBuffer.rewind();
        return new Image(z10 ? ImageDataFormat.RGBA : ImageDataFormat.RGB, ImageDataType.UnsignedByte, readOnlyColorRGBAArr.length, 1, createByteBuffer, (int[]) null);
    }

    public static Image createColorImageFromLuminance8(Image image, boolean z10, ReadOnlyColorRGBA... readOnlyColorRGBAArr) {
        ArrayList arrayList = new ArrayList(image.getDepth());
        for (int i10 = 0; i10 < image.getDepth(); i10++) {
            ByteBuffer data = image.getData(i10);
            int capacity = data.capacity();
            ByteBuffer createByteBuffer = BufferUtils.createByteBuffer((z10 ? 4 : 3) * capacity);
            byte[] bArr = new byte[createByteBuffer.capacity()];
            int i11 = 0;
            for (int i12 = 0; i12 < capacity; i12++) {
                ReadOnlyColorRGBA readOnlyColorRGBA = readOnlyColorRGBAArr[data.get(i12) & 255];
                bArr[i11] = (byte) (readOnlyColorRGBA.getRed() * 255.0f);
                bArr[i11 + 1] = (byte) (readOnlyColorRGBA.getGreen() * 255.0f);
                int i13 = i11 + 3;
                bArr[i11 + 2] = (byte) (readOnlyColorRGBA.getBlue() * 255.0f);
                if (z10) {
                    i11 += 4;
                    bArr[i13] = (byte) (readOnlyColorRGBA.getAlpha() * 255.0f);
                } else {
                    i11 = i13;
                }
            }
            createByteBuffer.put(bArr);
            arrayList.add(createByteBuffer);
        }
        return new Image(z10 ? ImageDataFormat.RGBA : ImageDataFormat.RGB, ImageDataType.UnsignedByte, image.getWidth(), image.getHeight(), arrayList, (int[]) null);
    }

    public static Image createLuminance8Image(Function3D function3D, int i10, int i11, int i12) {
        return createLuminance8Image(function3D, i10, i11, i12, i10 == 1 ? 0.0d : -1.0d, i10 == 1 ? 0.0d : 1.0d, i11 == 1 ? 0.0d : -1.0d, i11 == 1 ? 0.0d : 1.0d, i12 == 1 ? 0.0d : -1.0d, i12 == 1 ? 0.0d : 1.0d, -1.0d, 1.0d);
    }

    public static Image createSolidColorImage(ReadOnlyColorRGBA readOnlyColorRGBA, boolean z10, int i10) {
        int i11 = i10 * i10;
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer((z10 ? 4 : 3) * i11);
        byte[] bArr = new byte[z10 ? 4 : 3];
        bArr[0] = (byte) (readOnlyColorRGBA.getRed() * 255.0f);
        bArr[1] = (byte) (readOnlyColorRGBA.getGreen() * 255.0f);
        bArr[2] = (byte) (readOnlyColorRGBA.getBlue() * 255.0f);
        if (z10) {
            bArr[3] = (byte) (readOnlyColorRGBA.getAlpha() * 255.0f);
        }
        for (int i12 = 0; i12 < i11; i12++) {
            createByteBuffer.put(bArr);
        }
        createByteBuffer.rewind();
        return new Image(z10 ? ImageDataFormat.RGBA : ImageDataFormat.RGB, ImageDataType.UnsignedByte, i10, i10, createByteBuffer, (int[]) null);
    }

    public static void fillInColorTable(ReadOnlyColorRGBA[] readOnlyColorRGBAArr) {
        int i10 = 0;
        if (readOnlyColorRGBAArr[0] == null) {
            readOnlyColorRGBAArr[0] = ColorRGBA.BLACK;
        }
        if (readOnlyColorRGBAArr[255] == null) {
            readOnlyColorRGBAArr[255] = ColorRGBA.WHITE;
        }
        int findNonNull = findNonNull(1, readOnlyColorRGBAArr);
        for (int i11 = 1; i11 < 255; i11++) {
            if (readOnlyColorRGBAArr[i11] != null) {
                int findNonNull2 = findNonNull(i11 + 1, readOnlyColorRGBAArr);
                if (findNonNull2 == -1) {
                    return;
                }
                findNonNull = findNonNull2;
                i10 = i11;
            } else {
                readOnlyColorRGBAArr[i11] = ColorRGBA.lerp(readOnlyColorRGBAArr[i10], readOnlyColorRGBAArr[findNonNull], (i11 - i10) / (findNonNull - i10), null);
            }
        }
    }

    private static int findNonNull(int i10, ReadOnlyColorRGBA[] readOnlyColorRGBAArr) {
        while (i10 < readOnlyColorRGBAArr.length) {
            if (readOnlyColorRGBAArr[i10] != null) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static Image createLuminance8Image(Function3D function3D, int i10, int i11, int i12, double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17) {
        double d18 = 1.0d / (d17 - d16);
        ArrayList arrayList = new ArrayList(i12);
        int i13 = i10 * i11;
        byte[] bArr = new byte[i13];
        double d19 = 0.0d;
        while (true) {
            double d20 = i12;
            if (d19 < d20) {
                double d21 = ((d19 / d20) * (d15 - d14)) + d14;
                int i14 = 0;
                double d22 = 0.0d;
                while (true) {
                    double d23 = i11;
                    if (d22 < d23) {
                        double d24 = ((d22 / d23) * (d13 - d12)) + d12;
                        int i15 = i14;
                        double d25 = 0.0d;
                        while (true) {
                            if (d25 < i10) {
                                bArr[i15] = (byte) ((MathUtils.clamp(function3D.eval(((d25 / r3) * (d11 - d10)) + d10, d24, d21), d16, d17) - d16) * d18 * 255.0d);
                                d25 += 1.0d;
                                i15++;
                            }
                        }
                        d22 += 1.0d;
                        i14 = i15;
                    }
                }
                ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i13);
                createByteBuffer.put(bArr);
                arrayList.add(createByteBuffer);
                d19 += 1.0d;
            } else {
                return new Image(ImageDataFormat.Luminance, ImageDataType.UnsignedByte, i10, i11, arrayList, (int[]) null);
            }
        }
    }
}
