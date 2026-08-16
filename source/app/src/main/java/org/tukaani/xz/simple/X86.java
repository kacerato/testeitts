package org.tukaani.xz.simple;

import em.l;

public final class X86 implements SimpleFilter {
    private static final boolean[] MASK_TO_ALLOWED_STATUS = {true, true, true, false, true, false, false, false};
    private static final int[] MASK_TO_BIT_NUMBER = {0, 1, 2, 2, 3, 3, 3, 3};
    private final boolean isEncoder;
    private int pos;
    private int prevMask = 0;

    public X86(boolean z10, int i10) {
        this.isEncoder = z10;
        this.pos = i10 + 5;
    }

    private static boolean test86MSByte(byte b10) {
        int i10 = b10 & 255;
        return i10 == 0 || i10 == 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x003c, code lost:
    
        if (test86MSByte(r11[(r1 + 4) - org.tukaani.xz.simple.X86.MASK_TO_BIT_NUMBER[r0]]) != false) goto L17;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int code(byte[] bArr, int i10, int i11) {
        int i12;
        int i13 = i10 - 1;
        int i14 = (i11 + i10) - 5;
        int i15 = i10;
        while (true) {
            if (i15 > i14) {
                break;
            }
            if ((bArr[i15] & l.f85913l) == 232) {
                int i16 = i15 - i13;
                if ((i16 & (-4)) != 0) {
                    this.prevMask = 0;
                } else {
                    int i17 = (this.prevMask << (i16 - 1)) & 7;
                    this.prevMask = i17;
                    if (i17 != 0) {
                        if (MASK_TO_ALLOWED_STATUS[i17]) {
                        }
                        this.prevMask = (this.prevMask << 1) | 1;
                        i13 = i15;
                    }
                }
                int i18 = i15 + 4;
                if (test86MSByte(bArr[i18])) {
                    int i19 = i15 + 1;
                    int i20 = i15 + 2;
                    int i21 = i15 + 3;
                    int i22 = (bArr[i19] & 255) | ((bArr[i20] & 255) << 8) | ((bArr[i21] & 255) << 16) | ((bArr[i18] & 255) << 24);
                    while (true) {
                        i12 = this.isEncoder ? i22 + ((this.pos + i15) - i10) : i22 - ((this.pos + i15) - i10);
                        int i23 = this.prevMask;
                        if (i23 == 0) {
                            break;
                        }
                        int i24 = MASK_TO_BIT_NUMBER[i23] * 8;
                        if (!test86MSByte((byte) (i12 >>> (24 - i24)))) {
                            break;
                        }
                        i22 = i12 ^ ((1 << (32 - i24)) - 1);
                    }
                    bArr[i19] = (byte) i12;
                    bArr[i20] = (byte) (i12 >>> 8);
                    bArr[i21] = (byte) (i12 >>> 16);
                    bArr[i18] = (byte) (~(((i12 >>> 24) & 1) - 1));
                    int i25 = i15;
                    i15 = i18;
                    i13 = i25;
                }
                this.prevMask = (this.prevMask << 1) | 1;
                i13 = i15;
            }
            i15++;
        }
        int i26 = i15 - i13;
        this.prevMask = (i26 & (-4)) == 0 ? this.prevMask << (i26 - 1) : 0;
        int i27 = i15 - i10;
        this.pos += i27;
        return i27;
    }
}
