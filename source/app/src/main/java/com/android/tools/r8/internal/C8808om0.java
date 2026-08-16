package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class C8808om0 {

    public final C4798y f51351a;

    public final C7541h80 f51352b = C7541h80.l();

    public final ConcurrentHashMap f51353c = new ConcurrentHashMap();

    public C8808om0(C4798y c4798y) {
        this.f51351a = c4798y;
    }

    public final C8808om0 a(ExecutorService executorService) {
        C5467Kr0.a(new InterfaceC6285Yx() {
            @Override
            public final void forEach(Consumer consumer) {
                C8808om0.this.a(consumer);
            }
        }, new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C8808om0.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }, this.f51351a.E().G(), executorService);
        return this;
    }

    public final void a(final Consumer consumer) {
        C4514j c4514j = (C4514j) this.f51351a.f();
        Consumer<? super com.android.tools.r8.graph.H5> consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8808om0.a(Consumer.this, (com.android.tools.r8.graph.H5) obj);
            }
        };
        Iterator<com.android.tools.r8.graph.H2> it = c4514j.d().iterator();
        while (it.hasNext()) {
            it.next().l(consumer2);
        }
    }

    public static void a(Consumer consumer, com.android.tools.r8.graph.H5 h52) {
        if (h52.d().b1()) {
            consumer.accept(h52);
        }
    }

    public final C8975pm0 a() {
        final C7541h80 k10 = C7541h80.k();
        this.f51352b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((Optional) obj2).ifPresent(new Consumer() {
                    @Override
                    public final void accept(Object obj3) {
                        C8808om0.a(C7541h80.this, r2, (com.android.tools.r8.graph.H5) obj3);
                    }
                });
            }
        });
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f51353c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((Optional) obj2).ifPresent(new Consumer() {
                    @Override
                    public final void accept(Object obj3) {
                        Map.this.put(r2, (com.android.tools.r8.graph.H5) obj3);
                    }
                });
            }
        });
        return new C8975pm0(k10, identityHashMap);
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        h52.a(new C8641nm0(this, this.f51351a, h52));
    }

    public static void a(C7541h80 c7541h80, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        c7541h80.getClass();
        c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, h52), h53);
    }
}
