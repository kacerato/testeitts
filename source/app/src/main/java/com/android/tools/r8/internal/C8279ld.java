package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C8279ld {

    public static final boolean f50013d = true;

    public final C4798y f50014a;

    public final AA f50015b;

    public List f50016c;

    public C8279ld(C4798y c4798y, AA aa2) {
        this.f50014a = c4798y;
        this.f50015b = aa2;
    }

    public static boolean a(C9675tx0 c9675tx0) {
        return !(c9675tx0.b() || c9675tx0.c());
    }

    public final LinkedHashMap b() {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f50015b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8279ld.a(Map.this, (com.android.tools.r8.graph.H2) obj);
            }
        });
        return linkedHashMap;
    }

    public final void c() {
        if (this.f50016c.stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8279ld.a((C9675tx0) obj);
            }
        })) {
            if (!f50013d && !this.f50014a.m()) {
                throw new AssertionError();
            }
            a();
        }
    }

    public static boolean a(C4554l1 c4554l1, com.android.tools.r8.graph.H2 h22) {
        return h22.f36251k.f37700b.a(c4554l1) == null;
    }

    public static void a(final Map map, com.android.tools.r8.graph.H2 h22) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8279ld.a(Map.this, (com.android.tools.r8.graph.H5) obj);
            }
        };
        h22.getClass();
        h22.j(consumer, EnumC6871d70.f47286b);
    }

    public static void a(Map map, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        ((C9341rx0) map.computeIfAbsent(AbstractC9280rd.a(reference, reference), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8279ld.a((com.android.tools.r8.graph.F2) obj);
            }
        })).f52228a.add(h52);
    }

    public static C9341rx0 a(com.android.tools.r8.graph.F2 f22) {
        return new C9341rx0();
    }

    public final void a() {
        this.f50015b.f38554c = this.f50014a.b().a(this.f50015b.f38555d.getType(), this.f50014a.b().f37884J1, "$r8$classId", new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8279ld.this.a((C4554l1) obj);
            }
        });
    }

    public final boolean a(final C4554l1 c4554l1) {
        return AbstractC9907vK.a(this.f50015b.f38553b, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C8279ld.a(C4554l1.this, (com.android.tools.r8.graph.H2) obj);
            }
        });
    }
}
