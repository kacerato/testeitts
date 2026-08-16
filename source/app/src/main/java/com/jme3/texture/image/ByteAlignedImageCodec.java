package com.jme3.texture.image;

import java.nio.ByteBuffer;

class ByteAlignedImageCodec extends ImageCodec {
    private final int ap;
    private final int az;

    boolean f81652be;
    private final int bp;
    private final int bz;
    private final int gp;
    private final int gz;
    private final int rp;
    private final int rz;

    public ByteAlignedImageCodec(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        super(i10, i11, (int) ((1 << (i12 << 3)) - 1), (int) ((1 << (i13 << 3)) - 1), (int) ((1 << (i14 << 3)) - 1), (int) ((1 << (i15 << 3)) - 1));
        this.ap = i16;
        this.az = i12;
        this.rp = i17;
        this.rz = i13;
        this.gp = i18;
        this.gz = i14;
        this.bp = i19;
        this.bz = i15;
    }

    private static int readComponent(byte[] bArr, int i10, int i11) {
        int i12 = 0;
        for (int i13 = i11 - 1; i13 >= 0; i13--) {
            try {
                i12 = (i12 << 8) | (bArr[i10 + i13] & 255);
            } catch (ArrayIndexOutOfBoundsException e10) {
                e10.printStackTrace();
                return 0;
            }
        }
        return i12;
    }

    private static void readPixelRaw(ByteBuffer byteBuffer, int i10, int i11, byte[] bArr) {
        byteBuffer.position(i10);
        byteBuffer.get(bArr, 0, i11);
    }

    private void writeComponent(int i10, int i11, int i12, byte[] bArr) {
        int i13 = 0;
        while (i13 < i12) {
            bArr[i11] = (byte) ((i10 >> (i13 * 8)) & 255);
            i13++;
            i11++;
        }
    }

    private static void writePixelRaw(ByteBuffer byteBuffer, int i10, byte[] bArr, int i11) {
        byteBuffer.position(i10);
        byteBuffer.put(bArr, 0, i11);
    }

    @Override
    public void readComponents(ByteBuffer byteBuffer, int i10, int i11, int i12, int i13, int[] iArr, byte[] bArr) {
        int i14 = i10 + (i11 * i12);
        int i15 = this.bpp;
        readPixelRaw(byteBuffer, (i14 * i15) + i13, i15, bArr);
        iArr[0] = readComponent(bArr, this.ap, this.az);
        iArr[1] = readComponent(bArr, this.rp, this.rz);
        iArr[2] = readComponent(bArr, this.gp, this.gz);
        iArr[3] = readComponent(bArr, this.bp, this.bz);
    }

    @Override
    public void writeComponents(ByteBuffer byteBuffer, int i10, int i11, int i12, int i13, int[] iArr, byte[] bArr) {
        writeComponent(iArr[0], this.ap, this.az, bArr);
        writeComponent(iArr[1], this.rp, this.rz, bArr);
        writeComponent(iArr[2], this.gp, this.gz, bArr);
        writeComponent(iArr[3], this.bp, this.bz, bArr);
        int i14 = i10 + (i11 * i12);
        int i15 = this.bpp;
        writePixelRaw(byteBuffer, (i14 * i15) + i13, bArr, i15);
    }
}
