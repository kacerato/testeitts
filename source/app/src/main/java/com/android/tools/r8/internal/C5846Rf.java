package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Objects;
import java.util.function.Function;

public final class C5846Rf extends AbstractC5904Sf {

    public static final int f43950e = 0;

    public final InterfaceC6078Vf f43951d;

    public C5846Rf(InterfaceC6078Vf interfaceC6078Vf, InterfaceC6078Vf interfaceC6078Vf2, InterfaceC6078Vf interfaceC6078Vf3) {
        super(interfaceC6078Vf2, interfaceC6078Vf3);
        this.f43951d = interfaceC6078Vf;
    }

    @Override
    public final F1 a(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx) {
        F1 a10 = this.f43951d.a(c4798y, interfaceC5825Qx);
        a10.getClass();
        if (a10 instanceof A7) {
            return A7.f38535b;
        }
        if (a10.h0()) {
            return this.f44263a.a(c4798y, interfaceC5825Qx);
        }
        if (a10.Z()) {
            return this.f44264b.a(c4798y, interfaceC5825Qx);
        }
        return c4798y.f38428u.b(this.f44263a.a(c4798y, interfaceC5825Qx), this.f44264b.a(c4798y, interfaceC5825Qx), AbstractC8999pu0.k());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5846Rf)) {
            return false;
        }
        C5846Rf c5846Rf = (C5846Rf) obj;
        return this.f43951d.equals(c5846Rf.f43951d) && this.f44263a.equals(c5846Rf.f44263a) && this.f44264b.equals(c5846Rf.f44264b);
    }

    public final int hashCode() {
        return Objects.hash(C5846Rf.class, this.f43951d, this.f44263a, this.f44264b);
    }

    public final String toString() {
        return this.f43951d.p() + " ? " + this.f44263a.p() + " : " + this.f44264b.p();
    }

    @Override
    public final AbstractC6333Zs0 a(Function function) {
        AbstractC6333Zs0 a10 = this.f43951d.a(function);
        return a10.d() ? super.a(function) : a10;
    }
}
