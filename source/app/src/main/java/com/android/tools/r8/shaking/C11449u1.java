package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.UQ;
import java.util.function.Function;

public final class C11449u1 extends AbstractC11483w1 {

    public final C11532z1 f57882a = new C11532z1();

    public final UQ f57883b = new UQ();

    public final B1 f57884c = new B1();

    public final UQ f57885d = new UQ();

    public final A1 f57886e = new A1();

    public final UQ f57887f = new UQ();

    public static C7333fv a(C7333fv c7333fv) {
        return c7333fv;
    }

    public static C7333fv b(C7333fv c7333fv) {
        return c7333fv;
    }

    public static C7333fv c(C7333fv c7333fv) {
        return c7333fv;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final C11297l1 a(C11297l1 c11297l1) {
        return (c11297l1.f57838h.b() && c11297l1.f57839i.b()) ? (C11297l1) ((C7333fv) this.f57883b.computeIfAbsent(new C7333fv(this.f57882a, c11297l1), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11449u1.a((C7333fv) obj);
            }
        })).f48136c : c11297l1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final C11382q1 a(C11382q1 c11382q1) {
        if (!c11382q1.f57838h.b() || !c11382q1.f57839i.b()) {
            return c11382q1;
        }
        UQ uq = this.f57887f;
        A1 a12 = this.f57886e;
        a12.getClass();
        return (C11382q1) ((C7333fv) uq.computeIfAbsent(new C7333fv(a12, c11382q1), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11449u1.b((C7333fv) obj);
            }
        })).f48136c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final I1 a(I1 i12) {
        if (!i12.f57838h.b() || !i12.f57839i.b() || !i12.f56552B.b()) {
            return i12;
        }
        UQ uq = this.f57885d;
        B1 b12 = this.f57884c;
        b12.getClass();
        return (I1) ((C7333fv) uq.computeIfAbsent(new C7333fv(b12, i12), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11449u1.c((C7333fv) obj);
            }
        })).f48136c;
    }
}
