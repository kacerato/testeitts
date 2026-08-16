package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Y5;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.C7119ef0;
import com.android.tools.r8.shaking.C11245i;
import java.util.IdentityHashMap;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;

public abstract class AbstractC10978o0 {
    public static Y5 a(final C4798y c4798y) {
        final Set a10 = C4875Al0.a(c4798y.e().d());
        ((C11245i) c4798y.f()).f57405t.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC10978o0.a(C4798y.this, a10, (com.android.tools.r8.graph.M2) obj);
            }
        });
        C11245i c11245i = (C11245i) c4798y.f();
        Objects.requireNonNull(a10);
        c11245i.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Set.this.add((com.android.tools.r8.graph.I0) obj);
            }
        });
        C7119ef0 c7119ef0 = Y5.f36986e;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Y5.a(a10, identityHashMap, concurrentHashMap, c4798y);
        return new Y5(concurrentHashMap, identityHashMap, c4798y);
    }

    public static void a(C4798y c4798y, Set set, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 a10 = c4798y.a(m22);
        if (a10 != null) {
            set.add(a10);
        }
    }
}
