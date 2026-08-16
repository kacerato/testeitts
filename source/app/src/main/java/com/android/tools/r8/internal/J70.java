package com.android.tools.r8.internal;

import com.android.tools.r8.internal.InterfaceC8853p1;
import com.android.tools.r8.internal.InterfaceC9020q1;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public class J70<MethodRule extends InterfaceC9020q1, MethodRuleBuilder extends InterfaceC8853p1> {

    public static final boolean f41297c = true;

    public final ConcurrentHashMap f41298a = new ConcurrentHashMap();

    public final ConcurrentHashMap f41299b = new ConcurrentHashMap();

    public void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        ((Set) this.f41299b.computeIfAbsent(a22, TU.a(new C7738iJ0()))).add(a23);
        ((Set) this.f41298a.computeIfAbsent(a23, TU.a(new C7738iJ0()))).add(a22);
    }

    public void a(final Map<com.android.tools.r8.graph.A2, MethodRuleBuilder> map) {
        Set o10 = this.f41298a.o();
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((Iterable) o10);
        c6286Yx0.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                J70.this.a(map, (com.android.tools.r8.graph.A2) obj, (C6286Yx0) obj2);
            }
        });
    }

    public final void a(Map map, com.android.tools.r8.graph.A2 a22, final C6286Yx0 c6286Yx0) {
        InterfaceC8853p1 interfaceC8853p1 = (InterfaceC8853p1) map.get(a22);
        for (final com.android.tools.r8.graph.A2 a23 : (Set) this.f41298a.getOrDefault(a22, Collections.EMPTY_SET)) {
            ((InterfaceC8853p1) map.get(a23)).a(interfaceC8853p1, new Runnable() {
                @Override
                public final void run() {
                    C6286Yx0.this.c(a23);
                }
            });
        }
    }

    public boolean a() {
        Set c10 = AbstractC5513Ll0.c();
        for (com.android.tools.r8.graph.A2 a22 : this.f41298a.o()) {
            if (c10.add(a22)) {
                c10.addAll(a(a22));
            }
        }
        return true;
    }

    public Set<com.android.tools.r8.graph.A2> a(com.android.tools.r8.graph.A2 a22) {
        final Set c10 = AbstractC5513Ll0.c();
        final Set c11 = AbstractC5513Ll0.c();
        final C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) a22);
        c6286Yx0.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                J70.this.a(c10, c11, c6286Yx0, (com.android.tools.r8.graph.A2) obj);
            }
        });
        if (f41297c || c11.isEmpty()) {
            return c6286Yx0.a();
        }
        throw new AssertionError();
    }

    public final void a(Set set, Set set2, C6286Yx0 c6286Yx0, com.android.tools.r8.graph.A2 a22) {
        if (set.add(a22)) {
            set2.add(a22);
            c6286Yx0.f46125a.addFirst(a22);
            for (com.android.tools.r8.graph.A2 a23 : (Set) this.f41298a.getOrDefault(a22, Collections.EMPTY_SET)) {
                if (!f41297c && set2.contains(a23)) {
                    throw new AssertionError((Object) "Found a cycle");
                }
                c6286Yx0.a(a23);
            }
            return;
        }
        boolean remove = set2.remove(a22);
        if (!f41297c && !remove) {
            throw new AssertionError();
        }
    }
}
