package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import java.util.function.Function;

public class A5 implements InterfaceC5580Mq0<A5> {

    public static final boolean f36129c = true;

    public final M2 f36130b;

    public A5(M2 m22) {
        this.f36130b = m22;
    }

    @Override
    public final A5 E() {
        return this;
    }

    @Override
    public final InterfaceC5638Nq0<A5> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                A5.a(abstractC5754Pq0);
            }
        };
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                M2 m22;
                m22 = ((A5) obj).f36130b;
                return m22;
            }
        });
    }

    public M2 a() {
        return this.f36130b;
    }
}
