package j1;

import java.math.RoundingMode;
import java.util.Arrays;
import javax.annotation.CheckForNull;

public final class D {

    public final String f92471a;

    public final char[] f92472b;

    public final int f92473c;

    public final int f92474d;

    public final int f92475e;

    public final int f92476f;

    public final byte[] f92477g;

    public final boolean f92478h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public D(String str, char[] cArr) {
        this(str, cArr, r1, false);
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i10 = 0; i10 < cArr.length; i10++) {
            char c10 = cArr[i10];
            boolean z10 = true;
            C13790n.d(c10 < '\u0080', "Non-ASCII character: %s", c10);
            if (bArr[c10] != -1) {
                z10 = false;
            }
            C13790n.d(z10, "Duplicate character: %s", c10);
            bArr[c10] = (byte) i10;
        }
    }

    public final char a(int i10) {
        return this.f92472b[i10];
    }

    public final boolean b(char c10) {
        return this.f92477g[61] != -1;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof D) {
            D d10 = (D) obj;
            boolean z10 = d10.f92478h;
            if (Arrays.equals(this.f92472b, d10.f92472b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f92472b) + 1237;
    }

    public final String toString() {
        return this.f92471a;
    }

    public D(String str, char[] cArr, byte[] bArr, boolean z10) {
        this.f92471a = str;
        cArr.getClass();
        this.f92472b = cArr;
        try {
            int length = cArr.length;
            int b10 = J.b(length, RoundingMode.UNNECESSARY);
            this.f92474d = b10;
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(b10);
            int i10 = 1 << (3 - numberOfTrailingZeros);
            this.f92475e = i10;
            this.f92476f = b10 >> numberOfTrailingZeros;
            this.f92473c = length - 1;
            this.f92477g = bArr;
            boolean[] zArr = new boolean[i10];
            for (int i11 = 0; i11 < this.f92476f; i11++) {
                zArr[J.a(i11 * 8, this.f92474d, RoundingMode.CEILING)] = true;
            }
            this.f92478h = false;
        } catch (ArithmeticException e10) {
            throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e10);
        }
    }
}
