package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11297l1;
import java.util.IdentityHashMap;
import java.util.ListIterator;
import java.util.Objects;
import java.util.function.Consumer;

public final class Y1 extends AbstractC6143Wj {

    public static final boolean f45895i = true;

    public final Q1 f45896f;

    public final T1 f45897g;

    public final IdentityHashMap f45898h;

    public Y1(C4798y c4798y, C4387c4 c4387c4, Q1 q12, T1 t12) {
        super(c4798y, c4387c4);
        this.f45898h = new IdentityHashMap();
        this.f45896f = q12;
        this.f45897g = t12;
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return com.android.tools.r8.graph.H2.a(this.f45515a.g(m22)) == null;
    }

    @Override
    public final boolean c(com.android.tools.r8.graph.H2 h22) {
        return AbstractC9907vK.a(h22.z0(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return Y1.this.a((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    @Override
    public final void j(com.android.tools.r8.graph.H2 h22) {
        final V1 m10 = m(h22);
        Q1 q12 = this.f45896f;
        T1 t12 = this.f45897g;
        if (q12.a(h22, m10) && !h22.getAccessFlags().l()) {
            h22.getAccessFlags().r();
        }
        C4425e4 P02 = h22.P0();
        if (P02 != null) {
            C4425e4 c4425e4 = new C4425e4((P02.a() | 1) & (-7), P02.b(), P02.d(), P02.c());
            ListIterator<C4425e4> listIterator = h22.Q0().listIterator();
            while (listIterator.hasNext()) {
                if (h22.f36245e == listIterator.next().b()) {
                    listIterator.set(c4425e4);
                }
            }
            throw new C5417Jv0();
        }
        q12.a(m10, h22);
        q12.a(h22, t12, m10);
        Objects.requireNonNull(m10);
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                V1.this.a((com.android.tools.r8.graph.H5) obj);
            }
        };
        Z60 z60 = EnumC6871d70.f47286b;
        h22.j(consumer, z60);
        if (!m10.f44938b.f39368b.isEmpty()) {
            C4387c4 c4387c4 = this.f45516b;
            Consumer consumer2 = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Y1.this.a(m10, (com.android.tools.r8.graph.H2) obj);
                }
            };
            c4387c4.getClass();
            c4387c4.a(z60, consumer2, h22);
        }
        this.f45898h.remove(h22);
    }

    @Override
    public final void l(com.android.tools.r8.graph.H2 h22) {
        this.f45898h.put(h22, W1.f45259a);
    }

    public final V1 m(com.android.tools.r8.graph.H2 h22) {
        X1 x12 = (X1) this.f45898h.get(h22);
        if (x12 != null && !(x12 instanceof W1)) {
            if (f45895i || (x12 instanceof V1)) {
                return x12.a();
            }
            throw new AssertionError();
        }
        C11297l1 a10 = this.f45515a.r().a(h22);
        C8570nJ E10 = this.f45515a.E();
        V1 v12 = new V1((a10.b(E10) || a10.e(E10)) ? false : true);
        this.f45898h.put(h22, v12);
        return v12;
    }

    public final void a(V1 v12, com.android.tools.r8.graph.H2 h22) {
        m(h22).a(v12);
    }
}
