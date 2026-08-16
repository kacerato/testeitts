package com.android.tools.r8.internal;

import java.util.function.Function;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

public final class JS extends KS implements InterfaceC5580Mq0 {

    public final int f41398b;

    public final long f41399c;

    public final short[] f41400d;

    public JS(int i10, long j10, short[] sArr) {
        this.f41398b = i10;
        this.f41399c = j10;
        this.f41400d = sArr;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int R() {
        return 10;
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                JS.a(abstractC5754Pq0);
            }
        };
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((JS) obj).f41398b;
                return i10;
            }
        }).a(new ToLongFunction() {
            @Override
            public final long applyAsLong(Object obj) {
                long j10;
                j10 = ((JS) obj).f41399c;
                return j10;
            }
        }).k(new Function() {
            @Override
            public final Object apply(Object obj) {
                short[] sArr;
                sArr = ((JS) obj).f41400d;
                return sArr;
            }
        });
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        a(abstractC9213rA);
    }

    @Override
    public final int a(YS ys, AbstractC8953pf abstractC8953pf) {
        return a((JS) ys, abstractC8953pf);
    }
}
