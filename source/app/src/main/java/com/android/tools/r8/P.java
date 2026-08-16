package com.android.tools.r8;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Consumer;

public class P {

    public static final boolean f35404a = true;

    public static void a(C4724u1 c4724u1, int i10, Consumer<com.android.tools.r8.graph.M2> consumer) {
        consumer.accept(c4724u1.f37927P2);
        consumer.accept(c4724u1.f37934Q2);
        consumer.accept(c4724u1.f38076j2);
        consumer.accept(c4724u1.f37913N2);
    }

    public static void a(final C4798y c4798y) {
        a(c4798y.b(), c4798y.E().z().d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                P.a(C4798y.this, (com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public static void a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        if (!f35404a && !c4798y.f().e(m22)) {
            throw new AssertionError();
        }
    }
}
