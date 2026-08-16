package com.android.tools.r8.internal;

public final class C8874p8 {

    public byte[] f51446a;

    public int f51447b;

    public C8874p8() {
        this.f51446a = new byte[64];
    }

    public final void a(int i10, int i11) {
        int i12 = this.f51447b;
        int i13 = i12 + 2;
        if (i13 > this.f51446a.length) {
            a(2);
        }
        byte[] bArr = this.f51446a;
        bArr[i12] = (byte) i10;
        bArr[i12 + 1] = (byte) i11;
        this.f51447b = i13;
    }

    public final C8874p8 b(int i10) {
        int i11 = this.f51447b;
        int i12 = i11 + 1;
        if (i12 > this.f51446a.length) {
            a(1);
        }
        this.f51446a[i11] = (byte) i10;
        this.f51447b = i12;
        return this;
    }

    public final C8874p8 c(int i10, int i11) {
        int i12 = this.f51447b;
        int i13 = i12 + 3;
        if (i13 > this.f51446a.length) {
            a(3);
        }
        byte[] bArr = this.f51446a;
        bArr[i12] = (byte) i10;
        bArr[i12 + 1] = (byte) (i11 >>> 8);
        bArr[i12 + 2] = (byte) i11;
        this.f51447b = i13;
        return this;
    }

    public final C8874p8 d(int i10) {
        int i11 = this.f51447b;
        int i12 = i11 + 2;
        if (i12 > this.f51446a.length) {
            a(2);
        }
        byte[] bArr = this.f51446a;
        bArr[i11] = (byte) (i10 >>> 8);
        bArr[i11 + 1] = (byte) i10;
        this.f51447b = i12;
        return this;
    }

    public C8874p8(int i10) {
        this.f51446a = new byte[i10];
    }

    public C8874p8(byte[] bArr) {
        this.f51446a = bArr;
        this.f51447b = bArr.length;
    }

    public final void b(int i10, int i11) {
        int i12 = this.f51447b;
        int i13 = i12 + 4;
        if (i13 > this.f51446a.length) {
            a(4);
        }
        byte[] bArr = this.f51446a;
        bArr[i12] = (byte) 15;
        bArr[i12 + 1] = (byte) i10;
        bArr[i12 + 2] = (byte) (i11 >>> 8);
        bArr[i12 + 3] = (byte) i11;
        this.f51447b = i13;
    }

    public final void a(int i10, int i11, int i12) {
        int i13 = this.f51447b;
        int i14 = i13 + 5;
        if (i14 > this.f51446a.length) {
            a(5);
        }
        byte[] bArr = this.f51446a;
        bArr[i13] = (byte) i10;
        bArr[i13 + 1] = (byte) (i11 >>> 8);
        bArr[i13 + 2] = (byte) i11;
        bArr[i13 + 3] = (byte) (i12 >>> 8);
        bArr[i13 + 4] = (byte) i12;
        this.f51447b = i14;
    }

    public final C8874p8 c(int i10) {
        int i11 = this.f51447b;
        int i12 = i11 + 4;
        if (i12 > this.f51446a.length) {
            a(4);
        }
        byte[] bArr = this.f51446a;
        bArr[i11] = (byte) (i10 >>> 24);
        bArr[i11 + 1] = (byte) (i10 >>> 16);
        bArr[i11 + 2] = (byte) (i10 >>> 8);
        bArr[i11 + 3] = (byte) i10;
        this.f51447b = i12;
        return this;
    }

    public final C8874p8 a(String str, int i10, int i11) {
        int length = str.length();
        int i12 = i10;
        int i13 = i12;
        while (i12 < length) {
            char charAt = str.charAt(i12);
            i13 = (charAt < 1 || charAt > '\u007f') ? charAt <= '\u07ff' ? i13 + 2 : i13 + 3 : i13 + 1;
            i12++;
        }
        if (i13 <= i11) {
            int i14 = this.f51447b;
            int i15 = i14 - i10;
            int i16 = i15 - 2;
            if (i16 >= 0) {
                byte[] bArr = this.f51446a;
                bArr[i16] = (byte) (i13 >>> 8);
                bArr[i15 - 1] = (byte) i13;
            }
            if ((i14 + i13) - i10 > this.f51446a.length) {
                a(i13 - i10);
            }
            int i17 = this.f51447b;
            while (i10 < length) {
                char charAt2 = str.charAt(i10);
                if (charAt2 >= 1 && charAt2 <= '\u007f') {
                    this.f51446a[i17] = (byte) charAt2;
                    i17++;
                } else if (charAt2 <= '\u07ff') {
                    byte[] bArr2 = this.f51446a;
                    int i18 = i17 + 1;
                    bArr2[i17] = (byte) (((charAt2 >> 6) & 31) | 192);
                    i17 += 2;
                    bArr2[i18] = (byte) ((charAt2 & '?') | 128);
                } else {
                    byte[] bArr3 = this.f51446a;
                    bArr3[i17] = (byte) (((charAt2 >> '\f') & 15) | 224);
                    int i19 = i17 + 2;
                    bArr3[i17 + 1] = (byte) (((charAt2 >> 6) & 63) | 128);
                    i17 += 3;
                    bArr3[i19] = (byte) ((charAt2 & '?') | 128);
                }
                i10++;
            }
            this.f51447b = i17;
            return this;
        }
        throw new IllegalArgumentException("UTF8 string too large");
    }

    public final C8874p8 a(byte[] bArr, int i10, int i11) {
        if (this.f51447b + i11 > this.f51446a.length) {
            a(i11);
        }
        if (bArr != null) {
            System.arraycopy(bArr, i10, this.f51446a, this.f51447b, i11);
        }
        this.f51447b += i11;
        return this;
    }

    public final void a(int i10) {
        int i11 = this.f51447b;
        byte[] bArr = this.f51446a;
        if (i11 <= bArr.length) {
            int length = bArr.length * 2;
            int i12 = i10 + i11;
            if (length <= i12) {
                length = i12;
            }
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, i11);
            this.f51446a = bArr2;
            return;
        }
        throw new AssertionError((Object) "Internal error");
    }
}
