package com.android.tools.r8.internal;

import java.util.LinkedList;
import java.util.function.Consumer;

public final class BA {

    public static final boolean f38843b = true;

    public final C8534n6 f38844a = C8534n6.a();

    public final void a(final AA aa2) {
        aa2.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                BA.this.a(aa2, (com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public final void a(AA aa2, com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.M2 type = h22.getType();
        com.android.tools.r8.graph.M2 type2 = aa2.f38555d.getType();
        if (!f38843b && this.f38844a.f49890b.containsKey(type)) {
            throw new AssertionError();
        }
        this.f38844a.a(type, type2);
    }

    public final BA a(LinkedList linkedList) {
        linkedList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                BA.this.a((AA) obj);
            }
        });
        return this;
    }
}
