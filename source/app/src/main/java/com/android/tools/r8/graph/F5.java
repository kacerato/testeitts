package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11382q1;
import java.util.function.Predicate;

public final class F5 extends F0 implements G5 {

    public static final boolean f36288f = true;

    public F5(C4460g1 c4460g1, H2 h22) {
        super(h22, c4460g1);
    }

    @Override
    public final G5 O() {
        return this;
    }

    @Override
    public final F5 W() {
        return this;
    }

    @Override
    public final boolean a(C4798y c4798y) {
        final C4537k3 accessFlags = getAccessFlags();
        C4613o3 c4613o3 = (C4613o3) ((C11245i) c4798y.f()).f57404s.f37507a.get(getReference());
        C11382q1 a10 = c4798y.a(this);
        C8570nJ E10 = c4798y.E();
        if (!a10.c(E10) || !a10.e(E10) || c4613o3.e() || c4613o3.g()) {
            return false;
        }
        return (!c4613o3.f37539d.b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return F5.this.a(accessFlags, (H5) obj);
            }
        }) || c4613o3.e() || c4613o3.g()) ? false : true;
    }

    @Override
    public final F0 c() {
        return this;
    }

    @Override
    public final com.android.tools.r8.kotlin.Q c0() {
        return d().f37208m;
    }

    @Override
    public final InterfaceC4610o0 getContext() {
        return this;
    }

    @Override
    public final F5 c() {
        return this;
    }

    @Override
    public final H2 getHolder() {
        E0 e02 = this.f36317b;
        if (f36288f || e02.e0()) {
            return e02.d0();
        }
        throw new AssertionError();
    }

    public final boolean a(C4537k3 c4537k3, H5 h52) {
        return h52.d().i1() && h52.getAccessFlags().n() == c4537k3.n() && h52.getHolder() == getHolder();
    }

    @Override
    public final E0 a() {
        return getHolder();
    }

    @Override
    public final H2 a() {
        return getHolder();
    }
}
