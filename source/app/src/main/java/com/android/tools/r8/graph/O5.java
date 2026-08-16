package com.android.tools.r8.graph;

import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

public final class O5 {

    public static final boolean f36677h = true;

    public final AbstractC4780x0 f36678a;

    public final Set f36679b;

    public final Map f36680c;

    public final Set f36681d;

    public final Set f36682e;

    public final Set f36683f;

    public final Set f36684g;

    public O5(AbstractC4780x0 abstractC4780x0, Set set, Map map, Set set2, Set set3, Set set4, Set set5) {
        this.f36678a = abstractC4780x0;
        this.f36679b = set;
        this.f36680c = map;
        this.f36681d = set2;
        this.f36682e = set3;
        this.f36683f = set4;
        this.f36684g = set5;
    }

    public final void a(A2 a22, Consumer consumer) {
        if (!f36677h && !this.f36680c.containsKey(a22)) {
            throw new AssertionError();
        }
        consumer.accept((H5) this.f36680c.get(a22));
    }

    public final boolean b() {
        return this.f36679b.isEmpty() && this.f36680c.isEmpty() && this.f36681d.isEmpty() && this.f36682e.isEmpty() && this.f36683f.isEmpty() && this.f36684g.isEmpty();
    }

    public final boolean a(C4554l1 c4554l1) {
        return this.f36683f.contains(c4554l1) || this.f36682e.contains(c4554l1.s0());
    }

    public final boolean a(A2 a22) {
        return this.f36684g.contains(a22) || this.f36682e.contains(a22.s0());
    }

    public final boolean a(J2 j22) {
        return ((Boolean) j22.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(O5.this.a((M2) obj));
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(O5.this.a((C4554l1) obj));
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(O5.this.a((A2) obj));
            }
        })).booleanValue();
    }

    public final boolean a(M2 m22) {
        return this.f36682e.contains(m22);
    }

    public final boolean a() {
        return !this.f36682e.isEmpty();
    }
}
