package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC10330xt;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C10504yv0;
import com.android.tools.r8.internal.C5630Nm0;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC7158es0;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public final class C11295l {

    public static final boolean f57487b = true;

    public final IdentityHashMap f57488a;

    public C11295l(IdentityHashMap identityHashMap) {
        if (!f57487b && !identityHashMap.values().stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((com.android.tools.r8.internal.F4) obj).b();
            }
        })) {
            throw new AssertionError();
        }
        this.f57488a = identityHashMap;
    }

    public static C11278k a() {
        return new C11278k();
    }

    public final C11295l a(final C4798y c4798y, final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f57488a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11295l.a(AbstractC5308Hz.this, abstractC5308Hz2, c4798y, identityHashMap, (AbstractC4744v2) obj, (com.android.tools.r8.internal.F4) obj2);
            }
        });
        return new C11295l(identityHashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final com.android.tools.r8.internal.F4 a(AbstractC4744v2 abstractC4744v2) {
        return (com.android.tools.r8.internal.F4) this.f57488a.getOrDefault(abstractC4744v2, com.android.tools.r8.internal.F4.f40085d);
    }

    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.F0 f02) {
        com.android.tools.r8.internal.F1 f12 = a(f02.getReference()).f40088b;
        return f12.r() && f12.w().a(c4798y);
    }

    public final C11295l a(final C4798y c4798y, final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2, C8659ns0 c8659ns0) {
        return (C11295l) c8659ns0.a("Rewrite AssumeInfoCollection", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C11295l.this.a(c4798y, abstractC5308Hz, abstractC5308Hz2);
            }
        });
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, C4798y c4798y, Map map, AbstractC4744v2 abstractC4744v2, com.android.tools.r8.internal.F4 f42) {
        com.android.tools.r8.graph.E d10;
        C4554l1 c4554l1;
        C4554l1 d11;
        abstractC5308Hz.getClass();
        if (abstractC4744v2.p0()) {
            d10 = abstractC5308Hz.d(abstractC5308Hz2, abstractC4744v2.l0());
        } else {
            d10 = abstractC5308Hz.d(abstractC5308Hz2, abstractC4744v2.n0());
        }
        if (!com.android.tools.r8.internal.F4.f40086e && !f42.f40087a.j() && !f42.f40087a.l()) {
            throw new AssertionError();
        }
        if (f42.f40088b.f0() && (d11 = abstractC5308Hz.d(AbstractC5308Hz.g(), (c4554l1 = f42.f40088b.N().f40306c))) != c4554l1) {
            c4798y.f38427t.getClass();
            f42 = com.android.tools.r8.internal.F4.a(f42.f40087a, new C5630Nm0(d11), f42.f40089c);
        }
        if (!f57487b && f42.b()) {
            throw new AssertionError();
        }
        map.put(d10, f42);
    }

    public final C11295l a(final com.android.tools.r8.graph.O5 o52, C8659ns0 c8659ns0) {
        c8659ns0.b("Prune AssumeInfoCollection");
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f57488a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11295l.a(com.android.tools.r8.graph.O5.this, identityHashMap, (AbstractC4744v2) obj, (com.android.tools.r8.internal.F4) obj2);
            }
        });
        C11295l c11295l = new C11295l(identityHashMap);
        c8659ns0.d();
        return c11295l;
    }

    public static void a(com.android.tools.r8.graph.O5 o52, Map map, AbstractC4744v2 abstractC4744v2, com.android.tools.r8.internal.F4 f42) {
        if (o52.a(abstractC4744v2)) {
            return;
        }
        if (!com.android.tools.r8.internal.F4.f40086e && !f42.f40087a.j() && !f42.f40087a.l()) {
            throw new AssertionError();
        }
        if (f42.f40088b.f0() && o52.a(f42.f40088b.N().f40306c)) {
            AbstractC10330xt abstractC10330xt = f42.f40087a;
            int i10 = com.android.tools.r8.internal.F1.f40064a;
            f42 = com.android.tools.r8.internal.F4.a(abstractC10330xt, C10504yv0.f54195b, f42.f40089c);
        }
        if (f42.b()) {
            return;
        }
        map.put(abstractC4744v2, f42);
    }
}
