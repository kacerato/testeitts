package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.C6162Ws0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.C8085kR;
import com.android.tools.r8.internal.C9546t91;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.TU;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.Supplier;

public final class N4 {

    public static final boolean f56835c = true;

    public final ConcurrentHashMap f56836a = new ConcurrentHashMap();

    public final ConcurrentHashMap f56837b = new ConcurrentHashMap();

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22) {
        if (!f56835c && d(m22, a22)) {
            throw new AssertionError();
        }
        ((Set) this.f56837b.computeIfAbsent(m22, TU.a(new Supplier() {
            @Override
            public final Object get() {
                return ConcurrentHashMap.newKeySet();
            }
        }))).add(a22);
    }

    public final com.android.tools.r8.graph.H0 b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22) {
        return (com.android.tools.r8.graph.H0) ((Map) this.f56836a.getOrDefault(m22, Collections.EMPTY_MAP)).get(a22);
    }

    public final boolean c(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22) {
        return ((Set) this.f56837b.getOrDefault(m22, Collections.EMPTY_SET)).contains(a22);
    }

    public final boolean d(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22) {
        return ((Map) this.f56836a.getOrDefault(m22, Collections.EMPTY_MAP)).containsKey(a22);
    }

    public final com.android.tools.r8.graph.H0 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H0 h02) {
        if (h02 == null) {
            a(m22, a22);
            return null;
        }
        boolean z10 = f56835c;
        if (!z10 && h02.d() == C4516j1.f37311v) {
            throw new AssertionError();
        }
        if (!z10 && c(m22, a22)) {
            throw new AssertionError();
        }
        if (!z10 && d(m22, a22) && !b(m22, a22).a(h02)) {
            throw new AssertionError();
        }
        ((Map) this.f56836a.computeIfAbsent(m22, TU.a(new C9546t91()))).put(a22, h02);
        return h02;
    }

    public final void a(com.android.tools.r8.graph.M2 m22, final C11245i c11245i) {
        this.f56836a.remove(m22);
        this.f56837b.remove(m22);
        final Set c10 = AbstractC5513Ll0.c();
        c11245i.f57405t.a(m22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N4.this.a(c11245i, c10, (com.android.tools.r8.graph.H2) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N4.a((C8085kR) obj);
            }
        }, c11245i);
    }

    public final void a(C11245i c11245i, final Set set, com.android.tools.r8.graph.H2 h22) {
        c11245i.b(h22, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return N4.this.a(set, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2, (Boolean) obj3);
            }
        });
    }

    public final AbstractC6333Zs0 a(Set set, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, Boolean bool) {
        if (set.add(m22)) {
            this.f56836a.remove(m22);
            this.f56837b.remove(m22);
            return C6276Ys0.f46097c;
        }
        return C6162Ws0.f45559c;
    }

    public static void a(C8085kR c8085kR) {
        if (!f56835c) {
            throw new AssertionError();
        }
    }
}
