package net.jpountz.xxhash;

import java.nio.ByteBuffer;

public final class m extends k {

    public static final k f98142a = new m();

    @Override
    public int b(ByteBuffer byteBuffer, int i10, int i11, int i12) {
        int i13;
        if (byteBuffer.hasArray()) {
            return c(byteBuffer.array(), i10 + byteBuffer.arrayOffset(), i11, i12);
        }
        net.jpountz.util.a.c(byteBuffer, i10, i11);
        ByteBuffer d10 = net.jpountz.util.a.d(byteBuffer);
        int i14 = i10 + i11;
        if (i11 >= 16) {
            int i15 = i14 - 16;
            int i16 = 606290984 + i12;
            int i17 = i12 - 2048144777;
            int i18 = i12 - (-1640531535);
            do {
                i16 = Integer.rotateLeft(i16 + (net.jpountz.util.a.i(d10, i10) * (-2048144777)), 13) * (-1640531535);
                i17 = Integer.rotateLeft(i17 + (net.jpountz.util.a.i(d10, i10 + 4) * (-2048144777)), 13) * (-1640531535);
                i12 = Integer.rotateLeft(i12 + (net.jpountz.util.a.i(d10, i10 + 8) * (-2048144777)), 13) * (-1640531535);
                i18 = Integer.rotateLeft(i18 + (net.jpountz.util.a.i(d10, i10 + 12) * (-2048144777)), 13) * (-1640531535);
                i10 += 16;
            } while (i10 <= i15);
            i13 = Integer.rotateLeft(i16, 1) + Integer.rotateLeft(i17, 7) + Integer.rotateLeft(i12, 12) + Integer.rotateLeft(i18, 18);
        } else {
            i13 = i12 + 374761393;
        }
        int i19 = i13 + i11;
        while (i10 <= i14 - 4) {
            i19 = Integer.rotateLeft(i19 + (net.jpountz.util.a.i(d10, i10) * (-1028477379)), 17) * 668265263;
            i10 += 4;
        }
        while (i10 < i14) {
            i19 = Integer.rotateLeft(i19 + ((net.jpountz.util.a.g(d10, i10) & 255) * 374761393), 11) * (-1640531535);
            i10++;
        }
        int i20 = ((i19 >>> 15) ^ i19) * (-2048144777);
        int i21 = (i20 ^ (i20 >>> 13)) * (-1028477379);
        return i21 ^ (i21 >>> 16);
    }

    @Override
    public int c(byte[] bArr, int i10, int i11, int i12) {
        int i13;
        net.jpountz.util.c.c(bArr, i10, i11);
        int i14 = i10 + i11;
        if (i11 >= 16) {
            int i15 = i14 - 16;
            int i16 = 606290984 + i12;
            int i17 = i12 - 2048144777;
            int i18 = i12 - (-1640531535);
            do {
                i16 = Integer.rotateLeft(i16 + (net.jpountz.util.c.i(bArr, i10) * (-2048144777)), 13) * (-1640531535);
                i17 = Integer.rotateLeft(i17 + (net.jpountz.util.c.i(bArr, i10 + 4) * (-2048144777)), 13) * (-1640531535);
                i12 = Integer.rotateLeft(i12 + (net.jpountz.util.c.i(bArr, i10 + 8) * (-2048144777)), 13) * (-1640531535);
                i18 = Integer.rotateLeft(i18 + (net.jpountz.util.c.i(bArr, i10 + 12) * (-2048144777)), 13) * (-1640531535);
                i10 += 16;
            } while (i10 <= i15);
            i13 = Integer.rotateLeft(i16, 1) + Integer.rotateLeft(i17, 7) + Integer.rotateLeft(i12, 12) + Integer.rotateLeft(i18, 18);
        } else {
            i13 = i12 + 374761393;
        }
        int i19 = i13 + i11;
        while (i10 <= i14 - 4) {
            i19 = Integer.rotateLeft(i19 + (net.jpountz.util.c.i(bArr, i10) * (-1028477379)), 17) * 668265263;
            i10 += 4;
        }
        while (i10 < i14) {
            i19 = Integer.rotateLeft(i19 + ((net.jpountz.util.c.d(bArr, i10) & 255) * 374761393), 11) * (-1640531535);
            i10++;
        }
        int i20 = ((i19 >>> 15) ^ i19) * (-2048144777);
        int i21 = (i20 ^ (i20 >>> 13)) * (-1028477379);
        return i21 ^ (i21 >>> 16);
    }
}
