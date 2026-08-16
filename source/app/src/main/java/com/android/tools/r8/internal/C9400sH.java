package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.NoSuchElementException;

public final class C9400sH extends V {

    public final int f52325b;

    public final int f52326c;

    public final boolean f52327d;

    public final boolean f52328e;

    public transient C8232lH f52329f;

    public transient C8566nH f52330g;

    public transient C8399mH f52331h;

    public final C9901vH f52332i;

    public C9400sH(C9901vH c9901vH, int i10, boolean z10, int i11, boolean z11) {
        this.f52332i = c9901vH;
        if (z10 || z11 || c9901vH.c(i10, i11) <= 0) {
            this.f52325b = i10;
            this.f52327d = z10;
            this.f52326c = i11;
            this.f52328e = z11;
            c9901vH.getClass();
            return;
        }
        throw new IllegalArgumentException("Start key (" + i10 + ") is larger than end key (" + i11 + ")");
    }

    @Override
    public final boolean a(int i10) {
        return d(i10) && this.f52332i.a(i10);
    }

    @Override
    public final InterfaceC10068wH b(int i10) {
        return (!this.f52327d && this.f52332i.c(i10, this.f52325b) <= 0) ? this : new C9400sH(this.f52332i, i10, false, this.f52326c, this.f52328e);
    }

    @Override
    public final M30 c() {
        if (this.f52329f == null) {
            this.f52329f = new C8232lH(this);
        }
        return this.f52329f;
    }

    @Override
    public final void clear() {
        C8900pH c8900pH = new C8900pH(this);
        while (c8900pH.hasNext()) {
            c8900pH.a();
            c8900pH.remove();
        }
    }

    @Override
    public final C7401gI comparator() {
        this.f52332i.getClass();
        return null;
    }

    @Override
    public final boolean containsValue(Object obj) {
        C8900pH c8900pH = new C8900pH(this);
        while (c8900pH.hasNext()) {
            if (c8900pH.a().f44051c == obj) {
                return true;
            }
        }
        return false;
    }

    public final boolean d(int i10) {
        if (this.f52327d || this.f52332i.c(i10, this.f52325b) >= 0) {
            return this.f52328e || this.f52332i.c(i10, this.f52326c) < 0;
        }
        return false;
    }

    @Override
    public final Object get(int i10) {
        C7566hH d10;
        if (!d(i10) || (d10 = this.f52332i.d(i10)) == null) {
            return null;
        }
        return d10.f44051c;
    }

    public final C7566hH i() {
        C7566hH e10;
        C9901vH c9901vH = this.f52332i;
        if (c9901vH.f53065b == null) {
            return null;
        }
        if (this.f52327d) {
            e10 = c9901vH.f53067d;
        } else {
            e10 = c9901vH.e(this.f52325b);
            if (this.f52332i.c(e10.f44050b, this.f52325b) < 0) {
                e10 = e10.c();
            }
        }
        if (e10 == null || (!this.f52328e && this.f52332i.c(e10.f44050b, this.f52326c) >= 0)) {
            return null;
        }
        return e10;
    }

    @Override
    public final boolean isEmpty() {
        C7566hH c7566hH = this.f52332i.f53067d;
        return !(i() != null);
    }

    public final C7566hH j() {
        C7566hH e10;
        C9901vH c9901vH = this.f52332i;
        if (c9901vH.f53065b == null) {
            return null;
        }
        if (this.f52328e) {
            e10 = c9901vH.f53068e;
        } else {
            e10 = c9901vH.e(this.f52326c);
            if (this.f52332i.c(e10.f44050b, this.f52326c) >= 0) {
                e10 = e10.e();
            }
        }
        if (e10 == null || (!this.f52327d && this.f52332i.c(e10.f44050b, this.f52325b) < 0)) {
            return null;
        }
        return e10;
    }

    @Override
    public final InterfaceC9069qI o() {
        if (this.f52330g == null) {
            this.f52330g = new C8566nH(this);
        }
        return this.f52330g;
    }

    @Override
    public final Object remove(int i10) {
        this.f52332i.f53072i = false;
        if (!d(i10)) {
            return null;
        }
        Object remove = this.f52332i.remove(i10);
        if (this.f52332i.f53072i) {
            return remove;
        }
        return null;
    }

    @Override
    public final int size() {
        C8900pH c8900pH = new C8900pH(this);
        int i10 = 0;
        while (c8900pH.hasNext()) {
            i10++;
            c8900pH.a();
        }
        return i10;
    }

    @Override
    public final InterfaceC5667Od0 values() {
        if (this.f52331h == null) {
            this.f52331h = new C8399mH(this);
        }
        return this.f52331h;
    }

    @Override
    public final Object a(int i10, Object obj) {
        this.f52332i.f53072i = false;
        if (!d(i10)) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Key (", ") out of range [");
            a10.append(this.f52327d ? "-" : String.valueOf(this.f52325b));
            a10.append(", ");
            a10.append(this.f52328e ? "-" : String.valueOf(this.f52326c));
            a10.append(")");
            throw new IllegalArgumentException(a10.toString());
        }
        Object a11 = this.f52332i.a(i10, obj);
        if (this.f52332i.f53072i) {
            return null;
        }
        return a11;
    }

    @Override
    public final Comparator comparator() {
        this.f52332i.getClass();
        return null;
    }

    @Override
    public final InterfaceC10068wH c(int i10) {
        return (!this.f52328e && this.f52332i.c(i10, this.f52326c) >= 0) ? this : new C9400sH(this.f52332i, this.f52325b, this.f52327d, i10, false);
    }

    @Override
    public final int d() {
        C7566hH j10 = j();
        if (j10 != null) {
            return j10.f44050b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC10068wH a(int i10, int i11) {
        boolean z10 = this.f52328e;
        if (z10 && this.f52327d) {
            return new C9400sH(this.f52332i, i10, false, i11, false);
        }
        if (!z10 && this.f52332i.c(i11, this.f52326c) >= 0) {
            i11 = this.f52326c;
        }
        int i12 = i11;
        if (!this.f52327d && this.f52332i.c(i10, this.f52325b) <= 0) {
            i10 = this.f52325b;
        }
        int i13 = i10;
        return (this.f52328e || this.f52327d || i13 != this.f52325b || i12 != this.f52326c) ? new C9400sH(this.f52332i, i13, false, i12, false) : this;
    }

    @Override
    public final int a() {
        C7566hH i10 = i();
        if (i10 != null) {
            return i10.f44050b;
        }
        throw new NoSuchElementException();
    }
}
