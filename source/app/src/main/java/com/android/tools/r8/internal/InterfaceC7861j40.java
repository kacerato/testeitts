package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import java.util.function.Consumer;

public interface InterfaceC7861j40 {
    void a(C4460g1 c4460g1, VY vy);

    default void a(AbstractC4479h1 abstractC4479h1) {
        final KV D02 = abstractC4479h1.D0();
        if (D02.d()) {
            abstractC4479h1.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    InterfaceC7861j40.this.a(D02, (C4460g1) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    InterfaceC7861j40.this.a(D02, (C4516j1) obj);
                }
            });
        }
    }

    void a(C4516j1 c4516j1, WY wy);

    default void a(KV kv, C4460g1 c4460g1) {
        a(c4460g1, kv.b());
    }

    default void a(KV kv, C4516j1 c4516j1) {
        a(c4516j1, kv.c());
    }
}
