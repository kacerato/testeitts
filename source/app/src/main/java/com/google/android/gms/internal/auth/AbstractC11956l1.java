package com.google.android.gms.internal.auth;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

public abstract class AbstractC11956l1 implements Iterable, Serializable {

    public static final AbstractC11956l1 f61792c = new C11944i1(H1.f61617d);

    public static final Comparator f61793d;

    public static final C11952k1 f61794e;

    public int f61795b = 0;

    static {
        int i10 = X0.f61678a;
        f61794e = new C11952k1(null);
        f61793d = new C11920c1();
    }

    public static int s(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) >= 0) {
            return i13;
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i10 + " < 0");
        }
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i10 + ", " + i11);
        }
        throw new IndexOutOfBoundsException("End index: " + i11 + " >= " + i12);
    }

    public static AbstractC11956l1 v(byte[] bArr, int i10, int i11) {
        s(i10, i10 + i11, bArr.length);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return new C11944i1(bArr2);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i10 = this.f61795b;
        if (i10 == 0) {
            int l10 = l();
            i10 = m(l10, 0, l10);
            if (i10 == 0) {
                i10 = 1;
            }
            this.f61795b = i10;
        }
        return i10;
    }

    @Override
    public final Iterator iterator() {
        return new C11916b1(this);
    }

    public abstract byte j(int i10);

    public abstract byte k(int i10);

    public abstract int l();

    public abstract int m(int i10, int i11, int i12);

    public abstract AbstractC11956l1 n(int i10, int i11);

    public abstract String o(Charset charset);

    public abstract boolean r();

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(l()), l() <= 50 ? E2.a(this) : E2.a(n(0, 47)).concat("..."));
    }

    public final int u() {
        return this.f61795b;
    }

    public final String w(Charset charset) {
        return l() == 0 ? "" : o(charset);
    }
}
