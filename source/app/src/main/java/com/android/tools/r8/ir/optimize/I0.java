package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C10394yE;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.IH;
import com.android.tools.r8.internal.M1;

public abstract class I0 {

    public static final G0 f54759a;

    public static final boolean f54760b = true;

    static {
        int i10 = AbstractC7552hC.f48487c;
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        f54759a = new G0(3, c6190Xe0, c6190Xe0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.AbstractCollection, java.util.List] */
    public static G0 a(C7215fB c7215fB, C0 c02) {
        H0 h02 = new H0();
        AbstractC6333Zs0 a10 = new B0(new IH(), c02, h02).a(c7215fB.k());
        if (a10.c()) {
            h02.f54755c = 3;
        } else {
            F0 f02 = (F0) a10.b().e();
            h02.f54755c = f02.f54738a;
            h02.f54754b = f02.f54739b;
        }
        if (E0.a(h02.f54755c)) {
            return f54759a;
        }
        return new G0(h02.f54755c, h02.f54753a, h02.f54754b);
    }

    public static G0 a(final C4798y c4798y, C7215fB c7215fB) {
        if (!f54760b && !c7215fB.j().d().r1()) {
            throw new AssertionError();
        }
        final C10340xw0 m10 = c7215fB.m();
        if (!m10.P()) {
            return f54759a;
        }
        final H5 j10 = c7215fB.j();
        return a(c7215fB, new C0() {
            @Override
            public final int a(AbstractC10561zE abstractC10561zE) {
                return com.android.tools.r8.ir.optimize.I0.a(C10340xw0.this, c4798y, j10, abstractC10561zE);
            }
        });
    }

    public static int a(C10340xw0 c10340xw0, C4798y c4798y, H5 h52, AbstractC10561zE abstractC10561zE) {
        return ((abstractC10561zE.Q1() && abstractC10561zE.f0().C2() == c10340xw0) || (abstractC10561zE.J1() && abstractC10561zE.X().n() == c10340xw0) || (abstractC10561zE.X1() && ((C10340xw0) abstractC10561zE.o0().f54321f.get(0)) == c10340xw0)) ? !abstractC10561zE.b().z() ? 2 : 3 : abstractC10561zE.b(c4798y, h52, M1.a(c4798y, h52), C10394yE.f53978a) ? 3 : 1;
    }

    public static G0 a(final C4798y c4798y, final H5 h52, final C7215fB c7215fB) {
        if (f54760b || c7215fB.j().d().w0()) {
            return a(c7215fB, new C0() {
                @Override
                public final int a(AbstractC10561zE abstractC10561zE) {
                    return com.android.tools.r8.ir.optimize.I0.a(C7215fB.this, h52, c4798y, abstractC10561zE);
                }
            });
        }
        throw new AssertionError();
    }

    public static int a(C7215fB c7215fB, H5 h52, C4798y c4798y, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.a(c7215fB.j().p(), h52, c4798y, 1, 1) ? !abstractC10561zE.b().z() ? 2 : 3 : (abstractC10561zE.Q1() || abstractC10561zE.b(c4798y, h52, M1.a(c4798y, h52), C10394yE.f53978a)) ? 3 : 1;
    }
}
