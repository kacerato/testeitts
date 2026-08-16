package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.Consumer;

public interface InterfaceC8185l1 {
    InterfaceC8185l1 a(InterfaceC8686o1 interfaceC8686o1);

    InterfaceC8185l1 a(InterfaceC9020q1 interfaceC9020q1);

    InterfaceC8185l1 a(InterfaceC9186r1 interfaceC9186r1);

    default void a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.H2 c10 = c4798y.e().c(m22);
        if (c10 == null || !a(c10.getType())) {
            return;
        }
        a(c10, c4798y);
    }

    boolean a(com.android.tools.r8.graph.M2 m22);

    InterfaceC8352m1 build();

    default void a(com.android.tools.r8.graph.H2 h22, final C4798y c4798y) {
        h22.e(new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC8185l1.this.a(c4798y, (com.android.tools.r8.graph.M2) obj);
            }
        });
    }
}
