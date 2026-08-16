package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import java.util.function.Function;

public class C4634p5 implements InterfaceC5580Mq0<C4634p5> {

    public static final boolean f37586c = true;

    public final M2 f37587b;

    public C4634p5(M2 m22) {
        this.f37587b = m22;
    }

    @Override
    public final C4634p5 E() {
        return this;
    }

    @Override
    public final InterfaceC5638Nq0<C4634p5> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C4634p5.a(abstractC5754Pq0);
            }
        };
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                M2 m22;
                m22 = ((C4634p5) obj).f37587b;
                return m22;
            }
        });
    }

    public M2 a() {
        return this.f37587b;
    }
}
