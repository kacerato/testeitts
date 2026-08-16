package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.internal.C9418sQ;
import com.android.tools.r8.internal.ML;
import com.android.tools.r8.internal.NQ;

public final class C10776f0 implements InterfaceC10835p {

    public final NQ.d f55298a;

    public final C10782g0 f55299b;

    public final String f55300c;

    public C10776f0(NQ.d dVar, C10782g0 c10782g0, String str) {
        this.f55298a = dVar;
        this.f55299b = c10782g0;
        this.f55300c = str;
    }

    @Override
    public final C8699o50 a(com.android.tools.r8.graph.H2 h22, C4798y c4798y) {
        C9418sQ c9418sQ = new C9418sQ();
        boolean a10 = this.f55299b.a(c9418sQ, h22, c4798y);
        NQ.d dVar = this.f55298a;
        ML a11 = dVar.a();
        ML ml2 = AbstractC10752b0.f55255a;
        if (a11.compareTo(ml2) < 0) {
            dVar.a(ml2);
        }
        NQ.d dVar2 = this.f55298a;
        dVar2.f42590b = c9418sQ;
        return C8699o50.a(dVar2.b(), Boolean.valueOf(a10));
    }

    @Override
    public final C10776f0 m() {
        return this;
    }

    @Override
    public final String r() {
        return this.f55300c;
    }

    @Override
    public final boolean t() {
        return true;
    }

    @Override
    public final ML u() {
        return this.f55298a.f42592d;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        C10782g0 c10782g0 = this.f55299b;
        c10782g0.f55315b.a(interfaceC4403d1);
        c10782g0.f55316c.a(interfaceC4403d1);
    }
}
