package com.android.tools.r8.internal;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Locale;

public abstract class AbstractC8373m8 implements Iterable, Serializable {

    public static final C7707i8 f50204c = new C7707i8(YI.f45967d);

    public static final InterfaceC7373g8 f50205d;

    public int f50206b = 0;

    static {
        f50205d = AbstractC9690u2.a() ? new C8039k8() : new C7039e8();
    }

    public static C7707i8 a(String str) {
        return new C7707i8(str.getBytes(YI.f45965b));
    }

    public abstract String a(Charset charset);

    public abstract void a(AbstractC5322Ie abstractC5322Ie);

    public abstract boolean a();

    public abstract AbstractC4916Be b();

    public final String c() {
        return size() == 0 ? "" : a(YI.f45965b);
    }

    public abstract int e(int i10, int i11);

    public abstract boolean equals(Object obj);

    public abstract AbstractC8373m8 f(int i10, int i11);

    public final int hashCode() {
        int i10 = this.f50206b;
        if (i10 == 0) {
            int size = size();
            i10 = e(size, size);
            if (i10 == 0) {
                i10 = 1;
            }
            this.f50206b = i10;
        }
        return i10;
    }

    public abstract byte j(int i10);

    public abstract byte k(int i10);

    public abstract int size();

    public final String toString() {
        String str;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int size = size();
        if (size() <= 50) {
            str = AbstractC5235Gr0.a(new C5061Dr0(this));
        } else {
            str = AbstractC5235Gr0.a(new C5061Dr0(f(0, 47))) + "...";
        }
        return "<ByteString@" + hexString + " size=" + size + " contents=\"" + str + "\">";
    }

    public static int a(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) >= 0) {
            return i13;
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException(HC.a(i10, "Beginning index: ", " < 0"));
        }
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i10 + ", " + i11);
        }
        throw new IndexOutOfBoundsException("End index: " + i11 + " >= " + i12);
    }
}
