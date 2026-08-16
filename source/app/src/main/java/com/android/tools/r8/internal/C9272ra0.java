package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;

public final class C9272ra0 implements KD {

    public static final boolean f52068c = true;

    public final KD f52069a;

    public final C5485La0 f52070b;

    public C9272ra0(C4798y c4798y, KD kd2) {
        this.f52069a = kd2;
        this.f52070b = c4798y.f38388C.f42929h;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.U a(VJ vj2, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, com.android.tools.r8.ir.optimize.H h10, JD jd2, AbstractC6931dX abstractC6931dX, AbstractC5015Cx0 abstractC5015Cx0) {
        C5485La0 c5485La0 = this.f52070b;
        com.android.tools.r8.graph.H2 holder = h53.getHolder();
        c5485La0.getClass();
        com.android.tools.r8.graph.M2 m22 = holder.f36245e;
        if ((m22 == c5485La0.f41998j || m22 == c5485La0.f41999k) && (vj2 instanceof C7572hK)) {
            return com.android.tools.r8.ir.optimize.U.f54808b;
        }
        C5485La0 c5485La02 = this.f52070b;
        c5485La02.getClass();
        if (!c5485La02.a(h52.getReference())) {
            C5485La0 c5485La03 = this.f52070b;
            c5485La03.getClass();
            if (!c5485La03.b(h52.getReference())) {
                return this.f52069a.a(vj2, h52, h53, h10, jd2, abstractC6931dX, abstractC5015Cx0);
            }
        }
        C5485La0 c5485La04 = this.f52070b;
        c5485La04.getClass();
        if (c5485La04.a(h52.getReference())) {
            C5485La0 c5485La05 = this.f52070b;
            com.android.tools.r8.graph.H2 holder2 = h53.getHolder();
            c5485La05.getClass();
            com.android.tools.r8.graph.L2 l22 = holder2.f36245e.f36592f;
            com.android.tools.r8.graph.L2 l23 = c5485La05.f41981C;
            l22.getClass();
            if (l22.b(l23.f36562f)) {
                return com.android.tools.r8.ir.optimize.U.f54812f;
            }
        }
        C10340xw0 i10 = ((C10340xw0) vj2.f54321f.get(1)).i();
        if (i10.j()) {
            return com.android.tools.r8.ir.optimize.U.f54812f;
        }
        AbstractC10561zE abstractC10561zE = i10.f53886c;
        abstractC10561zE.getClass();
        if (!(abstractC10561zE instanceof C5576Mo0)) {
            return com.android.tools.r8.ir.optimize.U.f54812f;
        }
        C4554l1 field = abstractC10561zE.K0().getField();
        C5485La0 c5485La06 = this.f52070b;
        C5427Ka0 c5427Ka0 = c5485La06.f42009u;
        if (field == c5427Ka0.f41699b || field == c5427Ka0.f41700c || field == c5427Ka0.f41702e || field == c5427Ka0.f41703f || field == c5427Ka0.f41704g) {
            return com.android.tools.r8.ir.optimize.U.f54808b;
        }
        if (f52068c || field.f38297f != c5485La06.f42003o || field == c5427Ka0.f41698a || field == c5427Ka0.f41701d) {
            return com.android.tools.r8.ir.optimize.U.f54812f;
        }
        throw new AssertionError();
    }
}
