package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C8067kI extends AbstractC6849d0 implements Serializable {

    public final int f49569b;

    public final int f49570c;

    public final boolean f49571d;

    public final boolean f49572e;

    public final C8234lI f49573f;

    public C8067kI(C8234lI c8234lI, int i10, boolean z10, int i11, boolean z11) {
        this.f49573f = c8234lI;
        if (z10 || z11 || c8234lI.e(i10, i11) <= 0) {
            this.f49569b = i10;
            this.f49571d = z10;
            this.f49570c = i11;
            this.f49572e = z11;
            return;
        }
        throw new IllegalArgumentException("Start element (" + i10 + ") is larger than end element (" + i11 + ")");
    }

    @Override
    public final int K() {
        C7568hI a10 = a();
        if (a10 != null) {
            return a10.f48522b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC9069qI a(int i10) {
        return (!this.f49571d && this.f49573f.e(i10, this.f49569b) <= 0) ? this : new C8067kI(this.f49573f, i10, false, this.f49570c, this.f49572e);
    }

    @Override
    public final boolean add(int i10) {
        if (k(i10)) {
            return this.f49573f.add(i10);
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Element (", ") out of range [");
        a10.append(this.f49571d ? "-" : String.valueOf(this.f49569b));
        a10.append(", ");
        a10.append(this.f49572e ? "-" : String.valueOf(this.f49570c));
        a10.append(")");
        throw new IllegalArgumentException(a10.toString());
    }

    @Override
    public final void clear() {
        C7900jI c7900jI = new C7900jI(this);
        while (c7900jI.hasNext()) {
            c7900jI.r();
            c7900jI.remove();
        }
    }

    @Override
    public final Comparator comparator() {
        return this.f49573f.f49925g;
    }

    @Override
    public final InterfaceC9069qI d(int i10, int i11) {
        boolean z10 = this.f49572e;
        if (z10 && this.f49571d) {
            return new C8067kI(this.f49573f, i10, false, i11, false);
        }
        if (!z10 && this.f49573f.e(i11, this.f49570c) >= 0) {
            i11 = this.f49570c;
        }
        int i12 = i11;
        if (!this.f49571d && this.f49573f.e(i10, this.f49569b) <= 0) {
            i10 = this.f49569b;
        }
        int i13 = i10;
        return (this.f49572e || this.f49571d || i13 != this.f49569b || i12 != this.f49570c) ? new C8067kI(this.f49573f, i13, false, i12, false) : this;
    }

    @Override
    public final InterfaceC9069qI e(int i10) {
        return (!this.f49572e && this.f49573f.e(i10, this.f49570c) >= 0) ? this : new C8067kI(this.f49573f, this.f49569b, this.f49571d, i10, false);
    }

    @Override
    public final boolean h(int i10) {
        return k(i10) && this.f49573f.h(i10);
    }

    @Override
    public final boolean isEmpty() {
        C7568hI c7568hI = this.f49573f.f49922d;
        return !(a() != null);
    }

    @Override
    public final HH iterator() {
        return new C7900jI(this);
    }

    public final boolean k(int i10) {
        if (this.f49571d || this.f49573f.e(i10, this.f49569b) >= 0) {
            return this.f49572e || this.f49573f.e(i10, this.f49570c) < 0;
        }
        return false;
    }

    @Override
    public final int p() {
        C7568hI c7568hI;
        C7568hI c7568hI2;
        C8234lI c8234lI = this.f49573f;
        C7568hI c7568hI3 = c8234lI.f49920b;
        C7568hI c7568hI4 = null;
        if (c7568hI3 != null) {
            if (this.f49572e) {
                c7568hI = c8234lI.f49923e;
            } else {
                int i10 = this.f49570c;
                int i11 = 0;
                C7568hI c7568hI5 = c7568hI3;
                while (c7568hI3 != null) {
                    i11 = c8234lI.e(i10, c7568hI3.f48522b);
                    if (i11 == 0) {
                        break;
                    }
                    if (i11 < 0) {
                        if ((c7568hI3.f48525e & 1073741824) == 0) {
                            c7568hI2 = c7568hI3.f48523c;
                        }
                        c7568hI2 = null;
                    } else {
                        if ((c7568hI3.f48525e & Integer.MIN_VALUE) == 0) {
                            c7568hI2 = c7568hI3.f48524d;
                        }
                        c7568hI2 = null;
                    }
                    C7568hI c7568hI6 = c7568hI2;
                    c7568hI5 = c7568hI3;
                    c7568hI3 = c7568hI6;
                }
                c7568hI = i11 == 0 ? c7568hI3 : c7568hI5;
                if (this.f49573f.e(c7568hI.f48522b, this.f49570c) >= 0) {
                    c7568hI = c7568hI.d();
                }
            }
            if (c7568hI != null && (this.f49571d || this.f49573f.e(c7568hI.f48522b, this.f49569b) >= 0)) {
                c7568hI4 = c7568hI;
            }
        }
        if (c7568hI4 != null) {
            return c7568hI4.f48522b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean remove(int i10) {
        if (k(i10)) {
            return this.f49573f.remove(i10);
        }
        return false;
    }

    @Override
    public final int size() {
        C7900jI c7900jI = new C7900jI(this);
        int i10 = 0;
        while (c7900jI.hasNext()) {
            i10++;
            c7900jI.r();
        }
        return i10;
    }

    @Override
    public final PH iterator() {
        return new C7900jI(this);
    }

    public final C7568hI a() {
        C7568hI c7568hI;
        C7568hI c7568hI2;
        C8234lI c8234lI = this.f49573f;
        C7568hI c7568hI3 = c8234lI.f49920b;
        if (c7568hI3 == null) {
            return null;
        }
        if (this.f49571d) {
            c7568hI = c8234lI.f49922d;
        } else {
            int i10 = this.f49569b;
            int i11 = 0;
            C7568hI c7568hI4 = c7568hI3;
            while (c7568hI3 != null) {
                i11 = c8234lI.e(i10, c7568hI3.f48522b);
                if (i11 == 0) {
                    break;
                }
                if (i11 < 0) {
                    if ((c7568hI3.f48525e & 1073741824) == 0) {
                        c7568hI2 = c7568hI3.f48523c;
                    }
                    c7568hI2 = null;
                } else {
                    if ((c7568hI3.f48525e & Integer.MIN_VALUE) == 0) {
                        c7568hI2 = c7568hI3.f48524d;
                    }
                    c7568hI2 = null;
                }
                C7568hI c7568hI5 = c7568hI2;
                c7568hI4 = c7568hI3;
                c7568hI3 = c7568hI5;
            }
            c7568hI = i11 == 0 ? c7568hI3 : c7568hI4;
            if (this.f49573f.e(c7568hI.f48522b, this.f49569b) < 0) {
                c7568hI = c7568hI.b();
            }
        }
        if (c7568hI == null || (!this.f49572e && this.f49573f.e(c7568hI.f48522b, this.f49570c) >= 0)) {
            return null;
        }
        return c7568hI;
    }

    @Override
    public final Iterator iterator() {
        return new C7900jI(this);
    }
}
