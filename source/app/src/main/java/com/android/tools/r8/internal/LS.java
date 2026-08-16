package com.android.tools.r8.internal;

import java.util.function.Function;

public final class LS extends KS implements InterfaceC5580Mq0 {

    public static final boolean f41956d = true;

    public final int[] f41957b;

    public final int[] f41958c;

    public LS(int[] iArr, int[] iArr2) {
        if (!f41956d && iArr.length != iArr2.length) {
            throw new AssertionError();
        }
        this.f41957b = iArr;
        this.f41958c = iArr2;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int R() {
        return 8;
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                LS.a(abstractC5754Pq0);
            }
        };
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.d(new Function() {
            @Override
            public final Object apply(Object obj) {
                int[] iArr;
                iArr = ((LS) obj).f41957b;
                return iArr;
            }
        }).d(new Function() {
            @Override
            public final Object apply(Object obj) {
                int[] iArr;
                iArr = ((LS) obj).f41958c;
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
        return a((LS) ys, abstractC8953pf);
    }
}
