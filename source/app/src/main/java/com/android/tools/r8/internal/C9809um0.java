package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.BiConsumer;

public final class C9809um0 extends A8 {
    public C9809um0(C4798y c4798y) {
        super(c4798y);
    }

    public final C9809um0 a(C7541h80 c7541h80) {
        c7541h80.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9809um0.this.a((com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        });
        return this;
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        C9976vm0 c9976vm0 = (C9976vm0) b(h52);
        C9976vm0 c9976vm02 = (C9976vm0) b(h53);
        if (!C9976vm0.f53325e && c9976vm0.f53326c != null) {
            throw new AssertionError();
        }
        if (c9976vm0 == c9976vm02) {
            c9976vm0.getClass();
        } else {
            c9976vm0.f53326c = c9976vm02;
            c9976vm02.f53327d.add(c9976vm0);
        }
    }

    @Override
    public final E00 a(com.android.tools.r8.graph.H5 h52) {
        return new C9976vm0(h52);
    }
}
