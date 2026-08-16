package org.tukaani.xz.simple;

public final class ARM implements SimpleFilter {
    private final boolean isEncoder;
    private int pos;

    public ARM(boolean z10, int i10) {
        this.isEncoder = z10;
        this.pos = i10 + 8;
    }

    @Override
    public int code(byte[] bArr, int i10, int i11) {
        int i12 = (i11 + i10) - 4;
        int i13 = i10;
        while (i13 <= i12) {
            if ((bArr[i13 + 3] & 255) == 235) {
                int i14 = i13 + 2;
                int i15 = i13 + 1;
                int i16 = ((((bArr[i14] & 255) << 16) | ((bArr[i15] & 255) << 8)) | (bArr[i13] & 255)) << 2;
                int i17 = this.isEncoder ? i16 + ((this.pos + i13) - i10) : i16 - ((this.pos + i13) - i10);
                bArr[i14] = (byte) (i17 >>> 18);
                bArr[i15] = (byte) (i17 >>> 10);
                bArr[i13] = (byte) (i17 >>> 2);
            }
            i13 += 4;
        }
        int i18 = i13 - i10;
        this.pos += i18;
        return i18;
    }
}
