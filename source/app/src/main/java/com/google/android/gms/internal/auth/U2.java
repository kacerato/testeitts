package com.google.android.gms.internal.auth;

public final class U2 {

    public static final S2 f61671a;

    public static final int f61672b = 0;

    static {
        if (Q2.u() && Q2.v()) {
            int i10 = X0.f61678a;
        }
        f61671a = new T2();
    }

    public static int a(byte[] bArr, int i10, int i11) {
        int i12 = i11 - i10;
        byte b10 = bArr[i10 - 1];
        if (i12 != 0) {
            if (i12 == 1) {
                byte b11 = bArr[i10];
                if (b10 <= -12 && b11 <= -65) {
                    return b10 ^ (b11 << 8);
                }
            } else {
                if (i12 != 2) {
                    throw new AssertionError();
                }
                byte b12 = bArr[i10];
                byte b13 = bArr[i10 + 1];
                if (b10 <= -12 && b12 <= -65 && b13 <= -65) {
                    return ((b12 << 8) ^ b10) ^ (b13 << 16);
                }
            }
        } else if (b10 <= -12) {
            return b10;
        }
        return -1;
    }

    public static boolean b(byte[] bArr) {
        return f61671a.b(bArr, 0, bArr.length);
    }

    public static boolean c(byte[] bArr, int i10, int i11) {
        return f61671a.b(bArr, i10, i11);
    }
}
