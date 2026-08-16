package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.NoSuchElementException;

public final class AG extends V {

    public final int f38578b;

    public final int f38579c;

    public final boolean f38580d;

    public final boolean f38581e;

    public transient C9565tG f38582f;

    public transient C9899vG f38583g;

    public transient C9732uG f38584h;

    public final DG f38585i;

    public AG(DG dg2, int i10, boolean z10, int i11, boolean z11) {
        this.f38585i = dg2;
        if (z10 || z11 || dg2.c(i10, i11) <= 0) {
            this.f38578b = i10;
            this.f38580d = z10;
            this.f38579c = i11;
            this.f38581e = z11;
            dg2.getClass();
            return;
        }
        throw new IllegalArgumentException("Start key (" + i10 + ") is larger than end key (" + i11 + ")");
    }

    @Override
    public final boolean a(int i10) {
        return d(i10) && this.f38585i.a(i10);
    }

    @Override
    public final InterfaceC10068wH b(int i10) {
        return (!this.f38580d && this.f38585i.c(i10, this.f38578b) <= 0) ? this : new AG(this.f38585i, i10, false, this.f38579c, this.f38581e);
    }

    @Override
    public final M30 c() {
        if (this.f38582f == null) {
            this.f38582f = new C9565tG(this);
        }
        return this.f38582f;
    }

    @Override
    public final void clear() {
        C10233xG c10233xG = new C10233xG(this);
        while (c10233xG.hasNext()) {
            c10233xG.a();
            c10233xG.remove();
        }
    }

    @Override
    public final C7401gI comparator() {
        this.f38585i.getClass();
        return null;
    }

    @Override
    public final boolean containsValue(Object obj) {
        C10233xG c10233xG = new C10233xG(this);
        while (c10233xG.hasNext()) {
            if (c10233xG.a().f44051c == obj) {
                return true;
            }
        }
        return false;
    }

    public final boolean d(int i10) {
        if (this.f38580d || this.f38585i.c(i10, this.f38578b) >= 0) {
            return this.f38581e || this.f38585i.c(i10, this.f38579c) < 0;
        }
        return false;
    }

    @Override
    public final Object get(int i10) {
        C8898pG d10;
        if (!d(i10) || (d10 = this.f38585i.d(i10)) == null) {
            return null;
        }
        return d10.f44051c;
    }

    public final C8898pG i() {
        C8898pG e10;
        DG dg2 = this.f38585i;
        if (dg2.f39473b == null) {
            return null;
        }
        if (this.f38580d) {
            e10 = dg2.f39475d;
        } else {
            e10 = dg2.e(this.f38578b);
            if (this.f38585i.c(e10.f44050b, this.f38578b) < 0) {
                e10 = e10.b();
            }
        }
        if (e10 == null || (!this.f38581e && this.f38585i.c(e10.f44050b, this.f38579c) >= 0)) {
            return null;
        }
        return e10;
    }

    @Override
    public final boolean isEmpty() {
        C8898pG c8898pG = this.f38585i.f39475d;
        return !(i() != null);
    }

    public final C8898pG j() {
        C8898pG e10;
        DG dg2 = this.f38585i;
        if (dg2.f39473b == null) {
            return null;
        }
        if (this.f38581e) {
            e10 = dg2.f39476e;
        } else {
            e10 = dg2.e(this.f38579c);
            if (this.f38585i.c(e10.f44050b, this.f38579c) >= 0) {
                e10 = e10.d();
            }
        }
        if (e10 == null || (!this.f38580d && this.f38585i.c(e10.f44050b, this.f38578b) < 0)) {
            return null;
        }
        return e10;
    }

    @Override
    public final InterfaceC9069qI o() {
        if (this.f38583g == null) {
            this.f38583g = new C9899vG(this);
        }
        return this.f38583g;
    }

    @Override
    public final Object remove(int i10) {
        this.f38585i.f39480i = false;
        if (!d(i10)) {
            return null;
        }
        Object remove = this.f38585i.remove(i10);
        if (this.f38585i.f39480i) {
            return remove;
        }
        return null;
    }

    @Override
    public final int size() {
        C10233xG c10233xG = new C10233xG(this);
        int i10 = 0;
        while (c10233xG.hasNext()) {
            i10++;
            c10233xG.a();
        }
        return i10;
    }

    @Override
    public final InterfaceC5667Od0 values() {
        if (this.f38584h == null) {
            this.f38584h = new C9732uG(this);
        }
        return this.f38584h;
    }

    @Override
    public final Object a(int i10, Object obj) {
        this.f38585i.f39480i = false;
        if (!d(i10)) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Key (", ") out of range [");
            a10.append(this.f38580d ? "-" : String.valueOf(this.f38578b));
            a10.append(", ");
            a10.append(this.f38581e ? "-" : String.valueOf(this.f38579c));
            a10.append(")");
            throw new IllegalArgumentException(a10.toString());
        }
        Object a11 = this.f38585i.a(i10, obj);
        if (this.f38585i.f39480i) {
            return null;
        }
        return a11;
    }

    @Override
    public final Comparator comparator() {
        this.f38585i.getClass();
        return null;
    }

    @Override
    public final InterfaceC10068wH c(int i10) {
        return (!this.f38581e && this.f38585i.c(i10, this.f38579c) >= 0) ? this : new AG(this.f38585i, this.f38578b, this.f38580d, i10, false);
    }

    @Override
    public final int d() {
        C8898pG j10 = j();
        if (j10 != null) {
            return j10.f44050b;
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC10068wH a(int i10, int i11) {
        boolean z10 = this.f38581e;
        if (z10 && this.f38580d) {
            return new AG(this.f38585i, i10, false, i11, false);
        }
        if (!z10 && this.f38585i.c(i11, this.f38579c) >= 0) {
            i11 = this.f38579c;
        }
        int i12 = i11;
        if (!this.f38580d && this.f38585i.c(i10, this.f38578b) <= 0) {
            i10 = this.f38578b;
        }
        int i13 = i10;
        return (this.f38581e || this.f38580d || i13 != this.f38578b || i12 != this.f38579c) ? new AG(this.f38585i, i13, false, i12, false) : this;
    }

    @Override
    public final int a() {
        C8898pG i10 = i();
        if (i10 != null) {
            return i10.f44050b;
        }
        throw new NoSuchElementException();
    }
}
