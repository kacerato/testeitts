package com.android.tools.r8.internal;

import java.util.List;
import w2.C15883c;

public class EB extends AbstractC9408sL {

    public static final boolean f39788m = true;

    public NB f39789l;

    public EB(NB nb2, C10340xw0 c10340xw0) {
        super(c10340xw0);
        this.f39789l = nb2;
    }

    @Override
    public final boolean H1() {
        return true;
    }

    @Override
    public final EB V() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (!abstractC10561zE.H1()) {
            return false;
        }
        EB V10 = abstractC10561zE.V();
        return V10.v2() == v2() && V10.u2() == u2() && V10.f39789l == this.f39789l;
    }

    @Override
    public final int p2() {
        return x2() ? 255 : 15;
    }

    @Override
    public final int q2() {
        if (f39788m) {
            return 0;
        }
        throw new AssertionError((Object) "If instructions define no values.");
    }

    @Override
    public final int r2() {
        return 25;
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder(super.toString());
        char c10 = C15883c.f126249O;
        sb2.append(C15883c.f126249O);
        sb2.append((Object) this.f39789l);
        if (x2()) {
            c10 = 'Z';
        }
        sb2.append(c10);
        if (b().i() == this && b().v().size() >= 2) {
            sb2.append(" block ");
            sb2.append(v2().r());
            sb2.append(" (fallthrough ");
            sb2.append(u2().r());
            sb2.append(')');
        }
        return sb2.toString();
    }

    @Override
    public W5 u2() {
        boolean z10 = f39788m;
        if (!z10 && b().i() != this) {
            throw new AssertionError();
        }
        List<W5> v10 = b().v();
        if (z10 || v10.size() >= 2) {
            return v10.get(v10.size() - 1);
        }
        throw new AssertionError();
    }

    public W5 v2() {
        boolean z10 = f39788m;
        if (!z10 && b().i() != this) {
            throw new AssertionError();
        }
        List<W5> v10 = b().v();
        if (z10 || v10.size() >= 2) {
            return v10.get(v10.size() - 2);
        }
        throw new AssertionError();
    }

    public final boolean w2() {
        return x2() && ((C10340xw0) this.f54321f.get(0)).i().d(new C6722cD0());
    }

    public boolean x2() {
        return this.f54321f.size() == 1;
    }

    public final C10340xw0 y2() {
        if (f39788m || !x2()) {
            return (C10340xw0) this.f54321f.get(1);
        }
        throw new AssertionError();
    }

    public final W5 z2() {
        boolean z10 = f39788m;
        if (!z10 && !x2()) {
            throw new AssertionError();
        }
        if (z10 || ((C10340xw0) this.f54321f.get(0)).Y().a()) {
            return b(1);
        }
        throw new AssertionError();
    }

    public static boolean a(AbstractC8999pu0 abstractC8999pu0, NB nb2) {
        abstractC8999pu0.getClass();
        if (abstractC8999pu0 instanceof C9736uI) {
            return true;
        }
        if ((abstractC8999pu0 instanceof C5188Fx) && (nb2 == NB.f42527b || nb2 == NB.f42532g)) {
            return true;
        }
        if (abstractC8999pu0.y()) {
            return nb2 == NB.f42527b || nb2 == NB.f42532g;
        }
        return false;
    }

    public EB(NB nb2, List list) {
        super(list);
        this.f39789l = nb2;
    }

    public final W5 b(int i10) {
        if (!f39788m && Integer.signum(i10) != i10) {
            throw new AssertionError();
        }
        switch (DB.f39464a[this.f39789l.ordinal()]) {
            case 1:
                return i10 == 0 ? v2() : u2();
            case 2:
                return i10 != 0 ? v2() : u2();
            case 3:
                return i10 >= 0 ? v2() : u2();
            case 4:
                return i10 > 0 ? v2() : u2();
            case 5:
                return i10 <= 0 ? v2() : u2();
            case 6:
                return i10 < 0 ? v2() : u2();
            default:
                throw new C5417Jv0("Unexpected condition type " + ((Object) this.f39789l));
        }
    }

    @Override
    public final void a(W5 w52) {
        b().n().set(r0.size() - 1, w52);
    }

    public final W5 a(C9126qh c9126qh, C9126qh c9126qh2) {
        boolean z10 = f39788m;
        if (!z10 && x2()) {
            throw new AssertionError();
        }
        if (!z10 && c9126qh.s2() != c9126qh2.s2()) {
            throw new AssertionError();
        }
        if (!z10 && !a(c9126qh.a(), this.f39789l)) {
            throw new AssertionError();
        }
        long w22 = c9126qh.w2();
        long w23 = c9126qh2.w2();
        if (z10 || !x2()) {
            return b(Long.signum(w22 - w23));
        }
        throw new AssertionError();
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        EnumC5477Kw0 Y10 = ((C10340xw0) this.f54321f.get(0)).Y();
        if (this.f54321f.size() == 1) {
            c7543h9.a(new O9(this.f39789l, Y10, c7543h9.a(v2())), this);
            return;
        }
        boolean z10 = f39788m;
        if (!z10 && this.f54321f.size() != 2) {
            throw new AssertionError();
        }
        if (!z10 && ((C10340xw0) this.f54321f.get(0)).Y() != ((C10340xw0) this.f54321f.get(1)).Y()) {
            throw new AssertionError();
        }
        c7543h9.a(new Q9(this.f39789l, Y10, c7543h9.a(v2())), this);
    }

    @Override
    public final void a(PS ps) {
        EnumC5477Kw0 Y10 = ((C10340xw0) this.f54321f.get(0)).Y();
        if (this.f54321f.size() == 1) {
            ps.a(this.f39789l, Y10, (C10340xw0) this.f54321f.get(0), v2());
            return;
        }
        boolean z10 = f39788m;
        if (!z10 && this.f54321f.size() != 2) {
            throw new AssertionError();
        }
        if (!z10 && ((C10340xw0) this.f54321f.get(0)).Y() != ((C10340xw0) this.f54321f.get(1)).Y()) {
            throw new AssertionError();
        }
        ps.a(this.f39789l, Y10, this.f54321f, v2());
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        if (!C5458Kn.f41761r) {
            if (c5458Kn.f41778q != u2()) {
                throw new AssertionError();
            }
        } else {
            c5458Kn.getClass();
        }
        c5458Kn.a(this, new C5110En(this));
    }
}
