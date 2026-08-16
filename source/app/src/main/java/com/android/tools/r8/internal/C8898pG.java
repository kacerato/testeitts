package com.android.tools.r8.internal;

import java.util.Map;

public final class C8898pG extends S implements Cloneable {

    public C8898pG f51482d;

    public C8898pG f51483e;

    public int f51484f;

    public C8898pG() {
        super(0, null);
    }

    public final void a(boolean z10) {
        if (z10) {
            this.f51484f |= 1073741824;
        } else {
            this.f51484f &= -1073741825;
        }
    }

    public final void b(boolean z10) {
        if (z10) {
            this.f51484f |= Integer.MIN_VALUE;
        } else {
            this.f51484f &= Integer.MAX_VALUE;
        }
    }

    public final boolean c() {
        return (this.f51484f & 1073741824) != 0;
    }

    public final C8898pG d() {
        C8898pG c8898pG = this.f51482d;
        if ((this.f51484f & 1073741824) == 0) {
            while ((c8898pG.f51484f & Integer.MIN_VALUE) == 0) {
                c8898pG = c8898pG.f51483e;
            }
        }
        return c8898pG;
    }

    public final boolean e() {
        return (this.f51484f & Integer.MIN_VALUE) != 0;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f44050b == ((Integer) entry.getKey()).intValue() && this.f44051c == entry.getValue();
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

    public C8898pG(int i10) {
        super(i10, null);
        this.f51484f = -1073741824;
    }

    public final C8898pG m741clone() {
        try {
            C8898pG c8898pG = (C8898pG) super.clone();
            c8898pG.f44050b = this.f44050b;
            c8898pG.f44051c = this.f44051c;
            c8898pG.f51484f = this.f51484f;
            return c8898pG;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public final void a(C8898pG c8898pG) {
        this.f51484f |= 1073741824;
        this.f51482d = c8898pG;
    }

    public final void b(C8898pG c8898pG) {
        this.f51484f |= Integer.MIN_VALUE;
        this.f51483e = c8898pG;
    }

    public final void a(int i10) {
        this.f51484f = (i10 & 255) | (this.f51484f & (-256));
    }

    public final C8898pG b() {
        C8898pG c8898pG = this.f51483e;
        if ((this.f51484f & Integer.MIN_VALUE) == 0) {
            while ((c8898pG.f51484f & 1073741824) == 0) {
                c8898pG = c8898pG.f51482d;
            }
        }
        return c8898pG;
    }
}
