package com.android.tools.r8.internal;

import java.util.Objects;

public final class JM {

    public static final JM f41381c = new JM(C10585zP.f54372a, 1);

    public static final boolean f41382d = true;

    public final DP f41383a;

    public final int f41384b;

    public JM(DP dp, int i10) {
        boolean z10 = f41382d;
        if (!z10 && dp == null) {
            throw new AssertionError();
        }
        if (!z10 && i10 <= 0) {
            throw new AssertionError();
        }
        this.f41383a = dp;
        this.f41384b = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JM)) {
            return false;
        }
        JM jm2 = (JM) obj;
        return this.f41384b == jm2.f41384b && Objects.equals(this.f41383a, jm2.f41383a);
    }

    public final int hashCode() {
        return Objects.hash(this.f41383a, Integer.valueOf(this.f41384b));
    }

    public final String toString() {
        int i10;
        DP dp = this.f41383a;
        int i11 = this.f41384b;
        String str = okhttp3.v.f99450n;
        if (i11 <= 1) {
            if (!(i11 >= 0)) {
                throw new IllegalArgumentException(AbstractC4885Aq0.a("invalid count: %s", Integer.valueOf(i11)));
            }
            if (i11 == 0) {
                str = "";
            }
        } else {
            int i12 = 2;
            long j10 = 2 * i11;
            int i13 = (int) j10;
            if (i13 != j10) {
                throw new ArrayIndexOutOfBoundsException("Required array size too large: " + j10);
            }
            char[] cArr = new char[i13];
            okhttp3.v.f99450n.getChars(0, 2, cArr, 0);
            while (true) {
                i10 = i13 - i12;
                if (i12 >= i10) {
                    break;
                }
                System.arraycopy(cArr, 0, cArr, i12, i12);
                i12 <<= 1;
            }
            System.arraycopy(cArr, 0, cArr, i12, i10);
            str = new String(cArr);
        }
        return ((Object) dp) + str;
    }
}
