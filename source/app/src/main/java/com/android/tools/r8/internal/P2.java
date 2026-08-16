package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class P2 extends AbstractC10377y80 {
    public P2(I50 i50) {
        super(i50);
    }

    @Override
    public final A50 a(M2 m22, String str, String str2, final Consumer consumer) {
        if (m22.ordinal() != 0) {
            return null;
        }
        B50 b50 = new B50(this.f53951a.b(str), str2);
        final L2 l22 = new L2(b50);
        return new A50(b50, l22, new Runnable() {
            @Override
            public final void run() {
                P2.a(Consumer.this, l22);
            }
        });
    }

    public static void a(Consumer consumer, L2 l22) {
        IM im2;
        if (l22.a()) {
            im2 = l22.c();
        } else {
            im2 = IM.f41062d;
        }
        consumer.accept(im2);
    }
}
