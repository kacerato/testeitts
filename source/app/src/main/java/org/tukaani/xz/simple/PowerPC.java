package org.tukaani.xz.simple;

public final class PowerPC implements SimpleFilter {
    private final boolean isEncoder;
    private int pos;

    public PowerPC(boolean z10, int i10) {
        this.isEncoder = z10;
        this.pos = i10;
    }

    @Override
    public int code(byte[] bArr, int i10, int i11) {
        int i12 = (i11 + i10) - 4;
        int i13 = i10;
        while (i13 <= i12) {
            int i14 = bArr[i13];
            if ((i14 & 252) == 72) {
                int i15 = i13 + 3;
                int i16 = bArr[i15];
                if ((i16 & 3) == 1) {
                    int i17 = i13 + 1;
                    int i18 = i13 + 2;
                    int i19 = ((i14 & 3) << 24) | ((bArr[i17] & 255) << 16) | ((bArr[i18] & 255) << 8) | (i16 & 252);
                    int i20 = this.isEncoder ? i19 + ((this.pos + i13) - i10) : i19 - ((this.pos + i13) - i10);
                    bArr[i13] = (byte) (72 | ((i20 >>> 24) & 3));
                    bArr[i17] = (byte) (i20 >>> 16);
                    bArr[i18] = (byte) (i20 >>> 8);
                    bArr[i15] = (byte) (i20 | (bArr[i15] & 3));
                }
            }
            i13 += 4;
        }
        int i21 = i13 - i10;
        this.pos += i21;
        return i21;
    }
}
