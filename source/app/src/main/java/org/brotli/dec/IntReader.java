package org.brotli.dec;

final class IntReader {
    private byte[] byteBuffer;
    private int[] intBuffer;

    public static void convert(IntReader intReader, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int[] iArr = intReader.intBuffer;
            byte[] bArr = intReader.byteBuffer;
            int i12 = i11 * 4;
            iArr[i11] = ((bArr[i12 + 3] & 255) << 24) | (bArr[i12] & 255) | ((bArr[i12 + 1] & 255) << 8) | ((bArr[i12 + 2] & 255) << 16);
        }
    }

    public static void init(IntReader intReader, byte[] bArr, int[] iArr) {
        intReader.byteBuffer = bArr;
        intReader.intBuffer = iArr;
    }
}
