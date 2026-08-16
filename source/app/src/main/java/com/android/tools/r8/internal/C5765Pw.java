package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Function;

public final class C5765Pw implements Q5, InterfaceC6078Vf {

    public final C4554l1 f43410a;

    public C5765Pw(C4554l1 c4554l1) {
        this.f43410a = c4554l1;
    }

    @Override
    public final C5765Pw D() {
        return this;
    }

    @Override
    public final F1 a(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx) {
        return interfaceC5825Qx.a(this.f43410a).a(c4798y);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C5765Pw.class != obj.getClass()) {
            return false;
        }
        return this.f43410a.a(((C5765Pw) obj).f43410a);
    }

    @Override
    public final int getKind() {
        return 6;
    }

    public final int hashCode() {
        return this.f43410a.hashCode();
    }

    @Override
    public final boolean i() {
        return true;
    }

    public final String toString() {
        return this.f43410a.j0();
    }

    @Override
    public final boolean x() {
        return true;
    }

    @Override
    public final Q5 y() {
        return this;
    }

    @Override
    public final int a(ZC zc2, C6555bD c6555bD) {
        return this.f43410a.compareTo(zc2.D().f43410a);
    }

    @Override
    public final AbstractC6333Zs0 a(Function function) {
        return (AbstractC6333Zs0) function.apply(this);
    }
}
