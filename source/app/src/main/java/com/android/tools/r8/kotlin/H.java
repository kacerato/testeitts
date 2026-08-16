package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.internal.C9418sQ;
import com.android.tools.r8.internal.ML;
import com.android.tools.r8.internal.NQ;

public final class H implements InterfaceC10835p {

    public final NQ.b f55068a;

    public final C10782g0 f55069b;

    public final String f55070c;

    public H(NQ.b bVar, C10782g0 c10782g0, String str) {
        this.f55068a = bVar;
        this.f55069b = c10782g0;
        this.f55070c = str;
    }

    @Override
    public final C8699o50 a(com.android.tools.r8.graph.H2 h22, C4798y c4798y) {
        C9418sQ c9418sQ = new C9418sQ();
        boolean a10 = this.f55069b.a(c9418sQ, h22, c4798y);
        NQ.b bVar = this.f55068a;
        ML a11 = bVar.a();
        ML ml2 = AbstractC10752b0.f55255a;
        if (a11.compareTo(ml2) < 0) {
            bVar.a(ml2);
        }
        NQ.b bVar2 = this.f55068a;
        bVar2.f42584b = c9418sQ;
        return C8699o50.a(bVar2.b(), Boolean.valueOf(a10));
    }

    @Override
    public final H k() {
        return this;
    }

    @Override
    public final boolean o() {
        return true;
    }

    @Override
    public final String r() {
        return this.f55070c;
    }

    @Override
    public final ML u() {
        return this.f55068a.f42585c;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        C10782g0 c10782g0 = this.f55069b;
        c10782g0.f55315b.a(interfaceC4403d1);
        c10782g0.f55316c.a(interfaceC4403d1);
    }
}
