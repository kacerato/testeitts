package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4798y;

public final class C9383sB extends AbstractC8215lB {

    public final com.android.tools.r8.ir.optimize.F f52311b;

    public C9383sB(C4798y c4798y, com.android.tools.r8.ir.optimize.F f10) {
        super(c4798y);
        this.f52311b = f10;
    }

    @Override
    public final AbstractC4497i0 a(C7215fB c7215fB, C9875v8 c9875v8, C8659ns0 c8659ns0, String str) {
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        c8659ns0.b("Finalize CF code");
        com.android.tools.r8.graph.G a10 = new C7543h9(this.f49905a, j10, c7215fB, c9875v8).a(this.f52311b, c8659ns0, str);
        c8659ns0.d();
        return a10;
    }
}
