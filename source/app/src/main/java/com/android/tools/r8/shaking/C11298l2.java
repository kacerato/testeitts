package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.EnumC6871d70;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C11298l2 {

    public static final boolean f57501d = true;

    public final C11264j2 f57502a = new C11264j2(this);

    public final C4798y f57503b;

    public final Consumer f57504c;

    public C11298l2(Consumer consumer, C4798y c4798y) {
        this.f57503b = c4798y;
        this.f57504c = consumer;
    }

    public final void a(Set set) {
        com.android.tools.r8.synthesis.J g10 = this.f57503b.f38408a.g();
        C4724u1 b10 = this.f57503b.b();
        com.android.tools.r8.androidapi.a aVar = this.f57503b.f38404S;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) it.next();
            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f57503b.g(m22));
            if (!f57501d && a10 == null) {
                throw new AssertionError();
            }
            this.f57504c.accept(m22);
            if (C4666r0.a(a10.k0(), b10, g10, aVar) == null) {
                a10.k0().a(this.f57503b, this.f57502a);
            }
            a10.c(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11298l2.this.a((C4460g1) obj);
                }
            }, EnumC6871d70.f47286b);
            a10.h(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11298l2.this.a((com.android.tools.r8.graph.H5) obj);
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C11298l2.this.a((C4516j1) obj);
                }
            });
        }
    }

    public final void a(C4460g1 c4460g1) {
        this.f57504c.accept(c4460g1.getReference().f37449i);
    }

    public final boolean a(C4516j1 c4516j1) {
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        Consumer consumer = this.f57504c;
        com.android.tools.r8.graph.I2 i22 = reference.f36127i;
        consumer.accept(i22.f36440e);
        for (com.android.tools.r8.graph.M2 m22 : i22.f36441f.f36675b) {
            consumer.accept(m22);
        }
        return c4516j1.b1();
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        h52.a(new C11281k2(this, h52));
    }

    public static com.android.tools.r8.graph.H2 a(final C4798y c4798y, com.android.tools.r8.graph.H5 h52, final Predicate predicate) {
        final com.android.tools.r8.internal.C7 c72 = new com.android.tools.r8.internal.C7();
        h52.a(new C11281k2(new C11298l2(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11298l2.a(C4798y.this, predicate, c72, (com.android.tools.r8.graph.M2) obj);
            }
        }, c4798y), h52));
        return (com.android.tools.r8.graph.H2) c72.a();
    }

    public static void a(C4798y c4798y, Predicate predicate, com.android.tools.r8.internal.C7 c72, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10;
        com.android.tools.r8.graph.M2 a10 = m22.a(c4798y.b());
        if (a10.I0() && predicate.test(a10) && (g10 = c4798y.g(a10)) != null && g10.e0()) {
            c72.a((com.android.tools.r8.internal.C7) g10.d0());
        }
    }
}
