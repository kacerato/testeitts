package com.android.tools.r8.internal;

import com.android.tools.r8.dex.AbstractC4313m;
import com.android.tools.r8.dex.C4324y;
import java.util.Arrays;

public class BR {

    public static final boolean f38902a = true;

    public static byte[] a(int i10) {
        byte[] bArr = new byte[5];
        int i11 = i10 >> 7;
        int i12 = i10 >= 0 ? 0 : -1;
        int i13 = 0;
        boolean z10 = true;
        while (true) {
            int i14 = i11;
            int i15 = i10;
            i10 = i14;
            if (z10) {
                z10 = (i10 == i12 && (i10 & 1) == ((i15 >> 6) & 1)) ? false : true;
                int i16 = i13 + 1;
                bArr[i13] = (byte) ((i15 & 127) | (z10 ? 128 : 0));
                i11 = i10 >> 7;
                i13 = i16;
            } else {
                return Arrays.copyOf(bArr, i13);
            }
        }
    }

    public static byte[] b(int i10) {
        byte[] bArr = new byte[5];
        int i11 = i10 >>> 7;
        int i12 = 0;
        while (true) {
            int i13 = i11;
            int i14 = i10;
            i10 = i13;
            if (i10 != 0) {
                bArr[i12] = (byte) ((i14 & 127) | 128);
                i11 = i10 >>> 7;
                i12++;
            } else {
                bArr[i12] = (byte) (i14 & 127);
                return Arrays.copyOf(bArr, i12 + 1);
            }
        }
    }

    public static int c(int i10) {
        if (i10 < 0) {
            i10 = ~i10;
        }
        return (39 - Integer.numberOfLeadingZeros(i10)) / 7;
    }

    public static int d(int i10) {
        return Math.max(1, (38 - Integer.numberOfLeadingZeros(i10)) / 7);
    }

    public static int a(AbstractC4313m abstractC4313m) {
        int i10;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            byte b10 = abstractC4313m.f35894b.a().get();
            i11 |= (b10 & Byte.MAX_VALUE) << i12;
            i10 = i12 + 7;
            if ((b10 & Byte.MIN_VALUE) != -128) {
                break;
            }
            i12 = i10;
        }
        int i13 = 1 << (i12 + 6);
        if (f38902a || i10 <= 35) {
            return (i11 ^ i13) - i13;
        }
        throw new AssertionError();
    }

    public static void b(C4324y c4324y, int i10) {
        while (true) {
            int i11 = i10;
            i10 >>>= 7;
            if (i10 != 0) {
                c4324y.a((byte) ((i11 & 127) | 128));
            } else {
                c4324y.a((byte) (i11 & 127));
                return;
            }
        }
    }

    public static int b(AbstractC4313m abstractC4313m) {
        byte b10;
        int i10 = 0;
        int i11 = 0;
        do {
            b10 = abstractC4313m.f35894b.a().get();
            i10 |= (b10 & Byte.MAX_VALUE) << i11;
            i11 += 7;
        } while ((b10 & Byte.MIN_VALUE) == -128);
        boolean z10 = f38902a;
        if (!z10 && i11 > 35) {
            throw new AssertionError();
        }
        if (z10 || i10 >= 0) {
            return i10;
        }
        throw new AssertionError();
    }

    public static void a(C4324y c4324y, int i10) {
        int i11 = i10 >> 7;
        int i12 = (Integer.MIN_VALUE & i10) == 0 ? 0 : -1;
        boolean z10 = true;
        while (true) {
            int i13 = i11;
            int i14 = i10;
            i10 = i13;
            if (!z10) {
                return;
            }
            z10 = (i10 == i12 && (i10 & 1) == ((i14 >> 6) & 1)) ? false : true;
            c4324y.a((byte) ((i14 & 127) | (z10 ? 128 : 0)));
            i11 = i10 >> 7;
        }
    }
}
