package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.TU;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

public class T4 {

    public static final boolean f36825e = true;

    public final Function f36826a;

    public final boolean f36827b;

    public final IdentityHashMap f36828c = new IdentityHashMap();

    public final Set f36829d = AbstractC5513Ll0.c();

    public T4(Function function, boolean z10) {
        this.f36826a = function;
        this.f36827b = z10;
    }

    public boolean a(E0 e02) {
        Map map = (Map) this.f36828c.get(e02);
        if (!f36825e && map == null) {
            throw new AssertionError();
        }
        for (S4 s42 : map.values()) {
            s42.getClass();
            if (s42 != S4.f36797b) {
                return true;
            }
        }
        return false;
    }

    public final void a(final E0 e02, final Set set, final M2 m22) {
        if (!set.isEmpty() || this.f36829d.add(m22)) {
            final InterfaceC4364b0 interfaceC4364b0 = (InterfaceC4364b0) this.f36826a.apply(m22);
            interfaceC4364b0.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    T4.this.a(e02, interfaceC4364b0, set, m22, (E0) obj);
                }
            });
        }
    }

    public void a(M2 m22, E0 e02) {
        a(e02, Collections.EMPTY_SET, m22);
    }

    public final void a(E0 e02, InterfaceC4364b0 interfaceC4364b0, final Set set, M2 m22, final E0 e03) {
        if (this.f36827b && e02.f0() && !e03.f0()) {
            return;
        }
        if (interfaceC4364b0.n()) {
            set = C4875Al0.a(set);
            set.add(new S4(m22));
        }
        final Map map = (Map) this.f36828c.computeIfAbsent(e03, TU.a(new Ra()));
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                T4.a(Map.this, (S4) obj);
            }
        });
        e03.f36248h.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                T4.this.a(e03, set, (M2) obj);
            }
        });
        M2 m23 = e03.f36247g;
        if (m23 != null) {
            a(e03, set, m23);
        }
    }

    public static void a(Map map, S4 s42) {
        S4 s43;
        S4 s44 = (S4) map.get(s42.f36798a);
        if (s44 == null) {
            map.put(s42.f36798a, s42);
        } else {
            if (s44 == s42 || s44 == (s43 = S4.f36797b)) {
                return;
            }
            map.put(s42.f36798a, s43);
        }
    }
}
