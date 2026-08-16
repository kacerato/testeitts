package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Objects;
import java.util.function.Function;

public final class K8 implements r {

    public static final boolean f41579c = true;

    public final Q5 f41580a;

    public final com.android.tools.r8.graph.M2 f41581b;

    public K8(Q5 q52, com.android.tools.r8.graph.M2 m22) {
        this.f41580a = q52;
        this.f41581b = m22;
    }

    @Override
    public final K8 E() {
        return this;
    }

    @Override
    public final AbstractC5361Iw0 a(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx, AbstractC10458yg abstractC10458yg, com.android.tools.r8.graph.M2 m22) {
        return abstractC10458yg.g().a(c4798y, this.f41581b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof K8)) {
            return false;
        }
        K8 k82 = (K8) obj;
        return this.f41580a.equals(k82.f41580a) && this.f41581b.a(k82.f41581b);
    }

    @Override
    public final int getKind() {
        return 2;
    }

    public final int hashCode() {
        return Objects.hash(this.f41580a, this.f41581b);
    }

    @Override
    public final boolean t() {
        return true;
    }

    public final String toString() {
        Q5 q52 = this.f41580a;
        return "Cast(" + ((Object) q52) + ", " + this.f41581b.D0() + ")";
    }

    @Override
    public final AbstractC6333Zs0 a(Function function) {
        return this.f41580a.a(function);
    }

    @Override
    public final int a(ZC zc2, C6555bD c6555bD) {
        K8 E10 = zc2.E();
        Q5 q52 = this.f41580a;
        Q5 q53 = E10.f41580a;
        if (q52 != q53) {
            int b10 = q52.b(q53, c6555bD);
            if (f41579c || b10 != 0) {
                return b10;
            }
            throw new AssertionError();
        }
        return this.f41581b.compareTo(E10.f41581b);
    }
}
