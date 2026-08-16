package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class C5142Fc extends AbstractC5200Gc {

    public final Set f40255f;

    public C5142Fc(C4798y c4798y, C9539t70 c9539t70, C5448Ki c5448Ki, JI ji2) {
        super(c4798y, c9539t70, c5448Ki, ji2);
        this.f40255f = C4875Al0.a();
    }

    @Override
    public final C8659ns0 a(AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H2 h22) {
        C8659ns0 a10 = C8659ns0.a(this.f40528a.E(), h22.b1());
        C4798y c4798y = this.f40528a;
        VR vr = new VR(c4798y, c4798y.b().f37896L, h22);
        vr.a(h22);
        if (vr.f45055c) {
            this.f40255f.add(h22.getType());
            return a10;
        }
        a(h22, abstractC7103ea, a10);
        return a10;
    }

    @Override
    public final void a() {
        C4798y c4798y = this.f40528a;
        Set set = this.f40255f;
        if (!C4798y.f38385W && c4798y.f38401P != null) {
            throw new AssertionError();
        }
        c4798y.f38401P = set;
    }
}
