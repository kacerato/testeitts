package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4572m0;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;

public final class C4969Cc0 extends AbstractC4572m0 {

    public final C4798y f39272e;

    public final C5027Dc0 f39273f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4969Cc0(C5027Dc0 c5027Dc0, C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4798y c4798y2) {
        super(c4798y, h52);
        this.f39273f = c5027Dc0;
        this.f39272e = c4798y2;
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        C4514j c4514j = (C4514j) this.f39272e.f();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        C4798y<?> c4798y = this.f39272e;
        c4514j.getClass();
        com.android.tools.r8.graph.H0 a10 = c4514j.a(a22, h52.getHolder(), c4798y, (C4514j) c4798y.f());
        com.android.tools.r8.graph.H5 H10 = a10 != null ? a10.H() : null;
        if (H10 != null) {
            this.f39273f.f39565g.add((AbstractC8374m80) H10);
        }
    }
}
