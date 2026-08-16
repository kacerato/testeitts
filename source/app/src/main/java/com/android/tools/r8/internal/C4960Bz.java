package com.android.tools.r8.internal;

import java.util.List;

public class C4960Bz extends AbstractC9408sL {

    public static final boolean f39050l = true;

    @Override
    public final boolean G1() {
        return true;
    }

    @Override
    public final C4960Bz U() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.G1() && abstractC10561zE.U().v2() == v2();
    }

    @Override
    public final boolean i1() {
        return true;
    }

    @Override
    public final int p2() {
        if (f39050l) {
            return 0;
        }
        throw new AssertionError((Object) "Goto has no register arguments.");
    }

    @Override
    public final int q2() {
        if (f39050l) {
            return 0;
        }
        throw new AssertionError((Object) "Goto defines no values.");
    }

    @Override
    public final int r2() {
        return 24;
    }

    @Override
    public final String toString() {
        W5 b10 = b();
        if (b10 == null || b10.v().isEmpty() || b10.l().f39168d != this) {
            return super.toString() + "block <unknown>";
        }
        return super.toString() + "block " + v2().r();
    }

    public final W5 v2() {
        boolean z10 = f39050l;
        if (!z10 && b().i() != this) {
            throw new AssertionError();
        }
        List<W5> v10 = b().v();
        if (z10 || v10.size() >= 1) {
            return v10.get(v10.size() - 1);
        }
        throw new AssertionError();
    }

    @Override
    public final void a(NT nt) {
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.getClass();
        if (v2() != c5458Kn.f41778q) {
            c5458Kn.a(this, new C5052Dn(this));
        } else {
            c5458Kn.a(this, new C4878An(this));
        }
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new M9(c7543h9.a(v2())), this);
    }

    @Override
    public final void a(PS ps) {
        int a10 = ps.f43227h.a(v2());
        boolean z10 = C8707o8.f51173a;
        ps.c();
        ps.f43222c.a(167, 4);
        ps.e(a10);
    }
}
