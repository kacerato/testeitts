package com.android.tools.r8.internal;

import com.android.tools.r8.internal.B60;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C10371y60 extends B60 {

    public static final int f53939j = 0;

    public final AH f53940h;

    public final com.android.tools.r8.graph.A2 f53941i;

    public C10371y60(int i10, com.android.tools.r8.graph.A2 a22, B60 b60, boolean z10, boolean z11, AH ah2, com.android.tools.r8.graph.A2 a23) {
        super(i10, a22, b60, z10, z11);
        this.f53940h = ah2;
        this.f53941i = a23;
    }

    public static void c(AbstractC5754Pq0 abstractC5754Pq0) {
        InterfaceC5638Nq0 interfaceC5638Nq0 = new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq02) {
                B60.a(abstractC5754Pq02);
            }
        };
        abstractC5754Pq0.getClass();
        interfaceC5638Nq0.a(abstractC5754Pq0);
        abstractC5754Pq0.a().b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((B60) obj).p();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((B60) obj).i();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((B60) obj).j();
            }
        });
    }

    @Override
    public final B60 E() {
        return this;
    }

    @Override
    public final C10371y60 a() {
        return this;
    }

    @Override
    public final int d() {
        return 4;
    }

    @Override
    public final com.android.tools.r8.graph.A2 i() {
        return this.f53941i;
    }

    @Override
    public final AH j() {
        return this.f53940h;
    }

    @Override
    public final InterfaceC5638Nq0<B60> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C10371y60.c(abstractC5754Pq0);
            }
        };
    }

    @Override
    public final boolean o() {
        return false;
    }

    @Override
    public final boolean p() {
        return false;
    }

    @Override
    public final B60.a b() {
        final C10204x60 c10204x60 = (C10204x60) ((C10204x60) new C10204x60().a(this.f38807b)).a(this.f38808c);
        c10204x60.f38814c = this.f38809d;
        c10204x60.f53686i = this.f53941i;
        c10204x60.f38815d = this.f38810e;
        c10204x60.f38816e = this.f38811f;
        this.f53940h.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10204x60.this.a(((Integer) obj).intValue(), (B60) obj2);
            }
        });
        return c10204x60;
    }
}
