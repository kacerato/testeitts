package com.android.tools.r8.internal;

import java.math.RoundingMode;
import java.util.Arrays;

public final class J5 {

    public final String f41280a;

    public final char[] f41281b;

    public final int f41282c;

    public final int f41283d;

    public final int f41284e;

    public final int f41285f;

    public final byte[] f41286g;

    public J5(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        int i10 = 0;
        while (true) {
            if (i10 >= cArr.length) {
                this.f41280a = str;
                this.f41281b = cArr;
                try {
                    int length = cArr.length;
                    RoundingMode roundingMode = RoundingMode.UNNECESSARY;
                    int a10 = YH.a(length);
                    this.f41283d = a10;
                    int numberOfTrailingZeros = Integer.numberOfTrailingZeros(a10);
                    int i11 = 1 << (3 - numberOfTrailingZeros);
                    this.f41284e = i11;
                    this.f41285f = a10 >> numberOfTrailingZeros;
                    this.f41282c = cArr.length - 1;
                    this.f41286g = bArr;
                    boolean[] zArr = new boolean[i11];
                    for (int i12 = 0; i12 < this.f41285f; i12++) {
                        int i13 = this.f41283d;
                        RoundingMode roundingMode2 = RoundingMode.CEILING;
                        zArr[YH.a(i12 * 8, i13)] = true;
                    }
                    return;
                } catch (ArithmeticException e10) {
                    throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e10);
                }
            }
            char c10 = cArr[i10];
            if (!(c10 < '\u0080')) {
                throw new IllegalArgumentException(AbstractC4885Aq0.a("Non-ASCII character: %s", Character.valueOf(c10)));
            }
            if (!(bArr[c10] == -1)) {
                throw new IllegalArgumentException(AbstractC4885Aq0.a("Duplicate character: %s", Character.valueOf(c10)));
            }
            bArr[c10] = (byte) i10;
            i10++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof J5) {
            J5 j52 = (J5) obj;
            j52.getClass();
            if (Arrays.equals(this.f41281b, j52.f41281b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f41281b) + 1237;
    }

    public final String toString() {
        return this.f41280a;
    }
}
