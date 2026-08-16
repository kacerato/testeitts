package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

public abstract class S4 implements Iterable, Serializable {

    public static final S4 f62112c = new R4(A5.f61886b);

    public int f62113b = 0;

    static {
        int i10 = F4.f61913a;
    }

    public static S4 p(byte[] bArr, int i10, int i11) {
        s(i10, i10 + i11, bArr.length);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return new R4(bArr2);
    }

    public static int s(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) >= 0) {
            return i13;
        }
        if (i10 < 0) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 21);
            sb2.append("Beginning index: ");
            sb2.append(i10);
            sb2.append(" < 0");
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        if (i11 < i10) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(i10).length() + 44 + String.valueOf(i11).length());
            sb3.append("Beginning index larger than ending index: ");
            sb3.append(i10);
            sb3.append(", ");
            sb3.append(i11);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
        StringBuilder sb4 = new StringBuilder(String.valueOf(i11).length() + 15 + String.valueOf(i12).length());
        sb4.append("End index: ");
        sb4.append(i11);
        sb4.append(" >= ");
        sb4.append(i12);
        throw new IndexOutOfBoundsException(sb4.toString());
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i10 = this.f62113b;
        if (i10 == 0) {
            int l10 = l();
            i10 = o(l10, 0, l10);
            if (i10 == 0) {
                i10 = 1;
            }
            this.f62113b = i10;
        }
        return i10;
    }

    @Override
    public final Iterator iterator() {
        return new K4(this);
    }

    public abstract byte j(int i10);

    public abstract byte k(int i10);

    public abstract int l();

    public abstract S4 m(int i10, int i11);

    public abstract void n(J4 j42) throws IOException;

    public abstract int o(int i10, int i11, int i12);

    public final int r() {
        return this.f62113b;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(l()), l() <= 50 ? C12172r6.a(this) : C12172r6.a(m(0, 47)).concat("..."));
    }
}
