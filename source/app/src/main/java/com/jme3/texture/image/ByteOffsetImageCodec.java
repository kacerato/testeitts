package com.jme3.texture.image;

import java.nio.ByteBuffer;

public class ByteOffsetImageCodec extends ImageCodec {
    private final int alphaPos;
    private final int bluePos;
    private final int greenPos;
    private final int redPos;

    public ByteOffsetImageCodec(int i10, int i11, int i12, int i13, int i14, int i15) {
        super(i10, i11, i12 != -1 ? 255 : 0, i13 != -1 ? 255 : 0, i14 != -1 ? 255 : 0, i15 != -1 ? 255 : 0);
        this.alphaPos = i12;
        this.redPos = i13;
        this.greenPos = i14;
        this.bluePos = i15;
    }

    @Override
    public void readComponents(ByteBuffer byteBuffer, int i10, int i11, int i12, int i13, int[] iArr, byte[] bArr) {
        byteBuffer.position((((i11 * i12) + i10) * this.bpp) + i13);
        byteBuffer.get(bArr, 0, this.bpp);
        int i14 = this.alphaPos;
        if (i14 != -1) {
            iArr[0] = bArr[i14] & 255;
        }
        int i15 = this.redPos;
        if (i15 != -1) {
            iArr[1] = bArr[i15] & 255;
        }
        int i16 = this.greenPos;
        if (i16 != -1) {
            iArr[2] = bArr[i16] & 255;
        }
        int i17 = this.bluePos;
        if (i17 != -1) {
            iArr[3] = bArr[i17] & 255;
        }
    }

    @Override
    public void writeComponents(ByteBuffer byteBuffer, int i10, int i11, int i12, int i13, int[] iArr, byte[] bArr) {
        int i14 = (((i11 * i12) + i10) * this.bpp) + i13;
        int i15 = this.alphaPos;
        if (i15 != -1) {
            bArr[i15] = (byte) iArr[0];
        }
        int i16 = this.redPos;
        if (i16 != -1) {
            bArr[i16] = (byte) iArr[1];
        }
        int i17 = this.greenPos;
        if (i17 != -1) {
            bArr[i17] = (byte) iArr[2];
        }
        int i18 = this.bluePos;
        if (i18 != -1) {
            bArr[i18] = (byte) iArr[3];
        }
        byteBuffer.position(i14);
        byteBuffer.put(bArr, 0, this.bpp);
    }
}
