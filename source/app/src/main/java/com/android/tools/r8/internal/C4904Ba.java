package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;

public class C4904Ba extends W9 {

    public static final boolean f38939e = true;

    public final T10 f38940c;

    public final T10 f38941d;

    public C4904Ba(T10 t10, T10 t102) {
        boolean z10 = f38939e;
        if (!z10 && t10 == t102) {
            throw new AssertionError();
        }
        if (!z10 && (t10 == T10.f44366b || t10 == T10.f44368d || t10 == T10.f44367c)) {
            throw new AssertionError();
        }
        if (!z10 && ((t102 == T10.f44366b || t102 == T10.f44368d || t102 == T10.f44367c) && t10 != T10.f44369e)) {
            throw new AssertionError();
        }
        this.f38940c = t10;
        this.f38941d = t102;
    }

    @Override
    public final int B() {
        int[] iArr = AbstractC4846Aa.f38631a;
        int i10 = iArr[this.f38940c.ordinal()];
        if (i10 == 4) {
            int i11 = iArr[this.f38941d.ordinal()];
            if (i11 == 5) {
                return 137;
            }
            if (i11 == 6) {
                return 138;
            }
            if (i11 == 7) {
                return 136;
            }
            throw new C5417Jv0("Invalid CfNumberConversion from " + ((Object) this.f38940c) + " to " + ((Object) this.f38941d));
        }
        if (i10 == 5) {
            int i12 = iArr[this.f38941d.ordinal()];
            if (i12 == 4) {
                return 140;
            }
            if (i12 == 6) {
                return 141;
            }
            if (i12 == 7) {
                return 139;
            }
            throw new C5417Jv0("Invalid CfNumberConversion from " + ((Object) this.f38940c) + " to " + ((Object) this.f38941d));
        }
        if (i10 == 6) {
            int i13 = iArr[this.f38941d.ordinal()];
            if (i13 == 4) {
                return 143;
            }
            if (i13 == 5) {
                return 144;
            }
            if (i13 == 7) {
                return 142;
            }
            throw new C5417Jv0("Invalid CfNumberConversion from " + ((Object) this.f38940c) + " to " + ((Object) this.f38941d));
        }
        if (i10 != 7) {
            throw new C5417Jv0("Invalid CfNumberConversion from " + ((Object) this.f38940c) + " to " + ((Object) this.f38941d));
        }
        switch (iArr[this.f38941d.ordinal()]) {
            case 1:
                return 145;
            case 2:
                return 146;
            case 3:
                return 147;
            case 4:
                return 133;
            case 5:
                return 134;
            case 6:
                return 135;
            default:
                throw new C5417Jv0("Invalid CfNumberConversion from " + ((Object) this.f38940c) + " to " + ((Object) this.f38941d));
        }
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
    }

    @Override
    public final int y() {
        return 1;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.O.a(this, w92);
        return 0;
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(B());
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    public static C4904Ba a(int i10) {
        switch (i10) {
            case 133:
                return new C4904Ba(T10.f44369e, T10.f44370f);
            case 134:
                return new C4904Ba(T10.f44369e, T10.f44371g);
            case 135:
                return new C4904Ba(T10.f44369e, T10.f44372h);
            case 136:
                return new C4904Ba(T10.f44370f, T10.f44369e);
            case 137:
                return new C4904Ba(T10.f44370f, T10.f44371g);
            case 138:
                return new C4904Ba(T10.f44370f, T10.f44372h);
            case 139:
                return new C4904Ba(T10.f44371g, T10.f44369e);
            case 140:
                return new C4904Ba(T10.f44371g, T10.f44370f);
            case 141:
                return new C4904Ba(T10.f44371g, T10.f44372h);
            case 142:
                return new C4904Ba(T10.f44372h, T10.f44369e);
            case 143:
                return new C4904Ba(T10.f44372h, T10.f44370f);
            case 144:
                return new C4904Ba(T10.f44372h, T10.f44371g);
            case 145:
                return new C4904Ba(T10.f44369e, T10.f44366b);
            case 146:
                return new C4904Ba(T10.f44369e, T10.f44367c);
            case 147:
                return new C4904Ba(T10.f44369e, T10.f44368d);
            default:
                throw new C5417Jv0("Unexpected CfNumberConversion opcode " + i10);
        }
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        int i10 = c9775ub.a().f51280a;
        T10 t10 = this.f38941d;
        c6382aB.a(t10, this.f38940c, c9775ub.a(new C8941pb(EnumC5477Kw0.a(t10))).f51280a, i10);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        T10 t10 = this.f38940c;
        h92.getClass();
        H9 a10 = h92.a(c4798y, o82, t10.a(c4798y.b()));
        T10 t102 = this.f38941d;
        a10.getClass();
        return a10.a(o82, t102.a(c4798y.b()));
    }
}
