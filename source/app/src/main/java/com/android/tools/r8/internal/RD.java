package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class RD implements SD {

    public static final boolean f43847b = true;

    public final int f43848a;

    public RD(int i10) {
        this.f43848a = i10;
    }

    @Override
    public final SD b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        return this;
    }

    @Override
    public final RD q() {
        return this;
    }

    @Override
    public final boolean s() {
        return true;
    }

    public final String toString() {
        return "InstanceFieldArgumentInitializationInfo(argumentIndex=" + this.f43848a + ")";
    }

    @Override
    public final SD a(com.android.tools.r8.graph.proto.c cVar) {
        com.android.tools.r8.graph.proto.b a10 = cVar.a(this.f43848a);
        if (a10.c()) {
            com.android.tools.r8.graph.proto.g a11 = a10.a();
            if (!a11.f()) {
                if (f43847b) {
                    return C9335rv0.f52224a;
                }
                throw new AssertionError();
            }
            return a11.f37616b;
        }
        int b10 = cVar.b(this.f43848a);
        return b10 != this.f43848a ? new RD(b10) : this;
    }
}
