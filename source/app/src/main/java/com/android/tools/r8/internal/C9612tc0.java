package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;

public final class C9612tc0 extends C9779uc0 {

    public static final boolean f52638g = true;

    public C9612tc0(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea) {
        for (W9 w92 : h52.d().Q0().V().E0()) {
            boolean z10 = f52638g;
            if (!z10) {
                w92.getClass();
                if (w92 instanceof S9) {
                    throw new AssertionError();
                }
            }
            if (w92.L()) {
                if (a(this.f52898c, w92.j().V())) {
                    C4798y c4798y = this.f52897b;
                    int i10 = AbstractC7552hC.f48487c;
                    C5920Sm0 c5920Sm0 = new C5920Sm0(h52);
                    AbstractC10447yc0.a(c4798y);
                    AbstractC10447yc0.a(c4798y, c5920Sm0, abstractC7103ea, null, abstractC7103ea);
                }
            } else if (w92.I()) {
                C4554l1 field = w92.f().getField();
                C4724u1 c4724u1 = this.f52898c;
                if (!z10 && a(c4724u1, field.f38297f)) {
                    throw new AssertionError((Object) "The java.lang.Record class has no fields.");
                }
                if (a(c4724u1, field.f37449i)) {
                    C4798y c4798y2 = this.f52897b;
                    int i11 = AbstractC7552hC.f48487c;
                    C5920Sm0 c5920Sm02 = new C5920Sm0(h52);
                    AbstractC10447yc0.a(c4798y2);
                    AbstractC10447yc0.a(c4798y2, c5920Sm02, abstractC7103ea, null, abstractC7103ea);
                }
            } else if (w92.U()) {
                if (a(this.f52898c, w92.x().getType())) {
                    C4798y c4798y3 = this.f52897b;
                    int i12 = AbstractC7552hC.f48487c;
                    C5920Sm0 c5920Sm03 = new C5920Sm0(h52);
                    AbstractC10447yc0.a(c4798y3);
                    AbstractC10447yc0.a(c4798y3, c5920Sm03, abstractC7103ea, null, abstractC7103ea);
                }
            }
        }
    }

    public static boolean a(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        if (a(c4724u1, a22.f38297f)) {
            return true;
        }
        com.android.tools.r8.graph.I2 i22 = a22.f36127i;
        if (a(c4724u1, i22.f36440e)) {
            return true;
        }
        for (com.android.tools.r8.graph.M2 m22 : i22.f36441f.f36675b) {
            if (a(c4724u1, m22)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
        return m22 == c4724u1.f38076j2;
    }
}
