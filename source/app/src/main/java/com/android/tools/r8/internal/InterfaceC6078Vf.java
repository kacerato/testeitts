package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;

public interface InterfaceC6078Vf extends r {
    static {
        boolean z10 = AbstractC6020Uf.f44819a;
    }

    F1 a(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx);

    @Override
    default boolean a() {
        return true;
    }

    @Override
    default InterfaceC6078Vf c() {
        return this;
    }

    @Override
    default boolean e() {
        return true;
    }

    default boolean g() {
        return false;
    }

    boolean i();

    default String p() {
        if (i()) {
            return toString();
        }
        return "(" + ((Object) this) + ")";
    }

    Q5 y();

    @Override
    default AbstractC5361Iw0 a(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx, AbstractC10458yg abstractC10458yg, com.android.tools.r8.graph.M2 m22) {
        F1 a10 = a(c4798y, interfaceC5825Qx);
        a10.getClass();
        if (a10 instanceof A7) {
            return AbstractC5361Iw0.a(m22);
        }
        if (a10.isUnknown()) {
            return C10671zv0.f54579b;
        }
        if (m22.E0()) {
            return C10671zv0.f54579b;
        }
        if (m22.I0()) {
            return C8288lg.a(a10, AbstractC10330xt.m(), Collections.EMPTY_SET);
        }
        if (AbstractC6020Uf.f44819a || m22.P0()) {
            return C9790ug.a(a10);
        }
        throw new AssertionError();
    }
}
