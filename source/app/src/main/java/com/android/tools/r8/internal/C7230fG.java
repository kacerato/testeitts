package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.NoSuchElementException;

public final class C7230fG extends P {

    public final int f47918b;

    public final int f47919c;

    public final boolean f47920d;

    public final boolean f47921e;

    public transient YF f47922f;

    public transient C6397aG f47923g;

    public transient ZF f47924h;

    public final C7731iG f47925i;

    public C7230fG(C7731iG c7731iG, int i10, boolean z10, int i11, boolean z11) {
        this.f47925i = c7731iG;
        if (z10 || z11 || c7731iG.c(i10, i11) <= 0) {
            this.f47918b = i10;
            this.f47920d = z10;
            this.f47919c = i11;
            this.f47921e = z11;
            c7731iG.getClass();
            return;
        }
        throw new IllegalArgumentException("Start key (" + i10 + ") is larger than end key (" + i11 + ")");
    }

    @Override
    public final boolean a(int i10) {
        return d(i10) && this.f47925i.a(i10);
    }

    @Override
    public final M30 b() {
        if (this.f47922f == null) {
            this.f47922f = new YF(this);
        }
        return this.f47922f;
    }

    @Override
    public final InterfaceC7896jG c(int i10) {
        return (!this.f47921e && this.f47925i.c(i10, this.f47919c) >= 0) ? this : new C7230fG(this.f47925i, this.f47918b, this.f47920d, i10, false);
    }

    @Override
    public final void clear() {
        C6730cG c6730cG = new C6730cG(this);
        while (c6730cG.hasNext()) {
            c6730cG.a();
            c6730cG.remove();
        }
    }

    @Override
    public final C7401gI comparator() {
        this.f47925i.getClass();
        return null;
    }

    @Override
    public final boolean containsValue(Object obj) {
        C6730cG c6730cG = new C6730cG(this);
        while (c6730cG.hasNext()) {
            Object obj2 = c6730cG.a().f42117c;
            if (obj2 == null) {
                if (obj == null) {
                    return true;
                }
            } else if (obj2.equals(obj)) {
                return true;
            }
        }
        return false;
    }

    public final boolean d(int i10) {
        if (this.f47920d || this.f47925i.c(i10, this.f47918b) >= 0) {
            return this.f47921e || this.f47925i.c(i10, this.f47919c) < 0;
        }
        return false;
    }

    @Override
    public final Object get(int i10) {
        UF d10;
        if (!d(i10) || (d10 = this.f47925i.d(i10)) == null) {
            return null;
        }
        return d10.f42117c;
    }

    public final UF i() {
        UF e10;
        C7731iG c7731iG = this.f47925i;
        if (c7731iG.f48897b == null) {
            return null;
        }
        if (this.f47920d) {
            e10 = c7731iG.f48899d;
        } else {
            e10 = c7731iG.e(this.f47918b);
            if (this.f47925i.c(e10.f42116b, this.f47918b) < 0) {
                e10 = e10.c();
            }
        }
        if (e10 == null || (!this.f47921e && this.f47925i.c(e10.f42116b, this.f47919c) >= 0)) {
            return null;
        }
        return e10;
    }

    @Override
    public final boolean isEmpty() {
        UF uf2 = this.f47925i.f48899d;
        return !(i() != null);
    }

    public final UF j() {
        UF e10;
        C7731iG c7731iG = this.f47925i;
        if (c7731iG.f48897b == null) {
            return null;
        }
        if (this.f47921e) {
            e10 = c7731iG.f48900e;
        } else {
            e10 = c7731iG.e(this.f47919c);
            if (this.f47925i.c(e10.f42116b, this.f47919c) >= 0) {
                e10 = e10.e();
            }
        }
        if (e10 == null || (!this.f47920d && this.f47925i.c(e10.f42116b, this.f47918b) < 0)) {
            return null;
        }
        return e10;
    }

    @Override
    public final InterfaceC9069qI o() {
        if (this.f47923g == null) {
            this.f47923g = new C6397aG(this);
        }
        return this.f47923g;
    }

    @Override
    public final Object remove(int i10) {
        this.f47925i.f48904i = false;
        if (!d(i10)) {
            return null;
        }
        Object remove = this.f47925i.remove(i10);
        if (this.f47925i.f48904i) {
            return remove;
        }
        return null;
    }

    @Override
    public final int size() {
        C6730cG c6730cG = new C6730cG(this);
        int i10 = 0;
        while (c6730cG.hasNext()) {
            i10++;
            c6730cG.a();
        }
        return i10;
    }

    @Override
    public final InterfaceC10028w30 values() {
        if (this.f47924h == null) {
            this.f47924h = new ZF(this);
        }
        return this.f47924h;
    }

    @Override
    public final Object a(int i10, Object obj) {
        this.f47925i.f48904i = false;
        if (!d(i10)) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Key (", ") out of range [");
            a10.append(this.f47920d ? "-" : String.valueOf(this.f47918b));
            a10.append(", ");
            a10.append(this.f47921e ? "-" : String.valueOf(this.f47919c));
            a10.append(")");
            throw new IllegalArgumentException(a10.toString());
        }
        Object a11 = this.f47925i.a(i10, obj);
        if (this.f47925i.f48904i) {
            return null;
        }
        return a11;
    }

    @Override
    public final Comparator comparator() {
        this.f47925i.getClass();
        return null;
    }

    @Override
    public final InterfaceC7896jG b(int i10) {
        return (!this.f47920d && this.f47925i.c(i10, this.f47918b) <= 0) ? this : new C7230fG(this.f47925i, i10, false, this.f47919c, this.f47921e);
    }

    @Override
    public final int d() {
        UF j10 = j();
        if (j10 != null) {
            return j10.f42116b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC7896jG a(int i10, int i11) {
        boolean z10 = this.f47921e;
        if (z10 && this.f47920d) {
            return new C7230fG(this.f47925i, i10, false, i11, false);
        }
        if (!z10 && this.f47925i.c(i11, this.f47919c) >= 0) {
            i11 = this.f47919c;
        }
        int i12 = i11;
        if (!this.f47920d && this.f47925i.c(i10, this.f47918b) <= 0) {
            i10 = this.f47918b;
        }
        int i13 = i10;
        return (this.f47921e || this.f47920d || i13 != this.f47918b || i12 != this.f47919c) ? new C7230fG(this.f47925i, i13, false, i12, false) : this;
    }

    @Override
    public final int a() {
        UF i10 = i();
        if (i10 != null) {
            return i10.f42116b;
        }
        throw new NoSuchElementException();
    }
}
