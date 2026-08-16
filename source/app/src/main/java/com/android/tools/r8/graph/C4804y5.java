package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C9380sA;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.InterfaceC7166ev;
import com.android.tools.r8.internal.YS;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C4804y5 implements YS, InterfaceC5580Mq0 {

    public final C4554l1 f38444b;

    public C4804y5(C4554l1 c4554l1) {
        this.f38444b = c4554l1;
    }

    public static C4804y5 b(C4804y5 c4804y5) {
        c4804y5.getClass();
        return null;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int R() {
        return 13;
    }

    public final boolean equals(Object obj) {
        return InterfaceC7166ev.a(this, obj);
    }

    public final int hashCode() {
        return Objects.hash(this.f38444b, null);
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new Uh();
    }

    public final String toString() {
        return this.f38444b.toString();
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                C4554l1 c4554l1;
                c4554l1 = ((C4804y5) obj).f38444b;
                return c4554l1;
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4804y5.b((C4804y5) obj);
            }
        });
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        Uh uh2 = new Uh();
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.getClass();
        uh2.a(new C9380sA(this, c9547tA));
    }

    public final void a(Consumer consumer) {
        consumer.accept(this.f38444b);
    }

    @Override
    public final int a(YS ys, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (C4804y5) ys, new Uh());
    }
}
