package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.IC;
import com.android.tools.r8.internal.QC;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C11552c {

    public static final boolean f58231f = true;

    public final C11555d f58232a;

    public IdentityHashMap f58233b = null;

    public IdentityHashMap f58234c = null;

    public IC f58235d = null;

    public IdentityHashMap f58236e = null;

    public C11552c(C11555d c11555d) {
        this.f58232a = c11555d;
    }

    public static List c(M2 m22) {
        return new ArrayList();
    }

    public final C11552c a(X x10) {
        return a(new Y(x10.f58331a, x10.f58332b, ((H2) x10.f58305d).getType()));
    }

    public final void a(AbstractC11602t abstractC11602t) {
        if (abstractC11602t.e()) {
            abstractC11602t.c().a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11552c.this.a((O) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11552c.this.a((X) obj);
                }
            });
        }
    }

    public final C11552c a(Y y10) {
        if (this.f58233b == null) {
            this.f58233b = new IdentityHashMap();
        }
        ((List) this.f58233b.computeIfAbsent(y10.f58310d, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11552c.a((M2) obj);
            }
        })).add(y10);
        return this;
    }

    public static List a(M2 m22) {
        return new ArrayList();
    }

    public final C11552c a(O o10) {
        return a(new P(o10.f58331a, o10.f58332b, o10.f58131d.getReference()));
    }

    public final C11552c a(P p10) {
        if (this.f58234c == null) {
            this.f58234c = new IdentityHashMap();
        }
        ((List) this.f58234c.computeIfAbsent(p10.f58134d.f38297f, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11552c.c((M2) obj);
            }
        })).add(p10);
        return this;
    }

    public final void a(A a10) {
        if (a10.isEmpty()) {
            return;
        }
        if (this.f58236e == null) {
            this.f58236e = new IdentityHashMap();
        }
        a10.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11552c.this.a((M2) obj, (Set) obj2);
            }
        });
    }

    public final void a(M2 m22, Set set) {
        ((Set) this.f58236e.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                Set b10;
                b10 = C4875Al0.b(new M2[0]);
                return b10;
            }
        })).addAll(set);
    }

    public final C11555d a() {
        AbstractC8552nC b10;
        IdentityHashMap identityHashMap = this.f58233b;
        if (identityHashMap == null && this.f58234c == null && this.f58236e == null) {
            if (f58231f || this.f58235d == null) {
                return this.f58232a;
            }
            throw new AssertionError();
        }
        AbstractC8552nC a10 = C11555d.a(identityHashMap, this.f58232a.f58242c);
        AbstractC8552nC a11 = C11555d.a(this.f58234c, this.f58232a.f58241b);
        IC ic2 = this.f58235d;
        QC a12 = ic2 == null ? this.f58232a.f58244e : ic2.a();
        IdentityHashMap identityHashMap2 = this.f58236e;
        if (identityHashMap2 == null) {
            b10 = this.f58232a.f58243d;
        } else {
            b10 = C11555d.b(identityHashMap2, this.f58232a.f58243d);
        }
        return new C11555d(this.f58232a.f58240a, a11, a10, b10, a12);
    }
}
