package com.android.tools.r8.internal;

import java.util.function.ToLongFunction;

public class C8382mB implements InterfaceC5580Mq0<C8382mB> {

    public static final boolean f50230d = true;

    public long f50231b;

    public long f50232c;

    public C8382mB() {
    }

    public static C8382mB f() {
        return new C8382mB(0);
    }

    @Override
    public final C8382mB E() {
        return this;
    }

    public final boolean c() {
        boolean a10 = a(2087354105856L);
        if (!f50230d) {
            if (a10 != (a(33) || a(34) || a(37) || a(38) || a(39) || a(40))) {
                throw new AssertionError();
            }
        }
        return a10;
    }

    public final boolean d() {
        boolean a10 = a(1675037245440L);
        if (!f50230d) {
            if (a10 != (a(33) || a(34) || a(39) || a(40))) {
                throw new AssertionError();
            }
        }
        return a10;
    }

    public final boolean e() {
        boolean a10 = a(4611686020574871552L);
        if (!f50230d) {
            if (a10 != (a(31) || a(62))) {
                throw new AssertionError();
            }
        }
        return a10;
    }

    @Override
    public final InterfaceC5638Nq0<C8382mB> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C8382mB.a(abstractC5754Pq0);
            }
        };
    }

    public C8382mB(int i10) {
        this.f50231b = -1L;
        this.f50232c = -1L;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToLongFunction() {
            @Override
            public final long applyAsLong(Object obj) {
                long j10;
                j10 = ((C8382mB) obj).f50231b;
                return j10;
            }
        }).a(new ToLongFunction() {
            @Override
            public final long applyAsLong(Object obj) {
                long j10;
                j10 = ((C8382mB) obj).f50232c;
                return j10;
            }
        });
    }

    public final boolean b() {
        boolean a10 = a(1729382258252447744L);
        if (!f50230d) {
            if (a10 != (a(28) || a(30) || a(59) || a(60))) {
                throw new AssertionError();
            }
        }
        return a10;
    }

    public final boolean a(int i10) {
        if (i10 < 64) {
            return a(1 << i10);
        }
        if (f50230d || i10 < 128) {
            return ((1 << (i10 - 64)) & this.f50232c) != 0;
        }
        throw new AssertionError();
    }

    public final boolean a(long j10) {
        return (j10 & this.f50231b) != 0;
    }

    public final boolean a() {
        boolean z10 = true;
        boolean z11 = a(-8745955291979317223L) || (this.f50232c & 24) != 0;
        if (!f50230d) {
            if (!a(0) && !a(21) && !a(45) && !a(55) && !a(63) && !a(4) && !a(53) && !a(57) && !a(58) && !a(67) && !a(68)) {
                z10 = false;
            }
            if (z11 != z10) {
                throw new AssertionError();
            }
        }
        return z11;
    }
}
