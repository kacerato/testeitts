package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class C7520h10 extends AbstractC10330xt {

    public static final C7520h10 f48413b = new C7520h10();

    public static final boolean f48414c = true;

    @Override
    public final AbstractC10330xt a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, Set set) {
        return this;
    }

    @Override
    public final C6949de c() {
        return null;
    }

    @Override
    public final C8854p10 d() {
        return C8854p10.b();
    }

    @Override
    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    @Override
    public final boolean j() {
        return true;
    }

    public final String toString() {
        return "NotNullDynamicType";
    }

    @Override
    public final AbstractC8999pu0 a(AbstractC8999pu0 abstractC8999pu0) {
        if (f48414c || abstractC8999pu0.y()) {
            return abstractC8999pu0.d().a(C8854p10.b());
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC10330xt a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        m22.getClass();
        return AbstractC10330xt.a(c4798y, AbstractC8999pu0.a(m22, C8854p10.b(), (C4798y<?>) c4798y));
    }

    @Override
    public final AbstractC10330xt a(C8854p10 c8854p10) {
        if (!f48414c) {
            c8854p10.getClass();
            if (c8854p10 == C8854p10.f51412d) {
                throw new AssertionError();
            }
        }
        return c8854p10.d() ? this : AbstractC10330xt.m();
    }
}
