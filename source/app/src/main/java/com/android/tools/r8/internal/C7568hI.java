package com.android.tools.r8.internal;

public final class C7568hI implements Cloneable {

    public int f48522b;

    public C7568hI f48523c;

    public C7568hI f48524d;

    public int f48525e;

    public C7568hI() {
    }

    public final void a(C7568hI c7568hI) {
        this.f48525e |= 1073741824;
        this.f48523c = c7568hI;
    }

    public final void b(boolean z10) {
        if (z10) {
            this.f48525e |= 1073741824;
        } else {
            this.f48525e &= -1073741825;
        }
    }

    public final boolean c() {
        return (this.f48525e & 1073741824) != 0;
    }

    public final C7568hI d() {
        C7568hI c7568hI = this.f48523c;
        if ((this.f48525e & 1073741824) == 0) {
            while ((c7568hI.f48525e & Integer.MIN_VALUE) == 0) {
                c7568hI = c7568hI.f48524d;
            }
        }
        return c7568hI;
    }

    public final boolean e() {
        return (this.f48525e & Integer.MIN_VALUE) != 0;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C7568hI) && this.f48522b == ((C7568hI) obj).f48522b;
    }

    public final int hashCode() {
        return this.f48522b;
    }

    public final String toString() {
        return String.valueOf(this.f48522b);
    }

    public C7568hI(int i10) {
        this.f48522b = i10;
        this.f48525e = -1073741824;
    }

    public final C7568hI m725clone() {
        try {
            C7568hI c7568hI = (C7568hI) super.clone();
            c7568hI.f48522b = this.f48522b;
            c7568hI.f48525e = this.f48525e;
            return c7568hI;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public final boolean a() {
        return (this.f48525e & 1) != 0;
    }

    public final void b(C7568hI c7568hI) {
        this.f48525e |= Integer.MIN_VALUE;
        this.f48524d = c7568hI;
    }

    public final void a(boolean z10) {
        if (z10) {
            this.f48525e |= 1;
        } else {
            this.f48525e &= -2;
        }
    }

    public final C7568hI b() {
        C7568hI c7568hI = this.f48524d;
        if ((this.f48525e & Integer.MIN_VALUE) == 0) {
            while ((c7568hI.f48525e & 1073741824) == 0) {
                c7568hI = c7568hI.f48523c;
            }
        }
        return c7568hI;
    }
}
