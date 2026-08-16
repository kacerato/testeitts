package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.BiConsumer;

public interface InterfaceC8352m1 {
    InterfaceC8185l1 a();

    default InterfaceC8352m1 a(final C4798y c4798y) {
        return a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                InterfaceC8352m1.a(C4798y.this, (InterfaceC8686o1) obj, (InterfaceC8185l1) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                InterfaceC8352m1.a(C4798y.this, (InterfaceC9020q1) obj, (InterfaceC8185l1) obj2);
            }
        });
    }

    void a(InterfaceC6160Wr0 interfaceC6160Wr0, InterfaceC6160Wr0 interfaceC6160Wr02);

    boolean a(com.android.tools.r8.graph.A2 a22);

    boolean a(com.android.tools.r8.graph.M2 m22);

    InterfaceC9020q1 b(com.android.tools.r8.graph.A2 a22);

    static void a(C4798y c4798y, InterfaceC8686o1 interfaceC8686o1, InterfaceC8185l1 interfaceC8185l1) {
        com.android.tools.r8.graph.M2 reference = interfaceC8686o1.getReference();
        interfaceC8185l1.getClass();
        com.android.tools.r8.graph.H2 c10 = c4798y.e().c(reference);
        if (c10 == null || !interfaceC8185l1.a(c10.getType())) {
            return;
        }
        interfaceC8185l1.a(c10, c4798y);
    }

    static void a(C4798y c4798y, InterfaceC9020q1 interfaceC9020q1, InterfaceC8185l1 interfaceC8185l1) {
        com.android.tools.r8.graph.M2 s02 = interfaceC9020q1.c().s0();
        interfaceC8185l1.getClass();
        com.android.tools.r8.graph.H2 c10 = c4798y.e().c(s02);
        if (c10 != null && interfaceC8185l1.a(c10.getType())) {
            interfaceC8185l1.a(c10, c4798y);
        }
        interfaceC8185l1.a(interfaceC9020q1);
    }

    default InterfaceC8352m1 a(final BiConsumer biConsumer, final BiConsumer biConsumer2) {
        final InterfaceC8185l1 a10 = a();
        a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                BiConsumer.this.accept((InterfaceC8686o1) obj, a10);
            }
        }, new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                BiConsumer.this.accept((InterfaceC9020q1) obj, a10);
            }
        });
        return a10.build();
    }
}
