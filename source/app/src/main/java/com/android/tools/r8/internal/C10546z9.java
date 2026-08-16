package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.Function;
import java.util.function.ToLongFunction;

public class C10546z9 extends W9 {

    public static final boolean f54293e = true;

    public final long f54294c;

    public final EnumC5477Kw0 f54295d;

    public C10546z9(long j10, EnumC5477Kw0 enumC5477Kw0) {
        if (!f54293e && enumC5477Kw0.a()) {
            throw new AssertionError((Object) "Should use CfConstNull");
        }
        this.f54294c = j10;
        this.f54295d = enumC5477Kw0;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToLongFunction() {
            @Override
            public final long applyAsLong(Object obj) {
                return ((C10546z9) obj).V();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C10546z9) obj).W();
            }
        });
    }

    @Override
    public final int B() {
        return -1;
    }

    @Override
    public final int C() {
        return 203;
    }

    @Override
    public final boolean E() {
        return false;
    }

    public long V() {
        return this.f54294c;
    }

    public final EnumC5477Kw0 W() {
        return this.f54295d;
    }

    @Override
    public final int y() {
        int i10 = AbstractC10379y9.f53957a[this.f54295d.ordinal()];
        if (i10 == 1) {
            if (!f54293e && this.f54295d != EnumC5477Kw0.f41825c) {
                throw new AssertionError();
            }
            int i11 = (int) this.f54294c;
            if (-1 > i11 || i11 > 5) {
                return (-128 > i11 || i11 > 127) ? 3 : 2;
            }
            return 1;
        }
        if (i10 == 2) {
            if (!f54293e && this.f54295d != EnumC5477Kw0.f41827e) {
                throw new AssertionError();
            }
            long j10 = this.f54294c;
            return (j10 == 0 || j10 == 1) ? 1 : 3;
        }
        if (i10 == 3) {
            if (!f54293e && this.f54295d != EnumC5477Kw0.f41826d) {
                throw new AssertionError();
            }
            float intBitsToFloat = Float.intBitsToFloat((int) this.f54294c);
            if (intBitsToFloat == 0.0f || intBitsToFloat == 1.0f || intBitsToFloat == 2.0f) {
                return Float.floatToIntBits(intBitsToFloat) == Float.floatToIntBits(-0.0f) ? 2 : 1;
            }
            return 3;
        }
        if (i10 != 4) {
            throw new C5417Jv0("Non supported type in cf backend: " + ((Object) this.f54295d));
        }
        if (!f54293e && this.f54295d != EnumC5477Kw0.f41828f) {
            throw new AssertionError();
        }
        double longBitsToDouble = Double.longBitsToDouble(this.f54294c);
        if (longBitsToDouble == 0.0d || longBitsToDouble == 1.0d) {
            return Double.doubleToLongBits(longBitsToDouble) == Double.doubleToLongBits(-0.0d) ? 2 : 1;
        }
        return 3;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        return abstractC8953pf.a(this, (C10546z9) w92, new DE1());
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        DE1 de1 = new DE1();
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.getClass();
        de1.a(new C9380sA(this, c9547tA));
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        int i10 = AbstractC10379y9.f53957a[this.f54295d.ordinal()];
        if (i10 == 1) {
            if (!f54293e && this.f54295d != EnumC5477Kw0.f41825c) {
                throw new AssertionError();
            }
            int i11 = (int) this.f54294c;
            if (-1 <= i11 && i11 <= 5) {
                ex.a(i11 + 3);
                return;
            }
            if (-128 <= i11 && i11 <= 127) {
                ex.b(16, i11);
                return;
            } else if (-32768 <= i11 && i11 <= 32767) {
                ex.b(17, i11);
                return;
            } else {
                ex.a(Integer.valueOf(i11));
                return;
            }
        }
        if (i10 == 2) {
            if (!f54293e && this.f54295d != EnumC5477Kw0.f41827e) {
                throw new AssertionError();
            }
            long j10 = this.f54294c;
            if (j10 != 0 && j10 != 1) {
                ex.a(Long.valueOf(j10));
                return;
            } else {
                ex.a(((int) j10) + 9);
                return;
            }
        }
        if (i10 == 3) {
            if (!f54293e && this.f54295d != EnumC5477Kw0.f41826d) {
                throw new AssertionError();
            }
            float intBitsToFloat = Float.intBitsToFloat((int) this.f54294c);
            if (intBitsToFloat != 0.0f && intBitsToFloat != 1.0f && intBitsToFloat != 2.0f) {
                ex.a(Float.valueOf(intBitsToFloat));
                return;
            }
            ex.a(((int) intBitsToFloat) + 11);
            if (Float.floatToIntBits(intBitsToFloat) == Float.floatToIntBits(-0.0f)) {
                ex.a(118);
                return;
            }
            return;
        }
        if (i10 == 4) {
            if (!f54293e && this.f54295d != EnumC5477Kw0.f41828f) {
                throw new AssertionError();
            }
            double longBitsToDouble = Double.longBitsToDouble(this.f54294c);
            if (longBitsToDouble != 0.0d && longBitsToDouble != 1.0d) {
                ex.a(Double.valueOf(longBitsToDouble));
                return;
            }
            ex.a(((int) longBitsToDouble) + 14);
            if (Double.doubleToLongBits(longBitsToDouble) == Double.doubleToLongBits(-0.0d)) {
                ex.a(119);
                return;
            }
            return;
        }
        throw new C5417Jv0("Non supported type in cf backend: " + ((Object) this.f54295d));
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        D70 d10 = this.f54295d.d();
        EnumC5477Kw0 enumC5477Kw0 = this.f54295d;
        c9775ub.getClass();
        c6382aB.a(d10, c9775ub.a(new C8941pb(enumC5477Kw0)).f51280a, this.f54294c);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        if (!f54293e && this.f54295d.a()) {
            throw new AssertionError();
        }
        EnumC5477Kw0 enumC5477Kw0 = this.f54295d;
        h92.getClass();
        return h92.a(o82, enumC5477Kw0.a(c4798y.b()));
    }
}
