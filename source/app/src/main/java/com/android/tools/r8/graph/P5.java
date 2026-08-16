package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import java.util.List;
import java.util.function.Function;

public class P5 implements InterfaceC5580Mq0<P5> {

    public static final boolean f36703e = true;

    public final C4554l1 f36704b;

    public final H3.e f36705c;

    public final List f36706d;

    public P5(C4554l1 c4554l1, H3.e eVar, List list) {
        boolean z10 = f36703e;
        if (!z10 && c4554l1 == null) {
            throw new AssertionError();
        }
        if (!z10 && eVar == null) {
            throw new AssertionError();
        }
        if (!z10 && list == null) {
            throw new AssertionError();
        }
        this.f36704b = c4554l1;
        this.f36705c = eVar;
        this.f36706d = list;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((P5) obj).b();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((P5) obj).d();
            }
        });
    }

    @Override
    public final P5 E() {
        return this;
    }

    public L2 b() {
        return this.f36704b.t0();
    }

    public H3.e c() {
        return this.f36705c;
    }

    public M2 d() {
        return this.f36704b.getType();
    }

    @Override
    public final InterfaceC5638Nq0<P5> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                P5.a(abstractC5754Pq0);
            }
        };
    }

    public List<C4666r0> a() {
        return this.f36706d;
    }
}
