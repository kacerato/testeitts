package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.Objects;

public final class C6257Yj implements InterfaceC9645tn0 {

    public final com.android.tools.r8.graph.A2 f46071a;

    public final int f46072b;

    public C6257Yj(int i10, com.android.tools.r8.graph.A2 a22) {
        this.f46072b = i10;
        this.f46071a = a22;
    }

    @Override
    public final Object[] a(C9267rY c9267rY) {
        return c9267rY.a(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6257Yj)) {
            return false;
        }
        C6257Yj c6257Yj = (C6257Yj) obj;
        return this.f46071a == c6257Yj.f46071a && this.f46072b == c6257Yj.f46072b;
    }

    public final int hashCode() {
        return Objects.hash(this.f46071a, AbstractC4291c.a(this.f46072b));
    }

    public final S.b a(C4798y c4798y) {
        com.android.tools.r8.synthesis.S s10 = c4798y.f38408a.g().f58085b;
        int i10 = this.f46072b;
        if (i10 == 0) {
            return null;
        }
        int b10 = AbstractC4291c.b(i10);
        if (b10 == 0) {
            return s10.f58186m;
        }
        if (b10 == 1) {
            return s10.f58185l;
        }
        if (b10 == 2) {
            return s10.f58183j;
        }
        if (b10 != 3) {
            return null;
        }
        return s10.f58184k;
    }

    public C6257Yj(com.android.tools.r8.graph.A2 a22) {
        this.f46072b = 0;
        this.f46071a = a22;
    }
}
