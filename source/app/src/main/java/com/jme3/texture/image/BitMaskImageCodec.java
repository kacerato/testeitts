package com.jme3.texture.image;

import java.nio.ByteBuffer;

class BitMaskImageCodec extends ImageCodec {
    final int as;

    boolean f81651be;
    final int bs;
    final int gs;
    final int rs;

    public BitMaskImageCodec(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        super(i10, i11, (int) ((1 << i12) - 1), (int) ((1 << i13) - 1), (int) ((1 << i14) - 1), (int) ((1 << i15) - 1));
        this.f81651be = false;
        if (i10 > 4) {
            throw new UnsupportedOperationException("Use ByteAlignedImageCodec for codecs with pixel sizes larger than 4 bytes");
        }
        this.as = i16;
        this.rs = i17;
        this.gs = i18;
        this.bs = i19;
    }

    private static int readPixelRaw(ByteBuffer byteBuffer, int i10, int i11) {
        byteBuffer.position(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            i12 |= (byteBuffer.get() & 255) << (i13 * 8);
        }
        return i12;
    }

    private void writePixelRaw(ByteBuffer byteBuffer, int i10, int i11, int i12) {
        byteBuffer.position(i10);
        for (int i13 = 0; i13 < i12; i13++) {
            byteBuffer.put((byte) ((i11 >> (i13 * 8)) & 255));
        }
    }

    @Override
    public void readComponents(ByteBuffer byteBuffer, int i10, int i11, int i12, int i13, int[] iArr, byte[] bArr) {
        int i14 = i10 + (i11 * i12);
        int i15 = this.bpp;
        int readPixelRaw = readPixelRaw(byteBuffer, (i14 * i15) + i13, i15);
        iArr[0] = (readPixelRaw >> this.as) & this.maxAlpha;
        iArr[1] = (readPixelRaw >> this.rs) & this.maxRed;
        iArr[2] = (readPixelRaw >> this.gs) & this.maxGreen;
        iArr[3] = (readPixelRaw >> this.bs) & this.maxBlue;
    }

    @Override
    public void writeComponents(ByteBuffer byteBuffer, int i10, int i11, int i12, int i13, int[] iArr, byte[] bArr) {
        int i14 = ((iArr[3] & this.maxBlue) << this.bs) | ((iArr[0] & this.maxAlpha) << this.as) | ((iArr[1] & this.maxRed) << this.rs) | ((iArr[2] & this.maxGreen) << this.gs);
        int i15 = i10 + (i11 * i12);
        int i16 = this.bpp;
        writePixelRaw(byteBuffer, (i15 * i16) + i13, i14, i16);
    }
}
