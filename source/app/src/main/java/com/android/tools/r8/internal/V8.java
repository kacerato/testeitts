package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;

public class V8 extends W9 {

    public static final boolean f44964e = true;

    public final a f44965c;

    public final T10 f44966d;

    public enum a {
        f44967b,
        f44968c,
        f44969d,
        f44970e,
        f44971f;

        a() {
        }
    }

    public V8(a aVar, T10 t10) {
        boolean z10 = f44964e;
        if (!z10 && aVar == null) {
            throw new AssertionError();
        }
        if (!z10 && t10 == null) {
            throw new AssertionError();
        }
        this.f44965c = aVar;
        this.f44966d = t10;
    }

    @Override
    public int B() {
        return a(this.f44965c, this.f44966d);
    }

    public a V() {
        return this.f44965c;
    }

    public T10 W() {
        return this.f44966d;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
    }

    @Override
    public final int y() {
        return 1;
    }

    @Override
    public final boolean z() {
        T10 t10 = this.f44966d;
        if (t10 == T10.f44371g || t10 == T10.f44372h) {
            return false;
        }
        a aVar = this.f44965c;
        return aVar == a.f44970e || aVar == a.f44971f;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.O.a(this, w92);
        return 0;
    }

    public static V8 a(int i10) {
        switch (i10) {
            case 96:
                return new V8(a.f44967b, T10.f44369e);
            case 97:
                return new V8(a.f44967b, T10.f44370f);
            case 98:
                return new V8(a.f44967b, T10.f44371g);
            case 99:
                return new V8(a.f44967b, T10.f44372h);
            case 100:
                return new V8(a.f44968c, T10.f44369e);
            case 101:
                return new V8(a.f44968c, T10.f44370f);
            case 102:
                return new V8(a.f44968c, T10.f44371g);
            case 103:
                return new V8(a.f44968c, T10.f44372h);
            case 104:
                return new V8(a.f44969d, T10.f44369e);
            case 105:
                return new V8(a.f44969d, T10.f44370f);
            case 106:
                return new V8(a.f44969d, T10.f44371g);
            case 107:
                return new V8(a.f44969d, T10.f44372h);
            case 108:
                return new V8(a.f44970e, T10.f44369e);
            case 109:
                return new V8(a.f44970e, T10.f44370f);
            case 110:
                return new V8(a.f44970e, T10.f44371g);
            case 111:
                return new V8(a.f44970e, T10.f44372h);
            case 112:
                return new V8(a.f44971f, T10.f44369e);
            case 113:
                return new V8(a.f44971f, T10.f44370f);
            case 114:
                return new V8(a.f44971f, T10.f44371g);
            case 115:
                return new V8(a.f44971f, T10.f44372h);
            default:
                throw new C5417Jv0("Wrong ASM opcode for CfArithmeticBinop " + i10);
        }
    }

    public static int a(a aVar, T10 t10) {
        int i10 = U8.f44678b[t10.ordinal()];
        int i11 = i10 != 1 ? i10 != 2 ? i10 != 3 ? 0 : 3 : 2 : 1;
        int i12 = U8.f44677a[aVar.ordinal()];
        if (i12 == 1) {
            return i11 + 96;
        }
        if (i12 == 2) {
            return i11 + 100;
        }
        if (i12 == 3) {
            return i11 + 104;
        }
        if (i12 == 4) {
            return i11 + 108;
        }
        if (i12 == 5) {
            return i11 + 112;
        }
        throw new C5417Jv0("CfArithmeticBinop has unknown opcode " + ((Object) aVar));
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(B());
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        int i10 = c9775ub.a().f51280a;
        int i11 = c9775ub.a().f51280a;
        int i12 = c9775ub.a(new C8941pb(EnumC5477Kw0.a(this.f44966d))).f51280a;
        int i13 = U8.f44677a[this.f44965c.ordinal()];
        if (i13 == 1) {
            c6382aB.a(this.f44966d, i12, i11, i10);
            return;
        }
        if (i13 == 2) {
            c6382aB.p(this.f44966d, i12, i11, i10);
            return;
        }
        if (i13 == 3) {
            c6382aB.g(this.f44966d, i12, i11, i10);
            return;
        }
        if (i13 == 4) {
            c6382aB.e(this.f44966d, i12, i11, i10);
            return;
        }
        if (i13 == 5) {
            c6382aB.k(this.f44966d, i12, i11, i10);
            return;
        }
        throw new C5417Jv0("CfArithmeticBinop has unknown opcode " + ((Object) this.f44965c));
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        T10 t10 = this.f44966d;
        h92.getClass();
        H9 a10 = h92.a(c4798y, o82, t10.a(c4798y.b()));
        T10 t102 = this.f44966d;
        a10.getClass();
        H9 a11 = a10.a(c4798y, o82, t102.a(c4798y.b()));
        T10 t103 = this.f44966d;
        a11.getClass();
        return a11.a(o82, t103.a(c4798y.b()));
    }
}
