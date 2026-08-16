package com.android.tools.r8.internal;

import java.util.function.Function;

public final class OS extends KS implements InterfaceC5580Mq0 {

    public static final boolean f42883d = true;

    public final int[] f42884b;

    public final int[] f42885c;

    public OS(int[] iArr, int[] iArr2) {
        if (!f42883d && iArr.length != iArr2.length) {
            throw new AssertionError();
        }
        this.f42884b = iArr;
        this.f42885c = iArr2;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int R() {
        return 9;
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                OS.a(abstractC5754Pq0);
            }
        };
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.d(new Function() {
            @Override
            public final Object apply(Object obj) {
                int[] iArr;
                iArr = ((OS) obj).f42884b;
                return iArr;
            }
        }).d(new Function() {
            @Override
            public final Object apply(Object obj) {
                int[] iArr;
                iArr = ((OS) obj).f42885c;
                return iArr;
            }
        });
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        a(abstractC9213rA);
    }

    @Override
    public final int a(YS ys, AbstractC8953pf abstractC8953pf) {
        return a((OS) ys, abstractC8953pf);
    }
}
