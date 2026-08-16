package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C4997Co0 extends F1 {

    public static final boolean f39365c = true;

    public final Q30 f39366b;

    public C4997Co0(Q30 q30) {
        if (!f39365c && q30.e()) {
            throw new AssertionError();
        }
        this.f39366b = q30;
    }

    @Override
    public final C4997Co0 Q() {
        return this;
    }

    @Override
    public final int T() {
        return this.f39366b.c();
    }

    @Override
    public final Q30 U() {
        return this.f39366b;
    }

    @Override
    public final boolean W() {
        return this.f39366b.d();
    }

    @Override
    public final boolean X() {
        return true;
    }

    @Override
    public final F1 b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        Q30 a10 = this.f39366b.a(c4798y, abstractC5308Hz, abstractC5308Hz2);
        return a10.e() ? C10504yv0.f54195b : new C4997Co0(a10);
    }

    @Override
    public final boolean b0() {
        return true;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || C4997Co0.class != obj.getClass()) {
            return false;
        }
        return this.f39366b.equals(((C4997Co0) obj).f39366b);
    }

    @Override
    public final int hashCode() {
        return this.f39366b.hashCode();
    }

    @Override
    public final String toString() {
        return "StatefulValue(" + ((Object) this.f39366b) + ")";
    }
}
