package com.android.tools.r8.internal;

import java.util.Map;

public final class C7566hH extends S implements Cloneable {

    public C7566hH f48519d;

    public C7566hH f48520e;

    public int f48521f;

    public C7566hH() {
        super(0, null);
    }

    public final void a(C7566hH c7566hH) {
        this.f48521f |= 1073741824;
        this.f48519d = c7566hH;
    }

    public final void b(boolean z10) {
        if (z10) {
            this.f48521f |= 1073741824;
        } else {
            this.f48521f &= -1073741825;
        }
    }

    public final C7566hH c() {
        C7566hH c7566hH = this.f48520e;
        if ((this.f48521f & Integer.MIN_VALUE) == 0) {
            while ((c7566hH.f48521f & 1073741824) == 0) {
                c7566hH = c7566hH.f48519d;
            }
        }
        return c7566hH;
    }

    public final boolean d() {
        return (this.f48521f & 1073741824) != 0;
    }

    public final C7566hH e() {
        C7566hH c7566hH = this.f48519d;
        if ((this.f48521f & 1073741824) == 0) {
            while ((c7566hH.f48521f & Integer.MIN_VALUE) == 0) {
                c7566hH = c7566hH.f48520e;
            }
        }
        return c7566hH;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f44050b == ((Integer) entry.getKey()).intValue() && this.f44051c == entry.getValue();
    }

    public final boolean f() {
        return (this.f48521f & Integer.MIN_VALUE) != 0;
    }

    @Override
    public final int hashCode() {
        int i10 = this.f44050b;
        Object obj = this.f44051c;
        return i10 ^ (obj == null ? 0 : System.identityHashCode(obj));
    }

    @Override
    public final Object setValue(Object obj) {
        Object obj2 = this.f44051c;
        this.f44051c = obj;
        return obj2;
    }

    @Override
    public final String toString() {
        return this.f44050b + "=>" + this.f44051c;
    }

    public C7566hH(int i10) {
        super(i10, null);
        this.f48521f = -1073741824;
    }

    public final C7566hH m724clone() {
        try {
            C7566hH c7566hH = (C7566hH) super.clone();
            c7566hH.f44050b = this.f44050b;
            c7566hH.f44051c = this.f44051c;
            c7566hH.f48521f = this.f48521f;
            return c7566hH;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public final void a(boolean z10) {
        if (z10) {
            this.f48521f |= 1;
        } else {
            this.f48521f &= -2;
        }
    }

    public final void b(C7566hH c7566hH) {
        this.f48521f |= Integer.MIN_VALUE;
        this.f48520e = c7566hH;
    }

    public final boolean b() {
        return (this.f48521f & 1) != 0;
    }
}
