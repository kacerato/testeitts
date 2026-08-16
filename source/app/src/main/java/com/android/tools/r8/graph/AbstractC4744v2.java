package com.android.tools.r8.graph;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.internal.AbstractC6483ap0;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C9406sK;
import com.android.tools.r8.internal.InterfaceC5422Jy;
import java.util.function.Function;
import java.util.function.Predicate;

public abstract class AbstractC4744v2<D extends AbstractC4479h1<D, R>, R extends AbstractC4744v2<D, R>> extends J2 implements InterfaceC4596n5 {

    public static final boolean f38296h = true;

    public final M2 f38297f;

    public final L2 f38298g;

    public AbstractC4744v2(L2 l22, M2 m22) {
        boolean z10 = f38296h;
        if (!z10 && m22 == null) {
            throw new AssertionError();
        }
        this.f38297f = m22;
        if (!z10 && l22 == null) {
            throw new AssertionError();
        }
        this.f38298g = l22;
    }

    @Override
    public final M2 S() {
        return this.f38297f;
    }

    public abstract G0 a(E0 e02);

    public abstract AbstractC4744v2 a(J2 j22, C4724u1 c4724u1);

    public final C9406sK a(final C4724u1 c4724u1) {
        return AbstractC9907vK.a(u0(), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                M2 a10;
                a10 = ((M2) obj).a(C4724u1.this);
                return a10;
            }
        });
    }

    public abstract Object a(Function function, Function function2);

    public abstract AbstractC4479h1 b(E0 e02);

    @Override
    public void b(AbstractC9213rA abstractC9213rA) {
        a(abstractC9213rA);
    }

    @Override
    public final AbstractC4744v2 m0() {
        return this;
    }

    @Override
    public final boolean q0() {
        return true;
    }

    public M2 s0() {
        return this.f38297f;
    }

    public L2 t0() {
        return this.f38298g;
    }

    public abstract Iterable u0();

    public final void a(Predicate predicate, C4724u1 c4724u1) {
        if (!f38296h && !AbstractC6483ap0.a(a(c4724u1)).allMatch(predicate)) {
            throw new AssertionError();
        }
    }
}
