package org.bouncycastle.util;

import Ii.P;
import Ii.Q;

public class i {

    public static char[] f102328b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public final byte[] f102329a;

    public i(byte[] bArr) {
        this(bArr, 160);
    }

    public static byte[] a(byte[] bArr) {
        return b(bArr, 160);
    }

    public static byte[] b(byte[] bArr, int i10) {
        if (i10 % 8 != 0) {
            throw new IllegalArgumentException("bitLength must be a multiple of 8");
        }
        Q q10 = new Q(256);
        q10.update(bArr, 0, bArr.length);
        int i11 = i10 / 8;
        byte[] bArr2 = new byte[i11];
        q10.e(bArr2, 0, i11);
        return bArr2;
    }

    public static byte[] c(byte[] bArr) {
        P p10 = new P(160);
        p10.update(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[p10.f()];
        p10.c(bArr2, 0);
        return bArr2;
    }

    public byte[] d() {
        return a.p(this.f102329a);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            return a.g(((i) obj).f102329a, this.f102329a);
        }
        return false;
    }

    public int hashCode() {
        return a.t0(this.f102329a);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 != this.f102329a.length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(b3.s.f32937c);
            }
            stringBuffer.append(f102328b[(this.f102329a[i10] >>> 4) & 15]);
            stringBuffer.append(f102328b[this.f102329a[i10] & 15]);
        }
        return stringBuffer.toString();
    }

    public i(byte[] bArr, int i10) {
        this.f102329a = b(bArr, i10);
    }

    public i(byte[] bArr, boolean z10) {
        if (z10) {
            this.f102329a = c(bArr);
        } else {
            this.f102329a = a(bArr);
        }
    }
}
