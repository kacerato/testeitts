package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Objects;

public final class V40 extends Z40 {

    public final com.android.tools.r8.graph.M2 f44950c;

    public V40(com.android.tools.r8.graph.M2 m22) {
        this.f44950c = m22;
    }

    @Override
    public final String a() {
        return this.f44950c.j0();
    }

    @Override
    public final String b() {
        return "NEW";
    }

    @Override
    public final Y40 c() {
        return Y40.f45920h;
    }

    @Override
    public final int compareTo(Object obj) {
        Z40 z40 = (Z40) obj;
        return !(z40 instanceof V40) ? Y40.f45920h.compareTo(z40.c()) : this.f44950c.compareTo(((V40) z40).f44950c);
    }

    @Override
    public final boolean d() {
        return true;
    }

    @Override
    public final int e() {
        return 0;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof V40) {
            return this.f44950c.a(((V40) obj).f44950c);
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return Objects.hash(Y40.f45920h, Integer.valueOf(this.f44950c.hashCode()));
    }

    @Override
    public final int a(C6382aB c6382aB, W40 w40, int i10) {
        c6382aB.a(new C9603tZ(this.f44950c, c6382aB.a(w40.f45281b.size(), 2, AbstractC8999pu0.a(this.f44950c, C8854p10.b(), (C4798y<?>) c6382aB.f46457p))));
        return i10;
    }

    @Override
    public final boolean a(AbstractC5308Hz abstractC5308Hz) {
        com.android.tools.r8.graph.M2 m22 = this.f44950c;
        abstractC5308Hz.getClass();
        return !abstractC5308Hz.c(AbstractC5308Hz.g(), m22).a(this.f44950c);
    }
}
