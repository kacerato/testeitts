package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Supplier;

public final class C6431aX implements Q5, InterfaceC6078Vf {

    public final com.android.tools.r8.graph.A2 f46550a;

    public final int f46551b;

    public final boolean f46552c;

    public C6431aX(com.android.tools.r8.graph.H0 h02, int i10) {
        com.android.tools.r8.graph.A2 reference = h02.getReference();
        boolean n10 = h02.getAccessFlags().n();
        this.f46550a = reference;
        this.f46551b = i10;
        this.f46552c = n10;
    }

    @Override
    public final C6431aX C() {
        return this;
    }

    @Override
    public final AbstractC6333Zs0 a(Function function) {
        return (AbstractC6333Zs0) function.apply(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6431aX.class == obj.getClass()) {
            C6431aX c6431aX = (C6431aX) obj;
            if (this.f46550a.a(c6431aX.f46550a) && this.f46551b == c6431aX.f46551b) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int getKind() {
        return 7;
    }

    public final AbstractC5361Iw0 h() {
        return AbstractC5361Iw0.a(this.f46550a.a(this.f46551b, this.f46552c));
    }

    public final int hashCode() {
        return Objects.hash(this.f46550a, Integer.valueOf(this.f46551b));
    }

    @Override
    public final boolean i() {
        return true;
    }

    @Override
    public final boolean o() {
        return true;
    }

    public final String toString() {
        com.android.tools.r8.graph.A2 a22 = this.f46550a;
        return "MethodParameter(" + ((Object) a22) + ", " + this.f46551b + ")";
    }

    @Override
    public final Q5 y() {
        return this;
    }

    @Override
    public final F1 a(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx) {
        return interfaceC5825Qx.a(this, new Supplier() {
            @Override
            public final Object get() {
                return C6431aX.this.h();
            }
        }).a(c4798y);
    }

    @Override
    public final int a(ZC zc2, C6555bD c6555bD) {
        C6431aX C10 = zc2.C();
        int compareTo = this.f46550a.compareTo(C10.f46550a);
        if (compareTo == 0) {
            compareTo = this.f46551b - C10.f46551b;
        }
        return compareTo == 0 ? C8704o7.a(this.f46552c) - C8704o7.a(C10.f46552c) : compareTo;
    }
}
