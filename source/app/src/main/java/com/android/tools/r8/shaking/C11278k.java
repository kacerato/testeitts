package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.internal.InterfaceC7033e6;
import com.android.tools.r8.internal.TU;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Supplier;

public final class C11278k {

    public final ConcurrentHashMap f57468a = new ConcurrentHashMap();

    public final C11278k a(boolean z10, Consumer consumer) {
        if (z10) {
            consumer.accept(this);
        }
        return this;
    }

    public final com.android.tools.r8.internal.E4 a(AbstractC4744v2 abstractC4744v2) {
        return (com.android.tools.r8.internal.E4) this.f57468a.computeIfAbsent(abstractC4744v2, TU.a(new Supplier() {
            @Override
            public final Object get() {
                return com.android.tools.r8.internal.F4.a();
            }
        }));
    }

    public final C11295l a() {
        return new C11295l(TU.a(new InterfaceC7033e6() {
            @Override
            public final void forEach(BiConsumer biConsumer) {
                C11278k.this.a(biConsumer);
            }
        }, this.f57468a.size()));
    }

    public final void a(final BiConsumer biConsumer) {
        this.f57468a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11278k.a(BiConsumer.this, (AbstractC4744v2) obj, (com.android.tools.r8.internal.E4) obj2);
            }
        });
    }

    public static void a(BiConsumer biConsumer, AbstractC4744v2 abstractC4744v2, com.android.tools.r8.internal.E4 e42) {
        com.android.tools.r8.internal.F4 a10 = com.android.tools.r8.internal.F4.a(e42.f39742a, e42.f39743b, e42.f39744c);
        if (a10.b()) {
            return;
        }
        biConsumer.accept(abstractC4744v2, a10);
    }
}
