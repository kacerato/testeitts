package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class O60 {

    public static final boolean f42780b = true;

    public final C9093qU f42781a;

    public O60(AbstractC5308Hz abstractC5308Hz) {
        this.f42781a = C9093qU.a(abstractC5308Hz);
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        this.f42781a.f51792d.add(h52.getReference());
    }

    public final void a(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.H5 h52) {
        this.f42781a.a(abstractC5308Hz, h52);
    }

    public final void a(Collection collection, final AbstractC5308Hz abstractC5308Hz) {
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                O60.this.a(abstractC5308Hz, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final void a(AbstractC8374m80 abstractC8374m80) {
        abstractC8374m80.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                O60.this.a((com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final O60 a(C4798y c4798y) {
        C9093qU c9093qU = this.f42781a;
        c9093qU.getClass();
        c9093qU.c(c4798y.v());
        return this;
    }

    public final P60 a(final C4798y c4798y, AbstractC7264fX abstractC7264fX, ExecutorService executorService, C8659ns0 c8659ns0) {
        Set set = ((C11245i) c4798y.f()).f57411z;
        if (!set.isEmpty()) {
            final AbstractC8374m80 c10 = AbstractC8374m80.c();
            set.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    O60.a(C4798y.this, c10, (com.android.tools.r8.graph.A2) obj);
                }
            });
            a(c10);
        }
        AbstractC8374m80 a10 = this.f42781a.a(c4798y);
        if (!f42780b && c4798y.E().f50690i1 && !a10.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean F02;
                F02 = ((com.android.tools.r8.graph.H5) obj).d().F0();
                return F02;
            }
        })) {
            throw new AssertionError();
        }
        boolean z10 = C10209x8.f53698b;
        return new P60(c4798y, new C10543z8(c4798y).a(executorService, c8659ns0), abstractC7264fX, a10);
    }

    public static void a(C4798y c4798y, AbstractC8374m80 abstractC8374m80, com.android.tools.r8.graph.A2 a22) {
        c4798y.getClass();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(a22.f38297f));
        C4516j1 b10 = a22.b((com.android.tools.r8.graph.E0) a10);
        if (b10 != null) {
            abstractC8374m80.getClass();
            abstractC8374m80.add((AbstractC8374m80) new com.android.tools.r8.graph.H5(a10, b10));
        }
    }

    public final void a(C5629Nm c5629Nm) {
        final C9093qU c9093qU = this.f42781a;
        Objects.requireNonNull(c9093qU);
        c5629Nm.a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C9093qU.this.a((InterfaceC5456Km) obj);
            }
        });
    }
}
