package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.HashSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;

public final class C5212Gg {

    public final C4798y f40555a;

    public final ConcurrentHashMap f40556b;

    public C5212Gg(C4798y c4798y) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f40555a = c4798y;
        this.f40556b = concurrentHashMap;
    }

    public static boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02) {
        return e02 != null;
    }

    public final void a(C5058Dq c5058Dq, com.android.tools.r8.graph.H0 h02) {
        if (h02.getAccessFlags().D()) {
            return;
        }
        c5058Dq.f39661b.add(h02.x());
    }

    public final C5058Dq a(com.android.tools.r8.graph.E0 e02) {
        final C5058Dq c5058Dq = new C5058Dq(new HashSet());
        e02.a(this.f40555a, new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C5212Gg.a((com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5212Gg.this.a(c5058Dq, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2);
            }
        });
        if (!e02.e0()) {
            e02.c(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5212Gg.this.a(c5058Dq, (com.android.tools.r8.graph.H0) obj);
                }
            });
        }
        this.f40556b.put(e02, c5058Dq);
        return c5058Dq;
    }

    public final void a(C5058Dq c5058Dq, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02) {
        C5058Dq c5058Dq2 = (C5058Dq) this.f40556b.get(e02);
        if (c5058Dq2 == null) {
            c5058Dq2 = a(e02);
        }
        c5058Dq.getClass();
        c5058Dq.f39661b.addAll(c5058Dq2.f39661b);
    }
}
