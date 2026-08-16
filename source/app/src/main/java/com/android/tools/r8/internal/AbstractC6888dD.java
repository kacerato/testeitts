package com.android.tools.r8.internal;

import java.util.function.Consumer;

public abstract class AbstractC6888dD {

    public static final boolean f47321a = true;

    public static void b(C6286Yx0 c6286Yx0, AbstractC5420Jx abstractC5420Jx) {
        if (!f47321a) {
            abstractC5420Jx.getClass();
            throw new AssertionError();
        }
        for (AbstractC5420Jx abstractC5420Jx2 : abstractC5420Jx.f41532a) {
            abstractC5420Jx2.getClass();
            c6286Yx0.b((C6286Yx0) abstractC5420Jx2);
        }
    }

    public static void a(C5246Gx c5246Gx) {
        c5246Gx.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C5362Ix) obj).getClass();
            }
        });
        c5246Gx.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C5478Kx) obj).getClass();
            }
        });
        final C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c5246Gx.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC6888dD.a(C6286Yx0.this, (AbstractC5420Jx) obj);
            }
        });
        c6286Yx0.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC6888dD.b(C6286Yx0.this, (AbstractC5420Jx) obj);
            }
        });
    }

    public static void a(C6286Yx0 c6286Yx0, AbstractC5420Jx abstractC5420Jx) {
        abstractC5420Jx.getClass();
    }
}
